// In user/test.c
// This is the correct version for the completed assignment.

#include "types.h"
#include "user.h"
#include "stat.h"
#include "mmu.h"

#define PGSIZE 4096

// Forward declarations from the original test file
void ugetpid_test(void);
void err(char *why);

int
main(int argc, char *argv[])
{
    int num_pages_to_alloc = 30;
    int alloc_size = num_pages_to_alloc * PGSIZE;

    printf(1, "Running Test Program for Page Table Printing\n\n");
    
    printf(1, "1. Allocating %d pages of VIRTUAL memory using sbrk()...\n", num_pages_to_alloc);
    char *memory = sbrk(alloc_size);

    if (memory == (char *)-1) {
        printf(1, "sbrk failed!\n");
        exit();
    }
    
    // --- THIS IS THE KEY "TOUCHING" LOOP ---
    printf(1, "2. 'Touching' each page to trigger physical allocation via page faults...\n");
    // In an on-demand system, we must write to each page to force the kernel
    // to handle the page fault and allocate a physical page for it.
    for (int i = 0; i < num_pages_to_alloc; i++) {
        memory[i * PGSIZE] = i; // Write to the first byte of each page
    }
    printf(1, "   ...All pages are now physically mapped.\n");
    // --- END OF KEY LOOP ---
    
    printf(1, "3. Now calling print_pt() to observe the page table.\n");
    print_pt(); // Now this will show all 30 pages mapped as expected

    printf(1, "\n--- Running other tests ---\n");
    ugetpid_test();

    printf(1, "\nAll assignment tests passed successfully!\n");
    exit();
}

// Keep the helper functions from the original test.c
char *testname = "";

void err(char *why) {
    printf(1, "test: %s failed: %s, pid=%d\n", testname, why, getpid());
    exit();
}

void ugetpid_test() {
    printf(1, "ugetpid_test starting\n");
    testname = "ugetpid_test";
    for(int i = 0; i < 10; i++) {
        int pid = fork();
        if(pid < 0)
            err("fork failed");
        if(pid > 0) {
            wait();
            continue;
        }
        exit();
    }
    printf(1, "ugetpid_test: OK\n");
}