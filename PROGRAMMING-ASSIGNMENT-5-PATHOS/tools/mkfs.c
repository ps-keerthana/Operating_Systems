// mkfs.c — creates an xv6 file system image with double-indirect support
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>

#define stat xv6_stat
#include "types.h"
#include "fs.h"
#include "stat.h"
#include "param.h"

#define static_assertion(a, b) do { switch (0) case 0: case (a): ; } while (0)

int nblocks = 985;
int nlog = LOGSIZE;
int ninodes = 200;
int size = 1024;

int fsfd;
struct superblock sb;
char zeroes[512];
uint freeblock;
uint usedblocks;
uint bitblocks;
uint freeinode = 1;

void wsect(uint, void*);
void rsect(uint, void*);
void winode(uint, struct dinode*);
void rinode(uint inum, struct dinode *ip);
uint ialloc(ushort type);
void balloc(int used, int end);
void iappend(uint inum, void *p, int n);

// endian helpers
ushort xshort(ushort x) {
  ushort y;
  uchar *a = (uchar*)&y;
  a[0] = x;
  a[1] = x >> 8;
  return y;
}

uint xint(uint x) {
  uint y;
  uchar *a = (uchar*)&y;
  a[0] = x;
  a[1] = x >> 8;
  a[2] = x >> 16;
  a[3] = x >> 24;
  return y;
}

int main(int argc, char *argv[]) {
  int i, cc, fd;
  uint rootino, inum;
  struct dirent de;
  char buf[512];

  static_assertion(sizeof(int) == 4, "Integers must be 4 bytes!");
  if(argc < 2){ fprintf(stderr, "Usage: mkfs fs.img files...\n"); exit(1); }

  assert((512 % sizeof(struct dinode)) == 0);
  assert((512 % sizeof(struct dirent)) == 0);

  fsfd = open(argv[1], O_RDWR|O_CREAT|O_TRUNC, 0666);
  if(fsfd < 0){ perror(argv[1]); exit(1); }

  sb.size    = xint(size);
  sb.nblocks = xint(nblocks);
  sb.ninodes = xint(ninodes);
  sb.nlog    = xint(nlog);

  bitblocks = size/(512*8) + 1;
  usedblocks = ninodes / IPB + 3 + bitblocks;
  freeblock = usedblocks;

  printf("used %d (bit %d ninode %zu) free %u log %u total %d\n",
         usedblocks, bitblocks, ninodes/IPB + 1, freeblock, nlog,
         nblocks+usedblocks+nlog);

  assert(nblocks + usedblocks + nlog == size);

  for(i = 0; i < nblocks + usedblocks + nlog; i++)
    wsect(i, zeroes);

  memset(buf, 0, sizeof(buf));
  memmove(buf, &sb, sizeof(sb));
  wsect(1, buf);

  // root directory
  rootino = ialloc(T_DIR);
  assert(rootino == ROOTINO);

  bzero(&de, sizeof(de));
  de.inum = xshort(rootino);
  strcpy(de.name, ".");
  iappend(rootino, &de, sizeof(de));

  bzero(&de, sizeof(de));
  de.inum = xshort(rootino);
  strcpy(de.name, "..");
  iappend(rootino, &de, sizeof(de));

  // add files
  for(i = 2; i < argc; i++){
    assert(index(argv[i], '/') == 0);
    if((fd = open(argv[i], 0)) < 0){ perror(argv[i]); exit(1); }

    if(argv[i][0] == '_') ++argv[i];

    inum = ialloc(T_FILE);

    bzero(&de, sizeof(de));
    de.inum = xshort(inum);
    strncpy(de.name, argv[i], DIRSIZ);
    iappend(rootino, &de, sizeof(de));

    while((cc = read(fd, buf, sizeof(buf))) > 0)
      iappend(inum, buf, cc);

    close(fd);
  }

  // Mark metadata and log blocks as allocated
  balloc(usedblocks, size - nlog);

  exit(0);
}

// write a 512-byte sector
void wsect(uint sec, void *buf) {
  if(lseek(fsfd, sec * 512L, 0) != sec * 512L){ perror("lseek"); exit(1); }
  if(write(fsfd, buf, 512) != 512){ perror("write"); exit(1); }
}

// read a 512-byte sector
void rsect(uint sec, void *buf) {
  if(lseek(fsfd, sec * 512L, 0) != sec * 512L){ perror("lseek"); exit(1); }
  if(read(fsfd, buf, 512) != 512){ perror("read"); exit(1); }
}

uint i2b(uint inum){ return (inum / IPB) + 2; }

