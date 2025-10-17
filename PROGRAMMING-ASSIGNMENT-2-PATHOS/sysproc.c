#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "pstat.h"


int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void) {
    int n;
    if(argint(0, &n) < 0)
        return -1;

    acquire(&tickslock);
    uint start = ticks;          // current tick
    release(&tickslock);

    acquire(&ptable.lock);
    proc->sleepticks = n;        // requested sleep duration
    proc->sleeptarget = start + n;
    sleep(&ticks, &ptable.lock); // block once
    release(&ptable.lock);

    return 0;
}

// defining kernel space handler to proclist systemcall
int sys_proclist(void) {
  int max; // setting maximum no of process that could be retrieved
  struct user_proc_data *list; // a pointer to user-space array which stores process info
  
  //if both max and pointer structure are valid run the systemcall or else return -1
  if(argint(0, &max) < 0 || argptr(1, (void*)&list, max*sizeof(struct user_proc_data)) < 0)
    return -1;
  return proclist(max, list);
}


// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}


extern uint rseed;

int sys_settickets(void) {
  int pid, n;
  if(argint(0, &pid) < 0 || argint(1, &n) < 0)
    return -1;
  if(n <= 0)
    return -1;

  acquire(&ptable.lock);
  struct proc *p;
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
    if(p->pid == pid) {
      p->tickets = n;
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
  return -1;
}

int sys_srand(void) {
  int seed;
  if(argint(0, &seed) < 0) return -1;
  rseed = seed;
  return 0;
}

int
sys_getpinfo(void) {
    struct pstat *info;

    if(argptr(0, (char**)&info, sizeof(*info)) < 0)
        return -1;

    acquire(&ptable.lock);

    struct proc *p;
    int i = 0;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++, i++) {
        info->inuse[i]     = (p->state != UNUSED);
        info->pid[i]       = p->pid;
        info->tickets[i]   = p->tickets;
        info->runticks[i]  = p->runticks;
        info->boostsleft[i]= p->boostsleft;
    }

    release(&ptable.lock);
    return 0;
}

