#include "simplefs-ops.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

// Global array declaration from simplefs-disk.h
extern struct filehandle_t file_handle_array[MAX_OPEN_FILES];

/* --- Helper Function --- */

/**
 * @brief Searches the entire inode table for a file with the given name.
 * * @param filename The name of the file to search for.
 * @return int The inode number if found, or -1 otherwise.
 */
int simplefs_find_inode_by_name(char *filename) {
    struct inode_t current_inode;

    for (int i = 0; i < NUM_INODES; i++) {
        simplefs_readInode(i, &current_inode);
        if (current_inode.status == INODE_IN_USE) {
            if (strcmp(current_inode.name, filename) == 0) {
                return i; // Found the file
            }
        }
    }
    return -1; // Not found
}

/* --- Core Filesystem Operations --- */

int simplefs_create(char *filename) {
    /*
        Create file with name `filename` on disk.
        Returns the inode number on success, -1 on failure.
    */

    // 1. Check if file already exists
    if (simplefs_find_inode_by_name(filename) != -1) {
        // File with this name already exists
        return -1;
    }

    // 2. Find a free inode
    int inode_num = simplefs_allocInode();
    if (inode_num == -1) {
        // No free inodes available
        return -1;
    }

    // 3. Initialize the new Inode structure
    struct inode_t new_inode;
    
    // Set status and size
    new_inode.status = INODE_IN_USE;
    new_inode.file_size = 0;
    
    // Copy and null-terminate the filename
    strncpy(new_inode.name, filename, MAX_NAME_STRLEN - 1);
    new_inode.name[MAX_NAME_STRLEN - 1] = '\0';

    // Initialize all direct block pointers to -1 (unallocated)
    for (int i = 0; i < MAX_FILE_SIZE; i++) {
        new_inode.direct_blocks[i] = -1;
    }

    // 4. Write the initialized Inode back to disk
    simplefs_writeInode(inode_num, &new_inode);

    // 5. Return the inode number
    return inode_num;
}


void simplefs_delete(char *filename) {
    /*
        delete file with name `filename` from disk
    */

    // 1. Find the file's inode number
    int inode_num = simplefs_find_inode_by_name(filename);
    if (inode_num == -1) {
        return; // File not found, nothing to do
    }

    // 2. Read the Inode
    struct inode_t file_inode;
    simplefs_readInode(inode_num, &file_inode);

    // 3. Free all data blocks pointed to by the Inode
    for (int i = 0; i < MAX_FILE_SIZE; i++) {
        int block_num = file_inode.direct_blocks[i];
        if (block_num != -1) {
            simplefs_freeDataBlock(block_num);
        }
    }

    // 4. Free the Inode itself
    simplefs_freeInode(inode_num);

    // (Assuming the file is closed before deleting, as per assignment instructions)
}


int simplefs_open(char *filename) {
    /*
        open file with name `filename`
        Returns the file handle index on success, -1 on failure.
    */

    // 1. Check if file exists and get its inode number
    int inode_num = simplefs_find_inode_by_name(filename);
    if (inode_num == -1) {
        return -1; // File does not exist
    }

    // 2. Find a free entry in the global file_handle_array
    int file_handle = -1;
    for (int i = 0; i < MAX_OPEN_FILES; i++) {
        // Assuming a handle is free if its inode_number is -1 (or some other defined "free" value).
        // Since the prompt defines filehandle_t with just offset and inode_number, 
        // we'll assume a free handle is one that is NOT associated with an inode.
        // The common practice is to use an invalid inode number (-1) to mark it as free.
        if (file_handle_array[i].inode_number == -1) {
            file_handle = i;
            break;
        }
    }

    if (file_handle == -1) {
        // No free file handles available
        return -1;
    }

    // 3. Initialize the file handle
    file_handle_array[file_handle].inode_number = inode_num;
    file_handle_array[file_handle].offset = 0; // Start at the beginning of the file

    // 4. Return the file handle index
    return file_handle;
}


