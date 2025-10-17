struct stat;
#include "pstat.h"
  
// system calls
int fork(void);
int exit(void) __attribute__((noreturn));
int wait(void);
int pipe(int*);
int write(int, void*, int);
int read(int, void*, int);
int close(int);
int kill(int);
int exec(char*, char**);
int open(char*, int);
int mknod(char*, short, short);
int unlink(char*);
int fstat(int fd, struct stat*);
int link(char*, char*);
int mkdir(char*);
int chdir(char*);
int dup(int);
int getpid(void);
char* sbrk(int);
int sleep(int);
int uptime(void);
int ps(void); // defining ps function
int syscall(int num, ...);
int pg_pte(uint va);
int pg_pa(int pte);
int pg_flags(int pte);
int kpt(void);
int ugetpid(void);
int print_pt(void);

// ulib.c
int stat(char*, struct stat*);
char* strcpy(char*, char*);
void *memmove(void*, void*, int);
char* strchr(const char*, char c);
int strcmp(const char*, const char*);
void printf(int, char*, ...);
char* gets(char*, int max);
uint strlen(char*);
void* memset(void*, int, uint);
void* malloc(uint);
void free(void*);
int atoi(const char*);
int strncmp(const char*, const char*, int);
char* strncpy(char*, const char*, int);

int settickets(int pid, int n);
void srand(uint seed);
int getpinfo(struct pstat *);


// the output structure of the ps user call
struct user_proc_data {
    int pid; //pid
    int ppid; //parent pid
    char name[16];//name of process
    int state; // current state of process
    int count_sc; // no of system calls made by the process
};
