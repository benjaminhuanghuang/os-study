boot1.bin: bootl01.asm
	nasm boot01.asm -f bin -o boot.bin

boot2.bin: boot02.asm
	nasm boot02.asm -f bin -o boot.bin



run1: boot1.bin
	qemu-system-x86_64 -fda boot.bin -boot a

run2: boot2.bin
	qemu-system-x86_64 -fda boot.bin -boot a

clean:
	rm -rf *.bin
	