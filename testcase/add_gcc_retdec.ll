source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_4010 = global i64 0
@global_var_3fd8 = local_unnamed_addr global i64 0
@global_var_2004 = constant [4 x i8] c"%d\0A\00"
@global_var_3db0 = global i64 4448
@global_var_3db8 = global i64 4384
@0 = external global i32

define i64 @_init() local_unnamed_addr {
dec_label_pc_1000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* inttoptr (i64 16360 to i64*), align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_1016, label %dec_label_pc_1014, !insn.addr !3

dec_label_pc_1014:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_1016, !insn.addr !4

dec_label_pc_1016:                                ; preds = %dec_label_pc_1014, %dec_label_pc_1000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define void @function_1050(i64* %d) local_unnamed_addr {
dec_label_pc_1050:
  call void @__cxa_finalize(i64* %d), !insn.addr !6
  ret void, !insn.addr !6
}

define void @function_1060() local_unnamed_addr {
dec_label_pc_1060:
  call void @__stack_chk_fail(), !insn.addr !7
  ret void, !insn.addr !7
}

define i32 @function_1070(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1070:
  %0 = call i32 (i8*, ...) @printf(i8* %format), !insn.addr !8
  ret i32 %0, !insn.addr !8
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1080:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !9
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !9
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !9
  %3 = call i32 @__libc_start_main(i64 4488, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 4640 to void ()*), void ()* inttoptr (i64 4752 to void ()*), void ()* %2), !insn.addr !9
  %4 = call i64 @__asm_hlt(), !insn.addr !10
  unreachable, !insn.addr !10
}

define i64 @deregister_tm_clones() local_unnamed_addr {
dec_label_pc_10b0:
  ret i64 ptrtoint (i64* @global_var_4010 to i64), !insn.addr !11
}

define i64 @register_tm_clones() local_unnamed_addr {
dec_label_pc_10e0:
  ret i64 0, !insn.addr !12
}

define i64 @__do_global_dtors_aux() local_unnamed_addr {
dec_label_pc_1120:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* bitcast (i64* @global_var_4010 to i8*), align 8, !insn.addr !13
  %3 = icmp eq i8 %2, 0, !insn.addr !13
  %4 = icmp eq i1 %3, false, !insn.addr !14
  br i1 %4, label %dec_label_pc_1158, label %dec_label_pc_112d, !insn.addr !14

dec_label_pc_112d:                                ; preds = %dec_label_pc_1120
  %5 = load i64, i64* inttoptr (i64 16376 to i64*), align 8, !insn.addr !15
  %6 = icmp eq i64 %5, 0, !insn.addr !15
  br i1 %6, label %dec_label_pc_1147, label %dec_label_pc_113b, !insn.addr !16

dec_label_pc_113b:                                ; preds = %dec_label_pc_112d
  %7 = load i64, i64* inttoptr (i64 16392 to i64*), align 8, !insn.addr !17
  %8 = inttoptr i64 %7 to i64*, !insn.addr !18
  call void @__cxa_finalize(i64* %8), !insn.addr !18
  br label %dec_label_pc_1147, !insn.addr !18

dec_label_pc_1147:                                ; preds = %dec_label_pc_113b, %dec_label_pc_112d
  %9 = call i64 @deregister_tm_clones(), !insn.addr !19
  store i8 1, i8* bitcast (i64* @global_var_4010 to i8*), align 8, !insn.addr !20
  ret i64 %9, !insn.addr !21

dec_label_pc_1158:                                ; preds = %dec_label_pc_1120
  ret i64 %1, !insn.addr !22
}

define i64 @frame_dummy() local_unnamed_addr {
dec_label_pc_1160:
  %0 = call i64 @register_tm_clones(), !insn.addr !23
  ret i64 %0, !insn.addr !23
}

