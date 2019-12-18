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
signed int getSBoxValue(signed int llvm_cbe_num);
void KeyExpansion(signed int *llvm_cbe_RoundKey, signed int *llvm_cbe_Key, signed int *llvm_cbe_Rcon);
void AddRoundKey(signed int llvm_cbe_round, signed int (*llvm_cbe_state)[4], signed int *llvm_cbe_RoundKey);
void SubBytes(signed int (*llvm_cbe_state)[4]);
void ShiftRows(signed int (*llvm_cbe_state)[4]);
void MixColumns(signed int (*llvm_cbe_state)[4]);
void Cipher(signed int (*llvm_cbe_state)[4], signed int *llvm_cbe_Key);


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_getSBoxValue_OC_sbox[256] = { 99u, 124u, 119u, 123u, 242u, 107u, 111u, 197u, 48u, 1u, 103u, 43u, 254u, 215u, 171u, 118u, 202u, 130u, 201u, 125u, 250u, 89u, 71u, 240u, 173u, 212u, 162u, 175u, 156u, 164u, 114u, 192u, 183u, 253u, 147u, 38u, 54u, 63u, 247u, 204u, 52u, 165u, 229u, 241u, 113u, 216u, 49u, 21u, 4u, 199u, 35u, 195u, 24u, 150u, 5u, 154u, 7u, 18u, 128u, 226u, 235u, 39u, 178u, 117u, 9u, 131u, 44u, 26u, 27u, 110u, 90u, 160u, 82u, 59u, 214u, 179u, 41u, 227u, 47u, 132u, 83u, 209u, 0u, 237u, 32u, 252u, 177u, 91u, 106u, 203u, 190u, 57u, 74u, 76u, 88u, 207u, 208u, 239u, 170u, 251u, 67u, 77u, 51u, 133u, 69u, 249u, 2u, 127u, 80u, 60u, 159u, 168u, 81u, 163u, 64u, 143u, 146u, 157u, 56u, 245u, 188u, 182u, 218u, 33u, 16u, 255u, 243u, 210u, 205u, 12u, 19u, 236u, 95u, 151u, 68u, 23u, 196u, 167u, 126u, 61u, 100u, 93u, 25u, 115u, 96u, 129u, 79u, 220u, 34u, 42u, 144u, 136u, 70u, 238u, 184u, 20u, 222u, 94u, 11u, 219u, 224u, 50u, 58u, 10u, 73u, 6u, 36u, 92u, 194u, 211u, 172u, 98u, 145u, 149u, 228u, 121u, 231u, 200u, 55u, 109u, 141u, 213u, 78u, 169u, 108u, 86u, 244u, 234u, 101u, 122u, 174u, 8u, 186u, 120u, 37u, 46u, 28u, 166u, 180u, 198u, 232u, 221u, 116u, 31u, 75u, 189u, 139u, 138u, 112u, 62u, 181u, 102u, 72u, 3u, 246u, 14u, 97u, 53u, 87u, 185u, 134u, 193u, 29u, 158u, 225u, 248u, 152u, 17u, 105u, 217u, 142u, 148u, 155u, 30u, 135u, 233u, 206u, 85u, 40u, 223u, 140u, 161u, 137u, 13u, 191u, 230u, 66u, 104u, 65u, 153u, 45u, 15u, 176u, 84u, 187u, 22u };
static signed int aesl_internal_Cipher_OC_Rcon[255] = { 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u };


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

signed int getSBoxValue(signed int llvm_cbe_num) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  signed int *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @getSBoxValue\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [256 x i32]* @aesl_internal_getSBoxValue.sbox, i32 0, i32 %%num, !dbg !6 for 0x%I64xth hint within @getSBoxValue  --> \n", ++aesl_llvm_cbe_4_count);
  llvm_cbe_tmp__1 = (signed int *)(&aesl_internal_getSBoxValue_OC_sbox[(((signed int )llvm_cbe_num))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nnum = 0x%X",((signed int )llvm_cbe_num));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_num) < 256)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_getSBoxValue.sbox' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !6 for 0x%I64xth hint within @getSBoxValue  --> \n", ++aesl_llvm_cbe_5_count);
  llvm_cbe_tmp__2 = (unsigned int )*llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @getSBoxValue}\n");
  return llvm_cbe_tmp__2;
}


