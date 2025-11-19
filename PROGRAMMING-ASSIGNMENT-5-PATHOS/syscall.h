#define SYS_fork           1
#define SYS_exit           2
#define SYS_wait           3
#define SYS_pipe           4
#define SYS_read           5
#define SYS_kill           6
#define SYS_exec           7
#define SYS_fstat          8
#define SYS_chdir          9
#define SYS_dup           10
#define SYS_getpid        11
#define SYS_sbrk          12
#define SYS_sleep         13
#define SYS_uptime        14
#define SYS_open          15
#define SYS_write         16
#define SYS_mknod         17
#define SYS_unlink        18
#define SYS_link          19
#define SYS_mkdir         20
#define SYS_close         21

// Place additional syscalls sequentially, continuing number order
#define SYS_proclist      22
#define SYS_settickets    23
#define SYS_srand         24
#define SYS_getpinfo      25
#define SYS_pg_pte        26
#define SYS_pg_pa         27
#define SYS_pg_flags      28
#define SYS_kpt           29
#define SYS_ugetpid       30

#define SYS_print_pt      31    

// New thread/barrier/syscalls next
#define SYS_thread_create 32
#define SYS_thread_exit   33
#define SYS_thread_join   34
#define SYS_waitpid       35
#define SYS_barrier_init  36
#define SYS_barrier_check 37
#define SYS_sleepChan     38
#define SYS_getChannel    39
#define SYS_sigChan       40
#define SYS_sigOneChan    41

#define SYS_symlink 42
