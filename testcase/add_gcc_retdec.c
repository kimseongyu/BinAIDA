//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>

// ------------------- Function Prototypes --------------------

int64_t __do_global_dtors_aux(void);
int64_t __libc_csu_fini(void);
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3);
int64_t _fini(void);
int64_t _init(void);
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4);
int64_t add(int32_t * a1, int64_t a2);
int64_t deregister_tm_clones(void);
int64_t frame_dummy(void);
void function_1050(int64_t * d);
void function_1060(void);
int32_t function_1070(char * format, ...);
int64_t register_tm_clones(void);

// --------------------- Global Variables ---------------------

int64_t g1 = 0x1160; // 0x3db0
int64_t g2 = 0x1120; // 0x3db8
int64_t g3 = 0; // 0x4010
int32_t g4;

// ------- Dynamically Linked Functions Without Header --------

void __cxa_finalize(int64_t * a1);
void __gmon_start__(void);
int32_t __libc_start_main(int64_t a1, int32_t a2, char ** a3, void (*a4)(), void (*a5)(), void (*a6)());
void __stack_chk_fail(void);

// ------------------------ Functions -------------------------

// Address range: 0x1000 - 0x101b
int64_t _init(void) {
    int64_t result = 0; // 0x1012
    if (*(int64_t *)0x3fe8 != 0) {
        // 0x1014
        __gmon_start__();
        result = &g4;
    }
    // 0x1016
    return result;
}

// Address range: 0x1050 - 0x105b
void function_1050(int64_t * d) {
    // 0x1050
    __cxa_finalize(d);
}

// Address range: 0x1060 - 0x106b
void function_1060(void) {
    // 0x1060
    __stack_chk_fail();
}

// Address range: 0x1070 - 0x107b
int32_t function_1070(char * format, ...) {
    // 0x1070
    return printf(format);
}

// Address range: 0x1080 - 0x10af
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4) {
    // 0x1080
    int64_t v1; // 0x1080
    __libc_start_main(0x1188, (int32_t)a4, (char **)&v1, (void (*)())0x1220, (void (*)())0x1290, (void (*)())a3);
    __asm_hlt();
    // UNREACHABLE
}

// Address range: 0x10b0 - 0x10d9
int64_t deregister_tm_clones(void) {
    // 0x10b0
    return &g3;
}

// Address range: 0x10e0 - 0x1119
int64_t register_tm_clones(void) {
    // 0x10e0
    return 0;
}

// Address range: 0x1120 - 0x1159
int64_t __do_global_dtors_aux(void) {
    // 0x1120
    if (*(char *)&g3 != 0) {
        // 0x1158
        int64_t result; // 0x1120
        return result;
    }
    // 0x112d
    if (*(int64_t *)0x3ff8 != 0) {
        // 0x113b
        __cxa_finalize((int64_t *)*(int64_t *)0x4008);
    }
    int64_t result2 = deregister_tm_clones(); // 0x1147
    *(char *)&g3 = 1;
    return result2;
}

// Address range: 0x1160 - 0x1169
int64_t frame_dummy(void) {
    // 0x1160
    return register_tm_clones();
}

// Address range: 0x1169 - 0x1188
int64_t add(int32_t * a1, int64_t a2) {
    // 0x1169
    int64_t v1; // 0x1169
    return (0x1000000 * (int32_t)a2 >> 24) + (int32_t)v1;
}

// Address range: 0x1188 - 0x1211
int main(int argc, char ** argv) {
    int64_t v1 = __readfsqword(40); // 0x1194
    int32_t v2 = 1; // bp-36, 0x11a3
    int64_t v3 = add(&v2, 2); // 0x11bb
    add(&v2, 2);
    printf("%d\n", v3 & 0xffffffff);
    int64_t result = 0; // 0x1208
    if (v1 != __readfsqword(40)) {
        // 0x120a
        __stack_chk_fail();
        result = &g4;
    }
    // 0x120f
    return result;
}

// Address range: 0x1220 - 0x1285
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3) {
    int64_t result = _init(); // 0x124c
    if ((int64_t)&g2 - (int64_t)&g1 >> 3 == 0) {
        // 0x1276
        return result;
    }
    int64_t v1 = 0; // 0x1255
    while (v1 + 1 != (int64_t)&g2 - (int64_t)&g1 >> 3) {
        // 0x1260
        v1++;
    }
    // 0x1276
    return result;
}

// Address range: 0x1290 - 0x1295
int64_t __libc_csu_fini(void) {
    // 0x1290
    int64_t result; // 0x1290
    return result;
}

// Address range: 0x1298 - 0x12a5
int64_t _fini(void) {
    // 0x1298
    int64_t result; // 0x1298
    return result;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (9.4.0)
// Detected functions: 14

