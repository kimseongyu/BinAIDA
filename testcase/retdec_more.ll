*** IR Dump Before LLVM instruction optimization using RDA ***

define i64 @add(i32* %arg1, i64 %arg2) {
dec_label_pc_401126:
  store i64 %arg2, i64* @rsi
  %0 = ptrtoint i32* %arg1 to i64
  store i64 %0, i64* @rdi
  %stack_var_0 = alloca i64
  %stack_var_-20 = alloca i8
  %stack_var_-16 = alloca i64
  %stack_var_-8 = alloca i64

; 0x401126
  store volatile i64 4198694, i64* @_asm_program_counter
  %1 = load i64, i64* @rbp
  store i64 %1, i64* %stack_var_-8
  %2 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %2, i64* @rsp

; 0x401127
  store volatile i64 4198695, i64* @_asm_program_counter
  %3 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %3, i64* @rbp

; 0x40112a
  store volatile i64 4198698, i64* @_asm_program_counter
  %4 = load i64, i64* @rdi
  store i64 %4, i64* %stack_var_-16

; 0x40112e
  store volatile i64 4198702, i64* @_asm_program_counter
  %5 = load i64, i64* @rsi
  %6 = trunc i64 %5 to i32
  %7 = zext i32 %6 to i64
  store i64 %7, i64* @rax

; 0x401130
  store volatile i64 4198704, i64* @_asm_program_counter
  %8 = load i64, i64* @rax
  %9 = trunc i64 %8 to i8
  store i8 %9, i8* %stack_var_-20

; 0x401133
  store volatile i64 4198707, i64* @_asm_program_counter
  %10 = load i64, i64* %stack_var_-16
  store i64 %10, i64* @rax

; 0x401137
  store volatile i64 4198711, i64* @_asm_program_counter
  %11 = load i32, i32* bitcast (i64* @rdi to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* @rdx

; 0x401139
  store volatile i64 4198713, i64* @_asm_program_counter
  %13 = load i8, i8* %stack_var_-20
  %14 = sext i8 %13 to i64
  store i64 %14, i64* @rax

; 0x40113d
  store volatile i64 4198717, i64* @_asm_program_counter
  %15 = load i64, i64* @rax
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* @rdx
  %18 = trunc i64 %17 to i32
  %19 = add i32 %16, %18
  %20 = and i32 %16, 15
  %21 = and i32 %18, 15
  %22 = add i32 %20, %21
  %23 = icmp ugt i32 %22, 15
  %24 = icmp ult i32 %19, %16
  %25 = xor i32 %16, %19
  %26 = xor i32 %18, %19
  %27 = and i32 %25, %26
  %28 = icmp slt i32 %27, 0
  store i1 %23, i1* @az
  store i1 %24, i1* @cf
  store i1 %28, i1* @of
  %29 = icmp eq i32 %19, 0
  store i1 %29, i1* @zf
  %30 = icmp slt i32 %19, 0
  store i1 %30, i1* @sf
  %31 = trunc i32 %19 to i8
  %32 = call i8 @llvm.ctpop.i8(i8 %31)
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  store i1 %34, i1* @pf
  %35 = zext i32 %19 to i64
  store i64 %35, i64* @rax

; 0x40113f
  store volatile i64 4198719, i64* @_asm_program_counter
  %36 = load i64, i64* %stack_var_-8
  store i64 %36, i64* @rbp
  %37 = ptrtoint i64* %stack_var_0 to i64
  store i64 %37, i64* @rsp

; 0x401140
  store volatile i64 4198720, i64* @_asm_program_counter
  %38 = load i64, i64* @rax
  ret i64 %38
}

*** IR Dump After LLVM instruction optimization using RDA ***
define i64 @add(i32* %arg1, i64 %arg2) {
dec_label_pc_401126:
  %stack_var_-8 = alloca i64

; 0x401126
  store volatile i64 4198694, i64* @_asm_program_counter
  %0 = load i64, i64* @rbp
  store i64 %0, i64* %stack_var_-8

; 0x401127
  store volatile i64 4198695, i64* @_asm_program_counter

; 0x40112a
  store volatile i64 4198698, i64* @_asm_program_counter

; 0x40112e
  store volatile i64 4198702, i64* @_asm_program_counter
  %1 = trunc i64 %arg2 to i32
  %2 = zext i32 %1 to i64

; 0x401130
  store volatile i64 4198704, i64* @_asm_program_counter
  %3 = trunc i64 %2 to i8

; 0x401133
  store volatile i64 4198707, i64* @_asm_program_counter

; 0x401137
  store volatile i64 4198711, i64* @_asm_program_counter
  %4 = load i32, i32* bitcast (i64* @rdi to i32*)
  %5 = zext i32 %4 to i64

; 0x401139
  store volatile i64 4198713, i64* @_asm_program_counter
  %6 = sext i8 %3 to i64

; 0x40113d
  store volatile i64 4198717, i64* @_asm_program_counter
  %7 = trunc i64 %6 to i32
  %8 = trunc i64 %5 to i32
  %9 = add i32 %7, %8
  %10 = zext i32 %9 to i64

; 0x40113f
  store volatile i64 4198719, i64* @_asm_program_counter

; 0x401140
  store volatile i64 4198720, i64* @_asm_program_counter
  ret i64 %10
}

decompiler pass
"llvmPasses" : [
            "retdec-provider-init",
            "retdec-decoder",
            "verify",
            "retdec-x86-addr-spaces",
            "retdec-x87-fpu",
            "retdec-main-detection",
            "retdec-idioms-libgcc",
            "retdec-inst-opt",
            "retdec-cond-branch-opt",
            "retdec-syscalls",
            "retdec-stack",
            "retdec-constants",
            "retdec-param-return",
            "retdec-inst-opt-rda",
            "retdec-inst-opt",
            "retdec-simple-types",
            "retdec-write-dsm",
            "retdec-remove-asm-instrs",
            "retdec-class-hierarchy",
            "retdec-select-fncs",
            "retdec-unreachable-funcs",
            "retdec-inst-opt",
            "retdec-register-localization",
            "retdec-value-protect",
            "instcombine",
            "tbaa",
            "basicaa",
            "simplifycfg",
            "early-cse",
            "tbaa",
            "basicaa",
            "globalopt",
            "mem2reg",
            "instcombine",
            "simplifycfg",
            "early-cse",
            "lazy-value-info",
            "jump-threading",
            "correlated-propagation",
            "simplifycfg",
            "instcombine",
            "simplifycfg",
            "reassociate",
            "loops",
            "loop-simplify",
            "lcssa",
            "loop-rotate",
            "licm",
            "lcssa",
            "instcombine",
            "loop-simplifycfg",
            "loop-simplify",
            "aa",
            "loop-accesses",
            "loop-load-elim",
            "lcssa",
            "indvars",
            "loop-idiom",
            "loop-deletion",
            "gvn",
            "sccp",
            "instcombine",
            "lazy-value-info",
            "jump-threading",
            "correlated-propagation",
            "dse",
            "bdce",
            "adce",
            "simplifycfg",
            "instcombine",
            "strip-dead-prototypes",
            "globaldce",
            "constmerge",
            "constprop",
            "instcombine",
            "instcombine",
            "tbaa",
            "basicaa",
            "simplifycfg",
            "early-cse",
            "tbaa",
            "basicaa",
            "globalopt",
            "mem2reg",
            "instcombine",
            "simplifycfg",
            "early-cse",
            "lazy-value-info",
            "jump-threading",
            "correlated-propagation",
            "simplifycfg",
            "instcombine",
            "simplifycfg",
            "reassociate",
            "loops",
            "loop-simplify",
            "lcssa",
            "loop-rotate",
            "licm",
            "lcssa",
            "instcombine",
            "loop-simplifycfg",
            "loop-simplify",
            "aa",
            "loop-accesses",
            "loop-load-elim",
            "lcssa",
            "indvars",
            "loop-idiom",
            "loop-deletion",
            "gvn",
            "sccp",
            "instcombine",
            "lazy-value-info",
            "jump-threading",
            "correlated-propagation",
            "dse",
            "bdce",
            "adce",
            "simplifycfg",
            "instcombine",
            "strip-dead-prototypes",
            "globaldce",
            "constmerge",
            "constprop",
            "instcombine",
            "retdec-inst-opt",
            "retdec-simple-types",
            "retdec-stack-ptr-op-remove",
            "retdec-idioms",
            "instcombine",
            "retdec-inst-opt",
            "retdec-idioms",
            "retdec-remove-phi",
            "sink",
            "verify",
            "loops",
            "scalar-evolution",
            "retdec-value-protect",
            "retdec-write-ll",
            "retdec-write-bc",
            "retdec-llvmir2hll"
        ]