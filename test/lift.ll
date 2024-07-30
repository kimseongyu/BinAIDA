source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_4028 = global i64 0
@global_var_3ff8 = local_unnamed_addr global i64 0
@global_var_3e18 = global i64 4384
@global_var_3e20 = global i64 4320
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

define void @function_1030(i64* %d) local_unnamed_addr {
dec_label_pc_1030:
  call void @__cxa_finalize(i64* %d), !insn.addr !6
  ret void, !insn.addr !6
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1040:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !7
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !7
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !7
  %3 = call i32 @__libc_start_main(i64 4400, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 4464 to void ()*), void ()* inttoptr (i64 4576 to void ()*), void ()* %2), !insn.addr !7
  %4 = call i64 @__asm_hlt(), !insn.addr !8
  unreachable, !insn.addr !8
}

define i64 @deregister_tm_clones() local_unnamed_addr {
dec_label_pc_1070:
  ret i64 ptrtoint (i64* @global_var_4028 to i64), !insn.addr !9
}

define i64 @register_tm_clones() local_unnamed_addr {
dec_label_pc_10a0:
  ret i64 0, !insn.addr !10
}

define i64 @__do_global_dtors_aux() local_unnamed_addr {
dec_label_pc_10e0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* bitcast (i64* @global_var_4028 to i8*), align 8, !insn.addr !11
  %3 = icmp eq i8 %2, 0, !insn.addr !11
  %4 = icmp eq i1 %3, false, !insn.addr !12
  br i1 %4, label %dec_label_pc_1118, label %dec_label_pc_10ed, !insn.addr !12

dec_label_pc_10ed:                                ; preds = %dec_label_pc_10e0
  %5 = load i64, i64* @global_var_3ff8, align 8, !insn.addr !13
  %6 = icmp eq i64 %5, 0, !insn.addr !13
  br i1 %6, label %dec_label_pc_1107, label %dec_label_pc_10fb, !insn.addr !14

dec_label_pc_10fb:                                ; preds = %dec_label_pc_10ed
  %7 = load i64, i64* inttoptr (i64 16416 to i64*), align 32, !insn.addr !15
  %8 = inttoptr i64 %7 to i64*, !insn.addr !16
  call void @__cxa_finalize(i64* %8), !insn.addr !16
  br label %dec_label_pc_1107, !insn.addr !16

dec_label_pc_1107:                                ; preds = %dec_label_pc_10fb, %dec_label_pc_10ed
  %9 = call i64 @deregister_tm_clones(), !insn.addr !17
  store i8 1, i8* bitcast (i64* @global_var_4028 to i8*), align 8, !insn.addr !18
  ret i64 %9, !insn.addr !19

dec_label_pc_1118:                                ; preds = %dec_label_pc_10e0
  ret i64 %1, !insn.addr !20
}

define i64 @frame_dummy() local_unnamed_addr {
dec_label_pc_1120:
  %0 = call i64 @register_tm_clones(), !insn.addr !21
  ret i64 %0, !insn.addr !21
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_1130:
  %0 = load i32, i32* inttoptr (i64 8196 to i32*), align 4, !insn.addr !22
  %1 = call i128 @__asm_movss(i32 %0), !insn.addr !22
  %2 = call i64 @__asm_movss.1(i128 %1), !insn.addr !23
  %3 = trunc i64 %2 to i32, !insn.addr !23
  %4 = call i128 @__asm_cvtsi2ss(i32 1), !insn.addr !24
  %5 = call i128 @__asm_addss(i128 %4, i32 %3), !insn.addr !25
  %6 = call i64 @__asm_movss.1(i128 %5), !insn.addr !26
  ret i64 0, !insn.addr !27
}

define i64 @__libc_csu_init(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1170:
  %rbx.0.reg2mem = alloca i64, !insn.addr !28
  %0 = call i64 @_init(), !insn.addr !29
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !30
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_3e20 to i64), i64 ptrtoint (i64* @global_var_3e18 to i64)), i64 3), i64 0), label %dec_label_pc_11c6, label %dec_label_pc_11b0, !insn.addr !30

dec_label_pc_11b0:                                ; preds = %dec_label_pc_1170, %dec_label_pc_11b0
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !31
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_3e20 to i64), i64 ptrtoint (i64* @global_var_3e18 to i64)), i64 3), !insn.addr !32
  %3 = icmp eq i1 %2, false, !insn.addr !33
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !33
  br i1 %3, label %dec_label_pc_11b0, label %dec_label_pc_11c6, !insn.addr !33

dec_label_pc_11c6:                                ; preds = %dec_label_pc_11b0, %dec_label_pc_1170
  ret i64 %0, !insn.addr !34

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64 0, { 4, 0, 2, 7, 3, 1, 8, 5, 6 }
  uselistorder label %dec_label_pc_11b0, { 1, 0 }
}

define i64 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_11e0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !35
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_11e8:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !36

; uselistorder directives
  uselistorder i32 1, { 2, 1, 3, 5, 0, 6, 4 }
}

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i128 @__asm_movss(i32) local_unnamed_addr

declare i64 @__asm_movss.1(i128) local_unnamed_addr

declare i128 @__asm_cvtsi2ss(i32) local_unnamed_addr

declare i128 @__asm_addss(i128, i32) local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4144}
!7 = !{i64 4200}
!8 = !{i64 4206}
!9 = !{i64 4248}
!10 = !{i64 4312}
!11 = !{i64 4324}
!12 = !{i64 4331}
!13 = !{i64 4334}
!14 = !{i64 4345}
!15 = !{i64 4347}
!16 = !{i64 4354}
!17 = !{i64 4359}
!18 = !{i64 4364}
!19 = !{i64 4372}
!20 = !{i64 4376}
!21 = !{i64 4388}
!22 = !{i64 4418}
!23 = !{i64 4426}
!24 = !{i64 4431}
!25 = !{i64 4436}
!26 = !{i64 4441}
!27 = !{i64 4449}
!28 = !{i64 4464}
!29 = !{i64 4508}
!30 = !{i64 4517}
!31 = !{i64 4541}
!32 = !{i64 4545}
!33 = !{i64 4548}
!34 = !{i64 4564}
!35 = !{i64 4580}
!36 = !{i64 4596}
