all: my_program

main.o: src/main.asm
	nasm -f elf64 src/main.asm -o main.o

my_program: main.o
	ld -o my_program main.o

clean:
	rm -f main.o my_program