void KeyExpansion(signed int *llvm_cbe_RoundKey, signed int *llvm_cbe_Key, signed int *llvm_cbe_Rcon) {
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  signed int *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  signed int *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  signed int *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  signed int *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  signed int *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  signed int *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  signed int *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  signed int *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  signed int *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  signed int *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  signed int *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  signed int *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  signed int *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  signed int *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  signed int *llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  signed int *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  signed int *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  signed int *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  signed int *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  signed int *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  signed int *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  signed int *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  signed int *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @KeyExpansion\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* %%Key, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__3 = (unsigned int )*llvm_cbe_Key;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%1, i32* %%RoundKey, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_53_count);
  *llvm_cbe_RoundKey = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds i32* %%Key, i32 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__4 = (signed int *)(&llvm_cbe_Key[(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i32* %%2, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__5 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds i32* %%RoundKey, i32 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__6 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%3, i32* %%4, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_57_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds i32* %%Key, i32 2, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__7 = (signed int *)(&llvm_cbe_Key[(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__8 = (unsigned int )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i32* %%RoundKey, i32 2, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%6, i32* %%7, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_61_count);
  *llvm_cbe_tmp__9 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds i32* %%Key, i32 3, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__10 = (signed int *)(&llvm_cbe_Key[(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* %%8, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__11 = (unsigned int )*llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds i32* %%RoundKey, i32 3, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__12 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%9, i32* %%10, align 4, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_65_count);
  *llvm_cbe_tmp__12 = llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i32* %%Key, i32 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__13 = (signed int *)(&llvm_cbe_Key[(((signed int )4u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__14 = (unsigned int )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i32* %%RoundKey, i32 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__15 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )4u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%12, i32* %%13, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_69_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i32* %%Key, i32 5, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__16 = (signed int *)(&llvm_cbe_Key[(((signed int )5u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* %%14, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__17 = (unsigned int )*llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds i32* %%RoundKey, i32 5, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__18 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )5u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%15, i32* %%16, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_73_count);
  *llvm_cbe_tmp__18 = llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i32* %%Key, i32 6, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__19 = (signed int *)(&llvm_cbe_Key[(((signed int )6u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* %%17, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__20 = (unsigned int )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i32* %%RoundKey, i32 6, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__21 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )6u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%18, i32* %%19, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_77_count);
  *llvm_cbe_tmp__21 = llvm_cbe_tmp__20;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds i32* %%Key, i32 7, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__22 = (signed int *)(&llvm_cbe_Key[(((signed int )7u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%20, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__23 = (unsigned int )*llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i32* %%RoundKey, i32 7, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__24 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )7u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%21, i32* %%22, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_81_count);
  *llvm_cbe_tmp__24 = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i32* %%Key, i32 8, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_Key[(((signed int )8u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i32* %%23, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__26 = (unsigned int )*llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i32* %%RoundKey, i32 8, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__27 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )8u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%24, i32* %%25, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_85_count);
  *llvm_cbe_tmp__27 = llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds i32* %%Key, i32 9, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__28 = (signed int *)(&llvm_cbe_Key[(((signed int )9u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%26, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__29 = (unsigned int )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds i32* %%RoundKey, i32 9, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__30 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )9u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%27, i32* %%28, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_89_count);
  *llvm_cbe_tmp__30 = llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i32* %%Key, i32 10, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__31 = (signed int *)(&llvm_cbe_Key[(((signed int )10u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i32* %%29, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__32 = (unsigned int )*llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds i32* %%RoundKey, i32 10, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )10u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%30, i32* %%31, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_93_count);
  *llvm_cbe_tmp__33 = llvm_cbe_tmp__32;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds i32* %%Key, i32 11, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__34 = (signed int *)(&llvm_cbe_Key[(((signed int )11u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i32* %%32, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__35 = (unsigned int )*llvm_cbe_tmp__34;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds i32* %%RoundKey, i32 11, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__36 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )11u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%33, i32* %%34, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_97_count);
  *llvm_cbe_tmp__36 = llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds i32* %%Key, i32 12, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__37 = (signed int *)(&llvm_cbe_Key[(((signed int )12u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i32* %%35, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__38 = (unsigned int )*llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i32* %%RoundKey, i32 12, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__39 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )12u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%36, i32* %%37, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_101_count);
  *llvm_cbe_tmp__39 = llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i32* %%Key, i32 13, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__40 = (signed int *)(&llvm_cbe_Key[(((signed int )13u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i32* %%38, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__41 = (unsigned int )*llvm_cbe_tmp__40;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds i32* %%RoundKey, i32 13, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__42 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )13u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%39, i32* %%40, align 4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_105_count);
  *llvm_cbe_tmp__42 = llvm_cbe_tmp__41;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i32* %%Key, i32 14, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__43 = (signed int *)(&llvm_cbe_Key[(((signed int )14u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32* %%41, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__44 = (unsigned int )*llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i32* %%RoundKey, i32 14, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__45 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )14u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%42, i32* %%43, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_109_count);
  *llvm_cbe_tmp__45 = llvm_cbe_tmp__44;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds i32* %%Key, i32 15, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__46 = (signed int *)(&llvm_cbe_Key[(((signed int )15u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i32* %%44, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__47 = (unsigned int )*llvm_cbe_tmp__46;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds i32* %%RoundKey, i32 15, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__48 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )15u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%45, i32* %%46, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_113_count);
  *llvm_cbe_tmp__48 = llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @KeyExpansion}\n");
  return;
}


void AddRoundKey(signed int llvm_cbe_round, signed int (*llvm_cbe_state)[4], signed int *llvm_cbe_RoundKey) {
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  signed int *llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  signed int *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  signed int *llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  signed int *llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  signed int *llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  signed int *llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  signed int *llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned int llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  signed int *llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned int llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned int llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  unsigned int llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  signed int *llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  unsigned int llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  signed int *llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  unsigned int llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  unsigned int llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  signed int *llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  signed int *llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  unsigned int llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  unsigned int llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  signed int *llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  signed int *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  unsigned int llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  unsigned int llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  signed int *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  signed int *llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  unsigned int llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  unsigned int llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  unsigned int llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  signed int *llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  unsigned int llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  signed int *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  unsigned int llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  signed int *llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  signed int *llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  unsigned int llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  unsigned int llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  unsigned int llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  signed int *llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  unsigned int llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  signed int *llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  unsigned int llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  unsigned int llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  signed int *llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  signed int *llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  unsigned int llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  signed int *llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  signed int *llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  unsigned int llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  unsigned int llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  signed int *llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  unsigned int llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  signed int *llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  unsigned int llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  unsigned int llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  unsigned int llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  signed int *llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  unsigned int llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  signed int *llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  unsigned int llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  unsigned int llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  unsigned int llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  signed int *llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  unsigned int llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  signed int *llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  unsigned int llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  unsigned int llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @AddRoundKey\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = shl i32 %%round, 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__49 = (unsigned int )llvm_cbe_round << 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds i32* %%RoundKey, i32 %%0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__50 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__49))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__49));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__51 = (unsigned int )*llvm_cbe_tmp__50;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__52 = (signed int *)(&(*llvm_cbe_state)[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__53 = (unsigned int )*llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = xor i32 %%4, %%2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__54 = (unsigned int )llvm_cbe_tmp__53 ^ llvm_cbe_tmp__51;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%5, i32* %%3, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_136_count);
  *llvm_cbe_tmp__52 = llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = or i32 %%0, 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__55 = (unsigned int )llvm_cbe_tmp__49 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i32* %%RoundKey, i32 %%6, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__56 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__55))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__55));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__57 = (unsigned int )*llvm_cbe_tmp__56;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__58 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__59 = (unsigned int )*llvm_cbe_tmp__58;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = xor i32 %%10, %%8, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__60 = (unsigned int )llvm_cbe_tmp__59 ^ llvm_cbe_tmp__57;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%11, i32* %%9, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_148_count);
  *llvm_cbe_tmp__58 = llvm_cbe_tmp__60;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = or i32 %%0, 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__61 = (unsigned int )llvm_cbe_tmp__49 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i32* %%RoundKey, i32 %%12, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__62 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__61))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__61));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__63 = (unsigned int )*llvm_cbe_tmp__62;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__63);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__64 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__65 = (unsigned int )*llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = xor i32 %%16, %%14, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__66 = (unsigned int )llvm_cbe_tmp__65 ^ llvm_cbe_tmp__63;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__66);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%17, i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_160_count);
  *llvm_cbe_tmp__64 = llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__66);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = or i32 %%0, 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__67 = (unsigned int )llvm_cbe_tmp__49 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i32* %%RoundKey, i32 %%18, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__68 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__67))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__67));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load i32* %%19, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__69 = (unsigned int )*llvm_cbe_tmp__68;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__69);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__70 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__71 = (unsigned int )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = xor i32 %%22, %%20, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__72 = (unsigned int )llvm_cbe_tmp__71 ^ llvm_cbe_tmp__69;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%23, i32* %%21, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_172_count);
  *llvm_cbe_tmp__70 = llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = or i32 %%0, 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__73 = (unsigned int )llvm_cbe_tmp__49 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i32* %%RoundKey, i32 %%24, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__74 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__73))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__73));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i32* %%25, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__75 = (unsigned int )*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__76 = (signed int *)(&(*llvm_cbe_state)[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%27, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__77 = (unsigned int )*llvm_cbe_tmp__76;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__77);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = xor i32 %%28, %%26, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__78 = (unsigned int )llvm_cbe_tmp__77 ^ llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%29, i32* %%27, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_193_count);
  *llvm_cbe_tmp__76 = llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = or i32 %%0, 5, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__79 = (unsigned int )llvm_cbe_tmp__49 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds i32* %%RoundKey, i32 %%30, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__80 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__79))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__79));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load i32* %%31, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__81 = (unsigned int )*llvm_cbe_tmp__80;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__82 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_203_count);
  llvm_cbe_tmp__83 = (unsigned int )*llvm_cbe_tmp__82;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = xor i32 %%34, %%32, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__84 = (unsigned int )llvm_cbe_tmp__83 ^ llvm_cbe_tmp__81;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%35, i32* %%33, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_205_count);
  *llvm_cbe_tmp__82 = llvm_cbe_tmp__84;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = or i32 %%0, 6, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_211_count);
  llvm_cbe_tmp__85 = (unsigned int )llvm_cbe_tmp__49 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i32* %%RoundKey, i32 %%36, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_212_count);
  llvm_cbe_tmp__86 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__85))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__85));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i32* %%37, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_213_count);
  llvm_cbe_tmp__87 = (unsigned int )*llvm_cbe_tmp__86;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__88 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i32* %%39, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_215_count);
  llvm_cbe_tmp__89 = (unsigned int )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = xor i32 %%40, %%38, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_216_count);
  llvm_cbe_tmp__90 = (unsigned int )llvm_cbe_tmp__89 ^ llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%41, i32* %%39, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_217_count);
  *llvm_cbe_tmp__88 = llvm_cbe_tmp__90;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = or i32 %%0, 7, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_223_count);
  llvm_cbe_tmp__91 = (unsigned int )llvm_cbe_tmp__49 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i32* %%RoundKey, i32 %%42, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__92 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__91))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__91));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i32* %%43, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__93 = (unsigned int )*llvm_cbe_tmp__92;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__94 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__95 = (unsigned int )*llvm_cbe_tmp__94;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = xor i32 %%46, %%44, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__96 = (unsigned int )llvm_cbe_tmp__95 ^ llvm_cbe_tmp__93;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%47, i32* %%45, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_229_count);
  *llvm_cbe_tmp__94 = llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = or i32 %%0, 8, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_244_count);
  llvm_cbe_tmp__97 = (unsigned int )llvm_cbe_tmp__49 | 8u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds i32* %%RoundKey, i32 %%48, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__98 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__97))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__97));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = load i32* %%49, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__99 = (unsigned int )*llvm_cbe_tmp__98;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__100 = (signed int *)(&(*llvm_cbe_state)[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = load i32* %%51, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__101 = (unsigned int )*llvm_cbe_tmp__100;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = xor i32 %%52, %%50, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__102 = (unsigned int )llvm_cbe_tmp__101 ^ llvm_cbe_tmp__99;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%53, i32* %%51, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_250_count);
  *llvm_cbe_tmp__100 = llvm_cbe_tmp__102;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = or i32 %%0, 9, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_256_count);
  llvm_cbe_tmp__103 = (unsigned int )llvm_cbe_tmp__49 | 9u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__103);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds i32* %%RoundKey, i32 %%54, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_257_count);
  llvm_cbe_tmp__104 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__103))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__103));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = load i32* %%55, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_258_count);
  llvm_cbe_tmp__105 = (unsigned int )*llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_259_count);
  llvm_cbe_tmp__106 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i32* %%57, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_260_count);
  llvm_cbe_tmp__107 = (unsigned int )*llvm_cbe_tmp__106;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__107);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = xor i32 %%58, %%56, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__108 = (unsigned int )llvm_cbe_tmp__107 ^ llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%59, i32* %%57, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_262_count);
  *llvm_cbe_tmp__106 = llvm_cbe_tmp__108;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = or i32 %%0, 10, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__109 = (unsigned int )llvm_cbe_tmp__49 | 10u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__109);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds i32* %%RoundKey, i32 %%60, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_269_count);
  llvm_cbe_tmp__110 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__109))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__109));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = load i32* %%61, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_270_count);
  llvm_cbe_tmp__111 = (unsigned int )*llvm_cbe_tmp__110;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_271_count);
  llvm_cbe_tmp__112 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = load i32* %%63, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_272_count);
  llvm_cbe_tmp__113 = (unsigned int )*llvm_cbe_tmp__112;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__113);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = xor i32 %%64, %%62, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__114 = (unsigned int )llvm_cbe_tmp__113 ^ llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%65, i32* %%63, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_274_count);
  *llvm_cbe_tmp__112 = llvm_cbe_tmp__114;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = or i32 %%0, 11, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_280_count);
  llvm_cbe_tmp__115 = (unsigned int )llvm_cbe_tmp__49 | 11u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds i32* %%RoundKey, i32 %%66, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_281_count);
  llvm_cbe_tmp__116 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__115))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__115));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i32* %%67, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__117 = (unsigned int )*llvm_cbe_tmp__116;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__117);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__118 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i32* %%69, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__119 = (unsigned int )*llvm_cbe_tmp__118;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__119);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = xor i32 %%70, %%68, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__120 = (unsigned int )llvm_cbe_tmp__119 ^ llvm_cbe_tmp__117;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__120);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%71, i32* %%69, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_286_count);
  *llvm_cbe_tmp__118 = llvm_cbe_tmp__120;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__120);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = or i32 %%0, 12, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__121 = (unsigned int )llvm_cbe_tmp__49 | 12u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = getelementptr inbounds i32* %%RoundKey, i32 %%72, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_302_count);
  llvm_cbe_tmp__122 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__121))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__121));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = load i32* %%73, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_303_count);
  llvm_cbe_tmp__123 = (unsigned int )*llvm_cbe_tmp__122;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__123);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_304_count);
  llvm_cbe_tmp__124 = (signed int *)(&(*llvm_cbe_state)[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = load i32* %%75, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_305_count);
  llvm_cbe_tmp__125 = (unsigned int )*llvm_cbe_tmp__124;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = xor i32 %%76, %%74, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_306_count);
  llvm_cbe_tmp__126 = (unsigned int )llvm_cbe_tmp__125 ^ llvm_cbe_tmp__123;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__126);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%77, i32* %%75, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_307_count);
  *llvm_cbe_tmp__124 = llvm_cbe_tmp__126;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = or i32 %%0, 13, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_313_count);
  llvm_cbe_tmp__127 = (unsigned int )llvm_cbe_tmp__49 | 13u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = getelementptr inbounds i32* %%RoundKey, i32 %%78, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_314_count);
  llvm_cbe_tmp__128 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__127))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__127));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load i32* %%79, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_315_count);
  llvm_cbe_tmp__129 = (unsigned int )*llvm_cbe_tmp__128;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__129);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__130 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = load i32* %%81, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__131 = (unsigned int )*llvm_cbe_tmp__130;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = xor i32 %%82, %%80, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_318_count);
  llvm_cbe_tmp__132 = (unsigned int )llvm_cbe_tmp__131 ^ llvm_cbe_tmp__129;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%83, i32* %%81, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_319_count);
  *llvm_cbe_tmp__130 = llvm_cbe_tmp__132;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = or i32 %%0, 14, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_325_count);
  llvm_cbe_tmp__133 = (unsigned int )llvm_cbe_tmp__49 | 14u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__133);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = getelementptr inbounds i32* %%RoundKey, i32 %%84, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_326_count);
  llvm_cbe_tmp__134 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__133))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__133));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = load i32* %%85, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_327_count);
  llvm_cbe_tmp__135 = (unsigned int )*llvm_cbe_tmp__134;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__135);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_328_count);
  llvm_cbe_tmp__136 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = load i32* %%87, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_329_count);
  llvm_cbe_tmp__137 = (unsigned int )*llvm_cbe_tmp__136;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = xor i32 %%88, %%86, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_330_count);
  llvm_cbe_tmp__138 = (unsigned int )llvm_cbe_tmp__137 ^ llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%89, i32* %%87, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_331_count);
  *llvm_cbe_tmp__136 = llvm_cbe_tmp__138;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = or i32 %%0, 15, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__139 = (unsigned int )llvm_cbe_tmp__49 | 15u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = getelementptr inbounds i32* %%RoundKey, i32 %%90, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__140 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__139))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__139));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = load i32* %%91, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_339_count);
  llvm_cbe_tmp__141 = (unsigned int )*llvm_cbe_tmp__140;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__141);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_340_count);
  llvm_cbe_tmp__142 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = load i32* %%93, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__143 = (unsigned int )*llvm_cbe_tmp__142;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__143);
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = xor i32 %%94, %%92, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_342_count);
  llvm_cbe_tmp__144 = (unsigned int )llvm_cbe_tmp__143 ^ llvm_cbe_tmp__141;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%95, i32* %%93, align 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_343_count);
  *llvm_cbe_tmp__142 = llvm_cbe_tmp__144;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @AddRoundKey}\n");
  return;
}


