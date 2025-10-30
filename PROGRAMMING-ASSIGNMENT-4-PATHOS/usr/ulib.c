#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"
#include "syscall.h"

int pg_pte(uint va) {
    return syscall(SYS_pg_pte, va);
}

int pg_pa(int pte) {
    return syscall(SYS_pg_pa, pte);
}

int pg_flags(int pte) {
    return syscall(SYS_pg_flags, pte);
}

int kpt(void) {
    return syscall(SYS_kpt);
}

int ugetpid(void) {
    return syscall(SYS_ugetpid);
}

char*
strcpy(char *s, char *t)
{
    char *os;
    
    os = s;
    while((*s++ = *t++) != 0)
        ;
    return os;
}

int
strcmp(const char *p, const char *q)
{
    while(*p && *p == *q)
        p++, q++;
    return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    int n;
    
    for(n = 0; s[n]; n++)
        ;
    return n;
}

void*
memset(void *dst, int v, uint n)
{
	uint8	*p;
	uint8	c;
	uint32	val;
	uint32	*p4;

	p   = dst;
	c   = v & 0xff;
	val = (c << 24) | (c << 16) | (c << 8) | c;

	// set bytes before whole uint32
	for (; (n > 0) && ((uint)p % 4); n--, p++){
		*p = c;
	}

	// set memory 4 bytes a time
	p4 = (uint*)p;

	for (; n >= 4; n -= 4, p4++) {
		*p4 = val;
	}

	// set leftover one byte a time
	p = (uint8*)p4;

	for (; n > 0; n--, p++) {
		*p = c;
	}

	return dst;
}

char*
strchr(const char *s, char c)
{
    for(; *s; s++)
        if(*s == c)
            return (char*)s;
    return 0;
}

char*
gets(char *buf, int max)
{
    int i, cc;
    char c;
    
    for(i=0; i+1 < max; ){
        cc = read(0, &c, 1);
        if(cc < 1)
            break;
        buf[i++] = c;
        if(c == '\n' || c == '\r')
            break;
    }
    buf[i] = '\0';
    return buf;
}

int
stat(char *n, struct stat *st)
{
    int fd;
    int r;
    
    fd = open(n, O_RDONLY);
    if(fd < 0)
        return -1;
    r = fstat(fd, st);
    close(fd);
    return r;
}

int
atoi(const char *s)
{
    int n;
    
    n = 0;
    while('0' <= *s && *s <= '9')
        n = n*10 + *s++ - '0';
    return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    char *dst, *src;
    
    dst = vdst;
    src = vsrc;
    while(n-- > 0)
        *dst++ = *src++;
    return vdst;
}

int strncmp(const char *s1, const char *s2, int n) {
    while(n > 0 && *s1 && *s2 && *s1 == *s2) {
        s1++;
        s2++;
        n--;
    }
    if(n == 0)
        return 0;
    return *(unsigned char *)s1 - *(unsigned char *)s2;
}

char *strncpy(char *dest, const char *src, int n) {
    char *d = dest;
    while(n > 0 && *src) {
        *d++ = *src++;
        n--;
    }
    while(n > 0) {
        *d++ = '\0';
        n--;
    }
    return dest;
}


static inline int xchg(volatile int *addr, int newval) {
    int old;
    __asm__ volatile (
        "swp %0, %2, [%1]"
        : "=&r" (old)
        : "r" (addr), "r" (newval)
        : "memory"
    );
    return old;
}



void initiateLock(struct lock* l) {
    l->lockvar = 0;
    l->isInitiated = 1;
}

void acquireLock(struct lock* l) {
    if(!l->isInitiated) return;
    while(xchg(&l->lockvar, 1) != 0) {
        // busy wait
    }
    
}


void releaseLock(struct lock* l) {
    if(l->isInitiated && l->lockvar == 1) {
        l->lockvar = 0;
    }
}


void initiateCondVar(struct condvar* cv) {
    cv->var = getChannel();
    cv->isInitiated = 1;
}

void condWait(struct condvar* cv, struct lock* l) {
    if(!cv->isInitiated || !l->isInitiated) return;
    releaseLock(l);
    sleepChan(cv->var);
    acquireLock(l);
}

void broadcast(struct condvar* cv) {
    if(!cv->isInitiated) return;
    sigChan(cv->var);
}

void signal(struct condvar* cv) {
    if(!cv->isInitiated) return;
    sigOneChan(cv->var);
}


void semInit(struct semaphore* s, int initVal) {
    initiateLock(&s->l);
    initiateCondVar(&s->cv);
    s->ctr = initVal;
    s->isInitiated = 1;
}


void semUp(struct semaphore* s) {
    acquireLock(&s->l);
    s->ctr++;
    signal(&s->cv); // wakes up one (if any) thread waiting on this semaphore's condvar
    releaseLock(&s->l);
}


void semDown(struct semaphore* s) {
    acquireLock(&s->l);
    s->ctr--;
    while (s->ctr < 0) {  // changed from if to while
        condWait(&s->cv, &s->l);
    }
    releaseLock(&s->l);
}



