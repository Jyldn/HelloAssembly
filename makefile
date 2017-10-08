all: hello1 hello2

hello1: hello.asm
	nasm -f elf64 -o hello.o hello.asm

hello2: hello.o
	ld -o hello hello.o