void simplefs_close(int file_handle) {
    /*
        close file pointed by `file_handle`
    */

    // 1. Basic validation
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES) {
        return; 
    }

    // 2. Invalidate the file handle slot
    // Mark as free by setting inode_number to -1
    file_handle_array[file_handle].inode_number = -1;
    file_handle_array[file_handle].offset = 0;
}


int simplefs_seek(int file_handle, int nseek) {
    /*
        increase `file_handle` offset by `nseek`
        Returns 0 on success, -1 on failure.
    */

    // 1. Validate file handle
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES ||
        file_handle_array[file_handle].inode_number == -1) {
        return -1; // Invalid or closed file handle
    }

    // 2. Read the file's current size from its Inode
    int inode_num = file_handle_array[file_handle].inode_number;
    struct inode_t file_inode;
    simplefs_readInode(inode_num, &file_inode);
    int file_size = file_inode.file_size;

    // 3. Calculate the new offset
    int current_offset = file_handle_array[file_handle].offset;
    int new_offset = current_offset + nseek;

    // 4. Validate the new offset
    // Offset must be non-negative AND must not exceed the current file size
    if (new_offset < 0 || new_offset > file_size) {
        return -1; // Invalid seek position
    }

    // 5. Update the offset in the file handle
    file_handle_array[file_handle].offset = new_offset;

    return 0; // Success
}


int simplefs_read(int file_handle, char *buf, int nbytes) {
    /*
        read `nbytes` of data into `buf` from file pointed by `file_handle` starting at current offset
        Returns 0 on success, -1 on failure. (No partial reads)
    */

    // 1. Validate file handle
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES || 
        file_handle_array[file_handle].inode_number == -1) {
        return -1; // Invalid handle
    }

    // 2. Get file info (Inode and offset)
    int inode_num = file_handle_array[file_handle].inode_number;
    struct inode_t file_inode;
    simplefs_readInode(inode_num, &file_inode);

    int offset = file_handle_array[file_handle].offset;

    // 3. Check bounds (Cannot read past the current end of file)
    if (offset + nbytes > file_inode.file_size) {
        return -1;
    }
    
    // Trivial case: reading 0 bytes
    if (nbytes == 0) return 0;

    // 4. Read Loop
    int bytes_read = 0;
    char block_buffer[BLOCKSIZE];

    while (bytes_read < nbytes) {
        int current_pos = offset + bytes_read;
        int block_index = current_pos / BLOCKSIZE; 
        int block_offset = current_pos % BLOCKSIZE;

        // Check if block index is valid (should always be true due to file_size check)
        if (block_index >= MAX_FILE_SIZE || file_inode.direct_blocks[block_index] == -1) {
            // This is an internal consistency error if it happens after the size check
            return -1; 
        }
        int block_num = file_inode.direct_blocks[block_index];
        
        // Read the data block
        simplefs_readDataBlock(block_num, block_buffer); 

        // Calculate how many bytes to read in this block
        int remaining_in_block = BLOCKSIZE - block_offset;
        int remaining_total = nbytes - bytes_read;
        int read_len = (remaining_total < remaining_in_block) ? remaining_total : remaining_in_block;

        // Copy data to the user buffer
        memcpy(buf + bytes_read, block_buffer + block_offset, read_len);

        bytes_read += read_len;
    }

    // Note: The assignment specifies reading a file will NOT result in updating the offset value.
    return 0; // Success
}


