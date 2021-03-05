## bochs/ bximage
```
  bximage
```



## dd if of
mbr.bin 512 bytes
extend.bin was written to 2nd sector
```
  cat mbr.bin extend.bin > boot.bin

  # create empty img
  dd if=/dev/zero of=boot.img bs=512 count=2880
```

or 

```
  # create empty img
  dd if=/dev/zero of=boot.img bs=512 count=2880

  # write file to disk
  dd if=mbr.bin of=boot.img bs=512 count=1 conv=notrunc
	dd if=extend.bin of=boot.img bs=512 count=1 seek=1

```