void SubBytes(signed int (*llvm_cbe_state)[4]) {
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  signed int *llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  unsigned int llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  unsigned int llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  signed int *llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  signed int *llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  unsigned int llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  unsigned int llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  signed int *llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  unsigned int llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  unsigned int llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  signed int *llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  unsigned int llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  unsigned int llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  signed int *llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  unsigned int llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  unsigned int llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  signed int *llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  unsigned int llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  unsigned int llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  signed int *llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  unsigned int llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  unsigned int llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  signed int *llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  unsigned int llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  unsigned int llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  signed int *llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  unsigned int llvm_cbe_tmp__173;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  unsigned int llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  signed int *llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  unsigned int llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  unsigned int llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  signed int *llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  unsigned int llvm_cbe_tmp__179;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  unsigned int llvm_cbe_tmp__180;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  signed int *llvm_cbe_tmp__181;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  unsigned int llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  unsigned int llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  signed int *llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  unsigned int llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  unsigned int llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  signed int *llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  unsigned int llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  unsigned int llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  signed int *llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  unsigned int llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  unsigned int llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @SubBytes\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_367_count);
  llvm_cbe_tmp__145 = (signed int *)(&(*llvm_cbe_state)[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* %%0, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_368_count);
  llvm_cbe_tmp__146 = (unsigned int )*llvm_cbe_tmp__145;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call i32 @getSBoxValue(i32 %%1), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_369_count);
  llvm_cbe_tmp__147 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__146);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__147);
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%2, i32* %%0, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_370_count);
  *llvm_cbe_tmp__145 = llvm_cbe_tmp__147;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_376_count);
  llvm_cbe_tmp__148 = (signed int *)(&(*llvm_cbe_state)[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__149 = (unsigned int )*llvm_cbe_tmp__148;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__149);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call i32 @getSBoxValue(i32 %%4), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_378_count);
  llvm_cbe_tmp__150 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__149);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__149);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__150);
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%5, i32* %%3, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_379_count);
  *llvm_cbe_tmp__148 = llvm_cbe_tmp__150;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__150);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_385_count);
  llvm_cbe_tmp__151 = (signed int *)(&(*llvm_cbe_state)[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_386_count);
  llvm_cbe_tmp__152 = (unsigned int )*llvm_cbe_tmp__151;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__152);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 @getSBoxValue(i32 %%7), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_387_count);
  llvm_cbe_tmp__153 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__152);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__152);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__153);
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_388_count);
  *llvm_cbe_tmp__151 = llvm_cbe_tmp__153;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__153);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_394_count);
  llvm_cbe_tmp__154 = (signed int *)(&(*llvm_cbe_state)[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_395_count);
  llvm_cbe_tmp__155 = (unsigned int )*llvm_cbe_tmp__154;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__155);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = tail call i32 @getSBoxValue(i32 %%10), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_396_count);
  llvm_cbe_tmp__156 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__155);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__155);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__156);
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%11, i32* %%9, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_397_count);
  *llvm_cbe_tmp__154 = llvm_cbe_tmp__156;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__156);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_412_count);
  llvm_cbe_tmp__157 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i32* %%12, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_413_count);
  llvm_cbe_tmp__158 = (unsigned int )*llvm_cbe_tmp__157;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = tail call i32 @getSBoxValue(i32 %%13), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_414_count);
  llvm_cbe_tmp__159 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__158);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__159);
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%14, i32* %%12, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_415_count);
  *llvm_cbe_tmp__157 = llvm_cbe_tmp__159;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__159);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_421_count);
  llvm_cbe_tmp__160 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_422_count);
  llvm_cbe_tmp__161 = (unsigned int )*llvm_cbe_tmp__160;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__161);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = tail call i32 @getSBoxValue(i32 %%16), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_423_count);
  llvm_cbe_tmp__162 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__161);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__161);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__162);
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%17, i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_424_count);
  *llvm_cbe_tmp__160 = llvm_cbe_tmp__162;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__162);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_430_count);
  llvm_cbe_tmp__163 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i32* %%18, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_431_count);
  llvm_cbe_tmp__164 = (unsigned int )*llvm_cbe_tmp__163;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__164);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = tail call i32 @getSBoxValue(i32 %%19), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_432_count);
  llvm_cbe_tmp__165 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__164);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__164);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__165);
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%20, i32* %%18, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_433_count);
  *llvm_cbe_tmp__163 = llvm_cbe_tmp__165;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__165);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_439_count);
  llvm_cbe_tmp__166 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_440_count);
  llvm_cbe_tmp__167 = (unsigned int )*llvm_cbe_tmp__166;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__167);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = tail call i32 @getSBoxValue(i32 %%22), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__168 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__167);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__167);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__168);
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%23, i32* %%21, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_442_count);
  *llvm_cbe_tmp__166 = llvm_cbe_tmp__168;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__168);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_457_count);
  llvm_cbe_tmp__169 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_458_count);
  llvm_cbe_tmp__170 = (unsigned int )*llvm_cbe_tmp__169;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = tail call i32 @getSBoxValue(i32 %%25), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_459_count);
  llvm_cbe_tmp__171 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__170);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__171);
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%26, i32* %%24, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_460_count);
  *llvm_cbe_tmp__169 = llvm_cbe_tmp__171;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__171);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_466_count);
  llvm_cbe_tmp__172 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%27, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_467_count);
  llvm_cbe_tmp__173 = (unsigned int )*llvm_cbe_tmp__172;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__173);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = tail call i32 @getSBoxValue(i32 %%28), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_468_count);
  llvm_cbe_tmp__174 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__173);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__173);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__174);
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%29, i32* %%27, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_469_count);
  *llvm_cbe_tmp__172 = llvm_cbe_tmp__174;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__174);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_475_count);
  llvm_cbe_tmp__175 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i32* %%30, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_476_count);
  llvm_cbe_tmp__176 = (unsigned int )*llvm_cbe_tmp__175;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = tail call i32 @getSBoxValue(i32 %%31), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_477_count);
  llvm_cbe_tmp__177 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__176);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__177);
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%32, i32* %%30, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_478_count);
  *llvm_cbe_tmp__175 = llvm_cbe_tmp__177;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__177);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_484_count);
  llvm_cbe_tmp__178 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_485_count);
  llvm_cbe_tmp__179 = (unsigned int )*llvm_cbe_tmp__178;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__179);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = tail call i32 @getSBoxValue(i32 %%34), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_486_count);
  llvm_cbe_tmp__180 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__179);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__179);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__180);
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%35, i32* %%33, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_487_count);
  *llvm_cbe_tmp__178 = llvm_cbe_tmp__180;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__180);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_502_count);
  llvm_cbe_tmp__181 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32* %%36, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_503_count);
  llvm_cbe_tmp__182 = (unsigned int )*llvm_cbe_tmp__181;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = tail call i32 @getSBoxValue(i32 %%37), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__183 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__182);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__183);
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%38, i32* %%36, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_505_count);
  *llvm_cbe_tmp__181 = llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__183);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_511_count);
  llvm_cbe_tmp__184 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i32* %%39, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_512_count);
  llvm_cbe_tmp__185 = (unsigned int )*llvm_cbe_tmp__184;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__185);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = tail call i32 @getSBoxValue(i32 %%40), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_513_count);
  llvm_cbe_tmp__186 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__185);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__185);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__186);
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%41, i32* %%39, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_514_count);
  *llvm_cbe_tmp__184 = llvm_cbe_tmp__186;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__186);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_520_count);
  llvm_cbe_tmp__187 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load i32* %%42, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_521_count);
  llvm_cbe_tmp__188 = (unsigned int )*llvm_cbe_tmp__187;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = tail call i32 @getSBoxValue(i32 %%43), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_522_count);
  llvm_cbe_tmp__189 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__188);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__189);
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%44, i32* %%42, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_523_count);
  *llvm_cbe_tmp__187 = llvm_cbe_tmp__189;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__189);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_529_count);
  llvm_cbe_tmp__190 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_530_count);
  llvm_cbe_tmp__191 = (unsigned int )*llvm_cbe_tmp__190;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__191);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = tail call i32 @getSBoxValue(i32 %%46), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_531_count);
  llvm_cbe_tmp__192 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__191);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__191);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__192);
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%47, i32* %%45, align 4, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_532_count);
  *llvm_cbe_tmp__190 = llvm_cbe_tmp__192;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__192);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @SubBytes}\n");
  return;
}