int simplefs_write(int file_handle, char *buf, int nbytes) {
    /*
        write `nbytes` of data from `buf` to file pointed by `file_handle` starting at current offset
        Returns 0 on success, -1 on failure. (No partial writes, must rollback)
    */

    // 1. Validation and Setup
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES || file_handle_array[file_handle].inode_number == -1) return -1;
    if (nbytes == 0) return 0; // Trivial success

    int inode_num = file_handle_array[file_handle].inode_number;
    struct inode_t old_inode, new_inode;
    simplefs_readInode(inode_num, &old_inode);
    new_inode = old_inode; // Work with a copy for transactional approach

    int offset = file_handle_array[file_handle].offset;
    int end_offset = offset + nbytes;

    // Check for Max File Size
    if (end_offset > MAX_FILE_SIZE * BLOCKSIZE) return -1;

    // Array to track newly allocated blocks for rollback
    // We only need to track MAX_FILE_SIZE blocks total, but only allocate the ones we need.
    int newly_allocated_blocks[MAX_FILE_SIZE] = {0}; 
    int rollback_idx = 0;

    // Determine the range of blocks needed: [start_block, end_block]
    int start_block_index = offset / BLOCKSIZE;
    int end_block_index = (end_offset - 1) / BLOCKSIZE;

    // 2. Pre-allocate and Check Block Space
    for (int i = start_block_index; i <= end_block_index; i++) {
        if (new_inode.direct_blocks[i] == -1) {
            // Need a new block!
            int new_block_num = simplefs_allocDataBlock();
            if (new_block_num == -1) {
                // Allocation failed. Must rollback any blocks already allocated in this loop.
                for (int j = 0; j < rollback_idx; j++) {
                    simplefs_freeDataBlock(newly_allocated_blocks[j]);
                }
                return -1;
            }
            // Store the allocation in the new_inode and rollback array
            new_inode.direct_blocks[i] = new_block_num;
            newly_allocated_blocks[rollback_idx++] = new_block_num;
        }
    }

    // 3. Perform the Write (Block by Block)
    int bytes_written = 0;
    char block_buffer[BLOCKSIZE];
    int blocks_committed = 0; // Count blocks successfully written for rollback of written data

    while (bytes_written < nbytes) {
        int current_pos = offset + bytes_written;
        int block_index = current_pos / BLOCKSIZE;
        int block_offset = current_pos % BLOCKSIZE;

        int block_num = new_inode.direct_blocks[block_index];
        
        // 3a. Read the existing block content if it's a partial write
        // We only read if the block was previously allocated and the write doesn't cover the whole block.
        int read_needed = 0;
        
        // Read is needed if we start mid-block OR if we end mid-block AND the block was NOT newly allocated.
        
        if (block_offset != 0) read_needed = 1; // Start is not at block boundary
        
        int remaining_in_total = nbytes - bytes_written;
        if (block_offset + remaining_in_total < BLOCKSIZE) read_needed = 1; // Write doesn't fill the block

        // Check if block was ALREADY allocated 
        int block_was_unallocated_before = (old_inode.direct_blocks[block_index] == -1);

        if (read_needed && !block_was_unallocated_before) {
            // Read if a partial write is happening AND the block existed previously
            simplefs_readDataBlock(block_num, block_buffer);
        } else if (read_needed && block_was_unallocated_before) {
            // Partial write on a NEW block: zero out the buffer first, then write the data
            memset(block_buffer, 0, BLOCKSIZE); 
        }
        else if (!read_needed) {
            // Write covers the whole block: zero out (optional, but clean)
            if (block_offset == 0) {
                 memset(block_buffer, 0, BLOCKSIZE); 
            }
        }
        
        // 3b. Calculate write length and copy data to block buffer
        int remaining_in_block = BLOCKSIZE - block_offset;
        int write_len = (remaining_in_total < remaining_in_block) ? remaining_in_total : remaining_in_block;

        memcpy(block_buffer + block_offset, buf + bytes_written, write_len);

        // 3c. Write the block buffer back to disk
        simplefs_writeDataBlock(block_num, block_buffer);
        
        bytes_written += write_len;
        blocks_committed++;
    }

    // 4. Finalize: Write updated Inode to disk
    int size_updated = 0;
    if (end_offset > new_inode.file_size) {
        new_inode.file_size = end_offset; // Update file size
        size_updated = 1;
    }

    // Commit the new inode state.
    simplefs_writeInode(inode_num, &new_inode);
    
    // Success - newly allocated blocks are now part of the file. No need for rollback.
    // Note: The assignment specifies writing a file will NOT result in updating the offset value.

    return 0; // Success
} 

// Rollback is only needed for allocation failures. Since data writes are assumed to succeed,
// we don't need to worry about undoing data writes, only freeing uncommitted allocated blocks.