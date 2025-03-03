### All
```bash
gcc -ffreestanding -m32 -nostartfiles -c kernel.c -o kernel.o
nasm -f elf32 -o boot.o boot.asm
ld -m elf_i386 -T linker.ld -o iso/boot/kernel.bin kernel.o boot.o
grub-mkrescue -o os.iso iso/
qemu-system-i386 -cdrom os.iso
```

### Compiling C code (core)

```bash
gcc -ffreestanding -m32 -nostartfiles -c kernel.c -o kernel.o
```

### Compiling assembly code

```bash
nasm -f elf32 -o boot.o boot.asm
```

### Building a binary file

```bash
ld -m elf_i386 -T linker.ld -o iso/boot/kernel.bin kernel.o boot.o
```

### Creating a GRUB configuration

```bash
cp grub.cfg iso/boot/grub/
```

### Creating an ISO image

```bash
grub-mkrescue -o os.iso iso/
```

### Testing ISO image via QEMU

```bash
qemu-system-i386 -cdrom os.iso
```


**Bold Text**
*Cursive*
***Bold Cursive***
- Section 1
  - Section 1 content

[Link](http://youtube.com)

![IMG](https://www.windowslatest.com/wp-content/uploads/2024/05/Bloom-wallpaper-OLED.jpg)

`import axios from "axios"`

> Citation


| Заголовок 1 | Заголовок 2 |
|-------------|-------------|
| Содержимое 1 | Содержимое 2 |
| Содержимое 3 | Содержимое 4 |

- [x] Выполнено
- [ ] Не выполнено
