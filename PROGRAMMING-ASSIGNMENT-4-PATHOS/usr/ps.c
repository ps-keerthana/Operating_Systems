#include "types.h"
#include "stat.h"
#include "user.h"

#define MAXPROCS 64

int proclist(int max, struct user_proc_data *list);

char *states[] = {
  [0] "UNUSED", [1] "EMBRYO", [2] "SLEEPING",
  [3] "RUNNABLE", [4] "RUNNING", [5] "ZOMBIE"
};

// to calculate length of the string
int str_length(char *s) {
    int l = 0;
    while (s[l] != '\0') l++;
    return l;
}

// to calculate no of digits in an integer
int int_len(int n) {
    int length = 0;
    if (n == 0) return 1;
    while (n > 0) {
        n /= 10;
        length++;
    }
    return length;
}

// to print spaces for paddin so that columns are aligned properly
void print_spaces(int num_spaces) {
    for (int i = 0; i < num_spaces; i++) {
        printf(1, " ");
    }
}

int main(int argc, char *argv[]) {
    struct user_proc_data list[MAXPROCS];
    int num = proclist(MAXPROCS, list);

    // getting the maximum width of all the process properties
    int pid_width = 5, ppid_width = 5, sc_width = 8, state_width = 10; // initial reasonable widths

    for (int i = 0; i < num; i++) {
        int pid_len = int_len(list[i].pid);
        if (pid_len > pid_width) pid_width = pid_len;

        int ppid_len = int_len(list[i].ppid);
        if (ppid_len > ppid_width) ppid_width = ppid_len;

        int sc_len = int_len(list[i].count_sc);
        if (sc_len > sc_width) sc_width = sc_len;

        int state_len = str_length(states[list[i].state]);
        if (state_len > state_width) state_width = state_len;
    }

    // header for the table, padding is done for proper alignment
    printf(1, "PID");
    print_spaces(pid_width - str_length("PID") + 1);

    printf(1, "PPID");
    print_spaces(ppid_width - str_length("PPID") + 1);

    printf(1, "STATE");
    print_spaces(state_width - str_length("STATE") + 1);

    printf(1, "SYSCALLS");
    print_spaces(sc_width - str_length("SYSCALLS") + 1);

    printf(1, "NAME\n");

    // looping to print each process in the process table
    for (int i = 0; i < num; i++) {
        //  null-terminating a process name
        // process names are stored in  fixed-size character array in xv6 and 
        // if name of the process occupies total array there would be no null terminater
        // at end and would print garbage values so  
        // we set the last element to '\0' o print properly in the table.
        list[i].name[sizeof(list[i].name)-1] = '\0';

        // pid with padding
        printf(1, "%d", list[i].pid);
        print_spaces(pid_width - int_len(list[i].pid) + 1);

        // ppid with padding
        printf(1, "%d", list[i].ppid);
        print_spaces(ppid_width - int_len(list[i].ppid) + 1);

        // state with padding
        printf(1, "%s", states[list[i].state]);
        print_spaces(state_width - str_length(states[list[i].state]) + 1);

        // systemcalls with padding
        printf(1, "%d", list[i].count_sc);
        print_spaces(sc_width - int_len(list[i].count_sc) + 1);

        // name with padding
        printf(1, "%s\n", list[i].name);
    }

    exit();
}
