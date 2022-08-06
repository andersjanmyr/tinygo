; ModuleID = 'goasm.go'
source_filename = "goasm.go"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

@main.asmGlobalExport = hidden global i32 0, align 4

@__GoABI0_main.asmGlobalExport = alias i32, i32* @main.asmGlobalExport

declare noalias nonnull i8* @runtime.alloc(i64, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define hidden void @main.init(i8* %context) unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden double @main.AsmSqrt(double %x, i8* %context) unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect alignstack "movq $$16, ${0}", "=r"() #5
  %callframe = alloca i8, i64 %0, align 8
  %1 = bitcast i8* %callframe to double*
  store double %x, double* %1, align 8
  %2 = call i8* asm sideeffect alignstack "callq \22__GoABI0_main.AsmSqrt\22", "={rax},{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{xmm16},~{xmm17},~{xmm18},~{xmm19},~{xmm20},~{xmm21},~{xmm22},~{xmm23},~{xmm24},~{xmm25},~{xmm26},~{xmm27},~{xmm28},~{xmm29},~{xmm30},~{xmm31},~{fpsr},~{fpcr},~{flags},~{dirflag},~{memory}"(i8* nonnull %callframe) #5
  %3 = getelementptr i8, i8* %callframe, i64 8
  %4 = bitcast i8* %3 to double*
  %5 = load double, double* %4, align 8
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define hidden double @main.AsmAdd(double %x, double %y, i8* %context) unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect alignstack "movq $$24, ${0}", "=r"() #5
  %callframe = alloca i8, i64 %0, align 8
  %1 = bitcast i8* %callframe to double*
  store double %x, double* %1, align 8
  %2 = getelementptr i8, i8* %callframe, i64 8
  %3 = bitcast i8* %2 to double*
  store double %y, double* %3, align 8
  %4 = call i8* asm sideeffect alignstack "callq \22__GoABI0_main.AsmAdd\22", "={rax},{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{xmm16},~{xmm17},~{xmm18},~{xmm19},~{xmm20},~{xmm21},~{xmm22},~{xmm23},~{xmm24},~{xmm25},~{xmm26},~{xmm27},~{xmm28},~{xmm29},~{xmm30},~{xmm31},~{fpsr},~{fpcr},~{flags},~{dirflag},~{memory}"(i8* nonnull %callframe) #5
  %5 = getelementptr i8, i8* %callframe, i64 16
  %6 = bitcast i8* %5 to double*
  %7 = load double, double* %6, align 8
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define hidden { i64, double } @main.AsmFoo(double %x, i8* %context) unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect alignstack "movq $$24, ${0}", "=r"() #5
  %callframe = alloca i8, i64 %0, align 8
  %1 = bitcast i8* %callframe to double*
  store double %x, double* %1, align 8
  %2 = call i8* asm sideeffect alignstack "callq \22__GoABI0_main.AsmFoo\22", "={rax},{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{rbp},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{xmm16},~{xmm17},~{xmm18},~{xmm19},~{xmm20},~{xmm21},~{xmm22},~{xmm23},~{xmm24},~{xmm25},~{xmm26},~{xmm27},~{xmm28},~{xmm29},~{xmm30},~{xmm31},~{fpsr},~{fpcr},~{flags},~{dirflag},~{memory}"(i8* nonnull %callframe) #5
  %3 = getelementptr i8, i8* %callframe, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr i8, i8* %callframe, i64 16
  %7 = bitcast i8* %6 to double*
  %8 = load double, double* %7, align 8
  %9 = insertvalue { i64, double } zeroinitializer, i64 %5, 0
  %10 = insertvalue { i64, double } %9, double %8, 1
  ret { i64, double } %10
}

; Function Attrs: nounwind uwtable
define hidden double @main.asmExport(double %x, i8* %context) unnamed_addr #1 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable alignstack(16)
define internal void @"main.asmExport$goasmwrapper"(i8* %0) #3 {
entry:
  %1 = getelementptr i8, i8* %0, i64 8
  %2 = bitcast i8* %1 to double*
  %3 = load double, double* %2, align 8
  %result = call double @main.asmExport(double %3, i8* null)
  %4 = getelementptr i8, i8* %0, i64 16
  %5 = bitcast i8* %4 to double*
  store double %result, double* %5, align 8
  ret void
}

; Function Attrs: naked nounwind uwtable
define void @__GoABI0_main.asmExport() #4 {
entry:
  %sp = call i8* asm "mov %rsp, $0", "=r"() #5
  tail call void @"main.asmExport$goasmwrapper"(i8* %sp)
  ret void
}

attributes #0 = { "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { noinline nounwind uwtable "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { noinline nounwind uwtable alignstack=16 "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { naked nounwind uwtable "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { nounwind }
