Function: add
Arguments:
%Mask %0
%Mask %1
Instructions:
  %3 = alloca %Mask, align 8
  %4 = alloca %Mask, align 1
  store %Mask %0, ptr %3, align 8
  store %Mask %1, ptr %4, align 1
  %5 = load %Mask, ptr %3, align 8
  %6 = load %Mask, %Mask %5, align 4
  %7 = load %Mask, ptr %4, align 1
  %8 = sext %Mask %7 to %Mask
  %9 = add nsw %Mask %6, %8
  ret i32 %9

Function: main
Arguments:
Instructions:
  %1 = alloca %Mask, align 4
  %2 = alloca %Mask, align 16
  %3 = alloca %Mask, align 1
  %4 = alloca %Mask, align 4
  %5 = alloca %Mask, align 4
  store %Mask 0, ptr %1, align 4
  store %Mask 2, ptr %3, align 1
  store %Mask 0, ptr %4, align 4
  br label %6
  %7 = load %Mask, ptr %4, align 4
  %8 = icmp slt %Mask %7, i32 100
  br i1 %8, label %9, label %27
  %10 = load %Mask, ptr %4, align 4
  %11 = load %Mask, ptr %4, align 4
  %12 = mul nsw %Mask %10, %11
  %13 = load %Mask, ptr %4, align 4
  %14 = sext %Mask %13 to %Mask
  %15 = getelementptr inbounds [100 x i32], ptr %2, i64 0, %Mask %14
  store %Mask %12, ptr %15, align 4
  %16 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  %17 = load %Mask, ptr %4, align 4
  %18 = sext %Mask %17 to %Mask
  %19 = getelementptr inbounds i32, ptr %16, %Mask %18
  %20 = load %Mask, ptr %3, align 1
  %21 = call i32 @add(ptr noundef %19, %Mask noundef signext %20)
  store %Mask %21, ptr %5, align 4
  %22 = load %Mask, ptr %5, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str, %Mask noundef %22)
  br label %24
  %25 = load %Mask, ptr %4, align 4
  %26 = add nsw %Mask %25, i32 1
  store %Mask %26, ptr %4, align 4
  br label %6, !llvm.loop !6
  ret %Mask 0

Function: printf
Arguments:
%Mask %0
Instructions:

