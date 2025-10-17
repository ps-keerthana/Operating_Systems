# Programming Assignment 1: xv6 System Enhancements

---

## Introduction

For this programming assignment, we will delve into the **xv6 operating system** to add several new functionalities. This will provide hands-on experience with kernel-level programming, system calls, and process management.

---

## Setup & Tools

Before you begin, you will need to download the xv6 source code and install the necessary tools to build and run the operating system.

### Required Tools
* **ARM GCC Toolchain:** `arm-none-eabi-gcc`
* **QEMU:** For ARM system emulation and testing.
* **GNU-MAKE:** A build utility.

### Running xv6
Once the tools are installed and you have extracted the code tarball, run the following commands from your terminal to compile and boot the OS in the QEMU emulator:

```bash
prompt> make clean
prompt> make qemu
````

If everything is set up correctly, you should see the xv6 shell prompt:

```
xv6 kernel is booting
hart 2 starting
hart 1 starting
init: starting sh
$
```

You can run `ls` to see a list of available user programs in the starter OS.

-----

## Important Files

Take some time to familiarize yourself with the xv6 codebase. Here are some of the most relevant files for this assignment:

  * `user.h`: Contains the user-space definitions for system calls.
  * `usys.S`: Assembly code that handles the transition from user mode to kernel mode for system calls.
  * `syscall.h`: Maps system call names to their corresponding numbers.
  * `syscall.c`: Contains the kernel-side dispatcher for system calls.
  * `sysproc.c`: Contains kernel-level implementations for process-related system calls.
  * `defs.h`: A header file with function definitions used throughout the kernel.
  * `proc.h`: Defines the `struct proc` and other process-related structures.
  * `proc.c`: Implements process management functionalities, including the scheduler and process table traversal logic.

-----

## Tasks to Complete

You are required to implement the following features and commands.

### 1\. `uptime` Command (2 pts.)

Create a new user-level program named `uptime`. When executed from the xv6 shell, this command should print the total time the system has been running.

### 2\. `pause` Command (3 pts.)

Implement a `pause` command that suspends its own execution for a specified number of seconds.

  * **Create the file** `user/pause.c`. You can reference other programs in the `user/` directory (e.g., `echo.c`, `grep.c`) as examples for handling command-line arguments.
  * **Add your program** to the `UPROGS` variable in the `Makefile` so it gets compiled.
  * **Argument Handling:**
      * The program should accept one command-line argument: the number of seconds to pause.
      * If the user does not provide an argument, the program should print an error message to the console.
      * The command-line argument is passed as a string; use the provided `atoi` function (in `user/ulib.c`) to convert it to an integer.
  * **Implementation:** Use the existing `sleep` system call to implement the pause functionality.
  * **Exit Gracefully:** The `main` function of your `pause` program should call `exit(0)` upon completion.

### 3\. Shell Tab Completion (3 pts.)

Modify the xv6 shell (`sh`) to support **tab completion**. When the user presses the `Tab` key:

  * If the partially typed command is unique, the shell should complete the command name automatically.
  * If the partial text matches multiple commands, the shell should list all possible completions.

### 4\. `ps` Command (4 pts.)

Implement a `ps` (process status) command that displays details for all processes currently running on the system. You will likely need to implement one or more new system calls to retrieve the necessary information from the kernel.

The output for each process should include the following fields:

  * **Process ID (PID)**
  * **Parent's Process ID (PPID)**
  * **Process Name**
  * **Process State** (e.g., running, sleeping, zombie)
  * **System Call Count:** The total number of system calls the process has invoked since it started.

<!-- end list -->
