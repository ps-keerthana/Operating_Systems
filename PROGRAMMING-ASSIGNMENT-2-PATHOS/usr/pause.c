
#include "../types.h"
#include "user.h"

static int isdigit(char c) {
  return c >= '0' && c <= '9';
}

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf(1, "Usage: pause <seconds>\n");
    exit();
  }

  // validate input
  for (char *p = argv[1]; *p; p++) {
    if (!isdigit(*p)) {
      printf(1, "pause: seconds must be a non-negative integer\n");
      exit();
    }
  }

  int seconds = atoi(argv[1]);
  if (seconds < 0) {
    printf(1, "pause: seconds must be non-negative\n");
    exit();
  }

  #define TICKS_PER_SEC 10
  int ticks = seconds * TICKS_PER_SEC;
  sleep(ticks);

  exit();
}
