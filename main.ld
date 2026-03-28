MEMORY {
    SOME_NAME : ORIGIN = 0xA000 , LENGTH = 0x1000
}

SECTIONS {
    .text : {
        main.o (.text)
    } > SOME_NAME

    .data : {
        main.o (.data)
    } > SOME_NAME

    .bss : {
        main.o (.bss)
    } > SOME_NAME
}