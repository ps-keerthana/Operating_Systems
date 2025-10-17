
#include "../types.h"
#include "user.h"

int
main(int argc, char **argv)
{
  int t = uptime();   // ticks since boot
  int sec = t / 100;
  int centi = t % 100;

  if (centi < 10)
    printf(1, "uptime: %d ticks (~%d.0%d s)\n", t, sec, centi);
  else
    printf(1, "uptime: %d ticks (~%d.%d s)\n", t, sec, centi);

  exit();
}
