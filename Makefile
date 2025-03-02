BOOT_ASM = boot.asm
KERNEL_C = kernel.c
ISO_DIR = iso
GRUB_CFG = $(ISO_DIR)/boot/grub/grub.cfg
BOOT_BIN = $(ISO_DIR)/boot/boot.bin
KERNEL_BIN = $(ISO_DIR)/boot/kernel.bin
ISO_IMAGE = os.iso

$(BOOT_BIN): $(BOOT_ASM)
	nasm -f bin -o $@ $<

$(KERNEL_BIN): $(KERNEL_C)
	gcc -ffreestanding -m32 -o $@ $<

$(ISO_IMAGE): $(BOOT_BIN) $(KERNEL_BIN) $(GRUB_CFG)
	grub-mkrescue -o $@ $(ISO_DIR)

$(GRUB_CFG):
	mkdir -p $(ISO_DIR)/boot/grub
	echo "menuentry 'My Simple OS' { multiboot /boot/kernel.bin boot }" > $@

all: $(ISO_IMAGE)

clean:
	rm -rf $(ISO_DIR) $(ISO_IMAGE)
