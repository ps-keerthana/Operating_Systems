


# Programming Assignment 4: Threads and Synchronization in xv6

## Overview

This assignment focuses on implementing various **synchronization primitives** and **user-level threads** within the **xv6 operating system kernel**. The core concepts explored include:
1.  **Barriers** for process synchronization using kernel `sleep`/`wakeup`.
2.  **User-level Threads** via `thread_create`, `thread_exit`, and `thread_join` syscalls.
3.  **User-space Spinlocks** and **Condition Variables** using new kernel `sleep`/`wakeup` channel APIs.
4.  **Semaphores** built on top of the user-space locks and condition variables.

### Files Modified/Added

| File | Purpose |
| :--- | :--- |
| `kernel/barrier.c` | Core logic for kernel barriers. |
| `kernel/proc.c` | Modifications for threads (new `struct proc` fields, `thread_create`, `thread_exit`, `thread_join`, and updates to `fork`, `exit`, `wait`). |
| `kernel/sysproc.c` | System call implementation for thread and channel APIs. |
| `kernel/defs.h` | System call declarations, and new `struct proc` fields. |
| `kernel/syscall.h` | System call numbers for new thread/channel APIs. |
| `user/user.h` | Declarations for user-space synchronization primitives. |
| `user/ulib.c` | Implementations for user-space locks, condition variables, and semaphores. |
| `user/usys.S` | Assembly entries for new system calls. |
| `user/initcode.S` | Possibly modified to include new system calls if necessary. |
| `Makefile` | Add new system calls and test programs. |

---

## Build and Run Instructions

This project is built and run within the xv6 environment.

### 1. Cloning and Setup

