# Programming Assignment 3: xv6 On-Demand Paging Implementation

This project enhances the xv6 operating system (ARM port) by introducing two key memory management features: a system call for inspecting a process's page table and a full implementation of on-demand paging. This document details the implementation of both features, the challenges encountered, and the final, working solution.

## Part 1: Page Table Inspection System Call
The first part of the assignment involved creating a system call, `print_pt()`, that provides a snapshot of the current process's virtual-to-physical memory mappings.

### Implementation Details
A new system call was added to provide a debugging and inspection tool to observe how the OS manages memory. The implementation involved:

* **Declaration (`syscall.h`, `user.h`):** Defining the system call number and its user-space function prototype.
* **Registration (`syscall.c`, `usys.S`):** Linking the system call number to the kernel function and creating the assembly wrapper for user programs.
* **Core Logic (`sysproc.c`):** Implementing the `sys_print_pt()` function, which iterates through the current process's page table and prints the first 10 and last 10 valid Page Table Entries (PTEs).

### Test Program: `test.c`
The `test.c` program was modified to work correctly within the new on-demand paging environment.

* It calls `sbrk()` to request 30 pages of virtual memory. No physical memory is allocated at this stage.
* It then enters a "touching" loop, writing one byte to each of the 30 pages. Each write to a new, unmapped page triggers a page fault, forcing the kernel to allocate a physical page.
* After the loop, all 30 pages are physically mapped.
* Finally, it calls `print_pt()` to display the now-complete page table.

### Final Output of `test`
After all changes, the `test` program runs successfully and produces the following output, proving both the `print_pt` system call and the on-demand allocation are working together.

