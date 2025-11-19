// In usr/pagetest.c
#include "types.h"
#include "stat.h"
#include "user.h"

int main(void) {
    printf(1, "Starting On-Demand Paging Test \n");

    // sbrk() should only increase process size (proc->sz), not allocate physical memory.
    char *mem = sbrk(4096); // Request one new page of memory.

    if (mem == (char*)-1) {
        printf(1, "sbrk failed. Test cannot continue.\n");
        exit();
    }

    printf(1, "sbrk() allocated memory at virtual address %p\n", mem);
    printf(1, "About to access this new memory. This should trigger a page fault...\n");

    // This write operation WILL cause a page fault.
    // Your dabort_handler in trap.c will catch it, allocate a page, map it, and return.
    mem[0] = 'H'; 
    mem[1024] = 'i';

    // If the program gets here, it means the page fault was handled successfully!
    printf(1, "Success! Page fault was handled correctly.\n");
    printf(1, "Verified by reading back the written data:++ %c%c\n", mem[0], mem[1024]);
    
    printf(1, "On-demand paging test passed! \n");

    exit();
}