source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_4030 = global i64 0
@global_var_3ff8 = local_unnamed_addr global i64 0
@global_var_2004 = constant [4 x i8] c"%d\0A\00"
@global_var_3de8 = global i64 4400
@global_var_3df0 = global i64 4336
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

define i32 @function_1030(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1030:
  %0 = call i32 (i8*, ...) @printf(i8* %format), !insn.addr !6
  ret i32 %0, !insn.addr !6
}

define void @function_1040(i64* %d) local_unnamed_addr {
dec_label_pc_1040:
  call void @__cxa_finalize(i64* %d), !insn.addr !7
  ret void, !insn.addr !7
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1050:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !8
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !8
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !8
  %3 = call i32 @__libc_start_main(i64 4448, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 4544 to void ()*), void ()* inttoptr (i64 4656 to void ()*), void ()* %2), !insn.addr !8
  %4 = call i64 @__asm_hlt(), !insn.addr !9
  unreachable, !insn.addr !9
}

define i64 @deregister_tm_clones() local_unnamed_addr {
dec_label_pc_1080:
  ret i64 ptrtoint (i64* @global_var_4030 to i64), !insn.addr !10
}

define i64 @register_tm_clones() local_unnamed_addr {
dec_label_pc_10b0:
  ret i64 0, !insn.addr !11
}

define i64 @__do_global_dtors_aux() local_unnamed_addr {
dec_label_pc_10f0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* bitcast (i64* @global_var_4030 to i8*), align 8, !insn.addr !12
  %3 = icmp eq i8 %2, 0, !insn.addr !12
  %4 = icmp eq i1 %3, false, !insn.addr !13
  br i1 %4, label %dec_label_pc_1128, label %dec_label_pc_10fd, !insn.addr !13

dec_label_pc_10fd:                                ; preds = %dec_label_pc_10f0
  %5 = load i64, i64* @global_var_3ff8, align 8, !insn.addr !14
  %6 = icmp eq i64 %5, 0, !insn.addr !14
  br i1 %6, label %dec_label_pc_1117, label %dec_label_pc_110b, !insn.addr !15

dec_label_pc_110b:                                ; preds = %dec_label_pc_10fd
  %7 = load i64, i64* inttoptr (i64 16424 to i64*), align 8, !insn.addr !16
  %8 = inttoptr i64 %7 to i64*, !insn.addr !17
  call void @__cxa_finalize(i64* %8), !insn.addr !17
  br label %dec_label_pc_1117, !insn.addr !17

dec_label_pc_1117:                                ; preds = %dec_label_pc_110b, %dec_label_pc_10fd
  %9 = call i64 @deregister_tm_clones(), !insn.addr !18
  store i8 1, i8* bitcast (i64* @global_var_4030 to i8*), align 8, !insn.addr !19
  ret i64 %9, !insn.addr !20

dec_label_pc_1128:                                ; preds = %dec_label_pc_10f0
  ret i64 %1, !insn.addr !21
}

define i64 @frame_dummy() local_unnamed_addr {
dec_label_pc_1130:
  %0 = call i64 @register_tm_clones(), !insn.addr !22
  ret i64 %0, !insn.addr !22
}

define i64 @add(i32* %arg1, i8 %arg2) local_unnamed_addr {
dec_label_pc_1140:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = sext i8 %arg2 to i64, !insn.addr !23
  %3 = add i64 %1, %2, !insn.addr !23
  %4 = and i64 %3, 4294967295, !insn.addr !23
  ret i64 %4, !insn.addr !24
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_1160:
  %stack_var_-16 = alloca i32, align 4
  store i32 1, i32* %stack_var_-16, align 4, !insn.addr !25
  %0 = call i64 @add(i32* nonnull %stack_var_-16, i8 2), !insn.addr !26
  %1 = call i64 @add(i32* nonnull %stack_var_-16, i8 2), !insn.addr !27
  %2 = and i64 %0, 4294967295, !insn.addr !28
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_2004, i64 0, i64 0), i64 %2), !insn.addr !29
  ret i64 0, !insn.addr !30

; uselistorder directives
  uselistorder i64 4294967295, { 1, 0 }
  uselistorder i64 (i32*, i8)* @add, { 1, 0 }
}

define i64 @__libc_csu_init(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_11c0:
  %rbx.0.reg2mem = alloca i64, !insn.addr !31
  %0 = call i64 @_init(), !insn.addr !32
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !33
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_3df0 to i64), i64 ptrtoint (i64* @global_var_3de8 to i64)), i64 3), i64 0), label %dec_label_pc_1216, label %dec_label_pc_1200, !insn.addr !33

dec_label_pc_1200:                                ; preds = %dec_label_pc_11c0, %dec_label_pc_1200
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !34
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_3df0 to i64), i64 ptrtoint (i64* @global_var_3de8 to i64)), i64 3), !insn.addr !35
  %3 = icmp eq i1 %2, false, !insn.addr !36
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !36
  br i1 %3, label %dec_label_pc_1200, label %dec_label_pc_1216, !insn.addr !36

dec_label_pc_1216:                                ; preds = %dec_label_pc_1200, %dec_label_pc_11c0
  ret i64 %0, !insn.addr !37

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64 0, { 4, 0, 2, 5, 6, 9, 3, 1, 10, 7, 8 }
  uselistorder label %dec_label_pc_1200, { 1, 0 }
}

define i64 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_1230:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !38
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_1238:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !39

; uselistorder directives
  uselistorder i32 1, { 3, 2, 4, 6, 7, 1, 0, 8, 5 }
}

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4144}
!7 = !{i64 4160}
!8 = !{i64 4216}
!9 = !{i64 4222}
!10 = !{i64 4264}
!11 = !{i64 4328}
!12 = !{i64 4340}
!13 = !{i64 4347}
!14 = !{i64 4350}
!15 = !{i64 4361}
!16 = !{i64 4363}
!17 = !{i64 4370}
!18 = !{i64 4375}
!19 = !{i64 4380}
!20 = !{i64 4388}
!21 = !{i64 4392}
!22 = !{i64 4404}
!23 = !{i64 4440}
!24 = !{i64 4443}
!25 = !{i64 4463}
!26 = !{i64 4482}
!27 = !{i64 4506}
!28 = !{i64 4514}
!29 = !{i64 4526}
!30 = !{i64 4538}
!31 = !{i64 4544}
!32 = !{i64 4588}
!33 = !{i64 4597}
!34 = !{i64 4621}
!35 = !{i64 4625}
!36 = !{i64 4628}
!37 = !{i64 4644}
!38 = !{i64 4660}
!39 = !{i64 4676}
