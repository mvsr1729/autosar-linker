
//extern int uninit_global;
//extern int init_global;


int __attribute__((section("abc"))) uninit_global;
int init_global = 10;

extern char _src_start_data_;
extern char _dst_start_data_;
extern char _dst_end_data_;
extern char _start_bss_;
extern char _end_bss_;


int foo(int local) {
    return local + uninit_global + init_global;
}

void __attribute__((section("pqr"))) xyz() {
    char * src_start = &_src_start_data_;
    char * dst_start = &_dst_start_data_;
    char * dst_end = &_dst_end_data_;
    char * start_bss = &_start_bss_;
    char * end_bss = &_end_bss_;

    while (dst_start != dst_end)
    {
        *dst_start = *src_start;
        dst_start++;
        src_start++;
    }

    while (start_bss != end_bss)
    {
        *start_bss = 0;
        start_bss++;
    }
    


}