void ShiftRows(signed int (*llvm_cbe_state)[4]) {
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  signed int *llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  unsigned int llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  unsigned char llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  signed int *llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  unsigned int llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  signed int *llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  unsigned int llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  signed int *llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  unsigned int llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  unsigned int llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  signed int *llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  unsigned int llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  unsigned char llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  signed int *llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  unsigned int llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  unsigned int llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  signed int *llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  unsigned int llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  unsigned char llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  signed int *llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  unsigned int llvm_cbe_tmp__213;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  unsigned int llvm_cbe_tmp__214;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  signed int *llvm_cbe_tmp__215;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  unsigned int llvm_cbe_tmp__216;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  unsigned char llvm_cbe_tmp__217;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  signed int *llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  unsigned int llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  signed int *llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  unsigned int llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
  signed int *llvm_cbe_tmp__222;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  unsigned int llvm_cbe_tmp__223;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  unsigned int llvm_cbe_tmp__224;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @ShiftRows\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_569_count);
  llvm_cbe_tmp__193 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_570_count);
  llvm_cbe_tmp__194 = (unsigned int )*llvm_cbe_tmp__193;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__194);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = trunc i32 %%2 to i8, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_571_count);
  llvm_cbe_tmp__195 = (unsigned char )((unsigned char )llvm_cbe_tmp__194&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__195);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_577_count);
  llvm_cbe_tmp__196 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%4, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_578_count);
  llvm_cbe_tmp__197 = (unsigned int )*llvm_cbe_tmp__196;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__197);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%5, i32* %%1, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_579_count);
  *llvm_cbe_tmp__193 = llvm_cbe_tmp__197;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__197);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_580_count);
  llvm_cbe_tmp__198 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_581_count);
  llvm_cbe_tmp__199 = (unsigned int )*llvm_cbe_tmp__198;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__199);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%7, i32* %%4, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_582_count);
  *llvm_cbe_tmp__196 = llvm_cbe_tmp__199;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__199);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_583_count);
  llvm_cbe_tmp__200 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* %%8, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_584_count);
  llvm_cbe_tmp__201 = (unsigned int )*llvm_cbe_tmp__200;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__201);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%9, i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_585_count);
  *llvm_cbe_tmp__198 = llvm_cbe_tmp__201;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__201);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = zext i8 %%3 to i32, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_586_count);
  llvm_cbe_tmp__202 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__195&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__202);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%10, i32* %%8, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_587_count);
  *llvm_cbe_tmp__200 = llvm_cbe_tmp__202;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__202);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 0, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_588_count);
  llvm_cbe_tmp__203 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_589_count);
  llvm_cbe_tmp__204 = (unsigned int )*llvm_cbe_tmp__203;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__204);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = trunc i32 %%12 to i8, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_590_count);
  llvm_cbe_tmp__205 = (unsigned char )((unsigned char )llvm_cbe_tmp__204&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__205);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 2, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_596_count);
  llvm_cbe_tmp__206 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* %%14, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_597_count);
  llvm_cbe_tmp__207 = (unsigned int )*llvm_cbe_tmp__206;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__207);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%15, i32* %%11, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_598_count);
  *llvm_cbe_tmp__203 = llvm_cbe_tmp__207;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__207);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = zext i8 %%13 to i32, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_599_count);
  llvm_cbe_tmp__208 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__205&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__208);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%16, i32* %%14, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_600_count);
  *llvm_cbe_tmp__206 = llvm_cbe_tmp__208;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__208);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_601_count);
  llvm_cbe_tmp__209 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* %%17, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_602_count);
  llvm_cbe_tmp__210 = (unsigned int )*llvm_cbe_tmp__209;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__210);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = trunc i32 %%18 to i8, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_603_count);
  llvm_cbe_tmp__211 = (unsigned char )((unsigned char )llvm_cbe_tmp__210&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__211);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 3, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_609_count);
  llvm_cbe_tmp__212 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%20, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_610_count);
  llvm_cbe_tmp__213 = (unsigned int )*llvm_cbe_tmp__212;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__213);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%21, i32* %%17, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_611_count);
  *llvm_cbe_tmp__209 = llvm_cbe_tmp__213;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__213);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = zext i8 %%19 to i32, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_612_count);
  llvm_cbe_tmp__214 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__211&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__214);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%22, i32* %%20, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_613_count);
  *llvm_cbe_tmp__212 = llvm_cbe_tmp__214;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__214);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 0, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_614_count);
  llvm_cbe_tmp__215 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i32* %%23, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_615_count);
  llvm_cbe_tmp__216 = (unsigned int )*llvm_cbe_tmp__215;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__216);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = trunc i32 %%24 to i8, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_616_count);
  llvm_cbe_tmp__217 = (unsigned char )((unsigned char )llvm_cbe_tmp__216&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__217);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 3, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_622_count);
  llvm_cbe_tmp__218 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%26, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_623_count);
  llvm_cbe_tmp__219 = (unsigned int )*llvm_cbe_tmp__218;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__219);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%27, i32* %%23, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_624_count);
  *llvm_cbe_tmp__215 = llvm_cbe_tmp__219;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__219);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 2, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_625_count);
  llvm_cbe_tmp__220 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = load i32* %%28, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_626_count);
  llvm_cbe_tmp__221 = (unsigned int )*llvm_cbe_tmp__220;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__221);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%29, i32* %%26, align 4, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_627_count);
  *llvm_cbe_tmp__218 = llvm_cbe_tmp__221;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__221);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 1, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_628_count);
  llvm_cbe_tmp__222 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i32* %%30, align 4, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_629_count);
  llvm_cbe_tmp__223 = (unsigned int )*llvm_cbe_tmp__222;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__223);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%31, i32* %%28, align 4, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_630_count);
  *llvm_cbe_tmp__220 = llvm_cbe_tmp__223;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__223);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = zext i8 %%25 to i32, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_631_count);
  llvm_cbe_tmp__224 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__217&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__224);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%32, i32* %%30, align 4, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_632_count);
  *llvm_cbe_tmp__222 = llvm_cbe_tmp__224;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__224);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @ShiftRows}\n");
  return;
}