```bash
$ test
Running Test Program for Page Table Printing

1. Allocating 30 pages of VIRTUAL memory using sbrk()...
2. 'Touching' each page to trigger physical allocation via page faults...
   ...All pages are now physically mapped.
3. Now calling print_pt() to observe the page table.
Page Table for process 3 
First 10 mapped pages 
va 0x0 pte 0x7fee03e pa 0x7fee000 perm 0x3e
va 0x1000 pte 0x7fef03e pa 0x7fef000 perm 0x3e
va 0x2000 -> not mapped
va 0x3000 pte 0x7ff003e pa 0x7ff0000 perm 0x3e
va 0x4000 pte 0x7fe403e pa 0x7fe4000 perm 0x3e
va 0x5000 pte 0x7fe503e pa 0x7fe5000 perm 0x3e
va 0x6000 pte 0x7fea03e pa 0x7fea000 perm 0x3e
va 0x7000 pte 0x7feb03e pa 0x7feb000 perm 0x3e
va 0x8000 pte 0x7fec03e pa 0x7fec000 perm 0x3e
va 0x9000 pte 0x7fed03e pa 0x7fed000 perm 0x3e
Last 10 mapped pages 
va 0x18000 pte 0x7fbf03e pa 0x7fbf000 perm 0x3e
va 0x19000 pte 0x7fc003e pa 0x7fc0000 perm 0x3e
va 0x1a000 pte 0x7fc103e pa 0x7fc1000 perm 0x3e
va 0x1b000 pte 0x7fc203e pa 0x7fc2000 perm 0x3e
va 0x1c000 pte 0x7fc303e pa 0x7fc3000 perm 0x3e
va 0x1d000 pte 0x7fc403e pa 0x7fc4000 perm 0x3e
va 0x1e000 pte 0x7fc503e pa 0x7fc5000 perm 0x3e
va 0x1f000 pte 0x7fc603e pa 0x7fc6000 perm 0x3e
va 0x20000 pte 0x7fc703e pa 0x7fc7000 perm 0x3e
va 0x21000 pte 0x7fc803e pa 0x7fc8000 perm 0x3e

--- Running other tests ---
ugetpid_test starting
ugetpid_test: OK

All assignment tests passed successfully!
````

Each line in the output describes a single mapped 4KB page:

  * **`va`**: The virtual address the program uses.
  * **`pa`**: The corresponding physical address in the computer's RAM.
  * **`pte`**: The raw 32-bit Page Table Entry containing the `pa` and `perm` bits.
  * **`perm`**: The lower bits of the PTE, which define the access permissions. For `0x3e`, this indicates the page is a valid, cacheable, bufferable page with User Read/Write access.



## Part 2: On-Demand Paging

The second part of the assignment was to convert xv6's memory allocation from an "eager" model to a "lazy" (on-demand) model, where physical memory is only allocated when a process first attempts to use it.

### Test Program: `pagetest.c`

The `pagetest.c` program is a simple utility designed to prove that on-demand paging works.

  * It calls `sbrk(4096)` to request one page of virtual memory.
  * It then immediately tries to write to that memory, triggering a page fault.
  * If the kernel handler is successful, the program continues and prints a success message.

### Final Output of `pagetest`

The output clearly demonstrates the success of the implementation:

```bash
$ pagetest
Starting On-Demand Paging Test 
sbrk() allocated memory at virtual address 4000
About to access this new memory. This should trigger a page fault...
Success! Page fault was handled correctly.
Verified by reading back the written data:++ Hi
On-demand paging test passed! 
```

The "Success\!" message confirms that the kernel caught the page fault, allocated a page, and returned control to the program without panicking, proving the implementation is correct.



## Core Implementation & Challenges

Implementing on-demand paging required a deep modification of the kernel's core memory management and trap handling systems.

### 1\. `vm.c` - Making the System Lazy

The `vm.c` file was modified to stop eager allocation and handle its side effects.

  * **`allocuvm()`**: The `for` loop that allocated physical pages was removed. This is the key change that makes the `sbrk()` system call lazy.
  * **`loaduvm()`**: This function was modified to allocate its own pages when loading a program, fixing a panic that occurred when `exec()` tried to load `init`.
  * **`copyuvm()`**: This function was modified to be "lazy-aware." It now correctly skips over unallocated virtual pages when `fork()` is called, instead of panicking.

### 2\. `exec.c` - Fixing the Startup Panic

The `exec()` system call failed because it tried to write arguments to a stack page that was now lazy.

  * **The Solution**: A block of code was added to `exec.c` to eagerly allocate just one physical page for the stack, ensuring the `init` process could start successfully while leaving the rest of the heap lazy.

### 3\. `trap.c` - The Fault Handler

A robust `dabort_handler()` (Data Abort is ARM's term for a page fault) was implemented. When a fault occurs, it:

  * Validates the fault: Checks if the faulting address is within the process's legal memory space (`fa < p->sz`).
  * Allocates a page of physical RAM.
  * Maps the page by updating the process's page table.
  * Handles interrupts correctly, using `cli()` to disable and `sti()` to re-enable them, which was crucial to fixing a kernel hang.

### 4\. The Debugging Journey: The Final Bug in `trap_asm.S`

Even after all C code was correct, the system still hung silently after a page fault. This was the most challenging bug.

  * **The Problem**: Through step-by-step debugging, the issue was traced to the low-level assembly file `trap_asm.S`. The original code for the data abort handler was designed to treat a page fault as a fatal, unrecoverable error. After the C handler finished, the assembly code executed a deliberate infinite loop:

    ```armasm
    trap_dabort:
        ...
        BL      dabort_handler  ; Calls the C function
        B       .               ; BUG: Branch to self (infinite loop)
    ```

  * **The Solution**: A one-line change was made to this file, telling the system to return properly after the fault is handled:

    ```armasm
    trap_dabort:
        ...
        BL      dabort_handler
        B       trapret         ; FIX: Branch to the shared return code
    ```

This final change fixed the kernel hang and allowed the entire system to work correctly, demonstrating a complete and robust on-demand paging implementation.



## How to Build and Run

**Clean and Compile:**

```bash
make clean && make
```

**Run in QEMU:**

```bash
qemu-system-arm -M versatilepb -m 128 -cpu arm1176 -nographic -kernel kernel.elf
```