void winode(uint inum, struct dinode *ip) {
  char buf[512];
  uint bn = i2b(inum);
  rsect(bn, buf);
  struct dinode *dip = ((struct dinode*)buf) + (inum % IPB);
  *dip = *ip;
  wsect(bn, buf);
}

void rinode(uint inum, struct dinode *ip) {
  char buf[512];
  uint bn = i2b(inum);
  rsect(bn, buf);
  struct dinode *dip = ((struct dinode*)buf) + (inum % IPB);
  *ip = *dip;
}

uint ialloc(ushort type) {
  uint inum = freeinode++;
  struct dinode din;
  bzero(&din, sizeof(din));
  din.type = xshort(type);
  din.nlink = xshort(1);
  din.size = xint(0);
  winode(inum, &din);
  return inum;
}

void balloc(int used, int end) {
  uchar buf[512];
  int i;
  printf("balloc: marking blocks 0-%d and %d-%d as allocated\n", used-1, end, size-1);
  
  assert(size <= 512*8);  // For now, only support single bitmap block
  
  bzero(buf, 512);
  
  // Mark metadata blocks as used (0 to used-1)
  for(i = 0; i < used; i++)
    buf[i/8] |= (0x1 << (i%8));
  
  // Mark log blocks as used (end to size-1)
  for(i = end; i < size; i++)
    buf[i/8] |= (0x1 << (i%8));
  
  printf("balloc: write bitmap block at sector %zu\n", ninodes/IPB + 3);
  wsect(ninodes / IPB + 3, buf);
}

#define min(a,b) ((a)<(b)?(a):(b))

// Append n bytes to inode inum, mapping with direct, single-indirect, then double-indirect.
void iappend(uint inum, void *xp, int n)
{
  char *p = (char*)xp;
  uint fbn, off, n1;
  struct dinode din;
  char buf[512];
  uint indirect[NINDIRECT];
  uint dindirect[NINDIRECT];

  rinode(inum, &din);
  off = xint(din.size);

  while(n > 0){
    fbn = off / BSIZE;
    if(fbn >= MAXFILE){
      fprintf(stderr, "iappend: file too large (fbn=%u MAXFILE=%lu)\n", fbn,
              (unsigned long)MAXFILE);
      exit(1);
    }

    uint x;

    if(fbn < NDIRECT){
      if(xint(din.addrs[fbn]) == 0){
        din.addrs[fbn] = xint(freeblock++);
        usedblocks++;
      }
      x = xint(din.addrs[fbn]);

    } else if (fbn < NDIRECT + NINDIRECT){
      if(xint(din.addrs[NDIRECT]) == 0){
        din.addrs[NDIRECT] = xint(freeblock++);
        usedblocks++;
        memset(indirect, 0, sizeof(indirect));
        wsect(xint(din.addrs[NDIRECT]), (char*)indirect);
      }
      rsect(xint(din.addrs[NDIRECT]), (char*)indirect);
      uint idx = fbn - NDIRECT;
      if(indirect[idx] == 0){
        indirect[idx] = xint(freeblock++);
        usedblocks++;
        wsect(xint(din.addrs[NDIRECT]), (char*)indirect);
      }
      x = xint(indirect[idx]);

    } else {
      uint bn2 = fbn - NDIRECT - NINDIRECT;
      uint outer = bn2 / NINDIRECT;
      uint inner = bn2 % NINDIRECT;

      if(xint(din.addrs[NDIRECT+1]) == 0){
        din.addrs[NDIRECT+1] = xint(freeblock++);
        usedblocks++;
        memset(dindirect, 0, sizeof(dindirect));
        wsect(xint(din.addrs[NDIRECT+1]), (char*)dindirect);
      } else {
        rsect(xint(din.addrs[NDIRECT+1]), (char*)dindirect);
      }

      if(dindirect[outer] == 0){
        dindirect[outer] = xint(freeblock++);
        usedblocks++;
        memset(indirect, 0, sizeof(indirect));
        wsect(xint(dindirect[outer]), (char*)indirect);
        wsect(xint(din.addrs[NDIRECT+1]), (char*)dindirect);
      } else {
        rsect(xint(dindirect[outer]), (char*)indirect);
      }

      if(indirect[inner] == 0){
        indirect[inner] = xint(freeblock++);
        usedblocks++;
        wsect(xint(dindirect[outer]), (char*)indirect);
      }
      x = xint(indirect[inner]);
    }

    n1 = min(n, (fbn + 1) * BSIZE - off);
    rsect(x, buf);
    memcpy(buf + (off - (fbn * BSIZE)), p, n1);
    wsect(x, buf);
    n -= n1;
    off += n1;
    p += n1;
  }

  din.size = xint(off);
  winode(inum, &din);
}