```bash
# Clone the repository (replace with your actual repo URL)
git clone https://github.com/ps-keerthana/Operating_Systems.git
cd Operating_Systems

# Ensure you have QEMU and the necessary build tools installed.
# (e.g., on Ubuntu: sudo apt install qemu-system-i386 gcc make)
````

### 2\. Building the Kernel

```bash
# Build the xv6 kernel and generate the disk image
make clean
make
```

### 3\. Running the Tests

Run the xv6 kernel in QEMU:

```bash
qemu-system-arm -M versatilepb -m 128 -cpu arm1176 -nographic -kernel kernel.elf
```

Once the xv6 shell (`$`) appears, you can run the provided test cases.

-----

## Part 1: Barriers as Synchronization Primitives (4 pts.)

**Implementation Details:**

  * The logic for `barrier_init(N)` and `barrier_check()` is implemented in **`kernel/barrier.c`**.
  * The synchronization uses a **kernel spinlock** (to protect shared counter/wait state) and the **kernel's `sleep()` and `wakeup()`** primitives.
  * `barrier_init(N)`: Initializes a counter to $N$ and a lock.
  * `barrier_check()`: Decrements the counter. If the count is $>0$, the process **sleeps** on a unique channel (the barrier structure itself). If the count reaches $0$ (the N-th process), it **wakes up** all sleeping processes and resets the barrier state (though re-initialization is not required per the prompt).

### Test Case: `t_barrier`

The barrier is initialized with $N=3$. The parent and two children must all arrive before any can proceed.

```bash
$ t_barrier
```

**Expected Output:**

```
parent arrived
child 1 arrived
child 2 arrived
parent crossed
child 1 crossed
child 2 crossed
```

-----

## Part 2: Threads (8 pts.)

**New System Calls Implemented:**

  * `thread_create(uint* thread_id, void* (*func)(void*), void* arg)`
  * `thread_exit()`
  * `thread_join(uint thread_id)`

**Key Implementation Points:**

  * **Shared Memory:** Threads share the same page directory (`pgdir`). A new `struct proc` is created, but its `pgdir` points to the main process's `pgdir`.
  * **Private Stack:** A **single new writable user page** is allocated for the spawned thread's stack using `kalloc` or `allocuvm`, and is mapped into the shared `pgdir`. The thread stack grows **upwards** (contrary to the typical xv6 process stack).
  * **Execution Start:** The new thread's `trapframe->eip` is set to the address of the `func` entry point.
  * **Argument Passing:** The `void* arg` is pushed onto the new user stack, and the stack pointer (`trapframe->esp`) is adjusted, similar to `exec()`.
  * **Process/Thread Tracking:** New fields are added to **`struct proc`** to distinguish between a main thread and a spawned thread, and to link a spawned thread back to its main thread for proper `exit`/`wait`/`join` handling.
  * **`thread_exit` / `thread_join`:** `thread_exit` only affects spawned threads. `thread_join` reaps spawned threads and **frees only the thread's private stack page**. The main thread's `exit` is modified to ensure all its spawned threads are reaped before the main process memory is freed.

### Test Case: `t_threads`

```bash
$ t_threads
```

**Expected Output:**

```
Hello World
Thread 1 created 10
Thread 2 created 11
Value of x = 11
```

-----

## Part 3: Userspace Locks and Condition Variables (6 pts.)

### 3A. Userspace Spinlocks

**Implementation Files:** **`user/user.h`** (struct definition), **`user/ulib.c`** (function implementation)

| Function | Implementation Detail |
| :--- | :--- |
| `initiateLock` | Sets `l->lockvar = 0`. |
| `acquireLock` | Uses the **atomic `xchg`** instruction in a busy-wait loop to set `l->lockvar` to $1$ and check the previous value. |
| `releaseLock` | Sets `l->lockvar = 0`. |

### Test Case: `t_lock`

```bash
$ t_lock
```

**Expected Output:**

```
Final value of x: 2000000
```

-----

### 3B. Condition Variables

**New Kernel System Calls (Implemented in `kernel/sysproc.c` and declared in `kernel/syscall.h`, `kernel/defs.h`, etc.):**

  * `getChannel()`: Returns a unique, unused integer channel value for sleeping.
  * `sleepChan(int channel)`: Kernel call to perform `sleep()` on the given channel.
  * `sigChan(int channel)`: Kernel call to perform `wakeup()` on the given channel (broadcast).
  * `sigOneChan(int channel)`: Kernel call to perform `wakeup1()` on the given channel (signal).

**Userspace Condition Variable Functions (Implemented in `user/ulib.c`):**

| Function | Logic |
| :--- | :--- |
| `initiateCondVar` | Calls `getChannel()` and stores the result in `cv->var`. |
| `condWait` | 1. `releaseLock(l)` 2. `sleepChan(cv->var)` 3. `acquireLock(l)` |
| `broadcast` | Calls `sigChan(cv->var)`. |
| `signal` | Calls `sigOneChan(cv->var)`. |

### Test Cases:

**`t_sleepwake`**

```bash
$ t_sleepwake
```

**Expected Output:**

```
going to sleep on channel 4
Woken up by child
```

*(Note: Channel number may vary.)*

**`t_l_cv1`**

```bash
$ t_l_cv1
```

**Expected Output:**

```
Hello World
Gonna acquire lock
Acquired lock successfully
Value of x = 11
```

**`t_l_cv2`**

```bash
$ t_l_cv2
```

**Expected Output:** *(Interleaved output, demonstrating successful synchronization)*

```
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
I am thread 1
I am thread 2
```

-----

## Part 4: Semaphores in xv6 (4 pts.)

**Implementation File:** **`user/ulib.c`** (using user-space locks and condition variables from Part 3).

| Function | Logic |
| :--- | :--- |
| `semInit(struct semaphore* s, int initval)` | 1. Calls `initiateLock(&(s->lock))`. 2. Calls `initiateCondVar(&(s->cv))`. 3. Sets `s->counter = initval`. |
| `semUp(struct semaphore* s)` | 1. `acquireLock(&(s->lock))` 2. `s->counter++` 3. `signal(&(s->cv))` (wake up one waiting thread) 4. `releaseLock(&(s->lock))` |
| `semDown(struct semaphore* s)` | 1. `acquireLock(&(s->lock))` 2. `s->counter--` 3. `while (s->counter < 0) { condWait(&(s->cv), &(s->lock)); }` 4. `releaseLock(&(s->lock))` |

### Test Cases:

**`t_sem1`**

```bash
$ t_sem1
```

**Expected Output:**

```
Hello World
Gonna acquire semaphore
Acquired semaphore successfully
Value of x = 11
```

**`t_sem2`**

```bash
$ t_sem2
```

**Expected Output:** *(Demonstrates controlled thread execution with a binary semaphore)*

```
I am thread3 and I should print first
I am thread 1
Only one other thread has printed by now
I am thread 2
Both the other threads have printed by now
```

-----

## Final Status and Conclusion

All parts of the assignment—Barriers, Threads, User-space Locks, Condition Variables, and Semaphores—have been implemented and passed the provided test cases, demonstrating correct synchronization and concurrency behavior in the modified xv6 kernel.



