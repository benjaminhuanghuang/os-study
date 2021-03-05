boot.bin:
	nasm boot.asm -f bin -o boot.bin

install: boot.bin
	dd if=/dev/zero of=boot.img bs=512 count=2880
  # write file to disk
  dd if=mbr.bin of=boot.img bs=512 count=1 conv=notrunc

run: install
	bochs -f bochsrc