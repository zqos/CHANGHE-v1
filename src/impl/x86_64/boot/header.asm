section .multiboot_header
header_start:
    ; magic number
    dd 0xe85250d6 ; multiboot2
    ; architecture
    dd 0 ; protected mode i386
    ; header length
    dd hearder_end - header_start
    ; checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (hearder_end - header_start))
    
    ;endtag
    dw 0
    dw 0
    dd 8
hearder_end:

