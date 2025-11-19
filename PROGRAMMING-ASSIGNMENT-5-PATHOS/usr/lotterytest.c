#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define NUM_CHILDREN 2
#define MAX_TICKS 100   // number of monitoring iterations

int
main(void) {
    int i, pid;
    struct pstat st;

    // Fork children
    for(i = 0; i < NUM_CHILDREN; i++){
        pid = fork();
        if(pid == 0){
            // --- Child process ---
            int mypid = getpid();

            // Assign tickets
            settickets(mypid, i + 1);   // child0: 1 ticket, child1: 2 tickets

            // Child0: test sleep boosting
            if(i == 0){
                printf(1, "Child %d sleeping for 5 ticks\n", mypid);
                sleep(5);
                printf(1, "Child %d woke up! Boosts applied.\n", mypid);
            }

            // Busy run for a while
            for(int k = 0; k < MAX_TICKS; k++){
                if(getpinfo(&st) == 0){
                    for(int j = 0; j < NPROC; j++){
                        if(st.inuse[j] && st.pid[j] == mypid){
                            printf(1, "[Child %d] tickets=%d boosts=%d runticks=%d\n",
                                   st.pid[j], st.tickets[j],
                                   st.boostsleft[j], st.runticks[j]);
                        }
                    }
                }
                sleep(1);  // yield between reports
            }
            exit();
        }
    }

    // --- Parent process ---
    int parent_pid = getpid();
    settickets(parent_pid, 5);   // give parent more tickets

    for(int k = 0; k < MAX_TICKS; k++){
        if(getpinfo(&st) == 0){
            for(int j = 0; j < NPROC; j++){
                if(st.inuse[j] &&
                   (st.pid[j] == parent_pid || st.pid[j] > 2)){ // skip kernel/init
                    printf(1, "[Parent sees] PID=%d tickets=%d boosts=%d runticks=%d\n",
                           st.pid[j], st.tickets[j],
                           st.boostsleft[j], st.runticks[j]);
                }
            }
        }
        sleep(1);
    }

    // Kill children so test ends
    for(i = 0; i < NUM_CHILDREN; i++)
        wait();

    printf(1, "Test finished. Exiting cleanly.\n");
    exit();
}