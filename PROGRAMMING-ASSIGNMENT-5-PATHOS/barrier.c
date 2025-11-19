/*----------xv6 sync lab----------*/
#include "types.h"
#include "arm.h"
#include "spinlock.h"
#include "defs.h"
#include "barrier.h"

//define any variables needed here
static struct spinlock barrierlock;
static int barrier_count = 0;
static int barrier_threshold = 0;
static int barrier_initialized = 0;

int
barrier_init(int n)
{
    acquire(&barrierlock);
    barrier_threshold = n;
    barrier_count = 0;
    barrier_initialized = 1;
    release(&barrierlock);
    return 0;
}

int
barrier_check(void)
{
    acquire(&barrierlock);
    if (!barrier_initialized) {
        release(&barrierlock);
        return -1;
    }
    barrier_count++;
    if (barrier_count < barrier_threshold) {
        sleep((void*)&barrier_count, &barrierlock);
        // After waking up, release
        release(&barrierlock);
    } else {
        // Last process reached: wake all
        wakeup((void*)&barrier_count);
        barrier_count = 0; // reset since one-shot use
        release(&barrierlock);
    }
    return 0;
}

/*----------xv6 sync lock end----------*/




