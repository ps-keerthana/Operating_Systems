include ../makefile.inc

CFLAGS += -iquote ../
ASFLAGS += -I ../
ULIB = ulib.o usys.o printf.o umalloc.o

MKFS = ../tools/mkfs
FS_IMAGE = ../build/fs.img

UPROGS=\
	_cat\
	_echo\
	_grep\
	_init\
	_kill\
	_ln\
	_ls\
	_mkdir\
	_rm\
	_sh\
	_stressfs\
	_usertests\
	_wc\
	_zombie\
	_uptime\
	_pause\
 	_ps\
 	_testtickets\
 	_lotterytest\
 	_pagetest\
 	_test\
	_t_barrier\
	_t_l_cv1\
	_t_l_cv2\
	_t_lock\
	_t_sem1\
	_t_sem2\
	_t_sleepwake\
	_symlinktest\
	_bigfile\
	_t_threads\
	_t_waitpid\

all: $(FS_IMAGE)

_%: %.o $(ULIB)
	$(LD) $(LDFLAGS) -N -e main -Ttext 0 -o $@ $^  -L ../ $(LIBGCC)
	$(OBJDUMP) -S $@ > $*.asm
	$(OBJDUMP) -t $@ | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$$/d' > $*.sym

_forktest: forktest.o $(ULIB)
	# forktest has less library code linked in - needs to be small
	# in order to be able to max out the proc table.
	$(LD) $(LDFLAGS) -N -e main -Ttext 0 -o _forktest forktest.o ulib.o usys.o
	$(OBJDUMP) -S _forktest > forktest.asm

$(FS_IMAGE): $(MKFS) $(UPROGS)
	@echo "Building filesystem image..."
	@ls -lh _sh _init 2>/dev/null || echo "WARNING: _sh or _init not found!"
	$(MKFS) $@ $(UPROGS)
	@echo "Filesystem image created successfully"

clean: 
	rm -f *.o *.d *.asm *.sym $(FS_IMAGE) \
	.gdbinit \
	$(UPROGS)

# Debug target to check what's being built
debug:
	@echo "UPROGS files:"
	@ls -lh $(UPROGS) 2>/dev/null || echo "Some UPROGS missing"
	@echo "\nChecking _sh and _init specifically:"
	@ls -lh _sh _init 2>/dev/null || echo "_sh or _init missing!"