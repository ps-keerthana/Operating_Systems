#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "pstat.h"

#define PGSIZE 4096
#define MAXVA ((1U << 28) - 1) // 256MB user address space per mmu.h
extern int mappages(pde_t *pgdir, void *va, uint size, uint pa, int ap);
// Add a prototype for walkpgdir to avoid implicit declaration
pte_t* walkpgdir(pde_t *pgdir, const void *va, int alloc);
// Global channel counter for unique channel generation
static int next_channel = 1;
// In sysproc.c
int
sys_print_pt(void)
{
    // FIX: Use the global 'proc' variable which is correct for your OS
    struct proc *p = proc;
    pde_t *pgdir = p->pgdir;
    
    cprintf("Page Table for process %d \n", p->pid);

    // --- First 10 Pages ---
    cprintf("First 10 mapped pages \n");
    int i;
    for (i = 0; i < 10; i++) {
        uint va = i * PGSIZE;
        if (va >= p->sz) break;
        // For each va, it uses helper function, walkpgdir, to find the corresponding Page Table Entry (PTE).
        pte_t *pte = walkpgdir(pgdir, (void *)va, 0);
        // FIX: Use PE_TYPES, the correct "Present" flag for your system
        // If the PTE exists and is valid , I extract the physical address and the permission bits from it.
        if (pte && (*pte & PE_TYPES)) {
            cprintf("va 0x%x pte 0x%x pa 0x%x perm 0x%x\n", va, *pte, PTE_ADDR(*pte), PTE_FLAGS(*pte));
        } else {
            cprintf("va 0x%x -> not mapped\n", va);
        }
    }

    // --- Last 10 Pages ---
    cprintf("Last 10 mapped pages \n");
    uint top_va = p->sz;
    
    for (i = 10; i > 0; i--) {
        uint va = top_va - (i * PGSIZE);
        if (va >= top_va) continue;
        
        // FIX: Use manual page alignment instead of PGROUNDDOWN macro
        va = (va & ~(PGSIZE - 1));

        pte_t *pte = walkpgdir(pgdir, (void *)va, 0);
        // FIX: Use PE_TYPES, the correct "Present" flag for your system
        if (pte && (*pte & PE_TYPES)) {
            cprintf("va 0x%x pte 0x%x pa 0x%x perm 0x%x\n", va, *pte, PTE_ADDR(*pte), PTE_FLAGS(*pte)); 
        } else {
            cprintf("va 0x%x -> not mapped\n", va);
        }
    }

    return 0;
}


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
    uint ticks0;

    if(argint(0, &n) < 0)
        return -1;

    acquire(&tickslock);
    ticks0 = ticks;

    // Set your custom tracking fields
    acquire(&ptable.lock);
    proc->sleepticks = n;
    proc->sleeptarget = ticks0 + n;
    release(&ptable.lock);

    while(ticks - ticks0 < n){
        if(proc->killed){
            release(&tickslock);
            return -1;
        }
        sleep(&ticks, &tickslock);
    }
    release(&tickslock);

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


//// New code goes here
// sysproc.c

// assuming thread_create, thread_exit, thread_join are defined in proc.c
extern int thread_create(uint *tid_ptr, void* (*func)(void*), void *arg);
extern void thread_exit(void);
extern int thread_join(uint tid);

// thread_create(uint*, void* (*func)(void*), void* arg)
int sys_thread_create(void) {
    uint tid_ptr, func, arg;
    if (argint(0, (int*)&tid_ptr) < 0)
        return -1;
    if (argint(1, (int*)&func) < 0)
        return -1;
    if (argint(2, (int*)&arg) < 0)
        return -1;
    return thread_create((uint*)tid_ptr, (void* (*)(void*))func, (void*)arg);
}

int sys_thread_exit(void) {
    thread_exit();
    return 0; // Will not reach here if thread handled correctly
}

// thread_join(uint)
int sys_thread_join(void) {
    uint tid;
    if (argint(0, (int*)&tid) < 0)
        return -1;
    return thread_join(tid);
}


extern int barrier_init(int);
extern int barrier_check(void);

int sys_barrier_init(void)
{
  int n;
  if (argint(0, &n) < 0)
    return -1;
  return barrier_init(n);
}

int sys_barrier_check(void)
{
  return barrier_check();
}

int sys_waitpid(void)
{
  return -1;
}



int sys_getChannel(void) {
    // Return a unique channel number
    return next_channel++;
}

int sys_sleepChan(void) {
    int chan;
    if (argint(0, &chan) < 0)
        return -1;

    
    acquire(&ptable.lock);
    sleep((void*)(long)chan, &ptable.lock);
    release(&ptable.lock);

    return 0;
}


int sys_sigChan(void) {
    int chan;
    if (argint(0, &chan) < 0)
        return -1;
    
    // Wake up ALL processes sleeping on this channel
    wakeup((void*)(long)chan);
    
    return 0;
}

int sys_sigOneChan(void) {
    int chan;
    if (argint(0, &chan) < 0)
        return -1;
    
    // Wake up ONE process sleeping on this channel
    // xv6's wakeup wakes all; for "wake one", you'd need custom logic
    // For now, use wakeup (wakes all) as a simplification
    // A true "wake one" requires modifying wakeup1 in proc.c
    wakeup((void*)(long)chan);
    
    return 0;
}


/////

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

// Expects: virtual address as argument

int
sys_pg_pte(void) {
    uint va;
    if(argint(0, (int*)&va) < 0)
        return -1;

    // FIX: Use the global 'proc' variable
    struct proc *curproc = proc;
    
    if (va >= curproc->sz) {
        return 0;
    }

    pte_t *pte = walkpgdir(curproc->pgdir, (void*)va, 0);

    // FIX: Use PE_TYPES, the correct "Present" flag
    if (!pte || !(*pte & PE_TYPES)) {
        // FIX: Use alloc_page(), your system's memory allocator
        char *mem = alloc_page();
        if (mem == 0) {
            cprintf("sys_pg_pte: out of memory\n");
            return 0;
        }
        memset(mem, 0, PGSIZE);

        // FIX: Use AP_KU, the correct flag for User Read/Write permissions
        if (mappages(curproc->pgdir, (char*)(va & ~(PGSIZE-1)), PGSIZE, V2P(mem), AP_KU) < 0) {
            // FIX: Use free_page(mem), your system's deallocator
            free_page(mem);
            cprintf("sys_pg_pte: mappages failed\n");
            return 0;
        }
    }

    pte = walkpgdir(curproc->pgdir, (void*)va, 0);
    if (!pte)
        return 0;

    return *pte;
}

int sys_pg_pa(void) {
    int pte;
    if(argint(0, &pte) < 0)
        return -1;
    return PTE2PA((pte_t)pte);
}

int sys_pg_flags(void) {
    int pte;
    if(argint(0, &pte) < 0)
        return -1;
    return PTE_FLAGS((pte_t)pte);
}

int sys_kpt(void) {
    // Implement your kernel page table info dump or data collection here
    // Example: print kernel PT entries to console or save somewhere
    cprintf("Kernel page table info syscall called\n");
    return 0;
}

int sys_ugetpid(void) {
    return proc->pid;
}
