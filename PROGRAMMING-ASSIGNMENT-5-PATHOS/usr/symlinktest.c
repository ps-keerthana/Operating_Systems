#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main() {
    // Create a file "targetfile"
    int fd = open("targetfile", O_CREATE | O_WRONLY);
    if (fd < 0) {
        printf(1, "Failed to create targetfile\n");
        exit();
    }
    write(fd, "Hello Symlink!\n", 15);
    close(fd);

    // Create a symbolic link "mylink" pointing to "targetfile"
    if (symlink("targetfile", "mylink") < 0) {
        printf(1, "symlink creation failed\n");
        exit();
    } else {
        printf(1, "symlink created successfully\n");
    }

    // Open the symlink and read from it
    fd = open("mylink", O_RDONLY);
    if (fd < 0) {
        printf(1, "Failed to open symlink\n");
        exit();
    }

    char buf[100];
    int n = read(fd, buf, sizeof(buf)-1);
    if (n < 0) {
        printf(1, "Read from symlink failed\n");
        close(fd);
        exit();
    }

    buf[n] = 0;
    printf(1, "Read from symlink target: %s", buf);
    close(fd);

    // Clean up
    unlink("mylink");
    unlink("targetfile");

    exit();
}
