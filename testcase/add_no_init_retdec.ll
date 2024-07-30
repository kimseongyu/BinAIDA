source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [4 x i8] c"%d\0A\00"

define i64 @add(i32* %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_401126:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = trunc i64 %arg2 to i32, !insn.addr !0
  %3 = trunc i64 %1 to i32
  %sext = mul i32 %2, 16777216
  %4 = ashr exact i32 %sext, 24, !insn.addr !1
  %5 = add i32 %4, %3, !insn.addr !1
  %6 = zext i32 %5 to i64, !insn.addr !1
  ret i64 %6, !insn.addr !2
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_401141:
  %stack_var_-32 = alloca i32, align 4
  store i32 1, i32* %stack_var_-32, align 4, !insn.addr !3
  %0 = call i64 @add(i32* nonnull %stack_var_-32, i64 2), !insn.addr !4
  %1 = call i64 @add(i32* nonnull %stack_var_-32, i64 2), !insn.addr !5
  %2 = and i64 %0, 4294967295, !insn.addr !6
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 %2), !insn.addr !7
  ret i64 0, !insn.addr !8

; uselistorder directives
  uselistorder i64 (i32*, i64)* @add, { 1, 0 }
  uselistorder i32 1, { 1, 2, 0 }
}

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198704}
!1 = !{i64 4198717}
!2 = !{i64 4198720}
!3 = !{i64 4198729}
!4 = !{i64 4198753}
!5 = !{i64 4198782}
!6 = !{i64 4198793}
!7 = !{i64 4198805}
!8 = !{i64 4198816}
