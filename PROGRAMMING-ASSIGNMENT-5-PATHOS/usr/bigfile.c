#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

#define BLOCKSIZE 512

int main(int argc, char *argv[]) {
    int fd, i, j;
    // Conservative test that works with default fs.img size
    // Test: 11 direct + 128 indirect + 61 double-indirect = 200 blocks
    // This thoroughly tests all three levels without exceeding disk space
    int blocks_to_write = 200;
    char write_buf[BLOCKSIZE];
    char read_buf[BLOCKSIZE];
    int errors = 0;

    printf(1, "=== Big File Test ===\n");
    printf(1, "Testing %d blocks (%.1f KB)\n", blocks_to_write, 
           (blocks_to_write * BLOCKSIZE) / 1024.0);
    printf(1, "Direct: 11, Indirect: 128, Double-indirect: %d\n", 
           blocks_to_write - 139);

    // Phase 1: Write
    printf(1, "\n[Phase 1] Writing blocks...\n");
    fd = open("bigfile", O_CREATE | O_WRONLY);
    if(fd < 0){
        printf(1, "ERROR: Failed to create bigfile\n");
        exit();
    }

    for(i = 0; i < blocks_to_write; i++) {
        // Fill buffer with identifiable pattern based on block number
        for (j = 0; j < BLOCKSIZE; j++) {
            write_buf[j] = (i + j) % 256;
        }
        
        if(write(fd, write_buf, BLOCKSIZE) != BLOCKSIZE) {
            printf(1, "ERROR: Write failed at block %d\n", i);
            close(fd);
            exit();
        }
        
        // Progress indicator every 50 blocks
        if (i % 50 == 0 || i == blocks_to_write - 1) {
            printf(1, "  Progress: %d/%d blocks\n", i + 1, blocks_to_write);
        }
    }
    close(fd);
    printf(1, "[Phase 1] SUCCESS: Wrote %d blocks\n", blocks_to_write);

    // Phase 2: Read and verify
    printf(1, "\n[Phase 2] Reading and verifying blocks...\n");
    fd = open("bigfile", O_RDONLY);
    if(fd < 0){
        printf(1, "ERROR: Cannot open bigfile for reading\n");
        exit();
    }
    
    for(i = 0; i < blocks_to_write; i++) {
        int rc = read(fd, read_buf, BLOCKSIZE);
        if(rc != BLOCKSIZE) {
            printf(1, "ERROR: Read failed at block %d (got %d bytes)\n", i, rc);
            close(fd);
            exit();
        }
        
        // Verify data
        for (j = 0; j < BLOCKSIZE; j++) {
            char expected = (i + j) % 256;
            if(read_buf[j] != expected) {
                if(errors < 10) {  // Limit error messages
                    printf(1, "ERROR: Mismatch at block %d, byte %d: "
                           "expected %d, got %d\n", 
                           i, j, expected, read_buf[j]);
                }
                errors++;
                break;  // Only report first error per block
            }
        }
        
        // Progress indicator every 50 blocks
        if (i % 50 == 0 || i == blocks_to_write - 1) {
            printf(1, "  Progress: %d/%d blocks verified\n", i + 1, blocks_to_write);
        }
    }
    close(fd);
    
    // Results
    printf(1, "\n=== Test Results ===\n");
    if(errors == 0) {
        printf(1, "SUCCESS: All %d blocks verified correctly!\n", blocks_to_write);
        printf(1, "Double-indirect block support is working!\n");
        printf(1, "\nBlock allocation breakdown:\n");
        printf(1, "  Direct blocks: 11\n");
        printf(1, "  Indirect blocks: 128\n");
        printf(1, "  Double-indirect blocks: %d\n", blocks_to_write - 139);
    } else {
        printf(1, "FAILURE: %d blocks had data errors\n", errors);
    }
    
    exit();
}
// #include "types.h"
// #include "stat.h"
// #include "user.h"
// #include "fcntl.h"

// int main(int argc, char *argv[]) {
//     printf(1, "bigfile test starting...\n");
//     exit();
// }