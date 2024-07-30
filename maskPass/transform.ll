; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(%MASK noundef %0, %MASK noundef signext %1) #0 {
  %3 = alloca %MASK, align 8
  %4 = alloca %MASK, align 1
  store %MASK %0, ptr %3, align 8
  store %MASK %1, ptr %4, align 1
  %5 = load %MASK, ptr %3, align 8
  %6 = load %MASK, %MASK %5, align 4
  %7 = load %MASK, ptr %4, align 1
  %8 = sext %MASK %7 to %MASK
  %9 = add nsw %MASK %6, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %MASK, align 4
  %2 = alloca %MASK, align 16
  %3 = alloca %MASK, align 1
  %4 = alloca %MASK, align 4
  %5 = alloca %MASK, align 4
  store %MASK 0, ptr %1, align 4
  store %MASK 2, ptr %3, align 1
  store %MASK 0, ptr %4, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = load %MASK, ptr %4, align 4
  %8 = icmp slt %MASK %7, i32 100
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %MASK, ptr %4, align 4
  %11 = load %MASK, ptr %4, align 4
  %12 = mul nsw %MASK %10, %11
  %13 = load %MASK, ptr %4, align 4
  %14 = sext %MASK %13 to %MASK
  %15 = getelementptr inbounds [100 x i32], ptr %2, i64 0, %MASK %14
  store %MASK %12, ptr %15, align 4
  %16 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  %17 = load %MASK, ptr %4, align 4
  %18 = sext %MASK %17 to %MASK
  %19 = getelementptr inbounds i32, ptr %16, %MASK %18
  %20 = load %MASK, ptr %3, align 1
  %21 = call i32 @add(ptr noundef %19, %MASK noundef signext %20)
  store %MASK %21, ptr %5, align 4
  %22 = load %MASK, ptr %5, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str, %MASK noundef %22)
  br label %24

24:                                               ; preds = %9
  %25 = load %MASK, ptr %4, align 4
  %26 = add nsw %MASK %25, i32 1
  store %MASK %26, ptr %4, align 4
  br label %6, !llvm.loop !6

27:                                               ; preds = %6
  ret %MASK 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
