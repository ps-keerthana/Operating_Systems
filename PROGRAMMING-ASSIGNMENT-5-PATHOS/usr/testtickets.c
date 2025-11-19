#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

int main() {
    int pid = getpid();

    printf(1, "Current PID: %d\n", pid);

    // Test settickets
    if (settickets(pid, 5) == 0)
        printf(1, "Successfully set 5 tickets for PID %d\n", pid);
    else
        printf(1, "Failed to set tickets\n");

    // Test srand
    srand(123);
    printf(1, "Seed set using srand(123)\n");

    // Test getpinfo
    struct pstat ps;
    if (getpinfo(&ps) == 0) {
        printf(1, "Process info:\n");
        for(int i = 0; i < 64; i++) {
            if(ps.inuse[i])
                printf(1, "PID %d: tickets=%d, runticks=%d, boostsleft=%d\n",
                    ps.pid[i], ps.tickets[i], ps.runticks[i], ps.boostsleft[i]);
        }
    } else {
        printf(1, "Failed to get process info\n");
    }

    exit();
}