void MixColumns(signed int (*llvm_cbe_state)[4]) {
  static  unsigned long long aesl_llvm_cbe_634_count = 0;
  static  unsigned long long aesl_llvm_cbe_635_count = 0;
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
  static  unsigned long long aesl_llvm_cbe_650_count = 0;
  static  unsigned long long aesl_llvm_cbe_651_count = 0;
  static  unsigned long long aesl_llvm_cbe_652_count = 0;
  static  unsigned long long aesl_llvm_cbe_653_count = 0;
  static  unsigned long long aesl_llvm_cbe_654_count = 0;
  static  unsigned long long aesl_llvm_cbe_655_count = 0;
  static  unsigned long long aesl_llvm_cbe_656_count = 0;
  static  unsigned long long aesl_llvm_cbe_657_count = 0;
  static  unsigned long long aesl_llvm_cbe_658_count = 0;
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  signed int *llvm_cbe_tmp__225;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  unsigned int llvm_cbe_tmp__226;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  unsigned char llvm_cbe_tmp__227;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  signed int *llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  unsigned int llvm_cbe_tmp__229;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  unsigned int llvm_cbe_tmp__230;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  signed int *llvm_cbe_tmp__231;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
  unsigned int llvm_cbe_tmp__232;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  signed int *llvm_cbe_tmp__233;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  unsigned int llvm_cbe_tmp__234;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  unsigned int llvm_cbe_tmp__235;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  unsigned int llvm_cbe_tmp__236;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  unsigned char llvm_cbe_tmp__237;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
  unsigned char llvm_cbe_tmp__238;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  unsigned char llvm_cbe_tmp__239;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;
  static  unsigned long long aesl_llvm_cbe_696_count = 0;
  unsigned char llvm_cbe_tmp__240;
  static  unsigned long long aesl_llvm_cbe_697_count = 0;
  unsigned char llvm_cbe_tmp__241;
  static  unsigned long long aesl_llvm_cbe_698_count = 0;
  static  unsigned long long aesl_llvm_cbe_699_count = 0;
  unsigned char llvm_cbe_tmp__242;
  static  unsigned long long aesl_llvm_cbe_700_count = 0;
  unsigned char llvm_cbe_tmp__243;
  static  unsigned long long aesl_llvm_cbe_701_count = 0;
  unsigned int llvm_cbe_tmp__244;
  static  unsigned long long aesl_llvm_cbe_702_count = 0;
  unsigned int llvm_cbe_tmp__245;
  static  unsigned long long aesl_llvm_cbe_703_count = 0;
  static  unsigned long long aesl_llvm_cbe_704_count = 0;
  unsigned int llvm_cbe_tmp__246;
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  unsigned char llvm_cbe_tmp__247;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
  unsigned char llvm_cbe_tmp__248;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
  unsigned char llvm_cbe_tmp__249;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
  unsigned char llvm_cbe_tmp__250;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  unsigned char llvm_cbe_tmp__251;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
  unsigned char llvm_cbe_tmp__252;
  static  unsigned long long aesl_llvm_cbe_715_count = 0;
  unsigned int llvm_cbe_tmp__253;
  static  unsigned long long aesl_llvm_cbe_716_count = 0;
  unsigned int llvm_cbe_tmp__254;
  static  unsigned long long aesl_llvm_cbe_717_count = 0;
  static  unsigned long long aesl_llvm_cbe_718_count = 0;
  unsigned int llvm_cbe_tmp__255;
  static  unsigned long long aesl_llvm_cbe_719_count = 0;
  unsigned char llvm_cbe_tmp__256;
  static  unsigned long long aesl_llvm_cbe_720_count = 0;
  static  unsigned long long aesl_llvm_cbe_721_count = 0;
  static  unsigned long long aesl_llvm_cbe_722_count = 0;
  unsigned char llvm_cbe_tmp__257;
  static  unsigned long long aesl_llvm_cbe_723_count = 0;
  static  unsigned long long aesl_llvm_cbe_724_count = 0;
  unsigned char llvm_cbe_tmp__258;
  static  unsigned long long aesl_llvm_cbe_725_count = 0;
  unsigned char llvm_cbe_tmp__259;
  static  unsigned long long aesl_llvm_cbe_726_count = 0;
  static  unsigned long long aesl_llvm_cbe_727_count = 0;
  unsigned char llvm_cbe_tmp__260;
  static  unsigned long long aesl_llvm_cbe_728_count = 0;
  unsigned char llvm_cbe_tmp__261;
  static  unsigned long long aesl_llvm_cbe_729_count = 0;
  unsigned int llvm_cbe_tmp__262;
  static  unsigned long long aesl_llvm_cbe_730_count = 0;
  unsigned int llvm_cbe_tmp__263;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  unsigned char llvm_cbe_tmp__264;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
  unsigned char llvm_cbe_tmp__265;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  unsigned char llvm_cbe_tmp__266;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  unsigned char llvm_cbe_tmp__267;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  unsigned char llvm_cbe_tmp__268;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  unsigned char llvm_cbe_tmp__269;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  unsigned char llvm_cbe_tmp__270;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
  unsigned int llvm_cbe_tmp__271;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
  unsigned int llvm_cbe_tmp__272;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
  unsigned int llvm_cbe_tmp__273;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  static  unsigned long long aesl_llvm_cbe_749_count = 0;
  static  unsigned long long aesl_llvm_cbe_750_count = 0;
  static  unsigned long long aesl_llvm_cbe_751_count = 0;
  static  unsigned long long aesl_llvm_cbe_752_count = 0;
  static  unsigned long long aesl_llvm_cbe_753_count = 0;
  static  unsigned long long aesl_llvm_cbe_754_count = 0;
  static  unsigned long long aesl_llvm_cbe_755_count = 0;
  static  unsigned long long aesl_llvm_cbe_756_count = 0;
  static  unsigned long long aesl_llvm_cbe_757_count = 0;
  static  unsigned long long aesl_llvm_cbe_758_count = 0;
  static  unsigned long long aesl_llvm_cbe_759_count = 0;
  static  unsigned long long aesl_llvm_cbe_760_count = 0;
  static  unsigned long long aesl_llvm_cbe_761_count = 0;
  static  unsigned long long aesl_llvm_cbe_762_count = 0;
  static  unsigned long long aesl_llvm_cbe_763_count = 0;
  static  unsigned long long aesl_llvm_cbe_764_count = 0;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @MixColumns\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__274;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__274:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%50, %%1  for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__273);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [4 x i32]* %%state, i32 0, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_671_count);
  llvm_cbe_tmp__225 = (signed int *)(&(*llvm_cbe_state)[(((signed int )llvm_cbe_storemerge1))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",((signed int )llvm_cbe_storemerge1));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge1) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i32* %%2, align 4, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_672_count);
  llvm_cbe_tmp__226 = (unsigned int )*llvm_cbe_tmp__225;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__226);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = trunc i32 %%3 to i8, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_673_count);
  llvm_cbe_tmp__227 = (unsigned char )((unsigned char )llvm_cbe_tmp__226&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__227);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [4 x i32]* %%state, i32 1, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_676_count);
  llvm_cbe_tmp__228 = (signed int *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )llvm_cbe_storemerge1))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",((signed int )llvm_cbe_storemerge1));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge1) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_677_count);
  llvm_cbe_tmp__229 = (unsigned int )*llvm_cbe_tmp__228;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__229);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = xor i32 %%6, %%3, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_678_count);
  llvm_cbe_tmp__230 = (unsigned int )llvm_cbe_tmp__229 ^ llvm_cbe_tmp__226;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__230);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [4 x i32]* %%state, i32 2, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_679_count);
  llvm_cbe_tmp__231 = (signed int *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )llvm_cbe_storemerge1))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",((signed int )llvm_cbe_storemerge1));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge1) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* %%8, align 4, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_680_count);
  llvm_cbe_tmp__232 = (unsigned int )*llvm_cbe_tmp__231;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__232);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [4 x i32]* %%state, i32 3, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_681_count);
  llvm_cbe_tmp__233 = (signed int *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )llvm_cbe_storemerge1))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",((signed int )llvm_cbe_storemerge1));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge1) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i32* %%10, align 4, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_682_count);
  llvm_cbe_tmp__234 = (unsigned int )*llvm_cbe_tmp__233;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__234);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = xor i32 %%7, %%9, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_683_count);
  llvm_cbe_tmp__235 = (unsigned int )llvm_cbe_tmp__230 ^ llvm_cbe_tmp__232;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__235);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = xor i32 %%12, %%11, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_684_count);
  llvm_cbe_tmp__236 = (unsigned int )llvm_cbe_tmp__235 ^ llvm_cbe_tmp__234;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__236);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = trunc i32 %%13 to i8, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_685_count);
  llvm_cbe_tmp__237 = (unsigned char )((unsigned char )llvm_cbe_tmp__236&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__237);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = trunc i32 %%7 to i8, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_691_count);
  llvm_cbe_tmp__238 = (unsigned char )((unsigned char )llvm_cbe_tmp__230&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__238);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = shl i8 %%15, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_694_count);
  llvm_cbe_tmp__239 = (unsigned char )((unsigned char )(llvm_cbe_tmp__238 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__239);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = ashr i8 %%15, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_696_count);
  llvm_cbe_tmp__240 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__238) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__240));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = and i8 %%17, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_697_count);
  llvm_cbe_tmp__241 = (unsigned char )((unsigned char )(llvm_cbe_tmp__240 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__241);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = xor i8 %%14, %%16, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_699_count);
  llvm_cbe_tmp__242 = (unsigned char )((unsigned char )(llvm_cbe_tmp__237 ^ llvm_cbe_tmp__239));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__242);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = xor i8 %%19, %%18, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_700_count);
  llvm_cbe_tmp__243 = (unsigned char )((unsigned char )(llvm_cbe_tmp__242 ^ llvm_cbe_tmp__241));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__243);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = zext i8 %%20 to i32, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_701_count);
  llvm_cbe_tmp__244 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__243&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__244);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = xor i32 %%21, %%3, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_702_count);
  llvm_cbe_tmp__245 = (unsigned int )llvm_cbe_tmp__244 ^ llvm_cbe_tmp__226;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__245);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%22, i32* %%2, align 4, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_703_count);
  *llvm_cbe_tmp__225 = llvm_cbe_tmp__245;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__245);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = xor i32 %%9, %%6, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_704_count);
  llvm_cbe_tmp__246 = (unsigned int )llvm_cbe_tmp__232 ^ llvm_cbe_tmp__229;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__246);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = trunc i32 %%23 to i8, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_705_count);
  llvm_cbe_tmp__247 = (unsigned char )((unsigned char )llvm_cbe_tmp__246&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__247);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = shl i8 %%24, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_708_count);
  llvm_cbe_tmp__248 = (unsigned char )((unsigned char )(llvm_cbe_tmp__247 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__248);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = ashr i8 %%24, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_710_count);
  llvm_cbe_tmp__249 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__247) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__249));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = and i8 %%26, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_711_count);
  llvm_cbe_tmp__250 = (unsigned char )((unsigned char )(llvm_cbe_tmp__249 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__250);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = xor i8 %%25, %%14, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_713_count);
  llvm_cbe_tmp__251 = (unsigned char )((unsigned char )(llvm_cbe_tmp__248 ^ llvm_cbe_tmp__237));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__251);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = xor i8 %%28, %%27, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_714_count);
  llvm_cbe_tmp__252 = (unsigned char )((unsigned char )(llvm_cbe_tmp__251 ^ llvm_cbe_tmp__250));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__252);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = zext i8 %%29 to i32, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_715_count);
  llvm_cbe_tmp__253 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__252&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__253);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = xor i32 %%30, %%6, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_716_count);
  llvm_cbe_tmp__254 = (unsigned int )llvm_cbe_tmp__253 ^ llvm_cbe_tmp__229;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__254);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%31, i32* %%5, align 4, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_717_count);
  *llvm_cbe_tmp__228 = llvm_cbe_tmp__254;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__254);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = xor i32 %%11, %%9, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_718_count);
  llvm_cbe_tmp__255 = (unsigned int )llvm_cbe_tmp__234 ^ llvm_cbe_tmp__232;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__255);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = trunc i32 %%32 to i8, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_719_count);
  llvm_cbe_tmp__256 = (unsigned char )((unsigned char )llvm_cbe_tmp__255&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__256);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = shl i8 %%33, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_722_count);
  llvm_cbe_tmp__257 = (unsigned char )((unsigned char )(llvm_cbe_tmp__256 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__257);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = ashr i8 %%33, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_724_count);
  llvm_cbe_tmp__258 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__256) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__258));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = and i8 %%35, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_725_count);
  llvm_cbe_tmp__259 = (unsigned char )((unsigned char )(llvm_cbe_tmp__258 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__259);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = xor i8 %%34, %%14, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_727_count);
  llvm_cbe_tmp__260 = (unsigned char )((unsigned char )(llvm_cbe_tmp__257 ^ llvm_cbe_tmp__237));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__260);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = xor i8 %%37, %%36, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_728_count);
  llvm_cbe_tmp__261 = (unsigned char )((unsigned char )(llvm_cbe_tmp__260 ^ llvm_cbe_tmp__259));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__261);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = zext i8 %%38 to i32, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_729_count);
  llvm_cbe_tmp__262 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__261&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__262);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = xor i32 %%39, %%9, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_730_count);
  llvm_cbe_tmp__263 = (unsigned int )llvm_cbe_tmp__262 ^ llvm_cbe_tmp__232;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__263);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%40, i32* %%8, align 4, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_731_count);
  *llvm_cbe_tmp__231 = llvm_cbe_tmp__263;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__263);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = trunc i32 %%11 to i8, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_732_count);
  llvm_cbe_tmp__264 = (unsigned char )((unsigned char )llvm_cbe_tmp__234&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__264);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = xor i8 %%41, %%4, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_733_count);
  llvm_cbe_tmp__265 = (unsigned char )((unsigned char )(llvm_cbe_tmp__264 ^ llvm_cbe_tmp__227));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__265);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = shl i8 %%42, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_736_count);
  llvm_cbe_tmp__266 = (unsigned char )((unsigned char )(llvm_cbe_tmp__265 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__266);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = ashr i8 %%42, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_738_count);
  llvm_cbe_tmp__267 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__265) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__267));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = and i8 %%44, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_739_count);
  llvm_cbe_tmp__268 = (unsigned char )((unsigned char )(llvm_cbe_tmp__267 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__268);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = xor i8 %%43, %%14, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_741_count);
  llvm_cbe_tmp__269 = (unsigned char )((unsigned char )(llvm_cbe_tmp__266 ^ llvm_cbe_tmp__237));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__269);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = xor i8 %%46, %%45, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_742_count);
  llvm_cbe_tmp__270 = (unsigned char )((unsigned char )(llvm_cbe_tmp__269 ^ llvm_cbe_tmp__268));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__270);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = zext i8 %%47 to i32, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_743_count);
  llvm_cbe_tmp__271 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__270&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__271);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = xor i32 %%48, %%11, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_744_count);
  llvm_cbe_tmp__272 = (unsigned int )llvm_cbe_tmp__271 ^ llvm_cbe_tmp__234;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__272);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%49, i32* %%10, align 4, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_745_count);
  *llvm_cbe_tmp__233 = llvm_cbe_tmp__272;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__272);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add nsw i32 %%storemerge1, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_746_count);
  llvm_cbe_tmp__273 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__273&4294967295ull)));
  if (((llvm_cbe_tmp__273&4294967295U) == (4u&4294967295U))) {
    goto llvm_cbe_tmp__275;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__273;   /* for PHI node */
    goto llvm_cbe_tmp__274;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__275:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @MixColumns}\n");
  return;
}


