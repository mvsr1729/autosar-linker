MEMORY {
    ROM : ORIGIN = 0xA000 , LENGTH = 0x1000
    RAM : ORIGIN = 0xC000 , LENGTH = 0x1000
}

a = 16;

SECTIONS {
    b = 20;
    .Subaru : {
        * (pqr)
        
    } > ROM AT > ROM

    .text : {
        * (.text)
        c = a+b;
        d = a-b;
        e = a*b;
        f = b%a;
    } > ROM  AT > ROM

     .rodata : {
        * (abc)
        * (.rodata)
        . = . + a + 16;
        _src_start_data_ = .;
    } > ROM AT > ROM
 
     .data : {
        _dst_start_data_ = .;
        * (.data)
        _dst_end_data_ = .;
    } > RAM AT > ROM

    .bss : {
        _start_bss_ = .;
        * (.bss)
        _end_bss_ = .;
    } > RAM AT > RAM

     /DISCARD/ : {
        * (*)
    } 
}