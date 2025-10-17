# Programming Assignment 2: Boosted Lottery Scheduler

## Overview

For this assignment, we will continue working with the xv6 codebase. The primary goal is to replace the default Round Robin scheduler with a **Boosted Lottery Scheduler**. This involves implementing a proportional-share policy where processes are allocated CPU time based on the number of "tickets" they hold. Additionally, the scheduler will boost the priority of sleeping processes to ensure they receive their fair share of CPU time upon waking.

The code for this assignment needs to be checked into a new repository, which you can create here:  
[https://classroom.github.com/a/jcUVsoav](https://classroom.github.com/a/jcUVsoav)



## 1. Boosted Lottery Scheduler Requirements

The current xv6 scheduler implements a simple Round Robin (RR) policy. You will replace this with a lottery scheduler that has the following properties.

### 1.1. Basic Lottery Scheduler

In your scheduler, each process runs for an entire tick until interrupted by the xv6 timer. At each tick, the scheduler holds a lottery among all **RUNNABLE** processes and schedules the winner.

* When a new process is created, it should inherit the same number of tickets as its parent. The very first process in xv6 should start with **1 ticket**.
* You will create a system call `settickets(int pid, int tickets)` to change the number of tickets held by a specified process.

For example, if process A has 1 ticket and process B has 4 tickets, a potential schedule might look like this: `B B A B B B B B B A A B B B A B B B B B`. Over a long period, we expect the ratio of CPU time allocated to be approximately the same as the ratio of their tickets.

Scheduling decisions are triggered by three events in xv6:
1.  When the 10 ms timer tick occurs.
2.  When a process exits.
3.  When a process sleeps.

Your scheduler should **not** trigger a new scheduling event when a new process arrives or wakes up; simply mark the process as `RUNNABLE` and wait for the next timer tick.

### 1.2. Compensating Processes for Blocking

To incentivize processes to relinquish the CPU when they have no work, your scheduler will reward them for sleeping. If a process is blocked (sleeping) for **x** ticks, its tickets will be **doubled** for the next **x** lotteries it participates in after it becomes `RUNNABLE` again.

**Example 1:** Process A (1 ticket) and B (4 tickets). A sleeps for 2 ticks.

| Tick | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 |
| :--- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| **Scheduled** | B | A | B | B | B | A | A | B | B | B | B | B | B | A | B | B | B | B | B | B |
| **Sleeping** | | | A | A | | | | | | | | | | | A | A | | | | |
| **A Tickets** | 1 | 1 | - | - | **2** | **2** | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | - | - | **2** | **2** | 1 | 1 |
| **B Tickets** | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |

* At ticks 3, 4, 15, and 16, only process B is `RUNNABLE`, so it automatically wins the lottery.
* After sleeping for 2 ticks, process A gets boosted tickets for the next 2 lotteries it participates in (e.g., at ticks 5 & 6 and 17 & 18). This boost applies for 2 *lotteries*, not necessarily 2 consecutive ticks if A doesn't win.

**Example 2:** What if a process sleeps again while it still has boost rounds remaining? The remaining boosts should be added to the new boosts. For example, if A sleeps for 3 ticks, wakes, participates in 1 boosted lottery, and then sleeps for 3 more ticks, it should have (2 remaining + 3 new) = 5 boosted rounds when it wakes up again.

**Example 3:** In a system with multiple blocked processes, each process's boost is tracked independently based on how long it slept.

**Example 4: Inheritance and Reporting**
* A child process inherits its parent's **base** number of tickets. It does not inherit any active boosts.
* The `getpinfo` system call should always return the **base** number of tickets, not the boosted value. For a boosted process with 5 base tickets, `getpinfo` should report `tickets=5` and `boostsleft=3`, not `tickets=10`.

### 1.3. Improving the Sleep/Wake Mechanism

The current `sleep()` implementation in xv6 is inefficient. It wakes every sleeping process on every timer tick, forcing it to check if its sleep duration has expired. This is wasteful and interferes with our boosting mechanism, as a process might participate in a lottery (and use up a boost) just to check the time and go back to sleep.

You must fix this by modifying `wakeup1()` in `proc.c`. Add logic to ensure a process waiting on a timer tick is only woken up when its sleep interval has actually expired. You may need to add new fields to `struct proc` to track this.

To hold a lottery, you will need a random number generator. Add the following code to the top of `proc.c`:

```c
#define RAND_MAX 0x7fffffff
uint rseed = 0;

uint rand() {
    return rseed = (rseed * 1103515245 + 12345) & RAND_MAX;
}
````

Place your lottery logic in a separate function with the following signature:

```c
// returns a pointer to the lottery winner.
struct proc *hold_lottery(int total_tickets) {
    if (total_tickets <= 0) {
        cprintf("this function should only be called when at least 1 process is RUNNABLE");
        return 0;
    }

    uint random_number = rand();
    uint winner_ticket_number = ... // Scale this to be within the total number of tickets.

    // ... logic to find the winning process ...
    // return winner;
}
```



## 2\. New System Calls

You must implement three new system calls.

1.  `int settickets(int pid, int n_tickets)`

      * Sets the number of tickets for the process with the given `pid`.
      * Returns `0` on success.
      * Returns `-1` if `pid` is invalid or `n_tickets` is not positive.

2.  `void srand(uint seed)`

      * Sets the global `rseed` variable in `proc.c` to the given `seed`.
      * Hint: Use `extern uint rseed;` in your system call implementation to access the global variable.

3.  `int getpinfo(struct pstat *info)`

      * Fills the `pstat` structure with information about all processes.
      * Returns `0` on success and `-1` on failure (e.g., invalid pointer).
      * Create a new header file `pstat.h` with the following content:

<!-- end list -->

```c
#ifndef _PSTAT_H_
#define _PSTAT_H_

#include "param.h"

struct pstat {
  int inuse[NPROC];      // whether this slot of the process table is in use (1 or 0)
  int pid[NPROC];        // PID of each process
  int tickets[NPROC];    // how many tickets does this process have?
  int runticks[NPROC];   // total number of timer ticks this process has been scheduled
  int boostsleft[NPROC]; // how many more ticks will this process be boosted?
};

#endif // _PSTAT_H_
```

  * **Do not change the field names in `pstat.h`**. You may want to add a header guard as shown.



## 3\. xv6 Scheduling Details

  * **Core Logic:** The scheduler code is primarily located in `scheduler()` within `proc.c`. The `struct proc` definition in `proc.h` is also crucial. The default scheduler loops through the process table (`ptable`) and runs each `RUNNABLE` process for one time slice (a simple RR policy).
  * **Timer Tick:** A timer tick is approximately 10ms and corresponds to one iteration of the `for` loop in `scheduler()`. The global `ticks` variable is incremented in `trap.c` during a timer interrupt.
  * **Scheduling Decisions:** A scheduling decision is made whenever a process calls `sched()`. This happens in three main places:
    1.  `exit()`: A process terminates.
    2.  `sleep()`: A process blocks.
    3.  `yield()`: A process voluntarily gives up the CPU. This is called from `trap.c` on a timer interrupt.
  * **Sleep/Wakeup Flow:**
    1.  A process calling `sleep()` enters the `SLEEPING` state. Its `chan` (wait channel) is set to the address of the global `ticks` variable.
    2.  The timer interrupt handler in `trap.c` increments `ticks` and then calls `wakeup()`.
    3.  `wakeup()` wakes up **every** process waiting on the `ticks` channel.
    4.  Each woken process checks if it has slept long enough. If not, it goes back to sleep.

Your task is to modify this flawed sleep/wakeup mechanism to be more efficient and compatible with the boosted lottery scheduler. Good luck\!