void Cipher(signed int (*llvm_cbe_state)[4], signed int *llvm_cbe_Key) {
  static  unsigned long long aesl_llvm_cbe_Rcon_count = 0;
  signed int llvm_cbe_Rcon[255];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_RoundKey_count = 0;
  signed int llvm_cbe_RoundKey[240];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
   char *llvm_cbe_tmp__276;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
   char *llvm_cbe_tmp__277;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  signed int *llvm_cbe_tmp__278;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
  signed int *llvm_cbe_tmp__279;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;
  static  unsigned long long aesl_llvm_cbe_799_count = 0;
  static  unsigned long long aesl_llvm_cbe_800_count = 0;
  static  unsigned long long aesl_llvm_cbe_801_count = 0;
  static  unsigned long long aesl_llvm_cbe_802_count = 0;
  static  unsigned long long aesl_llvm_cbe_803_count = 0;
  static  unsigned long long aesl_llvm_cbe_804_count = 0;
  static  unsigned long long aesl_llvm_cbe_805_count = 0;
  static  unsigned long long aesl_llvm_cbe_806_count = 0;
  static  unsigned long long aesl_llvm_cbe_807_count = 0;
  static  unsigned long long aesl_llvm_cbe_808_count = 0;
  static  unsigned long long aesl_llvm_cbe_809_count = 0;
  static  unsigned long long aesl_llvm_cbe_810_count = 0;
  static  unsigned long long aesl_llvm_cbe_811_count = 0;
  static  unsigned long long aesl_llvm_cbe_812_count = 0;
  static  unsigned long long aesl_llvm_cbe_813_count = 0;
  static  unsigned long long aesl_llvm_cbe_814_count = 0;
  static  unsigned long long aesl_llvm_cbe_815_count = 0;
  static  unsigned long long aesl_llvm_cbe_816_count = 0;
  static  unsigned long long aesl_llvm_cbe_817_count = 0;
  static  unsigned long long aesl_llvm_cbe_818_count = 0;
  static  unsigned long long aesl_llvm_cbe_819_count = 0;
  static  unsigned long long aesl_llvm_cbe_820_count = 0;
  static  unsigned long long aesl_llvm_cbe_821_count = 0;
  static  unsigned long long aesl_llvm_cbe_822_count = 0;
  static  unsigned long long aesl_llvm_cbe_823_count = 0;
  static  unsigned long long aesl_llvm_cbe_824_count = 0;
  static  unsigned long long aesl_llvm_cbe_825_count = 0;
  static  unsigned long long aesl_llvm_cbe_826_count = 0;
  static  unsigned long long aesl_llvm_cbe_827_count = 0;
  static  unsigned long long aesl_llvm_cbe_828_count = 0;
  static  unsigned long long aesl_llvm_cbe_829_count = 0;
  static  unsigned long long aesl_llvm_cbe_830_count = 0;
  static  unsigned long long aesl_llvm_cbe_831_count = 0;
  static  unsigned long long aesl_llvm_cbe_832_count = 0;
  static  unsigned long long aesl_llvm_cbe_833_count = 0;
  static  unsigned long long aesl_llvm_cbe_834_count = 0;
  static  unsigned long long aesl_llvm_cbe_835_count = 0;
  static  unsigned long long aesl_llvm_cbe_836_count = 0;
  static  unsigned long long aesl_llvm_cbe_837_count = 0;
  static  unsigned long long aesl_llvm_cbe_838_count = 0;
  static  unsigned long long aesl_llvm_cbe_839_count = 0;
  static  unsigned long long aesl_llvm_cbe_840_count = 0;
  static  unsigned long long aesl_llvm_cbe_841_count = 0;
  static  unsigned long long aesl_llvm_cbe_842_count = 0;
  static  unsigned long long aesl_llvm_cbe_843_count = 0;
  static  unsigned long long aesl_llvm_cbe_844_count = 0;
  static  unsigned long long aesl_llvm_cbe_845_count = 0;
  static  unsigned long long aesl_llvm_cbe_846_count = 0;
  static  unsigned long long aesl_llvm_cbe_847_count = 0;
  static  unsigned long long aesl_llvm_cbe_848_count = 0;
  static  unsigned long long aesl_llvm_cbe_849_count = 0;
  static  unsigned long long aesl_llvm_cbe_850_count = 0;
  static  unsigned long long aesl_llvm_cbe_851_count = 0;
  static  unsigned long long aesl_llvm_cbe_852_count = 0;
  static  unsigned long long aesl_llvm_cbe_853_count = 0;
  static  unsigned long long aesl_llvm_cbe_854_count = 0;
  static  unsigned long long aesl_llvm_cbe_855_count = 0;
  static  unsigned long long aesl_llvm_cbe_856_count = 0;
  static  unsigned long long aesl_llvm_cbe_857_count = 0;
  static  unsigned long long aesl_llvm_cbe_858_count = 0;
  static  unsigned long long aesl_llvm_cbe_859_count = 0;
  static  unsigned long long aesl_llvm_cbe_860_count = 0;
  static  unsigned long long aesl_llvm_cbe_861_count = 0;
  static  unsigned long long aesl_llvm_cbe_862_count = 0;
  static  unsigned long long aesl_llvm_cbe_863_count = 0;
  static  unsigned long long aesl_llvm_cbe_864_count = 0;
  static  unsigned long long aesl_llvm_cbe_865_count = 0;
  static  unsigned long long aesl_llvm_cbe_866_count = 0;
  static  unsigned long long aesl_llvm_cbe_867_count = 0;
  static  unsigned long long aesl_llvm_cbe_868_count = 0;
  static  unsigned long long aesl_llvm_cbe_869_count = 0;
  static  unsigned long long aesl_llvm_cbe_870_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @Cipher\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [255 x i32]* %%Rcon to i8*, !dbg !8 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_780_count);
  llvm_cbe_tmp__276 = ( char *)(( char *)(&llvm_cbe_Rcon));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memcpy(i8* %%1, i8* bitcast ([255 x i32]* @aesl_internal_Cipher.Rcon to i8*), i32 1020 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_781_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__276, ( char *)(( char *)(&aesl_internal_Cipher_OC_Rcon)), 1020u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1020u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__277);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [240 x i32]* %%RoundKey, i32 0, i32 0, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_787_count);
  llvm_cbe_tmp__278 = (signed int *)(&llvm_cbe_RoundKey[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 240
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [255 x i32]* %%Rcon, i32 0, i32 0, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_788_count);
  llvm_cbe_tmp__279 = (signed int *)(&llvm_cbe_Rcon[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 255
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @KeyExpansion(i32* %%3, i32* %%Key, i32* %%4), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_789_count);
  KeyExpansion((signed int *)llvm_cbe_tmp__278, (signed int *)llvm_cbe_Key, (signed int *)llvm_cbe_tmp__279);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 0, [4 x i32]* %%state, i32* %%3), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_790_count);
  AddRoundKey(0u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_795_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_796_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_797_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 1, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_798_count);
  AddRoundKey(1u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_803_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_804_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_805_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 2, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_806_count);
  AddRoundKey(2u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",2u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_811_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_812_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_813_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 3, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_814_count);
  AddRoundKey(3u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",3u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_819_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_820_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_821_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 4, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_822_count);
  AddRoundKey(4u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",4u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_827_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_828_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_829_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 5, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_830_count);
  AddRoundKey(5u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",5u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_835_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_836_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_837_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 6, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_838_count);
  AddRoundKey(6u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",6u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_843_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_844_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_845_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 7, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_846_count);
  AddRoundKey(7u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",7u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_851_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_852_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_853_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 8, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_854_count);
  AddRoundKey(8u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",8u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_859_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_860_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_861_count);
  MixColumns(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 9, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_862_count);
  AddRoundKey(9u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",9u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_867_count);
  SubBytes(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i32]* %%state), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_868_count);
  ShiftRows(llvm_cbe_state);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 10, [4 x i32]* %%state, i32* %%3), !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_869_count);
  AddRoundKey(10u, llvm_cbe_state, (signed int *)llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @Cipher}\n");
  return;
}

