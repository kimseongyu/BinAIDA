//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>

// ---------------- Integer Types Definitions -----------------

typedef int64_t int128_t;

// ------------------- Function Prototypes --------------------

int64_t __do_global_dtors_aux(void);
int64_t __libc_csu_fini(void);
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3);
int64_t _fini(void);
int64_t _init(void);
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4);
int64_t deregister_tm_clones(void);
int64_t frame_dummy(void);
void function_1030(int64_t * d);
int64_t register_tm_clones(void);

// --------------------- Global Variables ---------------------

int64_t g1 = 0x1120; // 0x3e18
int64_t g2 = 0x10e0; // 0x3e20
int64_t g3 = 0; // 0x3ff8
int64_t g4 = 0; // 0x4028
int32_t g5;

// ------- Dynamically Linked Functions Without Header --------

void __cxa_finalize(int64_t * a1);
void __gmon_start__(void);
int32_t __libc_start_main(int64_t a1, int32_t a2, char ** a3, void (*a4)(), void (*a5)(), void (*a6)());

// ------------------------ Functions -------------------------

// Address range: 0x1000 - 0x101b
int64_t _init(void) {
    int64_t result = 0; // 0x1012
    if (*(int64_t *)0x3fe8 != 0) {
        // 0x1014
        __gmon_start__();
        result = &g5;
    }
    // 0x1016
    return result;
}

// Address range: 0x1030 - 0x1036
void function_1030(int64_t * d) {
    // 0x1030
    __cxa_finalize(d);
}

// Address range: 0x1040 - 0x106f
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4) {
    // 0x1040
    int64_t v1; // 0x1040
    __libc_start_main(0x1130, (int32_t)a4, (char **)&v1, (void (*)())0x1170, (void (*)())0x11e0, (void (*)())a3);
    __asm_hlt();
    // UNREACHABLE
}

// Address range: 0x1070 - 0x1099
int64_t deregister_tm_clones(void) {
    // 0x1070
    return &g4;
}

// Address range: 0x10a0 - 0x10d9
int64_t register_tm_clones(void) {
    // 0x10a0
    return 0;
}

// Address range: 0x10e0 - 0x1119
int64_t __do_global_dtors_aux(void) {
    // 0x10e0
    if (*(char *)&g4 != 0) {
        // 0x1118
        int64_t result; // 0x10e0
        return result;
    }
    // 0x10ed
    if (g3 != 0) {
        // 0x10fb
        __cxa_finalize((int64_t *)*(int64_t *)0x4020);
    }
    int64_t result2 = deregister_tm_clones(); // 0x1107
    *(char *)&g4 = 1;
    return result2;
}

// Address range: 0x1120 - 0x1129
int64_t frame_dummy(void) {
    // 0x1120
    return register_tm_clones();
}

// Address range: 0x1130 - 0x1162
int main(int argc, char ** argv) {
    int64_t v1 = __asm_movss_1(__asm_movss(*(int32_t *)0x2004)); // 0x114a
    __asm_movss_1(__asm_addss(__asm_cvtsi2ss(1), (int32_t)v1));
    return 0;
}

// Address range: 0x1170 - 0x11d5
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3) {
    int64_t result = _init(); // 0x119c
    if ((int64_t)&g2 - (int64_t)&g1 >> 3 == 0) {
        // 0x11c6
        return result;
    }
    int64_t v1 = 0; // 0x11a5
    while (v1 + 1 != (int64_t)&g2 - (int64_t)&g1 >> 3) {
        // 0x11b0
        v1++;
    }
    // 0x11c6
    return result;
}

// Address range: 0x11e0 - 0x11e5
int64_t __libc_csu_fini(void) {
    // 0x11e0
    int64_t result; // 0x11e0
    return result;
}

// Address range: 0x11e8 - 0x11f5
int64_t _fini(void) {
    // 0x11e8
    int64_t result; // 0x11e8
    return result;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (9.4.0)
// Detected functions: 11

