#ifndef _PSTAT_H_
#define _PSTAT_H_

#include "param.h"

struct pstat {
  int inuse[NPROC];     // whether this slot is in use
  int pid[NPROC];       // process ID
  int tickets[NPROC];   // base number of tickets
  int runticks[NPROC];  // total ticks scheduled
  int boostsleft[NPROC];// remaining boosted ticks
};

#endif // _PSTAT_H_
