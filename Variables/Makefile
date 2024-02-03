# Makefile for NASM assembly

# Define the assembler and its flags
AS=nasm
ASFLAGS=-f elf32

# Define the linker and its flags
LD=ld
LDFLAGS=-m elf_i386


# Define the source files and the output executable
SRCS=variables.asm
OBJS=$(SRCS:.asm=.o)
OUTFILE=executable

# Default target
all: $(OUTFILE)

# Rule to build the executable
$(OUTFILE): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(OUTFILE)

# Rule to assemble the source files
%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

# Rule to clean the build artifacts
clean:
	rm -f $(OBJS) $(OUTFILE)