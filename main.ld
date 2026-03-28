MEMORY {
    SOME_NAME : ORIGIN = 0xA000 , LENGTH = 0x1000
}

SECTIONS {
    .text : {
        * (.text)
        
    } > SOME_NAME

     .data : {
        * (.data)
    } > SOME_NAME
 
    .bss : {
        * (.bss)
    } > SOME_NAME 

     /DISCARD/ : {
        * (*)
    } 
}