define i64 @add(i32* %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1169:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = trunc i64 %arg2 to i32, !insn.addr !24
  %3 = trunc i64 %1 to i32
  %sext = mul i32 %2, 16777216
  %4 = ashr exact i32 %sext, 24, !insn.addr !25
  %5 = add i32 %4, %3, !insn.addr !25
  %6 = zext i32 %5 to i64, !insn.addr !25
  ret i64 %6, !insn.addr !26
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_1188:
  %rax.0.reg2mem = alloca i64, !insn.addr !27
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !28
  store i32 1, i32* %stack_var_-36, align 4, !insn.addr !29
  %1 = call i64 @add(i32* nonnull %stack_var_-36, i64 2), !insn.addr !30
  %2 = call i64 @add(i32* nonnull %stack_var_-36, i64 2), !insn.addr !31
  %3 = and i64 %1, 4294967295, !insn.addr !32
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_2004, i64 0, i64 0), i64 %3), !insn.addr !33
  %5 = call i64 @__readfsqword(i64 40), !insn.addr !34
  %6 = icmp eq i64 %0, %5, !insn.addr !34
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !35
  br i1 %6, label %dec_label_pc_120f, label %dec_label_pc_120a, !insn.addr !35

dec_label_pc_120a:                                ; preds = %dec_label_pc_1188
  call void @__stack_chk_fail(), !insn.addr !36
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !36
  br label %dec_label_pc_120f, !insn.addr !36

dec_label_pc_120f:                                ; preds = %dec_label_pc_120a, %dec_label_pc_1188
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !37

; uselistorder directives
  uselistorder i64 (i32*, i64)* @add, { 1, 0 }
}

define i64 @__libc_csu_init(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1220:
  %rbx.0.reg2mem = alloca i64, !insn.addr !38
  %0 = call i64 @_init(), !insn.addr !39
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !40
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_3db8 to i64), i64 ptrtoint (i64* @global_var_3db0 to i64)), i64 3), i64 0), label %dec_label_pc_1276, label %dec_label_pc_1260, !insn.addr !40

dec_label_pc_1260:                                ; preds = %dec_label_pc_1220, %dec_label_pc_1260
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !41
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_3db8 to i64), i64 ptrtoint (i64* @global_var_3db0 to i64)), i64 3), !insn.addr !42
  %3 = icmp eq i1 %2, false, !insn.addr !43
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !43
  br i1 %3, label %dec_label_pc_1260, label %dec_label_pc_1276, !insn.addr !43

dec_label_pc_1276:                                ; preds = %dec_label_pc_1260, %dec_label_pc_1220
  ret i64 %0, !insn.addr !44

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64 0, { 4, 0, 1, 5, 6, 9, 3, 2, 10, 7, 8 }
  uselistorder label %dec_label_pc_1260, { 1, 0 }
}

define i64 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_1290:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !45
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_1298:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !46

; uselistorder directives
  uselistorder i32 1, { 3, 2, 4, 7, 8, 5, 1, 0, 9, 6 }
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4180}
!7 = !{i64 4196}
!8 = !{i64 4212}
!9 = !{i64 4264}
!10 = !{i64 4270}
!11 = !{i64 4312}
!12 = !{i64 4376}
!13 = !{i64 4388}
!14 = !{i64 4395}
!15 = !{i64 4398}
!16 = !{i64 4409}
!17 = !{i64 4411}
!18 = !{i64 4418}
!19 = !{i64 4423}
!20 = !{i64 4428}
!21 = !{i64 4436}
!22 = !{i64 4440}
!23 = !{i64 4452}
!24 = !{i64 4471}
!25 = !{i64 4484}
!26 = !{i64 4487}
!27 = !{i64 4488}
!28 = !{i64 4500}
!29 = !{i64 4515}
!30 = !{i64 4539}
!31 = !{i64 4568}
!32 = !{i64 4579}
!33 = !{i64 4593}
!34 = !{i64 4607}
!35 = !{i64 4616}
!36 = !{i64 4618}
!37 = !{i64 4624}
!38 = !{i64 4640}
!39 = !{i64 4684}
!40 = !{i64 4693}
!41 = !{i64 4717}
!42 = !{i64 4721}
!43 = !{i64 4724}
!44 = !{i64 4740}
!45 = !{i64 4756}
!46 = !{i64 4772}
