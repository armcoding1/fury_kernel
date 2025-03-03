#include <stdint.h>

#define MULTIBOOT_MAGIC 0x1BADB002
#define MULTIBOOT_FLAGS 0
#define MULTIBOOT_CHECKSUM -(MULTIBOOT_MAGIC + MULTIBOOT_FLAGS)

typedef struct
{
    uint32_t magic;
    uint32_t flags;
    uint32_t checksum;
} __attribute__((packed)) multiboot_header_t;

multiboot_header_t multiboot_header __attribute__((section(".multiboot"))) = {
    MULTIBOOT_MAGIC,
    MULTIBOOT_FLAGS,
    MULTIBOOT_CHECKSUM};

void print_string(const char *str)
{
    unsigned short *video_memory = (unsigned short *)0xB8000;
    while (*str)
    {
        *video_memory = (unsigned short)(*str | 0x0F00);
        str++;
        video_memory++;
    }
}

void kernel_main(void)
{
    print_string("Installing Vesperis Kernel...");

    while (1)
    {
    }
}
