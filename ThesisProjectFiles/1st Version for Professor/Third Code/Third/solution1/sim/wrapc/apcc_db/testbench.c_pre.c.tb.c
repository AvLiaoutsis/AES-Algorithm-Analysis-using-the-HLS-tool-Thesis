/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int main(void);
void AESL_WRAP_aes_main(signed int *, signed int *, signed int *);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str2[3] = "%x";
static  char aesl_internal__OC_str[26] = "encrypted message EDW!! \t";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_out_count = 0;
  signed int llvm_cbe_out[32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_key_count = 0;
  signed int llvm_cbe_key[32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_statemt_count = 0;
  signed int llvm_cbe_statemt[32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  signed int *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  signed int *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  signed int *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  signed int *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  signed int *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  signed int *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  signed int *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  signed int *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  signed int *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  signed int *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  signed int *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  signed int *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  signed int *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  signed int *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  signed int *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  signed int *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  signed int *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  signed int *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  signed int *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  signed int *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  signed int *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  signed int *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  signed int *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  signed int *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  signed int *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  signed int *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  signed int *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_putchar_count = 0;
  unsigned int llvm_cbe_putchar;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_putchar1_count = 0;
  unsigned int llvm_cbe_putchar1;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 0, !dbg !2 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_4_count);
  llvm_cbe_tmp__1 = (signed int *)(&llvm_cbe_statemt[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 50, i32* %%1, align 4, !dbg !2 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_5_count);
  *llvm_cbe_tmp__1 = 50u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 50u);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 1, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_6_count);
  llvm_cbe_tmp__2 = (signed int *)(&llvm_cbe_statemt[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 67, i32* %%2, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_7_count);
  *llvm_cbe_tmp__2 = 67u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 67u);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 2, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_8_count);
  llvm_cbe_tmp__3 = (signed int *)(&llvm_cbe_statemt[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 246, i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_9_count);
  *llvm_cbe_tmp__3 = 246u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 246u);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 3, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_10_count);
  llvm_cbe_tmp__4 = (signed int *)(&llvm_cbe_statemt[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 168, i32* %%4, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_11_count);
  *llvm_cbe_tmp__4 = 168u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 168u);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_12_count);
  llvm_cbe_tmp__5 = (signed int *)(&llvm_cbe_statemt[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )4u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 136, i32* %%5, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_13_count);
  *llvm_cbe_tmp__5 = 136u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 136u);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 5, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__6 = (signed int *)(&llvm_cbe_statemt[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )5u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 90, i32* %%6, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_15_count);
  *llvm_cbe_tmp__6 = 90u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 90u);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 6, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__7 = (signed int *)(&llvm_cbe_statemt[(((signed int )6u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )6u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 48, i32* %%7, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_17_count);
  *llvm_cbe_tmp__7 = 48u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 48u);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 7, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__8 = (signed int *)(&llvm_cbe_statemt[(((signed int )7u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )7u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 141, i32* %%8, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_19_count);
  *llvm_cbe_tmp__8 = 141u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 141u);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 8, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_statemt[(((signed int )8u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )8u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 49, i32* %%9, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_21_count);
  *llvm_cbe_tmp__9 = 49u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 49u);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 9, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__10 = (signed int *)(&llvm_cbe_statemt[(((signed int )9u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )9u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 49, i32* %%10, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_23_count);
  *llvm_cbe_tmp__10 = 49u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 49u);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 10, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__11 = (signed int *)(&llvm_cbe_statemt[(((signed int )10u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )10u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 152, i32* %%11, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_25_count);
  *llvm_cbe_tmp__11 = 152u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 152u);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 11, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__12 = (signed int *)(&llvm_cbe_statemt[(((signed int )11u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )11u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 162, i32* %%12, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_27_count);
  *llvm_cbe_tmp__12 = 162u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 162u);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 12, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__13 = (signed int *)(&llvm_cbe_statemt[(((signed int )12u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )12u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 224, i32* %%13, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_29_count);
  *llvm_cbe_tmp__13 = 224u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 224u);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 13, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__14 = (signed int *)(&llvm_cbe_statemt[(((signed int )13u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )13u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 55, i32* %%14, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_31_count);
  *llvm_cbe_tmp__14 = 55u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 55u);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 14, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__15 = (signed int *)(&llvm_cbe_statemt[(((signed int )14u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )14u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 7, i32* %%15, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_33_count);
  *llvm_cbe_tmp__15 = 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 7u);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [32 x i32]* %%statemt, i32 0, i32 15, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__16 = (signed int *)(&llvm_cbe_statemt[(((signed int )15u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )15u) < 32 && "Write access out of array 'statemt' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 52, i32* %%16, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_35_count);
  *llvm_cbe_tmp__16 = 52u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 52u);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 0, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__17 = (signed int *)(&llvm_cbe_key[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 43, i32* %%17, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_37_count);
  *llvm_cbe_tmp__17 = 43u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 43u);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 1, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__18 = (signed int *)(&llvm_cbe_key[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 126, i32* %%18, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_39_count);
  *llvm_cbe_tmp__18 = 126u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 126u);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 2, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__19 = (signed int *)(&llvm_cbe_key[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 21, i32* %%19, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_41_count);
  *llvm_cbe_tmp__19 = 21u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 21u);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 3, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__20 = (signed int *)(&llvm_cbe_key[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 22, i32* %%20, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_43_count);
  *llvm_cbe_tmp__20 = 22u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 22u);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__21 = (signed int *)(&llvm_cbe_key[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )4u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 40, i32* %%21, align 4, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_45_count);
  *llvm_cbe_tmp__21 = 40u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 40u);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 5, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__22 = (signed int *)(&llvm_cbe_key[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )5u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 174, i32* %%22, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_47_count);
  *llvm_cbe_tmp__22 = 174u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 174u);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 6, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__23 = (signed int *)(&llvm_cbe_key[(((signed int )6u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )6u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 210, i32* %%23, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_49_count);
  *llvm_cbe_tmp__23 = 210u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 210u);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 7, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__24 = (signed int *)(&llvm_cbe_key[(((signed int )7u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )7u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 166, i32* %%24, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_51_count);
  *llvm_cbe_tmp__24 = 166u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 166u);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_key[(((signed int )8u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )8u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 171, i32* %%25, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_53_count);
  *llvm_cbe_tmp__25 = 171u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 171u);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 9, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__26 = (signed int *)(&llvm_cbe_key[(((signed int )9u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )9u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 247, i32* %%26, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_55_count);
  *llvm_cbe_tmp__26 = 247u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 247u);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 10, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__27 = (signed int *)(&llvm_cbe_key[(((signed int )10u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )10u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 21, i32* %%27, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_57_count);
  *llvm_cbe_tmp__27 = 21u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 21u);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 11, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__28 = (signed int *)(&llvm_cbe_key[(((signed int )11u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )11u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 136, i32* %%28, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_59_count);
  *llvm_cbe_tmp__28 = 136u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 136u);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 12, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__29 = (signed int *)(&llvm_cbe_key[(((signed int )12u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )12u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 9, i32* %%29, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  *llvm_cbe_tmp__29 = 9u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 9u);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 13, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__30 = (signed int *)(&llvm_cbe_key[(((signed int )13u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )13u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 207, i32* %%30, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_63_count);
  *llvm_cbe_tmp__30 = 207u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 207u);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 14, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__31 = (signed int *)(&llvm_cbe_key[(((signed int )14u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )14u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 79, i32* %%31, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_65_count);
  *llvm_cbe_tmp__31 = 79u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 79u);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds [32 x i32]* %%key, i32 0, i32 15, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__32 = (signed int *)(&llvm_cbe_key[(((signed int )15u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )15u) < 32 && "Write access out of array 'key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 60, i32* %%32, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_67_count);
  *llvm_cbe_tmp__32 = 60u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 60u);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [32 x i32]* %%out, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe_out[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AESL_WRAP_aes_main(i32* %%1, i32* %%17, i32* %%33) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_69_count);
  AESL_WRAP_aes_main((signed int *)llvm_cbe_tmp__1, (signed int *)llvm_cbe_tmp__17, (signed int *)llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @aesl_internal_.str, i32 0, i32 0)) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_70_count);
  printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 26
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__34);
}
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__40;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__40:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 0, %%0 ], [ %%43, %%40  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__39);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds [32 x i32]* %%out, i32 0, i32 %%storemerge2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__35 = (signed int *)(&llvm_cbe_out[(((signed int )llvm_cbe_storemerge2))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",((signed int )llvm_cbe_storemerge2));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge2) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'out' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32* %%36, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__36 = (unsigned int )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
  if ((((signed int )llvm_cbe_tmp__36) < ((signed int )16u))) {
    goto llvm_cbe_tmp__41;
  } else {
    goto llvm_cbe_tmp__42;
  }

llvm_cbe_tmp__42:

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge2) < 32)) fprintf(stderr, "%s:%d: warning: Read access out of array 'out' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i32* %%36, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__37 = (unsigned int )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @aesl_internal_.str2, i32 0, i32 0), i32 %%41) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_83_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])), llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__37);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__38);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = add nsw i32 %%storemerge2, 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__39 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__39&4294967295ull)));
  if (((llvm_cbe_tmp__39&4294967295U) == (16u&4294967295U))) {
    goto llvm_cbe_tmp__43;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__39;   /* for PHI node */
    goto llvm_cbe_tmp__40;
  }

llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar = call i32 @putchar(i32 48) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_putchar_count);
  putchar(48u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",48u);
printf("\nReturn putchar = 0x%X",llvm_cbe_putchar);
}
  goto llvm_cbe_tmp__42;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar1 = call i32 @putchar(i32 10) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_putchar1_count);
  putchar(10u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
printf("\nReturn putchar1 = 0x%X",llvm_cbe_putchar1);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return 0u;
}

