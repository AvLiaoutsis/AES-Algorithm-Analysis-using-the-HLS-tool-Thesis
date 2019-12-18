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
void KeyExpansion( char *llvm_cbe_RoundKey,  char *llvm_cbe_Key, signed int *llvm_cbe_Rcon, signed int llvm_cbe_Nk, signed int llvm_cbe_Nr);
void AddRoundKey(signed int llvm_cbe_round,  char (*llvm_cbe_state)[4],  char *llvm_cbe_RoundKey);
void SubBytes( char (*llvm_cbe_state)[4]);
void ShiftRows( char (*llvm_cbe_state)[4]);
void MixColumns( char (*llvm_cbe_state)[4]);
void Cipher(signed int llvm_cbe_Nr, signed int llvm_cbe_Nk,  char *llvm_cbe_out);


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_getSBoxValue_OC_sbox[256] = { 99u, 124u, 119u, 123u, 242u, 107u, 111u, 197u, 48u, 1u, 103u, 43u, 254u, 215u, 171u, 118u, 202u, 130u, 201u, 125u, 250u, 89u, 71u, 240u, 173u, 212u, 162u, 175u, 156u, 164u, 114u, 192u, 183u, 253u, 147u, 38u, 54u, 63u, 247u, 204u, 52u, 165u, 229u, 241u, 113u, 216u, 49u, 21u, 4u, 199u, 35u, 195u, 24u, 150u, 5u, 154u, 7u, 18u, 128u, 226u, 235u, 39u, 178u, 117u, 9u, 131u, 44u, 26u, 27u, 110u, 90u, 160u, 82u, 59u, 214u, 179u, 41u, 227u, 47u, 132u, 83u, 209u, 0u, 237u, 32u, 252u, 177u, 91u, 106u, 203u, 190u, 57u, 74u, 76u, 88u, 207u, 208u, 239u, 170u, 251u, 67u, 77u, 51u, 133u, 69u, 249u, 2u, 127u, 80u, 60u, 159u, 168u, 81u, 163u, 64u, 143u, 146u, 157u, 56u, 245u, 188u, 182u, 218u, 33u, 16u, 255u, 243u, 210u, 205u, 12u, 19u, 236u, 95u, 151u, 68u, 23u, 196u, 167u, 126u, 61u, 100u, 93u, 25u, 115u, 96u, 129u, 79u, 220u, 34u, 42u, 144u, 136u, 70u, 238u, 184u, 20u, 222u, 94u, 11u, 219u, 224u, 50u, 58u, 10u, 73u, 6u, 36u, 92u, 194u, 211u, 172u, 98u, 145u, 149u, 228u, 121u, 231u, 200u, 55u, 109u, 141u, 213u, 78u, 169u, 108u, 86u, 244u, 234u, 101u, 122u, 174u, 8u, 186u, 120u, 37u, 46u, 28u, 166u, 180u, 198u, 232u, 221u, 116u, 31u, 75u, 189u, 139u, 138u, 112u, 62u, 181u, 102u, 72u, 3u, 246u, 14u, 97u, 53u, 87u, 185u, 134u, 193u, 29u, 158u, 225u, 248u, 152u, 17u, 105u, 217u, 142u, 148u, 155u, 30u, 135u, 233u, 206u, 85u, 40u, 223u, 140u, 161u, 137u, 13u, 191u, 230u, 66u, 104u, 65u, 153u, 45u, 15u, 176u, 84u, 187u, 22u };
static signed int aesl_internal_Cipher_OC_Rcon[255] = { 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u, 141u, 1u, 2u, 4u, 8u, 16u, 32u, 64u, 128u, 27u, 54u, 108u, 216u, 171u, 77u, 154u, 47u, 94u, 188u, 99u, 198u, 151u, 53u, 106u, 212u, 179u, 125u, 250u, 239u, 197u, 145u, 57u, 114u, 228u, 211u, 189u, 97u, 194u, 159u, 37u, 74u, 148u, 51u, 102u, 204u, 131u, 29u, 58u, 116u, 232u, 203u };
static  char aesl_internal_Cipher_OC_temp[16] = { ((unsigned char )0), ((unsigned char )1), ((unsigned char )2), ((unsigned char )3), ((unsigned char )4), ((unsigned char )5), ((unsigned char )6), ((unsigned char )7), ((unsigned char )8), ((unsigned char )9), ((unsigned char )10), ((unsigned char )11), ((unsigned char )12), ((unsigned char )13), ((unsigned char )14), ((unsigned char )15) };
static  char aesl_internal_Cipher_OC_temp2[16] = { ((unsigned char )0), ((unsigned char )17), ((unsigned char )34), ((unsigned char )51), ((unsigned char )68), ((unsigned char )85), ((unsigned char )102), ((unsigned char )119), ((unsigned char )-120), ((unsigned char )-103), ((unsigned char )-86), ((unsigned char )-69), ((unsigned char )-52), ((unsigned char )-35), ((unsigned char )-18), ((unsigned char )-1) };


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


void KeyExpansion( char *llvm_cbe_RoundKey,  char *llvm_cbe_Key, signed int *llvm_cbe_Rcon, signed int llvm_cbe_Nk, signed int llvm_cbe_Nr) {
  static  unsigned long long aesl_llvm_cbe_temp_count = 0;
   char llvm_cbe_temp[4];    /* Address-exposed local */
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
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_2e_lcssa_count = 0;
  unsigned int llvm_cbe_storemerge_2e_lcssa;
  unsigned int llvm_cbe_storemerge_2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
   char *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
   char *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
   char *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
   char *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge25_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge25_2e_us;
  unsigned int llvm_cbe_storemerge25_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
   char *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned char llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
   char *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned char llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
   char *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned char llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
   char *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  unsigned char llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
   char *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned char llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned char llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned char llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
   char *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
   char *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned char llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned char llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned char llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
   char *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
   char *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned char llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned char llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  unsigned char llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
   char *llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
   char *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned char llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned char llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned char llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
   char *llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  unsigned char llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  unsigned char llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  unsigned char llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  unsigned char llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  unsigned int llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  signed int *llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  unsigned char llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  unsigned char llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  unsigned int llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  unsigned int llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  unsigned char llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  unsigned int llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  unsigned int llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  unsigned char llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  unsigned int llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  unsigned char llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  unsigned int llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  unsigned int llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  unsigned char llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge6_count = 0;
  unsigned int llvm_cbe_storemerge6;
  unsigned int llvm_cbe_storemerge6__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
   char *llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  unsigned char llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
   char *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
   char *llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  unsigned char llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
   char *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
   char *llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  unsigned char llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
   char *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  unsigned int llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
   char *llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  unsigned char llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
   char *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond10_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge25_count = 0;
  unsigned int llvm_cbe_storemerge25;
  unsigned int llvm_cbe_storemerge25__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  unsigned int llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
   char *llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  unsigned char llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  unsigned int llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
   char *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  unsigned char llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  unsigned int llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
   char *llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  unsigned char llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
   char *llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  unsigned char llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  unsigned char llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  unsigned char llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  unsigned char llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  unsigned int llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  unsigned char llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  unsigned int llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  signed int *llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  unsigned int llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  unsigned char llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  unsigned char llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  unsigned int llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  unsigned int llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
   char *llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  unsigned char llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  unsigned char llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  unsigned char llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
   char *llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  unsigned int llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
   char *llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  unsigned char llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  unsigned char llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  unsigned char llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
   char *llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  unsigned int llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
   char *llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  unsigned char llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  unsigned char llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  unsigned char llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  unsigned int llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
   char *llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  unsigned int llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
   char *llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  unsigned char llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  unsigned char llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  unsigned char llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  unsigned int llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
   char *llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  unsigned int llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond9_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @KeyExpansion\n");
  if ((((signed int )llvm_cbe_Nk) > ((signed int )0u))) {
    llvm_cbe_storemerge6__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe_storemerge_2e_lcssa__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader4;
  }

llvm_cbe__2e_preheader4:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge.lcssa = phi i32 [ 0, %%0 ], [ %%Nk, %%.lr.ph  for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_storemerge_2e_lcssa_count);
  llvm_cbe_storemerge_2e_lcssa = (unsigned int )llvm_cbe_storemerge_2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge.lcssa = 0x%X",llvm_cbe_storemerge_2e_lcssa);
printf("\n = 0x%X",0u);
printf("\nNk = 0x%X",llvm_cbe_Nk);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = shl i32 %%Nr, 2, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__3 = (unsigned int )llvm_cbe_Nr << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = add i32 %%2, 4, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(llvm_cbe_tmp__3&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__4&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge_2e_lcssa) < ((signed int )llvm_cbe_tmp__4))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph;
  } else {
    goto llvm_cbe_tmp__162;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [4 x i8]* %%temp, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__5 = ( char *)(&llvm_cbe_temp[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [4 x i8]* %%temp, i32 0, i32 1, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__6 = ( char *)(&llvm_cbe_temp[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [4 x i8]* %%temp, i32 0, i32 2, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__7 = ( char *)(&llvm_cbe_temp[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [4 x i8]* %%temp, i32 0, i32 3, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__8 = ( char *)(&llvm_cbe_temp[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  if ((((signed int )llvm_cbe_Nk) > ((signed int )6u))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph_2e_split_2e_us;
  } else {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph_2e__2e_preheader_2e_lr_2e_ph_2e_split_crit_edge;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph_2e__2e_preheader_2e_lr_2e_ph_2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = shl i32 %%Nr, 2, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__9 = (unsigned int )llvm_cbe_Nr << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%10, 4, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
  llvm_cbe_storemerge25__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge_2e_lcssa;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe__2e_preheader_2e_lr_2e_ph_2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = shl i32 %%Nr, 2, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__11 = (unsigned int )llvm_cbe_Nr << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add i32 %%12, 4, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
  llvm_cbe_storemerge25_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge_2e_lcssa;   /* for PHI node */
  goto llvm_cbe__2e_preheader_2e_us;

  do {     /* Syntactic loop '.preheader.us' to make GCC happy */
llvm_cbe__2e_preheader_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge25.us = phi i32 [ %%storemerge.lcssa, %%.preheader.lr.ph.split.us ], [ %%58, %%29  for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_storemerge25_2e_us_count);
  llvm_cbe_storemerge25_2e_us = (unsigned int )llvm_cbe_storemerge25_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge25.us = 0x%X",llvm_cbe_storemerge25_2e_us);
printf("\nstoremerge.lcssa = 0x%X",llvm_cbe_storemerge_2e_lcssa);
printf("\n = 0x%X",llvm_cbe_tmp__55);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = shl i32 %%storemerge25.us, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__13 = (unsigned int )llvm_cbe_storemerge25_2e_us << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add i32 %%14, -4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967292u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__14&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds i8* %%RoundKey, i32 %%15, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__15 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__14))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__14));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i8* %%16, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__16 = (unsigned char )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* %%5, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_92_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = add i32 %%14, -3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967293u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i8* %%RoundKey, i32 %%18, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__18 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__17))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__17));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load i8* %%19, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__19 = (unsigned char )*llvm_cbe_tmp__18;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%20, i8* %%6, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_101_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add i32 %%14, -2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__20 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967294u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__20&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i8* %%RoundKey, i32 %%21, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__21 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* %%22, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__22 = (unsigned char )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%23, i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_110_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add i32 %%14, -1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__23&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i8* %%RoundKey, i32 %%24, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__24 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__23))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__23));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i8* %%25, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_118_count);
  llvm_cbe_tmp__25 = (unsigned char )*llvm_cbe_tmp__24;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%26, i8* %%8, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_119_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = srem i32 %%storemerge25.us, %%Nk, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__26 = (unsigned int )((signed int )(((signed int )llvm_cbe_storemerge25_2e_us) % ((signed int )llvm_cbe_Nk)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__26));
  if (((llvm_cbe_tmp__26&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__163;
  } else {
    goto llvm_cbe_tmp__164;
  }

llvm_cbe_tmp__165:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = sub nsw i32 %%storemerge25.us, %%Nk, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__27 = (unsigned int )((unsigned int )(llvm_cbe_storemerge25_2e_us&4294967295ull)) - ((unsigned int )(llvm_cbe_Nk&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__27&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = shl nsw i32 %%30, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__28 = (unsigned int )llvm_cbe_tmp__27 << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds i8* %%RoundKey, i32 %%31, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__29 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i8* %%32, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__30 = (unsigned char )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i8* %%5, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__31 = (unsigned char )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = xor i8 %%34, %%33, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__32 = (unsigned char )((unsigned char )(llvm_cbe_tmp__31 ^ llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds i8* %%RoundKey, i32 %%14, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__33 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__13))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__13));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%35, i8* %%36, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_135_count);
  *llvm_cbe_tmp__33 = llvm_cbe_tmp__32;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = or i32 %%31, 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__34 = (unsigned int )llvm_cbe_tmp__28 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i8* %%RoundKey, i32 %%37, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__35 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__34))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__34));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i8* %%38, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__36 = (unsigned char )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i8* %%6, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__37 = (unsigned char )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = xor i8 %%40, %%39, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__38 = (unsigned char )((unsigned char )(llvm_cbe_tmp__37 ^ llvm_cbe_tmp__36));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = or i32 %%14, 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__39 = (unsigned int )llvm_cbe_tmp__13 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i8* %%RoundKey, i32 %%42, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__40 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__39))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__39));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%41, i8* %%43, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_143_count);
  *llvm_cbe_tmp__40 = llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = or i32 %%31, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__41 = (unsigned int )llvm_cbe_tmp__28 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds i8* %%RoundKey, i32 %%44, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__42 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i8* %%45, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__43 = (unsigned char )*llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__44 = (unsigned char )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = xor i8 %%47, %%46, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__45 = (unsigned char )((unsigned char )(llvm_cbe_tmp__44 ^ llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__45);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = or i32 %%14, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__46 = (unsigned int )llvm_cbe_tmp__13 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds i8* %%RoundKey, i32 %%49, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_150_count);
  llvm_cbe_tmp__47 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__46))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__46));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%48, i8* %%50, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_151_count);
  *llvm_cbe_tmp__47 = llvm_cbe_tmp__45;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__45);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = or i32 %%31, 3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__48 = (unsigned int )llvm_cbe_tmp__28 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds i8* %%RoundKey, i32 %%51, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__49 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__48))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__48));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = load i8* %%52, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__50 = (unsigned char )*llvm_cbe_tmp__49;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i8* %%8, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__51 = (unsigned char )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = xor i8 %%54, %%53, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__52 = (unsigned char )((unsigned char )(llvm_cbe_tmp__51 ^ llvm_cbe_tmp__50));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = or i32 %%14, 3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__53 = (unsigned int )llvm_cbe_tmp__13 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds i8* %%RoundKey, i32 %%56, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__54 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__53))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__53));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%55, i8* %%57, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_159_count);
  *llvm_cbe_tmp__54 = llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = add nsw i32 %%storemerge25.us, 1, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(llvm_cbe_storemerge25_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__55&4294967295ull)));
  if (((llvm_cbe_tmp__55&4294967295U) == (llvm_cbe_tmp__12&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge25_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__55;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e_us;
  }

llvm_cbe_tmp__163:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = zext i8 %%20 to i32, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__19&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = call i32 @getSBoxValue(i32 %%60), !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__57 = (unsigned int )getSBoxValue(llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__56);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__57);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = trunc i32 %%61 to i8, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__58 = (unsigned char )((unsigned char )llvm_cbe_tmp__57&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = zext i8 %%23 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__59 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__22&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = call i32 @getSBoxValue(i32 %%63), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__60 = (unsigned int )getSBoxValue(llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__59);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__60);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = trunc i32 %%64 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__61 = (unsigned char )((unsigned char )llvm_cbe_tmp__60&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%65, i8* %%6, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_195_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__61;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = zext i8 %%26 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_196_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__25&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = call i32 @getSBoxValue(i32 %%66), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_197_count);
  llvm_cbe_tmp__63 = (unsigned int )getSBoxValue(llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__62);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__63);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = trunc i32 %%67 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_198_count);
  llvm_cbe_tmp__64 = (unsigned char )((unsigned char )llvm_cbe_tmp__63&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__64);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%68, i8* %%7, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_199_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__64);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = zext i8 %%17 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__65 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__16&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = call i32 @getSBoxValue(i32 %%69), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__66 = (unsigned int )getSBoxValue(llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__65);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__66);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = trunc i32 %%70 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__67 = (unsigned char )((unsigned char )llvm_cbe_tmp__66&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__67);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%71, i8* %%8, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_203_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__67;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = sdiv i32 %%storemerge25.us, %%Nk, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__68 = (unsigned int )((signed int )(((signed int )llvm_cbe_storemerge25_2e_us) / ((signed int )llvm_cbe_Nk)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__68));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = getelementptr inbounds i32* %%Rcon, i32 %%72, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_205_count);
  llvm_cbe_tmp__69 = (signed int *)(&llvm_cbe_Rcon[(((signed int )llvm_cbe_tmp__68))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__68));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = load i32* %%73, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__70 = (unsigned int )*llvm_cbe_tmp__69;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = trunc i32 %%74 to i8, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_207_count);
  llvm_cbe_tmp__71 = (unsigned char )((unsigned char )llvm_cbe_tmp__70&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = xor i8 %%75, %%62, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_208_count);
  llvm_cbe_tmp__72 = (unsigned char )((unsigned char )(llvm_cbe_tmp__71 ^ llvm_cbe_tmp__58));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%76, i8* %%5, align 1, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_209_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);
  goto llvm_cbe_tmp__165;

llvm_cbe_tmp__166:
  goto llvm_cbe_tmp__165;

llvm_cbe_tmp__164:
  if (((llvm_cbe_tmp__26&4294967295U) == (4u&4294967295U))) {
    goto llvm_cbe_tmp__167;
  } else {
    goto llvm_cbe_tmp__166;
  }

llvm_cbe_tmp__167:
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = zext i8 %%17 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__73 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__16&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = call i32 @getSBoxValue(i32 %%81), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_215_count);
  llvm_cbe_tmp__74 = (unsigned int )getSBoxValue(llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__73);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__74);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = trunc i32 %%82 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_216_count);
  llvm_cbe_tmp__75 = (unsigned char )((unsigned char )llvm_cbe_tmp__74&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__75);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%83, i8* %%5, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_217_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = zext i8 %%20 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_218_count);
  llvm_cbe_tmp__76 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__19&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = call i32 @getSBoxValue(i32 %%84), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_219_count);
  llvm_cbe_tmp__77 = (unsigned int )getSBoxValue(llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__76);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__77);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = trunc i32 %%85 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_220_count);
  llvm_cbe_tmp__78 = (unsigned char )((unsigned char )llvm_cbe_tmp__77&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%86, i8* %%6, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_221_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = zext i8 %%23 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_222_count);
  llvm_cbe_tmp__79 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__22&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = call i32 @getSBoxValue(i32 %%87), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_223_count);
  llvm_cbe_tmp__80 = (unsigned int )getSBoxValue(llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__79);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__80);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = trunc i32 %%88 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__81 = (unsigned char )((unsigned char )llvm_cbe_tmp__80&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%89, i8* %%7, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_225_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__81;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = zext i8 %%26 to i32, !dbg !12 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__82 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__25&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = call i32 @getSBoxValue(i32 %%90), !dbg !12 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__83 = (unsigned int )getSBoxValue(llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__82);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__83);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = trunc i32 %%91 to i8, !dbg !12 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__84 = (unsigned char )((unsigned char )llvm_cbe_tmp__83&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%92, i8* %%8, align 1, !dbg !12 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_229_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__84;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);
  goto llvm_cbe_tmp__166;

  } while (1); /* end of syntactic loop '.preheader.us' */
  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge6 = phi i32 [ %%109, %%.lr.ph ], [ 0, %%0  for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_storemerge6_count);
  llvm_cbe_storemerge6 = (unsigned int )llvm_cbe_storemerge6__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge6 = 0x%X",llvm_cbe_storemerge6);
printf("\n = 0x%X",llvm_cbe_tmp__101);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = shl nsw i32 %%storemerge6, 2, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__85 = (unsigned int )llvm_cbe_storemerge6 << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = getelementptr inbounds i8* %%Key, i32 %%93, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__86 = ( char *)(&llvm_cbe_Key[(((signed int )llvm_cbe_tmp__85))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__85));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = load i8* %%94, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__87 = (unsigned char )*llvm_cbe_tmp__86;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = getelementptr inbounds i8* %%RoundKey, i32 %%93, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_234_count);
  llvm_cbe_tmp__88 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__85))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__85));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%95, i8* %%96, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_235_count);
  *llvm_cbe_tmp__88 = llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = or i32 %%93, 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_236_count);
  llvm_cbe_tmp__89 = (unsigned int )llvm_cbe_tmp__85 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = getelementptr inbounds i8* %%Key, i32 %%97, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__90 = ( char *)(&llvm_cbe_Key[(((signed int )llvm_cbe_tmp__89))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__89));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = load i8* %%98, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_238_count);
  llvm_cbe_tmp__91 = (unsigned char )*llvm_cbe_tmp__90;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = getelementptr inbounds i8* %%RoundKey, i32 %%97, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_239_count);
  llvm_cbe_tmp__92 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__89))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__89));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%99, i8* %%100, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_240_count);
  *llvm_cbe_tmp__92 = llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = or i32 %%93, 2, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_241_count);
  llvm_cbe_tmp__93 = (unsigned int )llvm_cbe_tmp__85 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = getelementptr inbounds i8* %%Key, i32 %%101, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_242_count);
  llvm_cbe_tmp__94 = ( char *)(&llvm_cbe_Key[(((signed int )llvm_cbe_tmp__93))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__93));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = load i8* %%102, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_243_count);
  llvm_cbe_tmp__95 = (unsigned char )*llvm_cbe_tmp__94;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = getelementptr inbounds i8* %%RoundKey, i32 %%101, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_244_count);
  llvm_cbe_tmp__96 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__93))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__93));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%103, i8* %%104, align 1, !dbg !6 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_245_count);
  *llvm_cbe_tmp__96 = llvm_cbe_tmp__95;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = or i32 %%93, 3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__97 = (unsigned int )llvm_cbe_tmp__85 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = getelementptr inbounds i8* %%Key, i32 %%105, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__98 = ( char *)(&llvm_cbe_Key[(((signed int )llvm_cbe_tmp__97))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__97));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = load i8* %%106, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__99 = (unsigned char )*llvm_cbe_tmp__98;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = getelementptr inbounds i8* %%RoundKey, i32 %%105, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__100 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__97))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__97));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%107, i8* %%108, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_250_count);
  *llvm_cbe_tmp__100 = llvm_cbe_tmp__99;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = add nsw i32 %%storemerge6, 1, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_251_count);
  llvm_cbe_tmp__101 = (unsigned int )((unsigned int )(llvm_cbe_storemerge6&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__101&4294967295ull)));
  if (((llvm_cbe_tmp__101&4294967295U) == (llvm_cbe_Nk&4294967295U))) {
    llvm_cbe_storemerge_2e_lcssa__PHI_TEMPORARY = (unsigned int )llvm_cbe_Nk;   /* for PHI node */
    goto llvm_cbe__2e_preheader4;
  } else {
    llvm_cbe_storemerge6__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__101;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge25 = phi i32 [ %%storemerge.lcssa, %%.preheader.lr.ph..preheader.lr.ph.split_crit_edge ], [ %%172, %%143  for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_storemerge25_count);
  llvm_cbe_storemerge25 = (unsigned int )llvm_cbe_storemerge25__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge25 = 0x%X",llvm_cbe_storemerge25);
printf("\nstoremerge.lcssa = 0x%X",llvm_cbe_storemerge_2e_lcssa);
printf("\n = 0x%X",llvm_cbe_tmp__161);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = shl i32 %%storemerge25, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_281_count);
  llvm_cbe_tmp__102 = (unsigned int )llvm_cbe_storemerge25 << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = add i32 %%110, -4, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__103 = (unsigned int )((unsigned int )(llvm_cbe_tmp__102&4294967295ull)) + ((unsigned int )(4294967292u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__103&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = getelementptr inbounds i8* %%RoundKey, i32 %%111, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__104 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__103))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__103));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = load i8* %%112, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__105 = (unsigned char )*llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%113, i8* %%5, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_285_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = add i32 %%110, -3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_291_count);
  llvm_cbe_tmp__106 = (unsigned int )((unsigned int )(llvm_cbe_tmp__102&4294967295ull)) + ((unsigned int )(4294967293u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__106&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = getelementptr inbounds i8* %%RoundKey, i32 %%114, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__107 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__106))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__106));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = load i8* %%115, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_293_count);
  llvm_cbe_tmp__108 = (unsigned char )*llvm_cbe_tmp__107;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%116, i8* %%6, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_294_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__108;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = add i32 %%110, -2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_300_count);
  llvm_cbe_tmp__109 = (unsigned int )((unsigned int )(llvm_cbe_tmp__102&4294967295ull)) + ((unsigned int )(4294967294u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__109&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = getelementptr inbounds i8* %%RoundKey, i32 %%117, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__110 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__109))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__109));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = load i8* %%118, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_302_count);
  llvm_cbe_tmp__111 = (unsigned char )*llvm_cbe_tmp__110;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%119, i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_303_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = add i32 %%110, -1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_309_count);
  llvm_cbe_tmp__112 = (unsigned int )((unsigned int )(llvm_cbe_tmp__102&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__112&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = getelementptr inbounds i8* %%RoundKey, i32 %%120, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_310_count);
  llvm_cbe_tmp__113 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__112))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__112));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = load i8* %%121, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_311_count);
  llvm_cbe_tmp__114 = (unsigned char )*llvm_cbe_tmp__113;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%122, i8* %%8, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_312_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__114;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = srem i32 %%storemerge25, %%Nk, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_318_count);
  llvm_cbe_tmp__115 = (unsigned int )((signed int )(((signed int )llvm_cbe_storemerge25) % ((signed int )llvm_cbe_Nk)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__115));
  if (((llvm_cbe_tmp__115&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__168;
  } else {
    goto llvm_cbe_tmp__169;
  }

llvm_cbe_tmp__169:
if (AESL_DEBUG_TRACE)
printf("\n  %%144 = sub nsw i32 %%storemerge25, %%Nk, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_345_count);
  llvm_cbe_tmp__133 = (unsigned int )((unsigned int )(llvm_cbe_storemerge25&4294967295ull)) - ((unsigned int )(llvm_cbe_Nk&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__133&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%145 = shl nsw i32 %%144, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_346_count);
  llvm_cbe_tmp__134 = (unsigned int )llvm_cbe_tmp__133 << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%146 = getelementptr inbounds i8* %%RoundKey, i32 %%145, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_347_count);
  llvm_cbe_tmp__135 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%147 = load i8* %%146, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__136 = (unsigned char )*llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__136);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%148 = load i8* %%5, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__137 = (unsigned char )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n  %%149 = xor i8 %%148, %%147, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__138 = (unsigned char )((unsigned char )(llvm_cbe_tmp__137 ^ llvm_cbe_tmp__136));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  %%150 = getelementptr inbounds i8* %%RoundKey, i32 %%110, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_351_count);
  llvm_cbe_tmp__139 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__102))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__102));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%149, i8* %%150, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_352_count);
  *llvm_cbe_tmp__139 = llvm_cbe_tmp__138;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  %%151 = or i32 %%145, 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_353_count);
  llvm_cbe_tmp__140 = (unsigned int )llvm_cbe_tmp__134 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%152 = getelementptr inbounds i8* %%RoundKey, i32 %%151, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_354_count);
  llvm_cbe_tmp__141 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__140))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__140));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%153 = load i8* %%152, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_355_count);
  llvm_cbe_tmp__142 = (unsigned char )*llvm_cbe_tmp__141;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__142);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%154 = load i8* %%6, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_356_count);
  llvm_cbe_tmp__143 = (unsigned char )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__143);
if (AESL_DEBUG_TRACE)
printf("\n  %%155 = xor i8 %%154, %%153, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_357_count);
  llvm_cbe_tmp__144 = (unsigned char )((unsigned char )(llvm_cbe_tmp__143 ^ llvm_cbe_tmp__142));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE)
printf("\n  %%156 = or i32 %%110, 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_358_count);
  llvm_cbe_tmp__145 = (unsigned int )llvm_cbe_tmp__102 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n  %%157 = getelementptr inbounds i8* %%RoundKey, i32 %%156, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_359_count);
  llvm_cbe_tmp__146 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__145))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__145));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%155, i8* %%157, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_360_count);
  *llvm_cbe_tmp__146 = llvm_cbe_tmp__144;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE)
printf("\n  %%158 = or i32 %%145, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_361_count);
  llvm_cbe_tmp__147 = (unsigned int )llvm_cbe_tmp__134 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
if (AESL_DEBUG_TRACE)
printf("\n  %%159 = getelementptr inbounds i8* %%RoundKey, i32 %%158, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_362_count);
  llvm_cbe_tmp__148 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__147))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__147));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%160 = load i8* %%159, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_363_count);
  llvm_cbe_tmp__149 = (unsigned char )*llvm_cbe_tmp__148;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__149);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%161 = load i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_364_count);
  llvm_cbe_tmp__150 = (unsigned char )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__150);
if (AESL_DEBUG_TRACE)
printf("\n  %%162 = xor i8 %%161, %%160, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_365_count);
  llvm_cbe_tmp__151 = (unsigned char )((unsigned char )(llvm_cbe_tmp__150 ^ llvm_cbe_tmp__149));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__151);
if (AESL_DEBUG_TRACE)
printf("\n  %%163 = or i32 %%110, 2, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_366_count);
  llvm_cbe_tmp__152 = (unsigned int )llvm_cbe_tmp__102 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__152);
if (AESL_DEBUG_TRACE)
printf("\n  %%164 = getelementptr inbounds i8* %%RoundKey, i32 %%163, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_367_count);
  llvm_cbe_tmp__153 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%162, i8* %%164, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_368_count);
  *llvm_cbe_tmp__153 = llvm_cbe_tmp__151;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__151);
if (AESL_DEBUG_TRACE)
printf("\n  %%165 = or i32 %%145, 3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_369_count);
  llvm_cbe_tmp__154 = (unsigned int )llvm_cbe_tmp__134 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__154);
if (AESL_DEBUG_TRACE)
printf("\n  %%166 = getelementptr inbounds i8* %%RoundKey, i32 %%165, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_370_count);
  llvm_cbe_tmp__155 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__154))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__154));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%167 = load i8* %%166, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_371_count);
  llvm_cbe_tmp__156 = (unsigned char )*llvm_cbe_tmp__155;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__156);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%168 = load i8* %%8, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_372_count);
  llvm_cbe_tmp__157 = (unsigned char )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__157);
if (AESL_DEBUG_TRACE)
printf("\n  %%169 = xor i8 %%168, %%167, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_373_count);
  llvm_cbe_tmp__158 = (unsigned char )((unsigned char )(llvm_cbe_tmp__157 ^ llvm_cbe_tmp__156));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%170 = or i32 %%110, 3, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_374_count);
  llvm_cbe_tmp__159 = (unsigned int )llvm_cbe_tmp__102 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__159);
if (AESL_DEBUG_TRACE)
printf("\n  %%171 = getelementptr inbounds i8* %%RoundKey, i32 %%170, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__160 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__159))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__159));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%169, i8* %%171, align 1, !dbg !7 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_376_count);
  *llvm_cbe_tmp__160 = llvm_cbe_tmp__158;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%172 = add nsw i32 %%storemerge25, 1, !dbg !9 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__161 = (unsigned int )((unsigned int )(llvm_cbe_storemerge25&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__161&4294967295ull)));
  if (((llvm_cbe_tmp__161&4294967295U) == (llvm_cbe_tmp__10&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge25__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__161;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe_tmp__168:
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = zext i8 %%116 to i32, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_323_count);
  llvm_cbe_tmp__116 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__108&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = call i32 @getSBoxValue(i32 %%126), !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__117 = (unsigned int )getSBoxValue(llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__116);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__117);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%128 = trunc i32 %%127 to i8, !dbg !10 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_325_count);
  llvm_cbe_tmp__118 = (unsigned char )((unsigned char )llvm_cbe_tmp__117&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = zext i8 %%119 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_326_count);
  llvm_cbe_tmp__119 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__111&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__119);
if (AESL_DEBUG_TRACE)
printf("\n  %%130 = call i32 @getSBoxValue(i32 %%129), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_327_count);
  llvm_cbe_tmp__120 = (unsigned int )getSBoxValue(llvm_cbe_tmp__119);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__119);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__120);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%131 = trunc i32 %%130 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_328_count);
  llvm_cbe_tmp__121 = (unsigned char )((unsigned char )llvm_cbe_tmp__120&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%131, i8* %%6, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_329_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__121;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%132 = zext i8 %%122 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_330_count);
  llvm_cbe_tmp__122 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__114&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%133 = call i32 @getSBoxValue(i32 %%132), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_331_count);
  llvm_cbe_tmp__123 = (unsigned int )getSBoxValue(llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__122);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__123);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%134 = trunc i32 %%133 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_332_count);
  llvm_cbe_tmp__124 = (unsigned char )((unsigned char )llvm_cbe_tmp__123&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__124);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%134, i8* %%7, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_333_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__124;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__124);
if (AESL_DEBUG_TRACE)
printf("\n  %%135 = zext i8 %%113 to i32, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_334_count);
  llvm_cbe_tmp__125 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__105&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE)
printf("\n  %%136 = call i32 @getSBoxValue(i32 %%135), !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__126 = (unsigned int )getSBoxValue(llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__125);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__126);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = trunc i32 %%136 to i8, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_336_count);
  llvm_cbe_tmp__127 = (unsigned char )((unsigned char )llvm_cbe_tmp__126&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__127);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%137, i8* %%8, align 1, !dbg !11 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_337_count);
  *llvm_cbe_tmp__8 = llvm_cbe_tmp__127;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE)
printf("\n  %%138 = sdiv i32 %%storemerge25, %%Nk, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__128 = (unsigned int )((signed int )(((signed int )llvm_cbe_storemerge25) / ((signed int )llvm_cbe_Nk)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__128));
if (AESL_DEBUG_TRACE)
printf("\n  %%139 = getelementptr inbounds i32* %%Rcon, i32 %%138, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_339_count);
  llvm_cbe_tmp__129 = (signed int *)(&llvm_cbe_Rcon[(((signed int )llvm_cbe_tmp__128))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__128));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%140 = load i32* %%139, align 4, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_340_count);
  llvm_cbe_tmp__130 = (unsigned int )*llvm_cbe_tmp__129;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__130);
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = trunc i32 %%140 to i8, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__131 = (unsigned char )((unsigned char )llvm_cbe_tmp__130&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n  %%142 = xor i8 %%141, %%128, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_342_count);
  llvm_cbe_tmp__132 = (unsigned char )((unsigned char )(llvm_cbe_tmp__131 ^ llvm_cbe_tmp__118));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'temp' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%142, i8* %%5, align 1, !dbg !8 for 0x%I64xth hint within @KeyExpansion  --> \n", ++aesl_llvm_cbe_343_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__132;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);
  goto llvm_cbe_tmp__169;

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e__crit_edge:
  goto llvm_cbe_tmp__162;

llvm_cbe_tmp__162:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @KeyExpansion}\n");
  return;
}


void AddRoundKey(signed int llvm_cbe_round,  char (*llvm_cbe_state)[4],  char *llvm_cbe_RoundKey) {
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  unsigned int llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
   char *llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  unsigned char llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
   char *llvm_cbe_tmp__173;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  unsigned char llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  unsigned char llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  unsigned int llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
   char *llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  unsigned char llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
   char *llvm_cbe_tmp__179;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  unsigned char llvm_cbe_tmp__180;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  unsigned char llvm_cbe_tmp__181;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  unsigned int llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
   char *llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  unsigned char llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
   char *llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  unsigned char llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  unsigned char llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  unsigned int llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
   char *llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  unsigned char llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
   char *llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  unsigned char llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  unsigned char llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  unsigned int llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
   char *llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  unsigned char llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
   char *llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  unsigned char llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  unsigned char llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  unsigned int llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
   char *llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  unsigned char llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
   char *llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  unsigned char llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  unsigned char llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  unsigned int llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
   char *llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  unsigned char llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
   char *llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  unsigned char llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  unsigned char llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  unsigned int llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
   char *llvm_cbe_tmp__213;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  unsigned char llvm_cbe_tmp__214;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
   char *llvm_cbe_tmp__215;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  unsigned char llvm_cbe_tmp__216;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  unsigned char llvm_cbe_tmp__217;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  unsigned int llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
   char *llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  unsigned char llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
   char *llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  unsigned char llvm_cbe_tmp__222;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  unsigned char llvm_cbe_tmp__223;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  unsigned int llvm_cbe_tmp__224;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
   char *llvm_cbe_tmp__225;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  unsigned char llvm_cbe_tmp__226;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
   char *llvm_cbe_tmp__227;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  unsigned char llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  unsigned char llvm_cbe_tmp__229;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  unsigned int llvm_cbe_tmp__230;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
   char *llvm_cbe_tmp__231;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  unsigned char llvm_cbe_tmp__232;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
   char *llvm_cbe_tmp__233;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  unsigned char llvm_cbe_tmp__234;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  unsigned char llvm_cbe_tmp__235;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  unsigned int llvm_cbe_tmp__236;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
   char *llvm_cbe_tmp__237;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  unsigned char llvm_cbe_tmp__238;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
   char *llvm_cbe_tmp__239;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  unsigned char llvm_cbe_tmp__240;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  unsigned char llvm_cbe_tmp__241;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  unsigned int llvm_cbe_tmp__242;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
   char *llvm_cbe_tmp__243;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  unsigned char llvm_cbe_tmp__244;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
   char *llvm_cbe_tmp__245;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  unsigned char llvm_cbe_tmp__246;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  unsigned char llvm_cbe_tmp__247;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  unsigned int llvm_cbe_tmp__248;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
   char *llvm_cbe_tmp__249;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  unsigned char llvm_cbe_tmp__250;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
   char *llvm_cbe_tmp__251;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  unsigned char llvm_cbe_tmp__252;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  unsigned char llvm_cbe_tmp__253;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  unsigned int llvm_cbe_tmp__254;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
   char *llvm_cbe_tmp__255;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  unsigned char llvm_cbe_tmp__256;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
   char *llvm_cbe_tmp__257;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  unsigned char llvm_cbe_tmp__258;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  unsigned char llvm_cbe_tmp__259;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
  unsigned int llvm_cbe_tmp__260;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
   char *llvm_cbe_tmp__261;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  unsigned char llvm_cbe_tmp__262;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
   char *llvm_cbe_tmp__263;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  unsigned char llvm_cbe_tmp__264;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;
  unsigned char llvm_cbe_tmp__265;
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

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @AddRoundKey\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = shl i32 %%round, 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_417_count);
  llvm_cbe_tmp__170 = (unsigned int )llvm_cbe_round << 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds i8* %%RoundKey, i32 %%0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_422_count);
  llvm_cbe_tmp__171 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__170))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__170));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i8* %%1, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_423_count);
  llvm_cbe_tmp__172 = (unsigned char )*llvm_cbe_tmp__171;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__172);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_424_count);
  llvm_cbe_tmp__173 = ( char *)(&(*llvm_cbe_state)[(((signed int )0u))
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
printf("\n  %%4 = load i8* %%3, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_425_count);
  llvm_cbe_tmp__174 = (unsigned char )*llvm_cbe_tmp__173;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__174);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = xor i8 %%4, %%2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_426_count);
  llvm_cbe_tmp__175 = (unsigned char )((unsigned char )(llvm_cbe_tmp__174 ^ llvm_cbe_tmp__172));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__175);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%5, i8* %%3, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_427_count);
  *llvm_cbe_tmp__173 = llvm_cbe_tmp__175;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__175);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = or i32 %%0, 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_433_count);
  llvm_cbe_tmp__176 = (unsigned int )llvm_cbe_tmp__170 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%RoundKey, i32 %%6, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_434_count);
  llvm_cbe_tmp__177 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__176))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__176));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%7, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_435_count);
  llvm_cbe_tmp__178 = (unsigned char )*llvm_cbe_tmp__177;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__178);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_436_count);
  llvm_cbe_tmp__179 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%10 = load i8* %%9, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_437_count);
  llvm_cbe_tmp__180 = (unsigned char )*llvm_cbe_tmp__179;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__180);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = xor i8 %%10, %%8, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_438_count);
  llvm_cbe_tmp__181 = (unsigned char )((unsigned char )(llvm_cbe_tmp__180 ^ llvm_cbe_tmp__178));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__181);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%11, i8* %%9, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_439_count);
  *llvm_cbe_tmp__179 = llvm_cbe_tmp__181;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__181);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = or i32 %%0, 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_445_count);
  llvm_cbe_tmp__182 = (unsigned int )llvm_cbe_tmp__170 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i8* %%RoundKey, i32 %%12, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_446_count);
  llvm_cbe_tmp__183 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__182));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i8* %%13, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_447_count);
  llvm_cbe_tmp__184 = (unsigned char )*llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_448_count);
  llvm_cbe_tmp__185 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%16 = load i8* %%15, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_449_count);
  llvm_cbe_tmp__186 = (unsigned char )*llvm_cbe_tmp__185;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__186);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = xor i8 %%16, %%14, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_450_count);
  llvm_cbe_tmp__187 = (unsigned char )((unsigned char )(llvm_cbe_tmp__186 ^ llvm_cbe_tmp__184));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__187);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* %%15, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_451_count);
  *llvm_cbe_tmp__185 = llvm_cbe_tmp__187;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__187);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = or i32 %%0, 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_457_count);
  llvm_cbe_tmp__188 = (unsigned int )llvm_cbe_tmp__170 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i8* %%RoundKey, i32 %%18, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_458_count);
  llvm_cbe_tmp__189 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__188))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__188));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load i8* %%19, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_459_count);
  llvm_cbe_tmp__190 = (unsigned char )*llvm_cbe_tmp__189;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__190);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 0, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_460_count);
  llvm_cbe_tmp__191 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%22 = load i8* %%21, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_461_count);
  llvm_cbe_tmp__192 = (unsigned char )*llvm_cbe_tmp__191;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__192);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = xor i8 %%22, %%20, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_462_count);
  llvm_cbe_tmp__193 = (unsigned char )((unsigned char )(llvm_cbe_tmp__192 ^ llvm_cbe_tmp__190));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__193);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%23, i8* %%21, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_463_count);
  *llvm_cbe_tmp__191 = llvm_cbe_tmp__193;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__193);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = or i32 %%0, 4, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_478_count);
  llvm_cbe_tmp__194 = (unsigned int )llvm_cbe_tmp__170 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__194);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i8* %%RoundKey, i32 %%24, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_479_count);
  llvm_cbe_tmp__195 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__194))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__194));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i8* %%25, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_480_count);
  llvm_cbe_tmp__196 = (unsigned char )*llvm_cbe_tmp__195;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__196);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_481_count);
  llvm_cbe_tmp__197 = ( char *)(&(*llvm_cbe_state)[(((signed int )1u))
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
printf("\n  %%28 = load i8* %%27, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_482_count);
  llvm_cbe_tmp__198 = (unsigned char )*llvm_cbe_tmp__197;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__198);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = xor i8 %%28, %%26, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_483_count);
  llvm_cbe_tmp__199 = (unsigned char )((unsigned char )(llvm_cbe_tmp__198 ^ llvm_cbe_tmp__196));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__199);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%29, i8* %%27, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_484_count);
  *llvm_cbe_tmp__197 = llvm_cbe_tmp__199;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__199);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = or i32 %%0, 5, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_490_count);
  llvm_cbe_tmp__200 = (unsigned int )llvm_cbe_tmp__170 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__200);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds i8* %%RoundKey, i32 %%30, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_491_count);
  llvm_cbe_tmp__201 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__200))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__200));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load i8* %%31, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_492_count);
  llvm_cbe_tmp__202 = (unsigned char )*llvm_cbe_tmp__201;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__202);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_493_count);
  llvm_cbe_tmp__203 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%34 = load i8* %%33, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_494_count);
  llvm_cbe_tmp__204 = (unsigned char )*llvm_cbe_tmp__203;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__204);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = xor i8 %%34, %%32, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_495_count);
  llvm_cbe_tmp__205 = (unsigned char )((unsigned char )(llvm_cbe_tmp__204 ^ llvm_cbe_tmp__202));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__205);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%35, i8* %%33, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_496_count);
  *llvm_cbe_tmp__203 = llvm_cbe_tmp__205;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__205);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = or i32 %%0, 6, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_502_count);
  llvm_cbe_tmp__206 = (unsigned int )llvm_cbe_tmp__170 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__206);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i8* %%RoundKey, i32 %%36, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_503_count);
  llvm_cbe_tmp__207 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__206))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__206));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i8* %%37, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__208 = (unsigned char )*llvm_cbe_tmp__207;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__208);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_505_count);
  llvm_cbe_tmp__209 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%40 = load i8* %%39, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_506_count);
  llvm_cbe_tmp__210 = (unsigned char )*llvm_cbe_tmp__209;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__210);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = xor i8 %%40, %%38, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_507_count);
  llvm_cbe_tmp__211 = (unsigned char )((unsigned char )(llvm_cbe_tmp__210 ^ llvm_cbe_tmp__208));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__211);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%41, i8* %%39, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_508_count);
  *llvm_cbe_tmp__209 = llvm_cbe_tmp__211;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__211);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = or i32 %%0, 7, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_514_count);
  llvm_cbe_tmp__212 = (unsigned int )llvm_cbe_tmp__170 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__212);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i8* %%RoundKey, i32 %%42, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_515_count);
  llvm_cbe_tmp__213 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__212))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__212));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i8* %%43, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_516_count);
  llvm_cbe_tmp__214 = (unsigned char )*llvm_cbe_tmp__213;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__214);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_517_count);
  llvm_cbe_tmp__215 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%46 = load i8* %%45, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_518_count);
  llvm_cbe_tmp__216 = (unsigned char )*llvm_cbe_tmp__215;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__216);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = xor i8 %%46, %%44, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_519_count);
  llvm_cbe_tmp__217 = (unsigned char )((unsigned char )(llvm_cbe_tmp__216 ^ llvm_cbe_tmp__214));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__217);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%47, i8* %%45, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_520_count);
  *llvm_cbe_tmp__215 = llvm_cbe_tmp__217;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__217);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = or i32 %%0, 8, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_535_count);
  llvm_cbe_tmp__218 = (unsigned int )llvm_cbe_tmp__170 | 8u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__218);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds i8* %%RoundKey, i32 %%48, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_536_count);
  llvm_cbe_tmp__219 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__218))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__218));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = load i8* %%49, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_537_count);
  llvm_cbe_tmp__220 = (unsigned char )*llvm_cbe_tmp__219;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__220);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_538_count);
  llvm_cbe_tmp__221 = ( char *)(&(*llvm_cbe_state)[(((signed int )2u))
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
printf("\n  %%52 = load i8* %%51, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_539_count);
  llvm_cbe_tmp__222 = (unsigned char )*llvm_cbe_tmp__221;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__222);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = xor i8 %%52, %%50, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_540_count);
  llvm_cbe_tmp__223 = (unsigned char )((unsigned char )(llvm_cbe_tmp__222 ^ llvm_cbe_tmp__220));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__223);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%53, i8* %%51, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_541_count);
  *llvm_cbe_tmp__221 = llvm_cbe_tmp__223;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__223);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = or i32 %%0, 9, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_547_count);
  llvm_cbe_tmp__224 = (unsigned int )llvm_cbe_tmp__170 | 9u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__224);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds i8* %%RoundKey, i32 %%54, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_548_count);
  llvm_cbe_tmp__225 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__224))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__224));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = load i8* %%55, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_549_count);
  llvm_cbe_tmp__226 = (unsigned char )*llvm_cbe_tmp__225;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__226);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_550_count);
  llvm_cbe_tmp__227 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%58 = load i8* %%57, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_551_count);
  llvm_cbe_tmp__228 = (unsigned char )*llvm_cbe_tmp__227;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__228);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = xor i8 %%58, %%56, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_552_count);
  llvm_cbe_tmp__229 = (unsigned char )((unsigned char )(llvm_cbe_tmp__228 ^ llvm_cbe_tmp__226));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__229);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%59, i8* %%57, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_553_count);
  *llvm_cbe_tmp__227 = llvm_cbe_tmp__229;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__229);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = or i32 %%0, 10, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_559_count);
  llvm_cbe_tmp__230 = (unsigned int )llvm_cbe_tmp__170 | 10u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__230);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds i8* %%RoundKey, i32 %%60, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_560_count);
  llvm_cbe_tmp__231 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__230))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__230));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = load i8* %%61, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_561_count);
  llvm_cbe_tmp__232 = (unsigned char )*llvm_cbe_tmp__231;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__232);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_562_count);
  llvm_cbe_tmp__233 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%64 = load i8* %%63, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_563_count);
  llvm_cbe_tmp__234 = (unsigned char )*llvm_cbe_tmp__233;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__234);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = xor i8 %%64, %%62, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_564_count);
  llvm_cbe_tmp__235 = (unsigned char )((unsigned char )(llvm_cbe_tmp__234 ^ llvm_cbe_tmp__232));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__235);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%65, i8* %%63, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_565_count);
  *llvm_cbe_tmp__233 = llvm_cbe_tmp__235;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__235);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = or i32 %%0, 11, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_571_count);
  llvm_cbe_tmp__236 = (unsigned int )llvm_cbe_tmp__170 | 11u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__236);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds i8* %%RoundKey, i32 %%66, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_572_count);
  llvm_cbe_tmp__237 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__236))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__236));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i8* %%67, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_573_count);
  llvm_cbe_tmp__238 = (unsigned char )*llvm_cbe_tmp__237;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__238);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 2, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_574_count);
  llvm_cbe_tmp__239 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%70 = load i8* %%69, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_575_count);
  llvm_cbe_tmp__240 = (unsigned char )*llvm_cbe_tmp__239;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__240);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = xor i8 %%70, %%68, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_576_count);
  llvm_cbe_tmp__241 = (unsigned char )((unsigned char )(llvm_cbe_tmp__240 ^ llvm_cbe_tmp__238));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__241);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%71, i8* %%69, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_577_count);
  *llvm_cbe_tmp__239 = llvm_cbe_tmp__241;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__241);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = or i32 %%0, 12, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_592_count);
  llvm_cbe_tmp__242 = (unsigned int )llvm_cbe_tmp__170 | 12u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__242);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = getelementptr inbounds i8* %%RoundKey, i32 %%72, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_593_count);
  llvm_cbe_tmp__243 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__242))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__242));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = load i8* %%73, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_594_count);
  llvm_cbe_tmp__244 = (unsigned char )*llvm_cbe_tmp__243;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__244);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_595_count);
  llvm_cbe_tmp__245 = ( char *)(&(*llvm_cbe_state)[(((signed int )3u))
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
printf("\n  %%76 = load i8* %%75, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_596_count);
  llvm_cbe_tmp__246 = (unsigned char )*llvm_cbe_tmp__245;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__246);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = xor i8 %%76, %%74, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_597_count);
  llvm_cbe_tmp__247 = (unsigned char )((unsigned char )(llvm_cbe_tmp__246 ^ llvm_cbe_tmp__244));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__247);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%77, i8* %%75, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_598_count);
  *llvm_cbe_tmp__245 = llvm_cbe_tmp__247;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__247);
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = or i32 %%0, 13, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_604_count);
  llvm_cbe_tmp__248 = (unsigned int )llvm_cbe_tmp__170 | 13u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__248);
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = getelementptr inbounds i8* %%RoundKey, i32 %%78, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_605_count);
  llvm_cbe_tmp__249 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__248))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__248));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load i8* %%79, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_606_count);
  llvm_cbe_tmp__250 = (unsigned char )*llvm_cbe_tmp__249;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__250);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_607_count);
  llvm_cbe_tmp__251 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%82 = load i8* %%81, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_608_count);
  llvm_cbe_tmp__252 = (unsigned char )*llvm_cbe_tmp__251;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__252);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = xor i8 %%82, %%80, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_609_count);
  llvm_cbe_tmp__253 = (unsigned char )((unsigned char )(llvm_cbe_tmp__252 ^ llvm_cbe_tmp__250));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__253);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%83, i8* %%81, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_610_count);
  *llvm_cbe_tmp__251 = llvm_cbe_tmp__253;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__253);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = or i32 %%0, 14, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_616_count);
  llvm_cbe_tmp__254 = (unsigned int )llvm_cbe_tmp__170 | 14u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__254);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = getelementptr inbounds i8* %%RoundKey, i32 %%84, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_617_count);
  llvm_cbe_tmp__255 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__254))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__254));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = load i8* %%85, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_618_count);
  llvm_cbe_tmp__256 = (unsigned char )*llvm_cbe_tmp__255;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__256);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_619_count);
  llvm_cbe_tmp__257 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%88 = load i8* %%87, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_620_count);
  llvm_cbe_tmp__258 = (unsigned char )*llvm_cbe_tmp__257;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__258);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = xor i8 %%88, %%86, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_621_count);
  llvm_cbe_tmp__259 = (unsigned char )((unsigned char )(llvm_cbe_tmp__258 ^ llvm_cbe_tmp__256));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__259);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%89, i8* %%87, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_622_count);
  *llvm_cbe_tmp__257 = llvm_cbe_tmp__259;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__259);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = or i32 %%0, 15, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_628_count);
  llvm_cbe_tmp__260 = (unsigned int )llvm_cbe_tmp__170 | 15u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__260);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = getelementptr inbounds i8* %%RoundKey, i32 %%90, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_629_count);
  llvm_cbe_tmp__261 = ( char *)(&llvm_cbe_RoundKey[(((signed int )llvm_cbe_tmp__260))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__260));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = load i8* %%91, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_630_count);
  llvm_cbe_tmp__262 = (unsigned char )*llvm_cbe_tmp__261;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__262);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 3, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_631_count);
  llvm_cbe_tmp__263 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%94 = load i8* %%93, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_632_count);
  llvm_cbe_tmp__264 = (unsigned char )*llvm_cbe_tmp__263;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__264);
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = xor i8 %%94, %%92, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_633_count);
  llvm_cbe_tmp__265 = (unsigned char )((unsigned char )(llvm_cbe_tmp__264 ^ llvm_cbe_tmp__262));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__265);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%95, i8* %%93, align 1, !dbg !6 for 0x%I64xth hint within @AddRoundKey  --> \n", ++aesl_llvm_cbe_634_count);
  *llvm_cbe_tmp__263 = llvm_cbe_tmp__265;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__265);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @AddRoundKey}\n");
  return;
}


void SubBytes( char (*llvm_cbe_state)[4]) {
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
   char *llvm_cbe_tmp__266;
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  unsigned char llvm_cbe_tmp__267;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  unsigned int llvm_cbe_tmp__268;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  unsigned int llvm_cbe_tmp__269;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  unsigned char llvm_cbe_tmp__270;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
   char *llvm_cbe_tmp__271;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  unsigned char llvm_cbe_tmp__272;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  unsigned int llvm_cbe_tmp__273;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  unsigned int llvm_cbe_tmp__274;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  unsigned char llvm_cbe_tmp__275;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
   char *llvm_cbe_tmp__276;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  unsigned char llvm_cbe_tmp__277;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  unsigned int llvm_cbe_tmp__278;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  unsigned int llvm_cbe_tmp__279;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  unsigned char llvm_cbe_tmp__280;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
   char *llvm_cbe_tmp__281;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  unsigned char llvm_cbe_tmp__282;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  unsigned int llvm_cbe_tmp__283;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  unsigned int llvm_cbe_tmp__284;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;
  unsigned char llvm_cbe_tmp__285;
  static  unsigned long long aesl_llvm_cbe_696_count = 0;
  static  unsigned long long aesl_llvm_cbe_697_count = 0;
  static  unsigned long long aesl_llvm_cbe_698_count = 0;
  static  unsigned long long aesl_llvm_cbe_699_count = 0;
  static  unsigned long long aesl_llvm_cbe_700_count = 0;
  static  unsigned long long aesl_llvm_cbe_701_count = 0;
  static  unsigned long long aesl_llvm_cbe_702_count = 0;
  static  unsigned long long aesl_llvm_cbe_703_count = 0;
  static  unsigned long long aesl_llvm_cbe_704_count = 0;
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
   char *llvm_cbe_tmp__286;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  unsigned char llvm_cbe_tmp__287;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  unsigned int llvm_cbe_tmp__288;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
  unsigned int llvm_cbe_tmp__289;
  static  unsigned long long aesl_llvm_cbe_715_count = 0;
  unsigned char llvm_cbe_tmp__290;
  static  unsigned long long aesl_llvm_cbe_716_count = 0;
  static  unsigned long long aesl_llvm_cbe_717_count = 0;
  static  unsigned long long aesl_llvm_cbe_718_count = 0;
  static  unsigned long long aesl_llvm_cbe_719_count = 0;
  static  unsigned long long aesl_llvm_cbe_720_count = 0;
  static  unsigned long long aesl_llvm_cbe_721_count = 0;
  static  unsigned long long aesl_llvm_cbe_722_count = 0;
   char *llvm_cbe_tmp__291;
  static  unsigned long long aesl_llvm_cbe_723_count = 0;
  unsigned char llvm_cbe_tmp__292;
  static  unsigned long long aesl_llvm_cbe_724_count = 0;
  unsigned int llvm_cbe_tmp__293;
  static  unsigned long long aesl_llvm_cbe_725_count = 0;
  unsigned int llvm_cbe_tmp__294;
  static  unsigned long long aesl_llvm_cbe_726_count = 0;
  unsigned char llvm_cbe_tmp__295;
  static  unsigned long long aesl_llvm_cbe_727_count = 0;
  static  unsigned long long aesl_llvm_cbe_728_count = 0;
  static  unsigned long long aesl_llvm_cbe_729_count = 0;
  static  unsigned long long aesl_llvm_cbe_730_count = 0;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
   char *llvm_cbe_tmp__296;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  unsigned char llvm_cbe_tmp__297;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  unsigned int llvm_cbe_tmp__298;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  unsigned int llvm_cbe_tmp__299;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  unsigned char llvm_cbe_tmp__300;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
   char *llvm_cbe_tmp__301;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  unsigned char llvm_cbe_tmp__302;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
  unsigned int llvm_cbe_tmp__303;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  unsigned int llvm_cbe_tmp__304;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  unsigned char llvm_cbe_tmp__305;
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
   char *llvm_cbe_tmp__306;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  unsigned char llvm_cbe_tmp__307;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
  unsigned int llvm_cbe_tmp__308;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;
  unsigned int llvm_cbe_tmp__309;
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  unsigned char llvm_cbe_tmp__310;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
   char *llvm_cbe_tmp__311;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  unsigned char llvm_cbe_tmp__312;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  unsigned int llvm_cbe_tmp__313;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
  unsigned int llvm_cbe_tmp__314;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  unsigned char llvm_cbe_tmp__315;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
   char *llvm_cbe_tmp__316;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  unsigned char llvm_cbe_tmp__317;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
  unsigned int llvm_cbe_tmp__318;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
  unsigned int llvm_cbe_tmp__319;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;
  unsigned char llvm_cbe_tmp__320;
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
   char *llvm_cbe_tmp__321;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;
  unsigned char llvm_cbe_tmp__322;
  static  unsigned long long aesl_llvm_cbe_799_count = 0;
  unsigned int llvm_cbe_tmp__323;
  static  unsigned long long aesl_llvm_cbe_800_count = 0;
  unsigned int llvm_cbe_tmp__324;
  static  unsigned long long aesl_llvm_cbe_801_count = 0;
  unsigned char llvm_cbe_tmp__325;
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
   char *llvm_cbe_tmp__326;
  static  unsigned long long aesl_llvm_cbe_818_count = 0;
  unsigned char llvm_cbe_tmp__327;
  static  unsigned long long aesl_llvm_cbe_819_count = 0;
  unsigned int llvm_cbe_tmp__328;
  static  unsigned long long aesl_llvm_cbe_820_count = 0;
  unsigned int llvm_cbe_tmp__329;
  static  unsigned long long aesl_llvm_cbe_821_count = 0;
  unsigned char llvm_cbe_tmp__330;
  static  unsigned long long aesl_llvm_cbe_822_count = 0;
  static  unsigned long long aesl_llvm_cbe_823_count = 0;
  static  unsigned long long aesl_llvm_cbe_824_count = 0;
  static  unsigned long long aesl_llvm_cbe_825_count = 0;
  static  unsigned long long aesl_llvm_cbe_826_count = 0;
  static  unsigned long long aesl_llvm_cbe_827_count = 0;
  static  unsigned long long aesl_llvm_cbe_828_count = 0;
   char *llvm_cbe_tmp__331;
  static  unsigned long long aesl_llvm_cbe_829_count = 0;
  unsigned char llvm_cbe_tmp__332;
  static  unsigned long long aesl_llvm_cbe_830_count = 0;
  unsigned int llvm_cbe_tmp__333;
  static  unsigned long long aesl_llvm_cbe_831_count = 0;
  unsigned int llvm_cbe_tmp__334;
  static  unsigned long long aesl_llvm_cbe_832_count = 0;
  unsigned char llvm_cbe_tmp__335;
  static  unsigned long long aesl_llvm_cbe_833_count = 0;
  static  unsigned long long aesl_llvm_cbe_834_count = 0;
  static  unsigned long long aesl_llvm_cbe_835_count = 0;
  static  unsigned long long aesl_llvm_cbe_836_count = 0;
  static  unsigned long long aesl_llvm_cbe_837_count = 0;
  static  unsigned long long aesl_llvm_cbe_838_count = 0;
  static  unsigned long long aesl_llvm_cbe_839_count = 0;
   char *llvm_cbe_tmp__336;
  static  unsigned long long aesl_llvm_cbe_840_count = 0;
  unsigned char llvm_cbe_tmp__337;
  static  unsigned long long aesl_llvm_cbe_841_count = 0;
  unsigned int llvm_cbe_tmp__338;
  static  unsigned long long aesl_llvm_cbe_842_count = 0;
  unsigned int llvm_cbe_tmp__339;
  static  unsigned long long aesl_llvm_cbe_843_count = 0;
  unsigned char llvm_cbe_tmp__340;
  static  unsigned long long aesl_llvm_cbe_844_count = 0;
  static  unsigned long long aesl_llvm_cbe_845_count = 0;
  static  unsigned long long aesl_llvm_cbe_846_count = 0;
  static  unsigned long long aesl_llvm_cbe_847_count = 0;
  static  unsigned long long aesl_llvm_cbe_848_count = 0;
  static  unsigned long long aesl_llvm_cbe_849_count = 0;
  static  unsigned long long aesl_llvm_cbe_850_count = 0;
   char *llvm_cbe_tmp__341;
  static  unsigned long long aesl_llvm_cbe_851_count = 0;
  unsigned char llvm_cbe_tmp__342;
  static  unsigned long long aesl_llvm_cbe_852_count = 0;
  unsigned int llvm_cbe_tmp__343;
  static  unsigned long long aesl_llvm_cbe_853_count = 0;
  unsigned int llvm_cbe_tmp__344;
  static  unsigned long long aesl_llvm_cbe_854_count = 0;
  unsigned char llvm_cbe_tmp__345;
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

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @SubBytes\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_658_count);
  llvm_cbe_tmp__266 = ( char *)(&(*llvm_cbe_state)[(((signed int )0u))
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
printf("\n  %%1 = load i8* %%0, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_659_count);
  llvm_cbe_tmp__267 = (unsigned char )*llvm_cbe_tmp__266;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__267);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = zext i8 %%1 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_660_count);
  llvm_cbe_tmp__268 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__267&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__268);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call i32 @getSBoxValue(i32 %%2), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_661_count);
  llvm_cbe_tmp__269 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__268);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__268);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__269);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = trunc i32 %%3 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_662_count);
  llvm_cbe_tmp__270 = (unsigned char )((unsigned char )llvm_cbe_tmp__269&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__270);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* %%0, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_663_count);
  *llvm_cbe_tmp__266 = llvm_cbe_tmp__270;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__270);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_669_count);
  llvm_cbe_tmp__271 = ( char *)(&(*llvm_cbe_state)[(((signed int )1u))
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
printf("\n  %%6 = load i8* %%5, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_670_count);
  llvm_cbe_tmp__272 = (unsigned char )*llvm_cbe_tmp__271;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__272);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = zext i8 %%6 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_671_count);
  llvm_cbe_tmp__273 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__272&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__273);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 @getSBoxValue(i32 %%7), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_672_count);
  llvm_cbe_tmp__274 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__273);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__273);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__274);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = trunc i32 %%8 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_673_count);
  llvm_cbe_tmp__275 = (unsigned char )((unsigned char )llvm_cbe_tmp__274&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__275);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%9, i8* %%5, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_674_count);
  *llvm_cbe_tmp__271 = llvm_cbe_tmp__275;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__275);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_680_count);
  llvm_cbe_tmp__276 = ( char *)(&(*llvm_cbe_state)[(((signed int )2u))
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
printf("\n  %%11 = load i8* %%10, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_681_count);
  llvm_cbe_tmp__277 = (unsigned char )*llvm_cbe_tmp__276;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__277);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = zext i8 %%11 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_682_count);
  llvm_cbe_tmp__278 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__277&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = tail call i32 @getSBoxValue(i32 %%12), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_683_count);
  llvm_cbe_tmp__279 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__278);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__279);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = trunc i32 %%13 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_684_count);
  llvm_cbe_tmp__280 = (unsigned char )((unsigned char )llvm_cbe_tmp__279&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__280);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%14, i8* %%10, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_685_count);
  *llvm_cbe_tmp__276 = llvm_cbe_tmp__280;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__280);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_691_count);
  llvm_cbe_tmp__281 = ( char *)(&(*llvm_cbe_state)[(((signed int )3u))
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
printf("\n  %%16 = load i8* %%15, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_692_count);
  llvm_cbe_tmp__282 = (unsigned char )*llvm_cbe_tmp__281;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__282);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = zext i8 %%16 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_693_count);
  llvm_cbe_tmp__283 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__282&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__283);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = tail call i32 @getSBoxValue(i32 %%17), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_694_count);
  llvm_cbe_tmp__284 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__283);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__283);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__284);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = trunc i32 %%18 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_695_count);
  llvm_cbe_tmp__285 = (unsigned char )((unsigned char )llvm_cbe_tmp__284&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__285);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%19, i8* %%15, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_696_count);
  *llvm_cbe_tmp__281 = llvm_cbe_tmp__285;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__285);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_711_count);
  llvm_cbe_tmp__286 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%21 = load i8* %%20, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_712_count);
  llvm_cbe_tmp__287 = (unsigned char )*llvm_cbe_tmp__286;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__287);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = zext i8 %%21 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_713_count);
  llvm_cbe_tmp__288 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__287&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__288);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = tail call i32 @getSBoxValue(i32 %%22), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_714_count);
  llvm_cbe_tmp__289 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__288);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__288);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__289);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = trunc i32 %%23 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_715_count);
  llvm_cbe_tmp__290 = (unsigned char )((unsigned char )llvm_cbe_tmp__289&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__290);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%24, i8* %%20, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_716_count);
  *llvm_cbe_tmp__286 = llvm_cbe_tmp__290;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__290);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_722_count);
  llvm_cbe_tmp__291 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%26 = load i8* %%25, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_723_count);
  llvm_cbe_tmp__292 = (unsigned char )*llvm_cbe_tmp__291;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__292);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = zext i8 %%26 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_724_count);
  llvm_cbe_tmp__293 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__292&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__293);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = tail call i32 @getSBoxValue(i32 %%27), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_725_count);
  llvm_cbe_tmp__294 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__293);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__293);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__294);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = trunc i32 %%28 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_726_count);
  llvm_cbe_tmp__295 = (unsigned char )((unsigned char )llvm_cbe_tmp__294&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__295);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%29, i8* %%25, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_727_count);
  *llvm_cbe_tmp__291 = llvm_cbe_tmp__295;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__295);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_733_count);
  llvm_cbe_tmp__296 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%31 = load i8* %%30, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_734_count);
  llvm_cbe_tmp__297 = (unsigned char )*llvm_cbe_tmp__296;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__297);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = zext i8 %%31 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_735_count);
  llvm_cbe_tmp__298 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__297&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__298);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = tail call i32 @getSBoxValue(i32 %%32), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_736_count);
  llvm_cbe_tmp__299 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__298);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__298);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__299);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = trunc i32 %%33 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_737_count);
  llvm_cbe_tmp__300 = (unsigned char )((unsigned char )llvm_cbe_tmp__299&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__300);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%34, i8* %%30, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_738_count);
  *llvm_cbe_tmp__296 = llvm_cbe_tmp__300;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__300);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_744_count);
  llvm_cbe_tmp__301 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%36 = load i8* %%35, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_745_count);
  llvm_cbe_tmp__302 = (unsigned char )*llvm_cbe_tmp__301;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__302);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = zext i8 %%36 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_746_count);
  llvm_cbe_tmp__303 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__302&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__303);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = tail call i32 @getSBoxValue(i32 %%37), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_747_count);
  llvm_cbe_tmp__304 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__303);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__303);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__304);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = trunc i32 %%38 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_748_count);
  llvm_cbe_tmp__305 = (unsigned char )((unsigned char )llvm_cbe_tmp__304&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__305);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%39, i8* %%35, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_749_count);
  *llvm_cbe_tmp__301 = llvm_cbe_tmp__305;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__305);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_764_count);
  llvm_cbe_tmp__306 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%41 = load i8* %%40, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_765_count);
  llvm_cbe_tmp__307 = (unsigned char )*llvm_cbe_tmp__306;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__307);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = zext i8 %%41 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_766_count);
  llvm_cbe_tmp__308 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__307&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__308);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = tail call i32 @getSBoxValue(i32 %%42), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_767_count);
  llvm_cbe_tmp__309 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__308);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__308);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__309);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = trunc i32 %%43 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_768_count);
  llvm_cbe_tmp__310 = (unsigned char )((unsigned char )llvm_cbe_tmp__309&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__310);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%44, i8* %%40, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_769_count);
  *llvm_cbe_tmp__306 = llvm_cbe_tmp__310;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__310);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_775_count);
  llvm_cbe_tmp__311 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%46 = load i8* %%45, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_776_count);
  llvm_cbe_tmp__312 = (unsigned char )*llvm_cbe_tmp__311;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__312);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = zext i8 %%46 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_777_count);
  llvm_cbe_tmp__313 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__312&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__313);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = tail call i32 @getSBoxValue(i32 %%47), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_778_count);
  llvm_cbe_tmp__314 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__313);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__313);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__314);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = trunc i32 %%48 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_779_count);
  llvm_cbe_tmp__315 = (unsigned char )((unsigned char )llvm_cbe_tmp__314&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__315);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%49, i8* %%45, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_780_count);
  *llvm_cbe_tmp__311 = llvm_cbe_tmp__315;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__315);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_786_count);
  llvm_cbe_tmp__316 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%51 = load i8* %%50, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_787_count);
  llvm_cbe_tmp__317 = (unsigned char )*llvm_cbe_tmp__316;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__317);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = zext i8 %%51 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_788_count);
  llvm_cbe_tmp__318 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__317&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__318);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = tail call i32 @getSBoxValue(i32 %%52), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_789_count);
  llvm_cbe_tmp__319 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__318);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__318);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__319);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = trunc i32 %%53 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_790_count);
  llvm_cbe_tmp__320 = (unsigned char )((unsigned char )llvm_cbe_tmp__319&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__320);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%54, i8* %%50, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_791_count);
  *llvm_cbe_tmp__316 = llvm_cbe_tmp__320;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__320);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_797_count);
  llvm_cbe_tmp__321 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%56 = load i8* %%55, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_798_count);
  llvm_cbe_tmp__322 = (unsigned char )*llvm_cbe_tmp__321;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__322);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = zext i8 %%56 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_799_count);
  llvm_cbe_tmp__323 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__322&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__323);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = tail call i32 @getSBoxValue(i32 %%57), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_800_count);
  llvm_cbe_tmp__324 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__323);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__323);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__324);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = trunc i32 %%58 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_801_count);
  llvm_cbe_tmp__325 = (unsigned char )((unsigned char )llvm_cbe_tmp__324&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__325);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%59, i8* %%55, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_802_count);
  *llvm_cbe_tmp__321 = llvm_cbe_tmp__325;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__325);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 0, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_817_count);
  llvm_cbe_tmp__326 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%61 = load i8* %%60, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_818_count);
  llvm_cbe_tmp__327 = (unsigned char )*llvm_cbe_tmp__326;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__327);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = zext i8 %%61 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_819_count);
  llvm_cbe_tmp__328 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__327&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__328);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = tail call i32 @getSBoxValue(i32 %%62), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_820_count);
  llvm_cbe_tmp__329 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__328);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__328);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__329);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = trunc i32 %%63 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_821_count);
  llvm_cbe_tmp__330 = (unsigned char )((unsigned char )llvm_cbe_tmp__329&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__330);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%64, i8* %%60, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_822_count);
  *llvm_cbe_tmp__326 = llvm_cbe_tmp__330;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__330);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_828_count);
  llvm_cbe_tmp__331 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%66 = load i8* %%65, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_829_count);
  llvm_cbe_tmp__332 = (unsigned char )*llvm_cbe_tmp__331;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__332);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = zext i8 %%66 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_830_count);
  llvm_cbe_tmp__333 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__332&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__333);
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = tail call i32 @getSBoxValue(i32 %%67), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_831_count);
  llvm_cbe_tmp__334 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__333);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__333);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__334);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = trunc i32 %%68 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_832_count);
  llvm_cbe_tmp__335 = (unsigned char )((unsigned char )llvm_cbe_tmp__334&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__335);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%69, i8* %%65, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_833_count);
  *llvm_cbe_tmp__331 = llvm_cbe_tmp__335;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__335);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 2, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_839_count);
  llvm_cbe_tmp__336 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%71 = load i8* %%70, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_840_count);
  llvm_cbe_tmp__337 = (unsigned char )*llvm_cbe_tmp__336;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__337);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = zext i8 %%71 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_841_count);
  llvm_cbe_tmp__338 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__337&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__338);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = tail call i32 @getSBoxValue(i32 %%72), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_842_count);
  llvm_cbe_tmp__339 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__338);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__338);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__339);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = trunc i32 %%73 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_843_count);
  llvm_cbe_tmp__340 = (unsigned char )((unsigned char )llvm_cbe_tmp__339&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__340);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%74, i8* %%70, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_844_count);
  *llvm_cbe_tmp__336 = llvm_cbe_tmp__340;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__340);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 3, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_850_count);
  llvm_cbe_tmp__341 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%76 = load i8* %%75, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_851_count);
  llvm_cbe_tmp__342 = (unsigned char )*llvm_cbe_tmp__341;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__342);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = zext i8 %%76 to i32, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_852_count);
  llvm_cbe_tmp__343 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__342&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__343);
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = tail call i32 @getSBoxValue(i32 %%77), !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_853_count);
  llvm_cbe_tmp__344 = (unsigned int ) /*tail*/ getSBoxValue(llvm_cbe_tmp__343);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__343);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__344);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = trunc i32 %%78 to i8, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_854_count);
  llvm_cbe_tmp__345 = (unsigned char )((unsigned char )llvm_cbe_tmp__344&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__345);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%79, i8* %%75, align 1, !dbg !6 for 0x%I64xth hint within @SubBytes  --> \n", ++aesl_llvm_cbe_855_count);
  *llvm_cbe_tmp__341 = llvm_cbe_tmp__345;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__345);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @SubBytes}\n");
  return;
}


void ShiftRows( char (*llvm_cbe_state)[4]) {
  static  unsigned long long aesl_llvm_cbe_867_count = 0;
  static  unsigned long long aesl_llvm_cbe_868_count = 0;
  static  unsigned long long aesl_llvm_cbe_869_count = 0;
  static  unsigned long long aesl_llvm_cbe_870_count = 0;
  static  unsigned long long aesl_llvm_cbe_871_count = 0;
  static  unsigned long long aesl_llvm_cbe_872_count = 0;
  static  unsigned long long aesl_llvm_cbe_873_count = 0;
  static  unsigned long long aesl_llvm_cbe_874_count = 0;
  static  unsigned long long aesl_llvm_cbe_875_count = 0;
  static  unsigned long long aesl_llvm_cbe_876_count = 0;
  static  unsigned long long aesl_llvm_cbe_877_count = 0;
  static  unsigned long long aesl_llvm_cbe_878_count = 0;
  static  unsigned long long aesl_llvm_cbe_879_count = 0;
  static  unsigned long long aesl_llvm_cbe_880_count = 0;
  static  unsigned long long aesl_llvm_cbe_881_count = 0;
  static  unsigned long long aesl_llvm_cbe_882_count = 0;
  static  unsigned long long aesl_llvm_cbe_883_count = 0;
  static  unsigned long long aesl_llvm_cbe_884_count = 0;
  static  unsigned long long aesl_llvm_cbe_885_count = 0;
  static  unsigned long long aesl_llvm_cbe_886_count = 0;
  static  unsigned long long aesl_llvm_cbe_887_count = 0;
  static  unsigned long long aesl_llvm_cbe_888_count = 0;
  static  unsigned long long aesl_llvm_cbe_889_count = 0;
  static  unsigned long long aesl_llvm_cbe_890_count = 0;
  static  unsigned long long aesl_llvm_cbe_891_count = 0;
  static  unsigned long long aesl_llvm_cbe_892_count = 0;
   char *llvm_cbe_tmp__346;
  static  unsigned long long aesl_llvm_cbe_893_count = 0;
  unsigned char llvm_cbe_tmp__347;
  static  unsigned long long aesl_llvm_cbe_894_count = 0;
  static  unsigned long long aesl_llvm_cbe_895_count = 0;
  static  unsigned long long aesl_llvm_cbe_896_count = 0;
  static  unsigned long long aesl_llvm_cbe_897_count = 0;
  static  unsigned long long aesl_llvm_cbe_898_count = 0;
  static  unsigned long long aesl_llvm_cbe_899_count = 0;
   char *llvm_cbe_tmp__348;
  static  unsigned long long aesl_llvm_cbe_900_count = 0;
  unsigned char llvm_cbe_tmp__349;
  static  unsigned long long aesl_llvm_cbe_901_count = 0;
  static  unsigned long long aesl_llvm_cbe_902_count = 0;
   char *llvm_cbe_tmp__350;
  static  unsigned long long aesl_llvm_cbe_903_count = 0;
  unsigned char llvm_cbe_tmp__351;
  static  unsigned long long aesl_llvm_cbe_904_count = 0;
  static  unsigned long long aesl_llvm_cbe_905_count = 0;
   char *llvm_cbe_tmp__352;
  static  unsigned long long aesl_llvm_cbe_906_count = 0;
  unsigned char llvm_cbe_tmp__353;
  static  unsigned long long aesl_llvm_cbe_907_count = 0;
  static  unsigned long long aesl_llvm_cbe_908_count = 0;
  static  unsigned long long aesl_llvm_cbe_909_count = 0;
   char *llvm_cbe_tmp__354;
  static  unsigned long long aesl_llvm_cbe_910_count = 0;
  unsigned char llvm_cbe_tmp__355;
  static  unsigned long long aesl_llvm_cbe_911_count = 0;
  static  unsigned long long aesl_llvm_cbe_912_count = 0;
  static  unsigned long long aesl_llvm_cbe_913_count = 0;
  static  unsigned long long aesl_llvm_cbe_914_count = 0;
  static  unsigned long long aesl_llvm_cbe_915_count = 0;
  static  unsigned long long aesl_llvm_cbe_916_count = 0;
   char *llvm_cbe_tmp__356;
  static  unsigned long long aesl_llvm_cbe_917_count = 0;
  unsigned char llvm_cbe_tmp__357;
  static  unsigned long long aesl_llvm_cbe_918_count = 0;
  static  unsigned long long aesl_llvm_cbe_919_count = 0;
  static  unsigned long long aesl_llvm_cbe_920_count = 0;
   char *llvm_cbe_tmp__358;
  static  unsigned long long aesl_llvm_cbe_921_count = 0;
  unsigned char llvm_cbe_tmp__359;
  static  unsigned long long aesl_llvm_cbe_922_count = 0;
  static  unsigned long long aesl_llvm_cbe_923_count = 0;
  static  unsigned long long aesl_llvm_cbe_924_count = 0;
  static  unsigned long long aesl_llvm_cbe_925_count = 0;
  static  unsigned long long aesl_llvm_cbe_926_count = 0;
  static  unsigned long long aesl_llvm_cbe_927_count = 0;
   char *llvm_cbe_tmp__360;
  static  unsigned long long aesl_llvm_cbe_928_count = 0;
  unsigned char llvm_cbe_tmp__361;
  static  unsigned long long aesl_llvm_cbe_929_count = 0;
  static  unsigned long long aesl_llvm_cbe_930_count = 0;
  static  unsigned long long aesl_llvm_cbe_931_count = 0;
   char *llvm_cbe_tmp__362;
  static  unsigned long long aesl_llvm_cbe_932_count = 0;
  unsigned char llvm_cbe_tmp__363;
  static  unsigned long long aesl_llvm_cbe_933_count = 0;
  static  unsigned long long aesl_llvm_cbe_934_count = 0;
  static  unsigned long long aesl_llvm_cbe_935_count = 0;
  static  unsigned long long aesl_llvm_cbe_936_count = 0;
  static  unsigned long long aesl_llvm_cbe_937_count = 0;
  static  unsigned long long aesl_llvm_cbe_938_count = 0;
   char *llvm_cbe_tmp__364;
  static  unsigned long long aesl_llvm_cbe_939_count = 0;
  unsigned char llvm_cbe_tmp__365;
  static  unsigned long long aesl_llvm_cbe_940_count = 0;
  static  unsigned long long aesl_llvm_cbe_941_count = 0;
   char *llvm_cbe_tmp__366;
  static  unsigned long long aesl_llvm_cbe_942_count = 0;
  unsigned char llvm_cbe_tmp__367;
  static  unsigned long long aesl_llvm_cbe_943_count = 0;
  static  unsigned long long aesl_llvm_cbe_944_count = 0;
   char *llvm_cbe_tmp__368;
  static  unsigned long long aesl_llvm_cbe_945_count = 0;
  unsigned char llvm_cbe_tmp__369;
  static  unsigned long long aesl_llvm_cbe_946_count = 0;
  static  unsigned long long aesl_llvm_cbe_947_count = 0;
  static  unsigned long long aesl_llvm_cbe_948_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @ShiftRows\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 0, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_892_count);
  llvm_cbe_tmp__346 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%2 = load i8* %%1, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_893_count);
  llvm_cbe_tmp__347 = (unsigned char )*llvm_cbe_tmp__346;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__347);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_899_count);
  llvm_cbe_tmp__348 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%4 = load i8* %%3, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_900_count);
  llvm_cbe_tmp__349 = (unsigned char )*llvm_cbe_tmp__348;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__349);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* %%1, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_901_count);
  *llvm_cbe_tmp__346 = llvm_cbe_tmp__349;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__349);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 2, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_902_count);
  llvm_cbe_tmp__350 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%6 = load i8* %%5, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_903_count);
  llvm_cbe_tmp__351 = (unsigned char )*llvm_cbe_tmp__350;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__351);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%6, i8* %%3, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_904_count);
  *llvm_cbe_tmp__348 = llvm_cbe_tmp__351;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__351);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 3, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_905_count);
  llvm_cbe_tmp__352 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%8 = load i8* %%7, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_906_count);
  llvm_cbe_tmp__353 = (unsigned char )*llvm_cbe_tmp__352;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__353);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%8, i8* %%5, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_907_count);
  *llvm_cbe_tmp__350 = llvm_cbe_tmp__353;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__353);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%2, i8* %%7, align 1, !dbg !6 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_908_count);
  *llvm_cbe_tmp__352 = llvm_cbe_tmp__347;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__347);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 0, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_909_count);
  llvm_cbe_tmp__354 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%10 = load i8* %%9, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_910_count);
  llvm_cbe_tmp__355 = (unsigned char )*llvm_cbe_tmp__354;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__355);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 2, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_916_count);
  llvm_cbe_tmp__356 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%12 = load i8* %%11, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_917_count);
  llvm_cbe_tmp__357 = (unsigned char )*llvm_cbe_tmp__356;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__357);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%12, i8* %%9, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_918_count);
  *llvm_cbe_tmp__354 = llvm_cbe_tmp__357;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__357);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%10, i8* %%11, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_919_count);
  *llvm_cbe_tmp__356 = llvm_cbe_tmp__355;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__355);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_920_count);
  llvm_cbe_tmp__358 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%14 = load i8* %%13, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_921_count);
  llvm_cbe_tmp__359 = (unsigned char )*llvm_cbe_tmp__358;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__359);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 3, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_927_count);
  llvm_cbe_tmp__360 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%16 = load i8* %%15, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_928_count);
  llvm_cbe_tmp__361 = (unsigned char )*llvm_cbe_tmp__360;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__361);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%16, i8* %%13, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_929_count);
  *llvm_cbe_tmp__358 = llvm_cbe_tmp__361;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__361);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%14, i8* %%15, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_930_count);
  *llvm_cbe_tmp__360 = llvm_cbe_tmp__359;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__359);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 0, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_931_count);
  llvm_cbe_tmp__362 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%18 = load i8* %%17, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_932_count);
  llvm_cbe_tmp__363 = (unsigned char )*llvm_cbe_tmp__362;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__363);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 3, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_938_count);
  llvm_cbe_tmp__364 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%20 = load i8* %%19, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_939_count);
  llvm_cbe_tmp__365 = (unsigned char )*llvm_cbe_tmp__364;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__365);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%20, i8* %%17, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_940_count);
  *llvm_cbe_tmp__362 = llvm_cbe_tmp__365;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__365);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 2, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_941_count);
  llvm_cbe_tmp__366 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%22 = load i8* %%21, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_942_count);
  llvm_cbe_tmp__367 = (unsigned char )*llvm_cbe_tmp__366;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__367);

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%22, i8* %%19, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_943_count);
  *llvm_cbe_tmp__364 = llvm_cbe_tmp__367;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__367);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_944_count);
  llvm_cbe_tmp__368 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%24 = load i8* %%23, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_945_count);
  llvm_cbe_tmp__369 = (unsigned char )*llvm_cbe_tmp__368;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__369);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%24, i8* %%21, align 1, !dbg !7 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_946_count);
  *llvm_cbe_tmp__366 = llvm_cbe_tmp__369;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__369);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%18, i8* %%23, align 1, !dbg !8 for 0x%I64xth hint within @ShiftRows  --> \n", ++aesl_llvm_cbe_947_count);
  *llvm_cbe_tmp__368 = llvm_cbe_tmp__363;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__363);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @ShiftRows}\n");
  return;
}


void MixColumns( char (*llvm_cbe_state)[4]) {
  static  unsigned long long aesl_llvm_cbe_949_count = 0;
  static  unsigned long long aesl_llvm_cbe_950_count = 0;
  static  unsigned long long aesl_llvm_cbe_951_count = 0;
  static  unsigned long long aesl_llvm_cbe_952_count = 0;
  static  unsigned long long aesl_llvm_cbe_953_count = 0;
  static  unsigned long long aesl_llvm_cbe_954_count = 0;
  static  unsigned long long aesl_llvm_cbe_955_count = 0;
  static  unsigned long long aesl_llvm_cbe_956_count = 0;
  static  unsigned long long aesl_llvm_cbe_957_count = 0;
  static  unsigned long long aesl_llvm_cbe_958_count = 0;
  static  unsigned long long aesl_llvm_cbe_959_count = 0;
  static  unsigned long long aesl_llvm_cbe_960_count = 0;
  static  unsigned long long aesl_llvm_cbe_961_count = 0;
  static  unsigned long long aesl_llvm_cbe_962_count = 0;
  static  unsigned long long aesl_llvm_cbe_963_count = 0;
  static  unsigned long long aesl_llvm_cbe_964_count = 0;
  static  unsigned long long aesl_llvm_cbe_965_count = 0;
  static  unsigned long long aesl_llvm_cbe_966_count = 0;
  static  unsigned long long aesl_llvm_cbe_967_count = 0;
  static  unsigned long long aesl_llvm_cbe_968_count = 0;
  static  unsigned long long aesl_llvm_cbe_969_count = 0;
  static  unsigned long long aesl_llvm_cbe_970_count = 0;
  static  unsigned long long aesl_llvm_cbe_971_count = 0;
  static  unsigned long long aesl_llvm_cbe_972_count = 0;
  static  unsigned long long aesl_llvm_cbe_973_count = 0;
  static  unsigned long long aesl_llvm_cbe_974_count = 0;
  static  unsigned long long aesl_llvm_cbe_975_count = 0;
  static  unsigned long long aesl_llvm_cbe_976_count = 0;
  static  unsigned long long aesl_llvm_cbe_977_count = 0;
  static  unsigned long long aesl_llvm_cbe_978_count = 0;
  static  unsigned long long aesl_llvm_cbe_979_count = 0;
  static  unsigned long long aesl_llvm_cbe_980_count = 0;
  static  unsigned long long aesl_llvm_cbe_981_count = 0;
  static  unsigned long long aesl_llvm_cbe_982_count = 0;
  static  unsigned long long aesl_llvm_cbe_983_count = 0;
  static  unsigned long long aesl_llvm_cbe_984_count = 0;
  static  unsigned long long aesl_llvm_cbe_985_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_986_count = 0;
   char *llvm_cbe_tmp__370;
  static  unsigned long long aesl_llvm_cbe_987_count = 0;
  unsigned char llvm_cbe_tmp__371;
  static  unsigned long long aesl_llvm_cbe_988_count = 0;
  static  unsigned long long aesl_llvm_cbe_989_count = 0;
  static  unsigned long long aesl_llvm_cbe_990_count = 0;
   char *llvm_cbe_tmp__372;
  static  unsigned long long aesl_llvm_cbe_991_count = 0;
  unsigned char llvm_cbe_tmp__373;
  static  unsigned long long aesl_llvm_cbe_992_count = 0;
  unsigned char llvm_cbe_tmp__374;
  static  unsigned long long aesl_llvm_cbe_993_count = 0;
   char *llvm_cbe_tmp__375;
  static  unsigned long long aesl_llvm_cbe_994_count = 0;
  unsigned char llvm_cbe_tmp__376;
  static  unsigned long long aesl_llvm_cbe_995_count = 0;
   char *llvm_cbe_tmp__377;
  static  unsigned long long aesl_llvm_cbe_996_count = 0;
  unsigned char llvm_cbe_tmp__378;
  static  unsigned long long aesl_llvm_cbe_997_count = 0;
  unsigned char llvm_cbe_tmp__379;
  static  unsigned long long aesl_llvm_cbe_998_count = 0;
  unsigned char llvm_cbe_tmp__380;
  static  unsigned long long aesl_llvm_cbe_999_count = 0;
  static  unsigned long long aesl_llvm_cbe_1000_count = 0;
  static  unsigned long long aesl_llvm_cbe_1001_count = 0;
  static  unsigned long long aesl_llvm_cbe_1002_count = 0;
  static  unsigned long long aesl_llvm_cbe_1003_count = 0;
  static  unsigned long long aesl_llvm_cbe_1004_count = 0;
  static  unsigned long long aesl_llvm_cbe_1005_count = 0;
  static  unsigned long long aesl_llvm_cbe_1006_count = 0;
  unsigned char llvm_cbe_tmp__381;
  static  unsigned long long aesl_llvm_cbe_1007_count = 0;
  static  unsigned long long aesl_llvm_cbe_1008_count = 0;
  unsigned char llvm_cbe_tmp__382;
  static  unsigned long long aesl_llvm_cbe_1009_count = 0;
  unsigned char llvm_cbe_tmp__383;
  static  unsigned long long aesl_llvm_cbe_1010_count = 0;
  static  unsigned long long aesl_llvm_cbe_1011_count = 0;
  unsigned char llvm_cbe_tmp__384;
  static  unsigned long long aesl_llvm_cbe_1012_count = 0;
  unsigned char llvm_cbe_tmp__385;
  static  unsigned long long aesl_llvm_cbe_1013_count = 0;
  unsigned char llvm_cbe_tmp__386;
  static  unsigned long long aesl_llvm_cbe_1014_count = 0;
  static  unsigned long long aesl_llvm_cbe_1015_count = 0;
  unsigned char llvm_cbe_tmp__387;
  static  unsigned long long aesl_llvm_cbe_1016_count = 0;
  static  unsigned long long aesl_llvm_cbe_1017_count = 0;
  static  unsigned long long aesl_llvm_cbe_1018_count = 0;
  unsigned char llvm_cbe_tmp__388;
  static  unsigned long long aesl_llvm_cbe_1019_count = 0;
  static  unsigned long long aesl_llvm_cbe_1020_count = 0;
  unsigned char llvm_cbe_tmp__389;
  static  unsigned long long aesl_llvm_cbe_1021_count = 0;
  unsigned char llvm_cbe_tmp__390;
  static  unsigned long long aesl_llvm_cbe_1022_count = 0;
  static  unsigned long long aesl_llvm_cbe_1023_count = 0;
  unsigned char llvm_cbe_tmp__391;
  static  unsigned long long aesl_llvm_cbe_1024_count = 0;
  unsigned char llvm_cbe_tmp__392;
  static  unsigned long long aesl_llvm_cbe_1025_count = 0;
  unsigned char llvm_cbe_tmp__393;
  static  unsigned long long aesl_llvm_cbe_1026_count = 0;
  static  unsigned long long aesl_llvm_cbe_1027_count = 0;
  unsigned char llvm_cbe_tmp__394;
  static  unsigned long long aesl_llvm_cbe_1028_count = 0;
  static  unsigned long long aesl_llvm_cbe_1029_count = 0;
  static  unsigned long long aesl_llvm_cbe_1030_count = 0;
  unsigned char llvm_cbe_tmp__395;
  static  unsigned long long aesl_llvm_cbe_1031_count = 0;
  static  unsigned long long aesl_llvm_cbe_1032_count = 0;
  unsigned char llvm_cbe_tmp__396;
  static  unsigned long long aesl_llvm_cbe_1033_count = 0;
  unsigned char llvm_cbe_tmp__397;
  static  unsigned long long aesl_llvm_cbe_1034_count = 0;
  static  unsigned long long aesl_llvm_cbe_1035_count = 0;
  unsigned char llvm_cbe_tmp__398;
  static  unsigned long long aesl_llvm_cbe_1036_count = 0;
  unsigned char llvm_cbe_tmp__399;
  static  unsigned long long aesl_llvm_cbe_1037_count = 0;
  unsigned char llvm_cbe_tmp__400;
  static  unsigned long long aesl_llvm_cbe_1038_count = 0;
  static  unsigned long long aesl_llvm_cbe_1039_count = 0;
  unsigned char llvm_cbe_tmp__401;
  static  unsigned long long aesl_llvm_cbe_1040_count = 0;
  static  unsigned long long aesl_llvm_cbe_1041_count = 0;
  static  unsigned long long aesl_llvm_cbe_1042_count = 0;
  unsigned char llvm_cbe_tmp__402;
  static  unsigned long long aesl_llvm_cbe_1043_count = 0;
  static  unsigned long long aesl_llvm_cbe_1044_count = 0;
  unsigned char llvm_cbe_tmp__403;
  static  unsigned long long aesl_llvm_cbe_1045_count = 0;
  unsigned char llvm_cbe_tmp__404;
  static  unsigned long long aesl_llvm_cbe_1046_count = 0;
  static  unsigned long long aesl_llvm_cbe_1047_count = 0;
  static  unsigned long long aesl_llvm_cbe_1048_count = 0;
  unsigned char llvm_cbe_tmp__405;
  static  unsigned long long aesl_llvm_cbe_1049_count = 0;
  unsigned char llvm_cbe_tmp__406;
  static  unsigned long long aesl_llvm_cbe_1050_count = 0;
  static  unsigned long long aesl_llvm_cbe_1051_count = 0;
  unsigned int llvm_cbe_tmp__407;
  static  unsigned long long aesl_llvm_cbe_1052_count = 0;
  static  unsigned long long aesl_llvm_cbe_1053_count = 0;
  static  unsigned long long aesl_llvm_cbe_1054_count = 0;
  static  unsigned long long aesl_llvm_cbe_1055_count = 0;
  static  unsigned long long aesl_llvm_cbe_1056_count = 0;
  static  unsigned long long aesl_llvm_cbe_1057_count = 0;
  static  unsigned long long aesl_llvm_cbe_1058_count = 0;
  static  unsigned long long aesl_llvm_cbe_1059_count = 0;
  static  unsigned long long aesl_llvm_cbe_1060_count = 0;
  static  unsigned long long aesl_llvm_cbe_1061_count = 0;
  static  unsigned long long aesl_llvm_cbe_1062_count = 0;
  static  unsigned long long aesl_llvm_cbe_1063_count = 0;
  static  unsigned long long aesl_llvm_cbe_1064_count = 0;
  static  unsigned long long aesl_llvm_cbe_1065_count = 0;
  static  unsigned long long aesl_llvm_cbe_1066_count = 0;
  static  unsigned long long aesl_llvm_cbe_1067_count = 0;
  static  unsigned long long aesl_llvm_cbe_1068_count = 0;
  static  unsigned long long aesl_llvm_cbe_1069_count = 0;
  static  unsigned long long aesl_llvm_cbe_1070_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_1071_count = 0;
  static  unsigned long long aesl_llvm_cbe_1072_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @MixColumns\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__408;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__408:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%39, %%1  for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__407);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [4 x i8]* %%state, i32 0, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_986_count);
  llvm_cbe_tmp__370 = ( char *)(&(*llvm_cbe_state)[(((signed int )llvm_cbe_storemerge1))
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
printf("\n  %%3 = load i8* %%2, align 1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_987_count);
  llvm_cbe_tmp__371 = (unsigned char )*llvm_cbe_tmp__370;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__371);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [4 x i8]* %%state, i32 1, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_990_count);
  llvm_cbe_tmp__372 = ( char *)(&llvm_cbe_state[(((signed int )1u))
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
printf("\n  %%5 = load i8* %%4, align 1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_991_count);
  llvm_cbe_tmp__373 = (unsigned char )*llvm_cbe_tmp__372;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__373);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = xor i8 %%5, %%3, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_992_count);
  llvm_cbe_tmp__374 = (unsigned char )((unsigned char )(llvm_cbe_tmp__373 ^ llvm_cbe_tmp__371));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__374);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [4 x i8]* %%state, i32 2, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_993_count);
  llvm_cbe_tmp__375 = ( char *)(&llvm_cbe_state[(((signed int )2u))
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
printf("\n  %%8 = load i8* %%7, align 1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_994_count);
  llvm_cbe_tmp__376 = (unsigned char )*llvm_cbe_tmp__375;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__376);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [4 x i8]* %%state, i32 3, i32 %%storemerge1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_995_count);
  llvm_cbe_tmp__377 = ( char *)(&llvm_cbe_state[(((signed int )3u))
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
printf("\n  %%10 = load i8* %%9, align 1, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_996_count);
  llvm_cbe_tmp__378 = (unsigned char )*llvm_cbe_tmp__377;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__378);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = xor i8 %%6, %%8, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_997_count);
  llvm_cbe_tmp__379 = (unsigned char )((unsigned char )(llvm_cbe_tmp__374 ^ llvm_cbe_tmp__376));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__379);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = xor i8 %%11, %%10, !dbg !6 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_998_count);
  llvm_cbe_tmp__380 = (unsigned char )((unsigned char )(llvm_cbe_tmp__379 ^ llvm_cbe_tmp__378));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__380);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = shl i8 %%6, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1006_count);
  llvm_cbe_tmp__381 = (unsigned char )((unsigned char )(llvm_cbe_tmp__374 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__381);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = ashr i8 %%6, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1008_count);
  llvm_cbe_tmp__382 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__374) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__382));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = and i8 %%14, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1009_count);
  llvm_cbe_tmp__383 = (unsigned char )((unsigned char )(llvm_cbe_tmp__382 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__383);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = xor i8 %%13, %%3, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1011_count);
  llvm_cbe_tmp__384 = (unsigned char )((unsigned char )(llvm_cbe_tmp__381 ^ llvm_cbe_tmp__371));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__384);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = xor i8 %%16, %%12, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1012_count);
  llvm_cbe_tmp__385 = (unsigned char )((unsigned char )(llvm_cbe_tmp__384 ^ llvm_cbe_tmp__380));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__385);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = xor i8 %%17, %%15, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1013_count);
  llvm_cbe_tmp__386 = (unsigned char )((unsigned char )(llvm_cbe_tmp__385 ^ llvm_cbe_tmp__383));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__386);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%18, i8* %%2, align 1, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1014_count);
  *llvm_cbe_tmp__370 = llvm_cbe_tmp__386;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__386);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = xor i8 %%8, %%5, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1015_count);
  llvm_cbe_tmp__387 = (unsigned char )((unsigned char )(llvm_cbe_tmp__376 ^ llvm_cbe_tmp__373));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__387);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = shl i8 %%19, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1018_count);
  llvm_cbe_tmp__388 = (unsigned char )((unsigned char )(llvm_cbe_tmp__387 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__388);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = ashr i8 %%19, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1020_count);
  llvm_cbe_tmp__389 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__387) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__389));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = and i8 %%21, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1021_count);
  llvm_cbe_tmp__390 = (unsigned char )((unsigned char )(llvm_cbe_tmp__389 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__390);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = xor i8 %%12, %%5, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1023_count);
  llvm_cbe_tmp__391 = (unsigned char )((unsigned char )(llvm_cbe_tmp__380 ^ llvm_cbe_tmp__373));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__391);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = xor i8 %%23, %%20, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1024_count);
  llvm_cbe_tmp__392 = (unsigned char )((unsigned char )(llvm_cbe_tmp__391 ^ llvm_cbe_tmp__388));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__392);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = xor i8 %%24, %%22, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1025_count);
  llvm_cbe_tmp__393 = (unsigned char )((unsigned char )(llvm_cbe_tmp__392 ^ llvm_cbe_tmp__390));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__393);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%25, i8* %%4, align 1, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1026_count);
  *llvm_cbe_tmp__372 = llvm_cbe_tmp__393;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__393);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = xor i8 %%10, %%8, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1027_count);
  llvm_cbe_tmp__394 = (unsigned char )((unsigned char )(llvm_cbe_tmp__378 ^ llvm_cbe_tmp__376));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__394);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = shl i8 %%26, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1030_count);
  llvm_cbe_tmp__395 = (unsigned char )((unsigned char )(llvm_cbe_tmp__394 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__395);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = ashr i8 %%26, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1032_count);
  llvm_cbe_tmp__396 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__394) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__396));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = and i8 %%28, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1033_count);
  llvm_cbe_tmp__397 = (unsigned char )((unsigned char )(llvm_cbe_tmp__396 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__397);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = xor i8 %%6, %%10, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1035_count);
  llvm_cbe_tmp__398 = (unsigned char )((unsigned char )(llvm_cbe_tmp__374 ^ llvm_cbe_tmp__378));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__398);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = xor i8 %%30, %%27, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1036_count);
  llvm_cbe_tmp__399 = (unsigned char )((unsigned char )(llvm_cbe_tmp__398 ^ llvm_cbe_tmp__395));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__399);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = xor i8 %%31, %%29, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1037_count);
  llvm_cbe_tmp__400 = (unsigned char )((unsigned char )(llvm_cbe_tmp__399 ^ llvm_cbe_tmp__397));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__400);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%32, i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1038_count);
  *llvm_cbe_tmp__375 = llvm_cbe_tmp__400;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__400);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = xor i8 %%10, %%3, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1039_count);
  llvm_cbe_tmp__401 = (unsigned char )((unsigned char )(llvm_cbe_tmp__378 ^ llvm_cbe_tmp__371));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__401);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = shl i8 %%33, 1, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1042_count);
  llvm_cbe_tmp__402 = (unsigned char )((unsigned char )(llvm_cbe_tmp__401 << ((unsigned char )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__402);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = ashr i8 %%33, 7, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1044_count);
  llvm_cbe_tmp__403 = (unsigned char )((unsigned char )((( char )((( char )llvm_cbe_tmp__401) >> (( char )((unsigned char )7))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", (( char )llvm_cbe_tmp__403));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = and i8 %%35, 27, !dbg !8 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1045_count);
  llvm_cbe_tmp__404 = (unsigned char )((unsigned char )(llvm_cbe_tmp__403 & ((unsigned char )27)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__404);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = xor i8 %%11, %%34, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1048_count);
  llvm_cbe_tmp__405 = (unsigned char )((unsigned char )(llvm_cbe_tmp__379 ^ llvm_cbe_tmp__402));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__405);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = xor i8 %%37, %%36, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1049_count);
  llvm_cbe_tmp__406 = (unsigned char )((unsigned char )(llvm_cbe_tmp__405 ^ llvm_cbe_tmp__404));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__406);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge1) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%38, i8* %%9, align 1, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1050_count);
  *llvm_cbe_tmp__377 = llvm_cbe_tmp__406;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__406);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add nsw i32 %%storemerge1, 1, !dbg !7 for 0x%I64xth hint within @MixColumns  --> \n", ++aesl_llvm_cbe_1051_count);
  llvm_cbe_tmp__407 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__407&4294967295ull)));
  if (((llvm_cbe_tmp__407&4294967295U) == (4u&4294967295U))) {
    goto llvm_cbe_tmp__409;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__407;   /* for PHI node */
    goto llvm_cbe_tmp__408;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__409:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @MixColumns}\n");
  return;
}


void Cipher(signed int llvm_cbe_Nr, signed int llvm_cbe_Nk,  char *llvm_cbe_out) {
  static  unsigned long long aesl_llvm_cbe_Rcon_count = 0;
  signed int llvm_cbe_Rcon[255];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_state_count = 0;
   char llvm_cbe_state[4][4];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_RoundKey_count = 0;
   char llvm_cbe_RoundKey[240];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_Key_count = 0;
   char llvm_cbe_Key[32];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_in_count = 0;
   char llvm_cbe_in[16];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1073_count = 0;
  static  unsigned long long aesl_llvm_cbe_1074_count = 0;
  static  unsigned long long aesl_llvm_cbe_1075_count = 0;
  static  unsigned long long aesl_llvm_cbe_1076_count = 0;
  static  unsigned long long aesl_llvm_cbe_1077_count = 0;
  static  unsigned long long aesl_llvm_cbe_1078_count = 0;
  static  unsigned long long aesl_llvm_cbe_1079_count = 0;
  static  unsigned long long aesl_llvm_cbe_1080_count = 0;
  static  unsigned long long aesl_llvm_cbe_1081_count = 0;
  static  unsigned long long aesl_llvm_cbe_1082_count = 0;
  static  unsigned long long aesl_llvm_cbe_1083_count = 0;
   char *llvm_cbe_tmp__410;
  static  unsigned long long aesl_llvm_cbe_1084_count = 0;
   char *llvm_cbe_tmp__411;
  static  unsigned long long aesl_llvm_cbe_1085_count = 0;
  static  unsigned long long aesl_llvm_cbe_1086_count = 0;
  static  unsigned long long aesl_llvm_cbe_1087_count = 0;
  static  unsigned long long aesl_llvm_cbe_1088_count = 0;
  static  unsigned long long aesl_llvm_cbe_1089_count = 0;
  static  unsigned long long aesl_llvm_cbe_1090_count = 0;
  static  unsigned long long aesl_llvm_cbe_1091_count = 0;
  static  unsigned long long aesl_llvm_cbe_1092_count = 0;
  static  unsigned long long aesl_llvm_cbe_1093_count = 0;
  static  unsigned long long aesl_llvm_cbe_1094_count = 0;
  static  unsigned long long aesl_llvm_cbe_1095_count = 0;
  static  unsigned long long aesl_llvm_cbe_1096_count = 0;
  static  unsigned long long aesl_llvm_cbe_1097_count = 0;
  static  unsigned long long aesl_llvm_cbe_1098_count = 0;
  static  unsigned long long aesl_llvm_cbe_1099_count = 0;
  static  unsigned long long aesl_llvm_cbe_1100_count = 0;
  static  unsigned long long aesl_llvm_cbe_1101_count = 0;
  static  unsigned long long aesl_llvm_cbe_1102_count = 0;
  static  unsigned long long aesl_llvm_cbe_1103_count = 0;
  static  unsigned long long aesl_llvm_cbe_1104_count = 0;
  static  unsigned long long aesl_llvm_cbe_1105_count = 0;
  static  unsigned long long aesl_llvm_cbe_1106_count = 0;
  static  unsigned long long aesl_llvm_cbe_1107_count = 0;
  static  unsigned long long aesl_llvm_cbe_1108_count = 0;
  static  unsigned long long aesl_llvm_cbe_1109_count = 0;
  static  unsigned long long aesl_llvm_cbe_1110_count = 0;
  unsigned int llvm_cbe_tmp__412;
  static  unsigned long long aesl_llvm_cbe_1111_count = 0;
  static  unsigned long long aesl_llvm_cbe_1112_count = 0;
  static  unsigned long long aesl_llvm_cbe_1113_count = 0;
  unsigned int llvm_cbe_tmp__413;
  static  unsigned long long aesl_llvm_cbe_1114_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1115_count = 0;
   char *llvm_cbe_tmp__414;
  static  unsigned long long aesl_llvm_cbe_1116_count = 0;
  unsigned char llvm_cbe_tmp__415;
  static  unsigned long long aesl_llvm_cbe_1117_count = 0;
   char *llvm_cbe_tmp__416;
  static  unsigned long long aesl_llvm_cbe_1118_count = 0;
  static  unsigned long long aesl_llvm_cbe_1119_count = 0;
   char *llvm_cbe_tmp__417;
  static  unsigned long long aesl_llvm_cbe_1120_count = 0;
  unsigned char llvm_cbe_tmp__418;
  static  unsigned long long aesl_llvm_cbe_1121_count = 0;
   char *llvm_cbe_tmp__419;
  static  unsigned long long aesl_llvm_cbe_1122_count = 0;
  static  unsigned long long aesl_llvm_cbe_1123_count = 0;
  unsigned int llvm_cbe_tmp__420;
  static  unsigned long long aesl_llvm_cbe_1124_count = 0;
  static  unsigned long long aesl_llvm_cbe_1125_count = 0;
  static  unsigned long long aesl_llvm_cbe_1126_count = 0;
  static  unsigned long long aesl_llvm_cbe_1127_count = 0;
  static  unsigned long long aesl_llvm_cbe_1128_count = 0;
  static  unsigned long long aesl_llvm_cbe_1129_count = 0;
  static  unsigned long long aesl_llvm_cbe_1130_count = 0;
  static  unsigned long long aesl_llvm_cbe_1131_count = 0;
  static  unsigned long long aesl_llvm_cbe_1132_count = 0;
  static  unsigned long long aesl_llvm_cbe_1133_count = 0;
  static  unsigned long long aesl_llvm_cbe_1134_count = 0;
  static  unsigned long long aesl_llvm_cbe_1135_count = 0;
  static  unsigned long long aesl_llvm_cbe_1136_count = 0;
  static  unsigned long long aesl_llvm_cbe_1137_count = 0;
  static  unsigned long long aesl_llvm_cbe_1138_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond18_count = 0;
  static  unsigned long long aesl_llvm_cbe_1139_count = 0;
  static  unsigned long long aesl_llvm_cbe_1140_count = 0;
   char *llvm_cbe_tmp__421;
  static  unsigned long long aesl_llvm_cbe_1141_count = 0;
   char *llvm_cbe_tmp__422;
  static  unsigned long long aesl_llvm_cbe_1142_count = 0;
  signed int *llvm_cbe_tmp__423;
  static  unsigned long long aesl_llvm_cbe_1143_count = 0;
  static  unsigned long long aesl_llvm_cbe_1144_count = 0;
  static  unsigned long long aesl_llvm_cbe_1145_count = 0;
  static  unsigned long long aesl_llvm_cbe_1146_count = 0;
  static  unsigned long long aesl_llvm_cbe_1147_count = 0;
  static  unsigned long long aesl_llvm_cbe_1148_count = 0;
  static  unsigned long long aesl_llvm_cbe_1149_count = 0;
  static  unsigned long long aesl_llvm_cbe_1150_count = 0;
  static  unsigned long long aesl_llvm_cbe_1151_count = 0;
  static  unsigned long long aesl_llvm_cbe_1152_count = 0;
  static  unsigned long long aesl_llvm_cbe_1153_count = 0;
  static  unsigned long long aesl_llvm_cbe_1154_count = 0;
  static  unsigned long long aesl_llvm_cbe_1155_count = 0;
  static  unsigned long long aesl_llvm_cbe_1156_count = 0;
  static  unsigned long long aesl_llvm_cbe_1157_count = 0;
  static  unsigned long long aesl_llvm_cbe_1158_count = 0;
  static  unsigned long long aesl_llvm_cbe_1159_count = 0;
  static  unsigned long long aesl_llvm_cbe_1160_count = 0;
  static  unsigned long long aesl_llvm_cbe_1161_count = 0;
  static  unsigned long long aesl_llvm_cbe_1162_count = 0;
  static  unsigned long long aesl_llvm_cbe_1163_count = 0;
  static  unsigned long long aesl_llvm_cbe_1164_count = 0;
  static  unsigned long long aesl_llvm_cbe_1165_count = 0;
  static  unsigned long long aesl_llvm_cbe_1166_count = 0;
  static  unsigned long long aesl_llvm_cbe_1167_count = 0;
   char *llvm_cbe_tmp__424;
  static  unsigned long long aesl_llvm_cbe_1168_count = 0;
  unsigned char llvm_cbe_tmp__425;
  static  unsigned long long aesl_llvm_cbe_1169_count = 0;
   char *llvm_cbe_tmp__426;
  static  unsigned long long aesl_llvm_cbe_1170_count = 0;
  static  unsigned long long aesl_llvm_cbe_1171_count = 0;
  static  unsigned long long aesl_llvm_cbe_1172_count = 0;
  static  unsigned long long aesl_llvm_cbe_1173_count = 0;
  static  unsigned long long aesl_llvm_cbe_1174_count = 0;
  static  unsigned long long aesl_llvm_cbe_1175_count = 0;
  static  unsigned long long aesl_llvm_cbe_1176_count = 0;
  static  unsigned long long aesl_llvm_cbe_1177_count = 0;
  static  unsigned long long aesl_llvm_cbe_1178_count = 0;
  static  unsigned long long aesl_llvm_cbe_1179_count = 0;
  static  unsigned long long aesl_llvm_cbe_1180_count = 0;
   char *llvm_cbe_tmp__427;
  static  unsigned long long aesl_llvm_cbe_1181_count = 0;
  unsigned char llvm_cbe_tmp__428;
  static  unsigned long long aesl_llvm_cbe_1182_count = 0;
   char *llvm_cbe_tmp__429;
  static  unsigned long long aesl_llvm_cbe_1183_count = 0;
  static  unsigned long long aesl_llvm_cbe_1184_count = 0;
  static  unsigned long long aesl_llvm_cbe_1185_count = 0;
  static  unsigned long long aesl_llvm_cbe_1186_count = 0;
  static  unsigned long long aesl_llvm_cbe_1187_count = 0;
  static  unsigned long long aesl_llvm_cbe_1188_count = 0;
  static  unsigned long long aesl_llvm_cbe_1189_count = 0;
  static  unsigned long long aesl_llvm_cbe_1190_count = 0;
  static  unsigned long long aesl_llvm_cbe_1191_count = 0;
  static  unsigned long long aesl_llvm_cbe_1192_count = 0;
  static  unsigned long long aesl_llvm_cbe_1193_count = 0;
   char *llvm_cbe_tmp__430;
  static  unsigned long long aesl_llvm_cbe_1194_count = 0;
  unsigned char llvm_cbe_tmp__431;
  static  unsigned long long aesl_llvm_cbe_1195_count = 0;
   char *llvm_cbe_tmp__432;
  static  unsigned long long aesl_llvm_cbe_1196_count = 0;
  static  unsigned long long aesl_llvm_cbe_1197_count = 0;
  static  unsigned long long aesl_llvm_cbe_1198_count = 0;
  static  unsigned long long aesl_llvm_cbe_1199_count = 0;
  static  unsigned long long aesl_llvm_cbe_1200_count = 0;
  static  unsigned long long aesl_llvm_cbe_1201_count = 0;
  static  unsigned long long aesl_llvm_cbe_1202_count = 0;
  static  unsigned long long aesl_llvm_cbe_1203_count = 0;
  static  unsigned long long aesl_llvm_cbe_1204_count = 0;
  static  unsigned long long aesl_llvm_cbe_1205_count = 0;
  static  unsigned long long aesl_llvm_cbe_1206_count = 0;
   char *llvm_cbe_tmp__433;
  static  unsigned long long aesl_llvm_cbe_1207_count = 0;
  unsigned char llvm_cbe_tmp__434;
  static  unsigned long long aesl_llvm_cbe_1208_count = 0;
   char *llvm_cbe_tmp__435;
  static  unsigned long long aesl_llvm_cbe_1209_count = 0;
  static  unsigned long long aesl_llvm_cbe_1210_count = 0;
  static  unsigned long long aesl_llvm_cbe_1211_count = 0;
  static  unsigned long long aesl_llvm_cbe_1212_count = 0;
  static  unsigned long long aesl_llvm_cbe_1213_count = 0;
  static  unsigned long long aesl_llvm_cbe_1214_count = 0;
  static  unsigned long long aesl_llvm_cbe_1215_count = 0;
  static  unsigned long long aesl_llvm_cbe_1216_count = 0;
  static  unsigned long long aesl_llvm_cbe_1217_count = 0;
  static  unsigned long long aesl_llvm_cbe_1218_count = 0;
  static  unsigned long long aesl_llvm_cbe_1219_count = 0;
  static  unsigned long long aesl_llvm_cbe_1220_count = 0;
  static  unsigned long long aesl_llvm_cbe_1221_count = 0;
  static  unsigned long long aesl_llvm_cbe_1222_count = 0;
  static  unsigned long long aesl_llvm_cbe_1223_count = 0;
  static  unsigned long long aesl_llvm_cbe_1224_count = 0;
  static  unsigned long long aesl_llvm_cbe_1225_count = 0;
  static  unsigned long long aesl_llvm_cbe_1226_count = 0;
  static  unsigned long long aesl_llvm_cbe_1227_count = 0;
  static  unsigned long long aesl_llvm_cbe_1228_count = 0;
  static  unsigned long long aesl_llvm_cbe_1229_count = 0;
  static  unsigned long long aesl_llvm_cbe_1230_count = 0;
  static  unsigned long long aesl_llvm_cbe_1231_count = 0;
  static  unsigned long long aesl_llvm_cbe_1232_count = 0;
  static  unsigned long long aesl_llvm_cbe_1233_count = 0;
  static  unsigned long long aesl_llvm_cbe_1234_count = 0;
  static  unsigned long long aesl_llvm_cbe_1235_count = 0;
  static  unsigned long long aesl_llvm_cbe_1236_count = 0;
  static  unsigned long long aesl_llvm_cbe_1237_count = 0;
  static  unsigned long long aesl_llvm_cbe_1238_count = 0;
  static  unsigned long long aesl_llvm_cbe_1239_count = 0;
  static  unsigned long long aesl_llvm_cbe_1240_count = 0;
  static  unsigned long long aesl_llvm_cbe_1241_count = 0;
  static  unsigned long long aesl_llvm_cbe_1242_count = 0;
   char *llvm_cbe_tmp__436;
  static  unsigned long long aesl_llvm_cbe_1243_count = 0;
  unsigned char llvm_cbe_tmp__437;
  static  unsigned long long aesl_llvm_cbe_1244_count = 0;
   char *llvm_cbe_tmp__438;
  static  unsigned long long aesl_llvm_cbe_1245_count = 0;
  static  unsigned long long aesl_llvm_cbe_1246_count = 0;
  static  unsigned long long aesl_llvm_cbe_1247_count = 0;
  static  unsigned long long aesl_llvm_cbe_1248_count = 0;
  static  unsigned long long aesl_llvm_cbe_1249_count = 0;
  static  unsigned long long aesl_llvm_cbe_1250_count = 0;
  static  unsigned long long aesl_llvm_cbe_1251_count = 0;
  static  unsigned long long aesl_llvm_cbe_1252_count = 0;
  static  unsigned long long aesl_llvm_cbe_1253_count = 0;
  static  unsigned long long aesl_llvm_cbe_1254_count = 0;
  static  unsigned long long aesl_llvm_cbe_1255_count = 0;
   char *llvm_cbe_tmp__439;
  static  unsigned long long aesl_llvm_cbe_1256_count = 0;
  unsigned char llvm_cbe_tmp__440;
  static  unsigned long long aesl_llvm_cbe_1257_count = 0;
   char *llvm_cbe_tmp__441;
  static  unsigned long long aesl_llvm_cbe_1258_count = 0;
  static  unsigned long long aesl_llvm_cbe_1259_count = 0;
  static  unsigned long long aesl_llvm_cbe_1260_count = 0;
  static  unsigned long long aesl_llvm_cbe_1261_count = 0;
  static  unsigned long long aesl_llvm_cbe_1262_count = 0;
  static  unsigned long long aesl_llvm_cbe_1263_count = 0;
  static  unsigned long long aesl_llvm_cbe_1264_count = 0;
  static  unsigned long long aesl_llvm_cbe_1265_count = 0;
  static  unsigned long long aesl_llvm_cbe_1266_count = 0;
  static  unsigned long long aesl_llvm_cbe_1267_count = 0;
  static  unsigned long long aesl_llvm_cbe_1268_count = 0;
   char *llvm_cbe_tmp__442;
  static  unsigned long long aesl_llvm_cbe_1269_count = 0;
  unsigned char llvm_cbe_tmp__443;
  static  unsigned long long aesl_llvm_cbe_1270_count = 0;
   char *llvm_cbe_tmp__444;
  static  unsigned long long aesl_llvm_cbe_1271_count = 0;
  static  unsigned long long aesl_llvm_cbe_1272_count = 0;
  static  unsigned long long aesl_llvm_cbe_1273_count = 0;
  static  unsigned long long aesl_llvm_cbe_1274_count = 0;
  static  unsigned long long aesl_llvm_cbe_1275_count = 0;
  static  unsigned long long aesl_llvm_cbe_1276_count = 0;
  static  unsigned long long aesl_llvm_cbe_1277_count = 0;
  static  unsigned long long aesl_llvm_cbe_1278_count = 0;
  static  unsigned long long aesl_llvm_cbe_1279_count = 0;
  static  unsigned long long aesl_llvm_cbe_1280_count = 0;
  static  unsigned long long aesl_llvm_cbe_1281_count = 0;
   char *llvm_cbe_tmp__445;
  static  unsigned long long aesl_llvm_cbe_1282_count = 0;
  unsigned char llvm_cbe_tmp__446;
  static  unsigned long long aesl_llvm_cbe_1283_count = 0;
   char *llvm_cbe_tmp__447;
  static  unsigned long long aesl_llvm_cbe_1284_count = 0;
  static  unsigned long long aesl_llvm_cbe_1285_count = 0;
  static  unsigned long long aesl_llvm_cbe_1286_count = 0;
  static  unsigned long long aesl_llvm_cbe_1287_count = 0;
  static  unsigned long long aesl_llvm_cbe_1288_count = 0;
  static  unsigned long long aesl_llvm_cbe_1289_count = 0;
  static  unsigned long long aesl_llvm_cbe_1290_count = 0;
  static  unsigned long long aesl_llvm_cbe_1291_count = 0;
  static  unsigned long long aesl_llvm_cbe_1292_count = 0;
  static  unsigned long long aesl_llvm_cbe_1293_count = 0;
  static  unsigned long long aesl_llvm_cbe_1294_count = 0;
  static  unsigned long long aesl_llvm_cbe_1295_count = 0;
  static  unsigned long long aesl_llvm_cbe_1296_count = 0;
  static  unsigned long long aesl_llvm_cbe_1297_count = 0;
  static  unsigned long long aesl_llvm_cbe_1298_count = 0;
  static  unsigned long long aesl_llvm_cbe_1299_count = 0;
  static  unsigned long long aesl_llvm_cbe_1300_count = 0;
  static  unsigned long long aesl_llvm_cbe_1301_count = 0;
  static  unsigned long long aesl_llvm_cbe_1302_count = 0;
  static  unsigned long long aesl_llvm_cbe_1303_count = 0;
  static  unsigned long long aesl_llvm_cbe_1304_count = 0;
  static  unsigned long long aesl_llvm_cbe_1305_count = 0;
  static  unsigned long long aesl_llvm_cbe_1306_count = 0;
  static  unsigned long long aesl_llvm_cbe_1307_count = 0;
  static  unsigned long long aesl_llvm_cbe_1308_count = 0;
  static  unsigned long long aesl_llvm_cbe_1309_count = 0;
  static  unsigned long long aesl_llvm_cbe_1310_count = 0;
  static  unsigned long long aesl_llvm_cbe_1311_count = 0;
  static  unsigned long long aesl_llvm_cbe_1312_count = 0;
  static  unsigned long long aesl_llvm_cbe_1313_count = 0;
  static  unsigned long long aesl_llvm_cbe_1314_count = 0;
  static  unsigned long long aesl_llvm_cbe_1315_count = 0;
  static  unsigned long long aesl_llvm_cbe_1316_count = 0;
  static  unsigned long long aesl_llvm_cbe_1317_count = 0;
   char *llvm_cbe_tmp__448;
  static  unsigned long long aesl_llvm_cbe_1318_count = 0;
  unsigned char llvm_cbe_tmp__449;
  static  unsigned long long aesl_llvm_cbe_1319_count = 0;
   char *llvm_cbe_tmp__450;
  static  unsigned long long aesl_llvm_cbe_1320_count = 0;
  static  unsigned long long aesl_llvm_cbe_1321_count = 0;
  static  unsigned long long aesl_llvm_cbe_1322_count = 0;
  static  unsigned long long aesl_llvm_cbe_1323_count = 0;
  static  unsigned long long aesl_llvm_cbe_1324_count = 0;
  static  unsigned long long aesl_llvm_cbe_1325_count = 0;
  static  unsigned long long aesl_llvm_cbe_1326_count = 0;
  static  unsigned long long aesl_llvm_cbe_1327_count = 0;
  static  unsigned long long aesl_llvm_cbe_1328_count = 0;
  static  unsigned long long aesl_llvm_cbe_1329_count = 0;
  static  unsigned long long aesl_llvm_cbe_1330_count = 0;
   char *llvm_cbe_tmp__451;
  static  unsigned long long aesl_llvm_cbe_1331_count = 0;
  unsigned char llvm_cbe_tmp__452;
  static  unsigned long long aesl_llvm_cbe_1332_count = 0;
   char *llvm_cbe_tmp__453;
  static  unsigned long long aesl_llvm_cbe_1333_count = 0;
  static  unsigned long long aesl_llvm_cbe_1334_count = 0;
  static  unsigned long long aesl_llvm_cbe_1335_count = 0;
  static  unsigned long long aesl_llvm_cbe_1336_count = 0;
  static  unsigned long long aesl_llvm_cbe_1337_count = 0;
  static  unsigned long long aesl_llvm_cbe_1338_count = 0;
  static  unsigned long long aesl_llvm_cbe_1339_count = 0;
  static  unsigned long long aesl_llvm_cbe_1340_count = 0;
  static  unsigned long long aesl_llvm_cbe_1341_count = 0;
  static  unsigned long long aesl_llvm_cbe_1342_count = 0;
  static  unsigned long long aesl_llvm_cbe_1343_count = 0;
   char *llvm_cbe_tmp__454;
  static  unsigned long long aesl_llvm_cbe_1344_count = 0;
  unsigned char llvm_cbe_tmp__455;
  static  unsigned long long aesl_llvm_cbe_1345_count = 0;
   char *llvm_cbe_tmp__456;
  static  unsigned long long aesl_llvm_cbe_1346_count = 0;
  static  unsigned long long aesl_llvm_cbe_1347_count = 0;
  static  unsigned long long aesl_llvm_cbe_1348_count = 0;
  static  unsigned long long aesl_llvm_cbe_1349_count = 0;
  static  unsigned long long aesl_llvm_cbe_1350_count = 0;
  static  unsigned long long aesl_llvm_cbe_1351_count = 0;
  static  unsigned long long aesl_llvm_cbe_1352_count = 0;
  static  unsigned long long aesl_llvm_cbe_1353_count = 0;
  static  unsigned long long aesl_llvm_cbe_1354_count = 0;
  static  unsigned long long aesl_llvm_cbe_1355_count = 0;
  static  unsigned long long aesl_llvm_cbe_1356_count = 0;
   char *llvm_cbe_tmp__457;
  static  unsigned long long aesl_llvm_cbe_1357_count = 0;
  unsigned char llvm_cbe_tmp__458;
  static  unsigned long long aesl_llvm_cbe_1358_count = 0;
   char *llvm_cbe_tmp__459;
  static  unsigned long long aesl_llvm_cbe_1359_count = 0;
  static  unsigned long long aesl_llvm_cbe_1360_count = 0;
  static  unsigned long long aesl_llvm_cbe_1361_count = 0;
  static  unsigned long long aesl_llvm_cbe_1362_count = 0;
  static  unsigned long long aesl_llvm_cbe_1363_count = 0;
  static  unsigned long long aesl_llvm_cbe_1364_count = 0;
  static  unsigned long long aesl_llvm_cbe_1365_count = 0;
  static  unsigned long long aesl_llvm_cbe_1366_count = 0;
  static  unsigned long long aesl_llvm_cbe_1367_count = 0;
  static  unsigned long long aesl_llvm_cbe_1368_count = 0;
  static  unsigned long long aesl_llvm_cbe_1369_count = 0;
  static  unsigned long long aesl_llvm_cbe_1370_count = 0;
  static  unsigned long long aesl_llvm_cbe_1371_count = 0;
  static  unsigned long long aesl_llvm_cbe_1372_count = 0;
  static  unsigned long long aesl_llvm_cbe_1373_count = 0;
  static  unsigned long long aesl_llvm_cbe_1374_count = 0;
  static  unsigned long long aesl_llvm_cbe_1375_count = 0;
  static  unsigned long long aesl_llvm_cbe_1376_count = 0;
  static  unsigned long long aesl_llvm_cbe_1377_count = 0;
  static  unsigned long long aesl_llvm_cbe_1378_count = 0;
  static  unsigned long long aesl_llvm_cbe_1379_count = 0;
  static  unsigned long long aesl_llvm_cbe_1380_count = 0;
  static  unsigned long long aesl_llvm_cbe_1381_count = 0;
  static  unsigned long long aesl_llvm_cbe_1382_count = 0;
  static  unsigned long long aesl_llvm_cbe_1383_count = 0;
  static  unsigned long long aesl_llvm_cbe_1384_count = 0;
  static  unsigned long long aesl_llvm_cbe_1385_count = 0;
  static  unsigned long long aesl_llvm_cbe_1386_count = 0;
  static  unsigned long long aesl_llvm_cbe_1387_count = 0;
  static  unsigned long long aesl_llvm_cbe_1388_count = 0;
  static  unsigned long long aesl_llvm_cbe_1389_count = 0;
  static  unsigned long long aesl_llvm_cbe_1390_count = 0;
  static  unsigned long long aesl_llvm_cbe_1391_count = 0;
  static  unsigned long long aesl_llvm_cbe_1392_count = 0;
   char *llvm_cbe_tmp__460;
  static  unsigned long long aesl_llvm_cbe_1393_count = 0;
  unsigned char llvm_cbe_tmp__461;
  static  unsigned long long aesl_llvm_cbe_1394_count = 0;
   char *llvm_cbe_tmp__462;
  static  unsigned long long aesl_llvm_cbe_1395_count = 0;
  static  unsigned long long aesl_llvm_cbe_1396_count = 0;
  static  unsigned long long aesl_llvm_cbe_1397_count = 0;
  static  unsigned long long aesl_llvm_cbe_1398_count = 0;
  static  unsigned long long aesl_llvm_cbe_1399_count = 0;
  static  unsigned long long aesl_llvm_cbe_1400_count = 0;
  static  unsigned long long aesl_llvm_cbe_1401_count = 0;
  static  unsigned long long aesl_llvm_cbe_1402_count = 0;
  static  unsigned long long aesl_llvm_cbe_1403_count = 0;
  static  unsigned long long aesl_llvm_cbe_1404_count = 0;
  static  unsigned long long aesl_llvm_cbe_1405_count = 0;
   char *llvm_cbe_tmp__463;
  static  unsigned long long aesl_llvm_cbe_1406_count = 0;
  unsigned char llvm_cbe_tmp__464;
  static  unsigned long long aesl_llvm_cbe_1407_count = 0;
   char *llvm_cbe_tmp__465;
  static  unsigned long long aesl_llvm_cbe_1408_count = 0;
  static  unsigned long long aesl_llvm_cbe_1409_count = 0;
  static  unsigned long long aesl_llvm_cbe_1410_count = 0;
  static  unsigned long long aesl_llvm_cbe_1411_count = 0;
  static  unsigned long long aesl_llvm_cbe_1412_count = 0;
  static  unsigned long long aesl_llvm_cbe_1413_count = 0;
  static  unsigned long long aesl_llvm_cbe_1414_count = 0;
  static  unsigned long long aesl_llvm_cbe_1415_count = 0;
  static  unsigned long long aesl_llvm_cbe_1416_count = 0;
  static  unsigned long long aesl_llvm_cbe_1417_count = 0;
  static  unsigned long long aesl_llvm_cbe_1418_count = 0;
   char *llvm_cbe_tmp__466;
  static  unsigned long long aesl_llvm_cbe_1419_count = 0;
  unsigned char llvm_cbe_tmp__467;
  static  unsigned long long aesl_llvm_cbe_1420_count = 0;
   char *llvm_cbe_tmp__468;
  static  unsigned long long aesl_llvm_cbe_1421_count = 0;
  static  unsigned long long aesl_llvm_cbe_1422_count = 0;
  static  unsigned long long aesl_llvm_cbe_1423_count = 0;
  static  unsigned long long aesl_llvm_cbe_1424_count = 0;
  static  unsigned long long aesl_llvm_cbe_1425_count = 0;
  static  unsigned long long aesl_llvm_cbe_1426_count = 0;
  static  unsigned long long aesl_llvm_cbe_1427_count = 0;
  static  unsigned long long aesl_llvm_cbe_1428_count = 0;
  static  unsigned long long aesl_llvm_cbe_1429_count = 0;
  static  unsigned long long aesl_llvm_cbe_1430_count = 0;
  static  unsigned long long aesl_llvm_cbe_1431_count = 0;
   char *llvm_cbe_tmp__469;
  static  unsigned long long aesl_llvm_cbe_1432_count = 0;
  unsigned char llvm_cbe_tmp__470;
  static  unsigned long long aesl_llvm_cbe_1433_count = 0;
   char *llvm_cbe_tmp__471;
  static  unsigned long long aesl_llvm_cbe_1434_count = 0;
  static  unsigned long long aesl_llvm_cbe_1435_count = 0;
  static  unsigned long long aesl_llvm_cbe_1436_count = 0;
  static  unsigned long long aesl_llvm_cbe_1437_count = 0;
  static  unsigned long long aesl_llvm_cbe_1438_count = 0;
  static  unsigned long long aesl_llvm_cbe_1439_count = 0;
  static  unsigned long long aesl_llvm_cbe_1440_count = 0;
  static  unsigned long long aesl_llvm_cbe_1441_count = 0;
  static  unsigned long long aesl_llvm_cbe_1442_count = 0;
  static  unsigned long long aesl_llvm_cbe_1443_count = 0;
  static  unsigned long long aesl_llvm_cbe_1444_count = 0;
  static  unsigned long long aesl_llvm_cbe_1445_count = 0;
  static  unsigned long long aesl_llvm_cbe_1446_count = 0;
  static  unsigned long long aesl_llvm_cbe_1447_count = 0;
  static  unsigned long long aesl_llvm_cbe_1448_count = 0;
  static  unsigned long long aesl_llvm_cbe_1449_count = 0;
  static  unsigned long long aesl_llvm_cbe_1450_count = 0;
  static  unsigned long long aesl_llvm_cbe_1451_count = 0;
  static  unsigned long long aesl_llvm_cbe_1452_count = 0;
  static  unsigned long long aesl_llvm_cbe_1453_count = 0;
  static  unsigned long long aesl_llvm_cbe_1454_count = 0;
  static  unsigned long long aesl_llvm_cbe_1455_count = 0;
  static  unsigned long long aesl_llvm_cbe_1456_count = 0;
  static  unsigned long long aesl_llvm_cbe_1457_count = 0;
  static  unsigned long long aesl_llvm_cbe_1458_count = 0;
  static  unsigned long long aesl_llvm_cbe_1459_count = 0;
   char (*llvm_cbe_tmp__472)[4];
  static  unsigned long long aesl_llvm_cbe_1460_count = 0;
  static  unsigned long long aesl_llvm_cbe_1461_count = 0;
  static  unsigned long long aesl_llvm_cbe_1462_count = 0;
  static  unsigned long long aesl_llvm_cbe_1463_count = 0;
  static  unsigned long long aesl_llvm_cbe_1464_count = 0;
  static  unsigned long long aesl_llvm_cbe_1465_count = 0;
  static  unsigned long long aesl_llvm_cbe_1466_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge28_count = 0;
  unsigned int llvm_cbe_storemerge28;
  unsigned int llvm_cbe_storemerge28__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1467_count = 0;
  static  unsigned long long aesl_llvm_cbe_1468_count = 0;
  static  unsigned long long aesl_llvm_cbe_1469_count = 0;
  static  unsigned long long aesl_llvm_cbe_1470_count = 0;
  static  unsigned long long aesl_llvm_cbe_1471_count = 0;
  unsigned int llvm_cbe_tmp__473;
  static  unsigned long long aesl_llvm_cbe_1472_count = 0;
  static  unsigned long long aesl_llvm_cbe_1473_count = 0;
  static  unsigned long long aesl_llvm_cbe_1474_count = 0;
  static  unsigned long long aesl_llvm_cbe_1475_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_1476_count = 0;
  static  unsigned long long aesl_llvm_cbe_1477_count = 0;
  static  unsigned long long aesl_llvm_cbe_1478_count = 0;
  static  unsigned long long aesl_llvm_cbe_1479_count = 0;
  static  unsigned long long aesl_llvm_cbe_1480_count = 0;
  static  unsigned long long aesl_llvm_cbe_1481_count = 0;
  static  unsigned long long aesl_llvm_cbe_1482_count = 0;
  static  unsigned long long aesl_llvm_cbe_1483_count = 0;
  static  unsigned long long aesl_llvm_cbe_1484_count = 0;
  static  unsigned long long aesl_llvm_cbe_1485_count = 0;
  static  unsigned long long aesl_llvm_cbe_1486_count = 0;
  static  unsigned long long aesl_llvm_cbe_1487_count = 0;
  static  unsigned long long aesl_llvm_cbe_1488_count = 0;
  static  unsigned long long aesl_llvm_cbe_1489_count = 0;
  static  unsigned long long aesl_llvm_cbe_1490_count = 0;
  static  unsigned long long aesl_llvm_cbe_1491_count = 0;
  static  unsigned long long aesl_llvm_cbe_1492_count = 0;
  static  unsigned long long aesl_llvm_cbe_1493_count = 0;
  static  unsigned long long aesl_llvm_cbe_1494_count = 0;
  static  unsigned long long aesl_llvm_cbe_1495_count = 0;
  static  unsigned long long aesl_llvm_cbe_1496_count = 0;
  static  unsigned long long aesl_llvm_cbe_1497_count = 0;
  static  unsigned long long aesl_llvm_cbe_1498_count = 0;
  static  unsigned long long aesl_llvm_cbe_1499_count = 0;
  static  unsigned long long aesl_llvm_cbe_1500_count = 0;
  static  unsigned long long aesl_llvm_cbe_1501_count = 0;
  static  unsigned long long aesl_llvm_cbe_1502_count = 0;
  static  unsigned long long aesl_llvm_cbe_1503_count = 0;
  unsigned char llvm_cbe_tmp__474;
  static  unsigned long long aesl_llvm_cbe_1504_count = 0;
  static  unsigned long long aesl_llvm_cbe_1505_count = 0;
  static  unsigned long long aesl_llvm_cbe_1506_count = 0;
  static  unsigned long long aesl_llvm_cbe_1507_count = 0;
  static  unsigned long long aesl_llvm_cbe_1508_count = 0;
  static  unsigned long long aesl_llvm_cbe_1509_count = 0;
  static  unsigned long long aesl_llvm_cbe_1510_count = 0;
  static  unsigned long long aesl_llvm_cbe_1511_count = 0;
  static  unsigned long long aesl_llvm_cbe_1512_count = 0;
  static  unsigned long long aesl_llvm_cbe_1513_count = 0;
  static  unsigned long long aesl_llvm_cbe_1514_count = 0;
  unsigned char llvm_cbe_tmp__475;
  static  unsigned long long aesl_llvm_cbe_1515_count = 0;
   char *llvm_cbe_tmp__476;
  static  unsigned long long aesl_llvm_cbe_1516_count = 0;
  static  unsigned long long aesl_llvm_cbe_1517_count = 0;
  static  unsigned long long aesl_llvm_cbe_1518_count = 0;
  static  unsigned long long aesl_llvm_cbe_1519_count = 0;
  static  unsigned long long aesl_llvm_cbe_1520_count = 0;
  static  unsigned long long aesl_llvm_cbe_1521_count = 0;
  static  unsigned long long aesl_llvm_cbe_1522_count = 0;
  static  unsigned long long aesl_llvm_cbe_1523_count = 0;
  static  unsigned long long aesl_llvm_cbe_1524_count = 0;
  static  unsigned long long aesl_llvm_cbe_1525_count = 0;
  static  unsigned long long aesl_llvm_cbe_1526_count = 0;
  unsigned char llvm_cbe_tmp__477;
  static  unsigned long long aesl_llvm_cbe_1527_count = 0;
   char *llvm_cbe_tmp__478;
  static  unsigned long long aesl_llvm_cbe_1528_count = 0;
  static  unsigned long long aesl_llvm_cbe_1529_count = 0;
  static  unsigned long long aesl_llvm_cbe_1530_count = 0;
  static  unsigned long long aesl_llvm_cbe_1531_count = 0;
  static  unsigned long long aesl_llvm_cbe_1532_count = 0;
  static  unsigned long long aesl_llvm_cbe_1533_count = 0;
  static  unsigned long long aesl_llvm_cbe_1534_count = 0;
  static  unsigned long long aesl_llvm_cbe_1535_count = 0;
  static  unsigned long long aesl_llvm_cbe_1536_count = 0;
  static  unsigned long long aesl_llvm_cbe_1537_count = 0;
  static  unsigned long long aesl_llvm_cbe_1538_count = 0;
  unsigned char llvm_cbe_tmp__479;
  static  unsigned long long aesl_llvm_cbe_1539_count = 0;
   char *llvm_cbe_tmp__480;
  static  unsigned long long aesl_llvm_cbe_1540_count = 0;
  static  unsigned long long aesl_llvm_cbe_1541_count = 0;
  static  unsigned long long aesl_llvm_cbe_1542_count = 0;
  static  unsigned long long aesl_llvm_cbe_1543_count = 0;
  static  unsigned long long aesl_llvm_cbe_1544_count = 0;
  static  unsigned long long aesl_llvm_cbe_1545_count = 0;
  static  unsigned long long aesl_llvm_cbe_1546_count = 0;
  static  unsigned long long aesl_llvm_cbe_1547_count = 0;
  static  unsigned long long aesl_llvm_cbe_1548_count = 0;
  static  unsigned long long aesl_llvm_cbe_1549_count = 0;
  static  unsigned long long aesl_llvm_cbe_1550_count = 0;
  static  unsigned long long aesl_llvm_cbe_1551_count = 0;
  static  unsigned long long aesl_llvm_cbe_1552_count = 0;
  static  unsigned long long aesl_llvm_cbe_1553_count = 0;
  static  unsigned long long aesl_llvm_cbe_1554_count = 0;
  static  unsigned long long aesl_llvm_cbe_1555_count = 0;
  static  unsigned long long aesl_llvm_cbe_1556_count = 0;
  static  unsigned long long aesl_llvm_cbe_1557_count = 0;
  static  unsigned long long aesl_llvm_cbe_1558_count = 0;
  static  unsigned long long aesl_llvm_cbe_1559_count = 0;
  static  unsigned long long aesl_llvm_cbe_1560_count = 0;
  static  unsigned long long aesl_llvm_cbe_1561_count = 0;
  static  unsigned long long aesl_llvm_cbe_1562_count = 0;
  static  unsigned long long aesl_llvm_cbe_1563_count = 0;
  static  unsigned long long aesl_llvm_cbe_1564_count = 0;
  static  unsigned long long aesl_llvm_cbe_1565_count = 0;
  static  unsigned long long aesl_llvm_cbe_1566_count = 0;
  static  unsigned long long aesl_llvm_cbe_1567_count = 0;
  static  unsigned long long aesl_llvm_cbe_1568_count = 0;
  static  unsigned long long aesl_llvm_cbe_1569_count = 0;
  static  unsigned long long aesl_llvm_cbe_1570_count = 0;
  static  unsigned long long aesl_llvm_cbe_1571_count = 0;
  static  unsigned long long aesl_llvm_cbe_1572_count = 0;
  static  unsigned long long aesl_llvm_cbe_1573_count = 0;
  unsigned char llvm_cbe_tmp__481;
  static  unsigned long long aesl_llvm_cbe_1574_count = 0;
   char *llvm_cbe_tmp__482;
  static  unsigned long long aesl_llvm_cbe_1575_count = 0;
  static  unsigned long long aesl_llvm_cbe_1576_count = 0;
  static  unsigned long long aesl_llvm_cbe_1577_count = 0;
  static  unsigned long long aesl_llvm_cbe_1578_count = 0;
  static  unsigned long long aesl_llvm_cbe_1579_count = 0;
  static  unsigned long long aesl_llvm_cbe_1580_count = 0;
  static  unsigned long long aesl_llvm_cbe_1581_count = 0;
  static  unsigned long long aesl_llvm_cbe_1582_count = 0;
  static  unsigned long long aesl_llvm_cbe_1583_count = 0;
  static  unsigned long long aesl_llvm_cbe_1584_count = 0;
  static  unsigned long long aesl_llvm_cbe_1585_count = 0;
  unsigned char llvm_cbe_tmp__483;
  static  unsigned long long aesl_llvm_cbe_1586_count = 0;
   char *llvm_cbe_tmp__484;
  static  unsigned long long aesl_llvm_cbe_1587_count = 0;
  static  unsigned long long aesl_llvm_cbe_1588_count = 0;
  static  unsigned long long aesl_llvm_cbe_1589_count = 0;
  static  unsigned long long aesl_llvm_cbe_1590_count = 0;
  static  unsigned long long aesl_llvm_cbe_1591_count = 0;
  static  unsigned long long aesl_llvm_cbe_1592_count = 0;
  static  unsigned long long aesl_llvm_cbe_1593_count = 0;
  static  unsigned long long aesl_llvm_cbe_1594_count = 0;
  static  unsigned long long aesl_llvm_cbe_1595_count = 0;
  static  unsigned long long aesl_llvm_cbe_1596_count = 0;
  static  unsigned long long aesl_llvm_cbe_1597_count = 0;
  unsigned char llvm_cbe_tmp__485;
  static  unsigned long long aesl_llvm_cbe_1598_count = 0;
   char *llvm_cbe_tmp__486;
  static  unsigned long long aesl_llvm_cbe_1599_count = 0;
  static  unsigned long long aesl_llvm_cbe_1600_count = 0;
  static  unsigned long long aesl_llvm_cbe_1601_count = 0;
  static  unsigned long long aesl_llvm_cbe_1602_count = 0;
  static  unsigned long long aesl_llvm_cbe_1603_count = 0;
  static  unsigned long long aesl_llvm_cbe_1604_count = 0;
  static  unsigned long long aesl_llvm_cbe_1605_count = 0;
  static  unsigned long long aesl_llvm_cbe_1606_count = 0;
  static  unsigned long long aesl_llvm_cbe_1607_count = 0;
  static  unsigned long long aesl_llvm_cbe_1608_count = 0;
  static  unsigned long long aesl_llvm_cbe_1609_count = 0;
  unsigned char llvm_cbe_tmp__487;
  static  unsigned long long aesl_llvm_cbe_1610_count = 0;
   char *llvm_cbe_tmp__488;
  static  unsigned long long aesl_llvm_cbe_1611_count = 0;
  static  unsigned long long aesl_llvm_cbe_1612_count = 0;
  static  unsigned long long aesl_llvm_cbe_1613_count = 0;
  static  unsigned long long aesl_llvm_cbe_1614_count = 0;
  static  unsigned long long aesl_llvm_cbe_1615_count = 0;
  static  unsigned long long aesl_llvm_cbe_1616_count = 0;
  static  unsigned long long aesl_llvm_cbe_1617_count = 0;
  static  unsigned long long aesl_llvm_cbe_1618_count = 0;
  static  unsigned long long aesl_llvm_cbe_1619_count = 0;
  static  unsigned long long aesl_llvm_cbe_1620_count = 0;
  static  unsigned long long aesl_llvm_cbe_1621_count = 0;
  static  unsigned long long aesl_llvm_cbe_1622_count = 0;
  static  unsigned long long aesl_llvm_cbe_1623_count = 0;
  static  unsigned long long aesl_llvm_cbe_1624_count = 0;
  static  unsigned long long aesl_llvm_cbe_1625_count = 0;
  static  unsigned long long aesl_llvm_cbe_1626_count = 0;
  static  unsigned long long aesl_llvm_cbe_1627_count = 0;
  static  unsigned long long aesl_llvm_cbe_1628_count = 0;
  static  unsigned long long aesl_llvm_cbe_1629_count = 0;
  static  unsigned long long aesl_llvm_cbe_1630_count = 0;
  static  unsigned long long aesl_llvm_cbe_1631_count = 0;
  static  unsigned long long aesl_llvm_cbe_1632_count = 0;
  static  unsigned long long aesl_llvm_cbe_1633_count = 0;
  static  unsigned long long aesl_llvm_cbe_1634_count = 0;
  static  unsigned long long aesl_llvm_cbe_1635_count = 0;
  static  unsigned long long aesl_llvm_cbe_1636_count = 0;
  static  unsigned long long aesl_llvm_cbe_1637_count = 0;
  static  unsigned long long aesl_llvm_cbe_1638_count = 0;
  static  unsigned long long aesl_llvm_cbe_1639_count = 0;
  static  unsigned long long aesl_llvm_cbe_1640_count = 0;
  static  unsigned long long aesl_llvm_cbe_1641_count = 0;
  static  unsigned long long aesl_llvm_cbe_1642_count = 0;
  static  unsigned long long aesl_llvm_cbe_1643_count = 0;
  static  unsigned long long aesl_llvm_cbe_1644_count = 0;
  unsigned char llvm_cbe_tmp__489;
  static  unsigned long long aesl_llvm_cbe_1645_count = 0;
   char *llvm_cbe_tmp__490;
  static  unsigned long long aesl_llvm_cbe_1646_count = 0;
  static  unsigned long long aesl_llvm_cbe_1647_count = 0;
  static  unsigned long long aesl_llvm_cbe_1648_count = 0;
  static  unsigned long long aesl_llvm_cbe_1649_count = 0;
  static  unsigned long long aesl_llvm_cbe_1650_count = 0;
  static  unsigned long long aesl_llvm_cbe_1651_count = 0;
  static  unsigned long long aesl_llvm_cbe_1652_count = 0;
  static  unsigned long long aesl_llvm_cbe_1653_count = 0;
  static  unsigned long long aesl_llvm_cbe_1654_count = 0;
  static  unsigned long long aesl_llvm_cbe_1655_count = 0;
  static  unsigned long long aesl_llvm_cbe_1656_count = 0;
  unsigned char llvm_cbe_tmp__491;
  static  unsigned long long aesl_llvm_cbe_1657_count = 0;
   char *llvm_cbe_tmp__492;
  static  unsigned long long aesl_llvm_cbe_1658_count = 0;
  static  unsigned long long aesl_llvm_cbe_1659_count = 0;
  static  unsigned long long aesl_llvm_cbe_1660_count = 0;
  static  unsigned long long aesl_llvm_cbe_1661_count = 0;
  static  unsigned long long aesl_llvm_cbe_1662_count = 0;
  static  unsigned long long aesl_llvm_cbe_1663_count = 0;
  static  unsigned long long aesl_llvm_cbe_1664_count = 0;
  static  unsigned long long aesl_llvm_cbe_1665_count = 0;
  static  unsigned long long aesl_llvm_cbe_1666_count = 0;
  static  unsigned long long aesl_llvm_cbe_1667_count = 0;
  static  unsigned long long aesl_llvm_cbe_1668_count = 0;
  unsigned char llvm_cbe_tmp__493;
  static  unsigned long long aesl_llvm_cbe_1669_count = 0;
   char *llvm_cbe_tmp__494;
  static  unsigned long long aesl_llvm_cbe_1670_count = 0;
  static  unsigned long long aesl_llvm_cbe_1671_count = 0;
  static  unsigned long long aesl_llvm_cbe_1672_count = 0;
  static  unsigned long long aesl_llvm_cbe_1673_count = 0;
  static  unsigned long long aesl_llvm_cbe_1674_count = 0;
  static  unsigned long long aesl_llvm_cbe_1675_count = 0;
  static  unsigned long long aesl_llvm_cbe_1676_count = 0;
  static  unsigned long long aesl_llvm_cbe_1677_count = 0;
  static  unsigned long long aesl_llvm_cbe_1678_count = 0;
  static  unsigned long long aesl_llvm_cbe_1679_count = 0;
  static  unsigned long long aesl_llvm_cbe_1680_count = 0;
  unsigned char llvm_cbe_tmp__495;
  static  unsigned long long aesl_llvm_cbe_1681_count = 0;
   char *llvm_cbe_tmp__496;
  static  unsigned long long aesl_llvm_cbe_1682_count = 0;
  static  unsigned long long aesl_llvm_cbe_1683_count = 0;
  static  unsigned long long aesl_llvm_cbe_1684_count = 0;
  static  unsigned long long aesl_llvm_cbe_1685_count = 0;
  static  unsigned long long aesl_llvm_cbe_1686_count = 0;
  static  unsigned long long aesl_llvm_cbe_1687_count = 0;
  static  unsigned long long aesl_llvm_cbe_1688_count = 0;
  static  unsigned long long aesl_llvm_cbe_1689_count = 0;
  static  unsigned long long aesl_llvm_cbe_1690_count = 0;
  static  unsigned long long aesl_llvm_cbe_1691_count = 0;
  static  unsigned long long aesl_llvm_cbe_1692_count = 0;
  static  unsigned long long aesl_llvm_cbe_1693_count = 0;
  static  unsigned long long aesl_llvm_cbe_1694_count = 0;
  static  unsigned long long aesl_llvm_cbe_1695_count = 0;
  static  unsigned long long aesl_llvm_cbe_1696_count = 0;
  static  unsigned long long aesl_llvm_cbe_1697_count = 0;
  static  unsigned long long aesl_llvm_cbe_1698_count = 0;
  static  unsigned long long aesl_llvm_cbe_1699_count = 0;
  static  unsigned long long aesl_llvm_cbe_1700_count = 0;
  static  unsigned long long aesl_llvm_cbe_1701_count = 0;
  static  unsigned long long aesl_llvm_cbe_1702_count = 0;
  static  unsigned long long aesl_llvm_cbe_1703_count = 0;
  static  unsigned long long aesl_llvm_cbe_1704_count = 0;
  static  unsigned long long aesl_llvm_cbe_1705_count = 0;
  static  unsigned long long aesl_llvm_cbe_1706_count = 0;
  static  unsigned long long aesl_llvm_cbe_1707_count = 0;
  static  unsigned long long aesl_llvm_cbe_1708_count = 0;
  static  unsigned long long aesl_llvm_cbe_1709_count = 0;
  static  unsigned long long aesl_llvm_cbe_1710_count = 0;
  static  unsigned long long aesl_llvm_cbe_1711_count = 0;
  static  unsigned long long aesl_llvm_cbe_1712_count = 0;
  static  unsigned long long aesl_llvm_cbe_1713_count = 0;
  static  unsigned long long aesl_llvm_cbe_1714_count = 0;
  static  unsigned long long aesl_llvm_cbe_1715_count = 0;
  unsigned char llvm_cbe_tmp__497;
  static  unsigned long long aesl_llvm_cbe_1716_count = 0;
   char *llvm_cbe_tmp__498;
  static  unsigned long long aesl_llvm_cbe_1717_count = 0;
  static  unsigned long long aesl_llvm_cbe_1718_count = 0;
  static  unsigned long long aesl_llvm_cbe_1719_count = 0;
  static  unsigned long long aesl_llvm_cbe_1720_count = 0;
  static  unsigned long long aesl_llvm_cbe_1721_count = 0;
  static  unsigned long long aesl_llvm_cbe_1722_count = 0;
  static  unsigned long long aesl_llvm_cbe_1723_count = 0;
  static  unsigned long long aesl_llvm_cbe_1724_count = 0;
  static  unsigned long long aesl_llvm_cbe_1725_count = 0;
  static  unsigned long long aesl_llvm_cbe_1726_count = 0;
  static  unsigned long long aesl_llvm_cbe_1727_count = 0;
  unsigned char llvm_cbe_tmp__499;
  static  unsigned long long aesl_llvm_cbe_1728_count = 0;
   char *llvm_cbe_tmp__500;
  static  unsigned long long aesl_llvm_cbe_1729_count = 0;
  static  unsigned long long aesl_llvm_cbe_1730_count = 0;
  static  unsigned long long aesl_llvm_cbe_1731_count = 0;
  static  unsigned long long aesl_llvm_cbe_1732_count = 0;
  static  unsigned long long aesl_llvm_cbe_1733_count = 0;
  static  unsigned long long aesl_llvm_cbe_1734_count = 0;
  static  unsigned long long aesl_llvm_cbe_1735_count = 0;
  static  unsigned long long aesl_llvm_cbe_1736_count = 0;
  static  unsigned long long aesl_llvm_cbe_1737_count = 0;
  static  unsigned long long aesl_llvm_cbe_1738_count = 0;
  static  unsigned long long aesl_llvm_cbe_1739_count = 0;
  unsigned char llvm_cbe_tmp__501;
  static  unsigned long long aesl_llvm_cbe_1740_count = 0;
   char *llvm_cbe_tmp__502;
  static  unsigned long long aesl_llvm_cbe_1741_count = 0;
  static  unsigned long long aesl_llvm_cbe_1742_count = 0;
  static  unsigned long long aesl_llvm_cbe_1743_count = 0;
  static  unsigned long long aesl_llvm_cbe_1744_count = 0;
  static  unsigned long long aesl_llvm_cbe_1745_count = 0;
  static  unsigned long long aesl_llvm_cbe_1746_count = 0;
  static  unsigned long long aesl_llvm_cbe_1747_count = 0;
  static  unsigned long long aesl_llvm_cbe_1748_count = 0;
  static  unsigned long long aesl_llvm_cbe_1749_count = 0;
  static  unsigned long long aesl_llvm_cbe_1750_count = 0;
  static  unsigned long long aesl_llvm_cbe_1751_count = 0;
  unsigned char llvm_cbe_tmp__503;
  static  unsigned long long aesl_llvm_cbe_1752_count = 0;
   char *llvm_cbe_tmp__504;
  static  unsigned long long aesl_llvm_cbe_1753_count = 0;
  static  unsigned long long aesl_llvm_cbe_1754_count = 0;
  static  unsigned long long aesl_llvm_cbe_1755_count = 0;
  static  unsigned long long aesl_llvm_cbe_1756_count = 0;
  static  unsigned long long aesl_llvm_cbe_1757_count = 0;
  static  unsigned long long aesl_llvm_cbe_1758_count = 0;
  static  unsigned long long aesl_llvm_cbe_1759_count = 0;
  static  unsigned long long aesl_llvm_cbe_1760_count = 0;
  static  unsigned long long aesl_llvm_cbe_1761_count = 0;
  static  unsigned long long aesl_llvm_cbe_1762_count = 0;
  static  unsigned long long aesl_llvm_cbe_1763_count = 0;
  static  unsigned long long aesl_llvm_cbe_1764_count = 0;
  static  unsigned long long aesl_llvm_cbe_1765_count = 0;
  static  unsigned long long aesl_llvm_cbe_1766_count = 0;
  static  unsigned long long aesl_llvm_cbe_1767_count = 0;
  static  unsigned long long aesl_llvm_cbe_1768_count = 0;
  static  unsigned long long aesl_llvm_cbe_1769_count = 0;
  static  unsigned long long aesl_llvm_cbe_1770_count = 0;
  static  unsigned long long aesl_llvm_cbe_1771_count = 0;
  static  unsigned long long aesl_llvm_cbe_1772_count = 0;
  static  unsigned long long aesl_llvm_cbe_1773_count = 0;
  static  unsigned long long aesl_llvm_cbe_1774_count = 0;
  static  unsigned long long aesl_llvm_cbe_1775_count = 0;
  static  unsigned long long aesl_llvm_cbe_1776_count = 0;
  static  unsigned long long aesl_llvm_cbe_1777_count = 0;
  static  unsigned long long aesl_llvm_cbe_1778_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @Cipher\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [255 x i32]* %%Rcon to i8*, !dbg !8 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1083_count);
  llvm_cbe_tmp__410 = ( char *)(( char *)(&llvm_cbe_Rcon));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memcpy(i8* %%1, i8* bitcast ([255 x i32]* @aesl_internal_Cipher.Rcon to i8*), i32 1020 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1084_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__410, ( char *)(( char *)(&aesl_internal_Cipher_OC_Rcon)), 1020u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1020u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__411);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = shl nsw i32 %%Nk, 2, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1110_count);
  llvm_cbe_tmp__412 = (unsigned int )llvm_cbe_Nk << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__412);
  if ((((signed int )llvm_cbe_tmp__412) > ((signed int )0u))) {
    goto llvm_cbe__2e_lr_2e_ph14;
  } else {
    goto llvm_cbe__2e_preheader9;
  }

llvm_cbe__2e_lr_2e_ph14:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = shl i32 %%Nk, 2, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1113_count);
  llvm_cbe_tmp__413 = (unsigned int )llvm_cbe_Nk << 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__413);
  llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__505;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__505:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ 0, %%.lr.ph14 ], [ %%13, %%6  for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__420);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [16 x i8]* @aesl_internal_Cipher.temp, i32 0, i32 %%storemerge12, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1115_count);
  llvm_cbe_tmp__414 = ( char *)(&aesl_internal_Cipher_OC_temp[(((signed int )llvm_cbe_storemerge12))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",((signed int )llvm_cbe_storemerge12));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge12) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_Cipher.temp' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%7, align 1, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1116_count);
  llvm_cbe_tmp__415 = (unsigned char )*llvm_cbe_tmp__414;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__415);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [32 x i8]* %%Key, i32 0, i32 %%storemerge12, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1117_count);
  llvm_cbe_tmp__416 = ( char *)(&llvm_cbe_Key[(((signed int )llvm_cbe_storemerge12))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",((signed int )llvm_cbe_storemerge12));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge12) < 32 && "Write access out of array 'Key' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%8, i8* %%9, align 1, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1118_count);
  *llvm_cbe_tmp__416 = llvm_cbe_tmp__415;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__415);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [16 x i8]* @aesl_internal_Cipher.temp2, i32 0, i32 %%storemerge12, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1119_count);
  llvm_cbe_tmp__417 = ( char *)(&aesl_internal_Cipher_OC_temp2[(((signed int )llvm_cbe_storemerge12))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",((signed int )llvm_cbe_storemerge12));
}

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_storemerge12) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_Cipher.temp2' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i8* %%10, align 1, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1120_count);
  llvm_cbe_tmp__418 = (unsigned char )*llvm_cbe_tmp__417;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__418);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 %%storemerge12, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1121_count);
  llvm_cbe_tmp__419 = ( char *)(&llvm_cbe_in[(((signed int )llvm_cbe_storemerge12))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",((signed int )llvm_cbe_storemerge12));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_storemerge12) < 16 && "Write access out of array 'in' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%11, i8* %%12, align 1, !dbg !11 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1122_count);
  *llvm_cbe_tmp__419 = llvm_cbe_tmp__418;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__418);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%storemerge12, 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1123_count);
  llvm_cbe_tmp__420 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__420&4294967295ull)));
  if (((llvm_cbe_tmp__420&4294967295U) == (llvm_cbe_tmp__413&4294967295U))) {
    goto llvm_cbe__2e_preheader9;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__420;   /* for PHI node */
    goto llvm_cbe_tmp__505;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [240 x i8]* %%RoundKey, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1140_count);
  llvm_cbe_tmp__421 = ( char *)(&llvm_cbe_RoundKey[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 240
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [32 x i8]* %%Key, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1141_count);
  llvm_cbe_tmp__422 = ( char *)(&llvm_cbe_Key[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 32
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [255 x i32]* %%Rcon, i32 0, i32 0, !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1142_count);
  llvm_cbe_tmp__423 = (signed int *)(&llvm_cbe_Rcon[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 255
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @KeyExpansion(i8* %%14, i8* %%15, i32* %%16, i32 %%Nk, i32 %%Nr), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1143_count);
  KeyExpansion(( char *)llvm_cbe_tmp__421, ( char *)llvm_cbe_tmp__422, (signed int *)llvm_cbe_tmp__423, llvm_cbe_Nk, llvm_cbe_Nr);
if (AESL_DEBUG_TRACE) {
printf("\nArgument Nk = 0x%X",llvm_cbe_Nk);
printf("\nArgument Nr = 0x%X",llvm_cbe_Nr);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 0, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1167_count);
  llvm_cbe_tmp__424 = ( char *)(&llvm_cbe_in[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i8* %%17, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1168_count);
  llvm_cbe_tmp__425 = (unsigned char )*llvm_cbe_tmp__424;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__425);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 0, i32 0, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1169_count);
  llvm_cbe_tmp__426 = ( char *)(&llvm_cbe_state[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%18, i8* %%19, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1170_count);
  *llvm_cbe_tmp__426 = llvm_cbe_tmp__425;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__425);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1180_count);
  llvm_cbe_tmp__427 = ( char *)(&llvm_cbe_in[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i8* %%20, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1181_count);
  llvm_cbe_tmp__428 = (unsigned char )*llvm_cbe_tmp__427;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__428);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 1, i32 0, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1182_count);
  llvm_cbe_tmp__429 = ( char *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%21, i8* %%22, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1183_count);
  *llvm_cbe_tmp__429 = llvm_cbe_tmp__428;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__428);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1193_count);
  llvm_cbe_tmp__430 = ( char *)(&llvm_cbe_in[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i8* %%23, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1194_count);
  llvm_cbe_tmp__431 = (unsigned char )*llvm_cbe_tmp__430;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__431);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 2, i32 0, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1195_count);
  llvm_cbe_tmp__432 = ( char *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%24, i8* %%25, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1196_count);
  *llvm_cbe_tmp__432 = llvm_cbe_tmp__431;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__431);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1206_count);
  llvm_cbe_tmp__433 = ( char *)(&llvm_cbe_in[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i8* %%26, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1207_count);
  llvm_cbe_tmp__434 = (unsigned char )*llvm_cbe_tmp__433;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__434);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 3, i32 0, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1208_count);
  llvm_cbe_tmp__435 = ( char *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%27, i8* %%28, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1209_count);
  *llvm_cbe_tmp__435 = llvm_cbe_tmp__434;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__434);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 4, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1242_count);
  llvm_cbe_tmp__436 = ( char *)(&llvm_cbe_in[(((signed int )4u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )4u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i8* %%29, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1243_count);
  llvm_cbe_tmp__437 = (unsigned char )*llvm_cbe_tmp__436;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__437);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1244_count);
  llvm_cbe_tmp__438 = ( char *)(&llvm_cbe_state[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%30, i8* %%31, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1245_count);
  *llvm_cbe_tmp__438 = llvm_cbe_tmp__437;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__437);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 5, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1255_count);
  llvm_cbe_tmp__439 = ( char *)(&llvm_cbe_in[(((signed int )5u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )5u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i8* %%32, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1256_count);
  llvm_cbe_tmp__440 = (unsigned char )*llvm_cbe_tmp__439;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__440);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 1, i32 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1257_count);
  llvm_cbe_tmp__441 = ( char *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%33, i8* %%34, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1258_count);
  *llvm_cbe_tmp__441 = llvm_cbe_tmp__440;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__440);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 6, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1268_count);
  llvm_cbe_tmp__442 = ( char *)(&llvm_cbe_in[(((signed int )6u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )6u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i8* %%35, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1269_count);
  llvm_cbe_tmp__443 = (unsigned char )*llvm_cbe_tmp__442;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__443);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 2, i32 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1270_count);
  llvm_cbe_tmp__444 = ( char *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%36, i8* %%37, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1271_count);
  *llvm_cbe_tmp__444 = llvm_cbe_tmp__443;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__443);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 7, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1281_count);
  llvm_cbe_tmp__445 = ( char *)(&llvm_cbe_in[(((signed int )7u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )7u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i8* %%38, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1282_count);
  llvm_cbe_tmp__446 = (unsigned char )*llvm_cbe_tmp__445;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__446);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 3, i32 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1283_count);
  llvm_cbe_tmp__447 = ( char *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%39, i8* %%40, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1284_count);
  *llvm_cbe_tmp__447 = llvm_cbe_tmp__446;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__446);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 8, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1317_count);
  llvm_cbe_tmp__448 = ( char *)(&llvm_cbe_in[(((signed int )8u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )8u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i8* %%41, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1318_count);
  llvm_cbe_tmp__449 = (unsigned char )*llvm_cbe_tmp__448;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__449);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1319_count);
  llvm_cbe_tmp__450 = ( char *)(&llvm_cbe_state[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%42, i8* %%43, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1320_count);
  *llvm_cbe_tmp__450 = llvm_cbe_tmp__449;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__449);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 9, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1330_count);
  llvm_cbe_tmp__451 = ( char *)(&llvm_cbe_in[(((signed int )9u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )9u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i8* %%44, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1331_count);
  llvm_cbe_tmp__452 = (unsigned char )*llvm_cbe_tmp__451;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__452);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 1, i32 2, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1332_count);
  llvm_cbe_tmp__453 = ( char *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%45, i8* %%46, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1333_count);
  *llvm_cbe_tmp__453 = llvm_cbe_tmp__452;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__452);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 10, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1343_count);
  llvm_cbe_tmp__454 = ( char *)(&llvm_cbe_in[(((signed int )10u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )10u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i8* %%47, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1344_count);
  llvm_cbe_tmp__455 = (unsigned char )*llvm_cbe_tmp__454;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__455);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 2, i32 2, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1345_count);
  llvm_cbe_tmp__456 = ( char *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%48, i8* %%49, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1346_count);
  *llvm_cbe_tmp__456 = llvm_cbe_tmp__455;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__455);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 11, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1356_count);
  llvm_cbe_tmp__457 = ( char *)(&llvm_cbe_in[(((signed int )11u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )11u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = load i8* %%50, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1357_count);
  llvm_cbe_tmp__458 = (unsigned char )*llvm_cbe_tmp__457;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__458);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 3, i32 2, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1358_count);
  llvm_cbe_tmp__459 = ( char *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%51, i8* %%52, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1359_count);
  *llvm_cbe_tmp__459 = llvm_cbe_tmp__458;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__458);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 12, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1392_count);
  llvm_cbe_tmp__460 = ( char *)(&llvm_cbe_in[(((signed int )12u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )12u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i8* %%53, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1393_count);
  llvm_cbe_tmp__461 = (unsigned char )*llvm_cbe_tmp__460;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__461);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1394_count);
  llvm_cbe_tmp__462 = ( char *)(&llvm_cbe_state[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%54, i8* %%55, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1395_count);
  *llvm_cbe_tmp__462 = llvm_cbe_tmp__461;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__461);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 13, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1405_count);
  llvm_cbe_tmp__463 = ( char *)(&llvm_cbe_in[(((signed int )13u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )13u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load i8* %%56, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1406_count);
  llvm_cbe_tmp__464 = (unsigned char )*llvm_cbe_tmp__463;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__464);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 1, i32 3, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1407_count);
  llvm_cbe_tmp__465 = ( char *)(&llvm_cbe_state[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%57, i8* %%58, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1408_count);
  *llvm_cbe_tmp__465 = llvm_cbe_tmp__464;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__464);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 14, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1418_count);
  llvm_cbe_tmp__466 = ( char *)(&llvm_cbe_in[(((signed int )14u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )14u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = load i8* %%59, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1419_count);
  llvm_cbe_tmp__467 = (unsigned char )*llvm_cbe_tmp__466;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__467);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 2, i32 3, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1420_count);
  llvm_cbe_tmp__468 = ( char *)(&llvm_cbe_state[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%60, i8* %%61, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1421_count);
  *llvm_cbe_tmp__468 = llvm_cbe_tmp__467;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__467);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = getelementptr inbounds [16 x i8]* %%in, i32 0, i32 15, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1431_count);
  llvm_cbe_tmp__469 = ( char *)(&llvm_cbe_in[(((signed int )15u))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed int )15u) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = load i8* %%62, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1432_count);
  llvm_cbe_tmp__470 = (unsigned char )*llvm_cbe_tmp__469;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__470);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 3, i32 3, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1433_count);
  llvm_cbe_tmp__471 = ( char *)(&llvm_cbe_state[(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
][(((signed int )3u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");
  assert(((signed int )3u) < 4 && "Write access out of array 'state' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%63, i8* %%64, align 1, !dbg !12 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1434_count);
  *llvm_cbe_tmp__471 = llvm_cbe_tmp__470;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__470);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = getelementptr inbounds [4 x [4 x i8]]* %%state, i32 0, i32 0, !dbg !13 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1459_count);
  llvm_cbe_tmp__472 = ( char (*)[4])(&llvm_cbe_state[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 4
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 0, [4 x i8]* %%65, i8* %%14), !dbg !13 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1460_count);
  AddRoundKey(0u, llvm_cbe_tmp__472, ( char *)llvm_cbe_tmp__421);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_Nr) > ((signed int )1u))) {
    llvm_cbe_storemerge28__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge28 = phi i32 [ %%67, %%.lr.ph ], [ 1, %%.preheader9  for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_storemerge28_count);
  llvm_cbe_storemerge28 = (unsigned int )llvm_cbe_storemerge28__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge28 = 0x%X",llvm_cbe_storemerge28);
printf("\n = 0x%X",llvm_cbe_tmp__473);
printf("\n = 0x%X",1u);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i8]* %%65), !dbg !13 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1467_count);
  SubBytes(llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i8]* %%65), !dbg !13 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1468_count);
  ShiftRows(llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @MixColumns([4 x i8]* %%65), !dbg !13 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1469_count);
  MixColumns(llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 %%storemerge28, [4 x i8]* %%65, i8* %%14), !dbg !8 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1470_count);
  AddRoundKey(llvm_cbe_storemerge28, llvm_cbe_tmp__472, ( char *)llvm_cbe_tmp__421);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge28 = 0x%X",llvm_cbe_storemerge28);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = add nsw i32 %%storemerge28, 1, !dbg !9 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1471_count);
  llvm_cbe_tmp__473 = (unsigned int )((unsigned int )(llvm_cbe_storemerge28&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__473&4294967295ull)));
  if (((llvm_cbe_tmp__473&4294967295U) == (llvm_cbe_Nr&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge28__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__473;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  call void @SubBytes([4 x i8]* %%65), !dbg !14 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1477_count);
  SubBytes(llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ShiftRows([4 x i8]* %%65), !dbg !14 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1478_count);
  ShiftRows(llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @AddRoundKey(i32 %%Nr, [4 x i8]* %%65, i8* %%14), !dbg !6 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1479_count);
  AddRoundKey(llvm_cbe_Nr, llvm_cbe_tmp__472, ( char *)llvm_cbe_tmp__421);
if (AESL_DEBUG_TRACE) {
printf("\nArgument Nr = 0x%X",llvm_cbe_Nr);
}

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i8* %%19, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1503_count);
  llvm_cbe_tmp__474 = (unsigned char )*llvm_cbe_tmp__426;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__474);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%68, i8* %%out, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1504_count);
  *llvm_cbe_out = llvm_cbe_tmp__474;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__474);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = load i8* %%22, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1514_count);
  llvm_cbe_tmp__475 = (unsigned char )*llvm_cbe_tmp__429;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__475);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = getelementptr inbounds i8* %%out, i32 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1515_count);
  llvm_cbe_tmp__476 = ( char *)(&llvm_cbe_out[(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%69, i8* %%70, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1516_count);
  *llvm_cbe_tmp__476 = llvm_cbe_tmp__475;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__475);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = load i8* %%25, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1526_count);
  llvm_cbe_tmp__477 = (unsigned char )*llvm_cbe_tmp__432;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__477);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = getelementptr inbounds i8* %%out, i32 2, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1527_count);
  llvm_cbe_tmp__478 = ( char *)(&llvm_cbe_out[(((signed int )2u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%71, i8* %%72, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1528_count);
  *llvm_cbe_tmp__478 = llvm_cbe_tmp__477;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__477);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = load i8* %%28, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1538_count);
  llvm_cbe_tmp__479 = (unsigned char )*llvm_cbe_tmp__435;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__479);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds i8* %%out, i32 3, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1539_count);
  llvm_cbe_tmp__480 = ( char *)(&llvm_cbe_out[(((signed int )3u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%73, i8* %%74, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1540_count);
  *llvm_cbe_tmp__480 = llvm_cbe_tmp__479;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__479);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load i8* %%31, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1573_count);
  llvm_cbe_tmp__481 = (unsigned char )*llvm_cbe_tmp__438;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__481);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = getelementptr inbounds i8* %%out, i32 4, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1574_count);
  llvm_cbe_tmp__482 = ( char *)(&llvm_cbe_out[(((signed int )4u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%75, i8* %%76, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1575_count);
  *llvm_cbe_tmp__482 = llvm_cbe_tmp__481;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__481);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = load i8* %%34, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1585_count);
  llvm_cbe_tmp__483 = (unsigned char )*llvm_cbe_tmp__441;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__483);
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = getelementptr inbounds i8* %%out, i32 5, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1586_count);
  llvm_cbe_tmp__484 = ( char *)(&llvm_cbe_out[(((signed int )5u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%77, i8* %%78, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1587_count);
  *llvm_cbe_tmp__484 = llvm_cbe_tmp__483;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__483);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = load i8* %%37, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1597_count);
  llvm_cbe_tmp__485 = (unsigned char )*llvm_cbe_tmp__444;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__485);
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = getelementptr inbounds i8* %%out, i32 6, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1598_count);
  llvm_cbe_tmp__486 = ( char *)(&llvm_cbe_out[(((signed int )6u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%79, i8* %%80, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1599_count);
  *llvm_cbe_tmp__486 = llvm_cbe_tmp__485;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__485);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = load i8* %%40, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1609_count);
  llvm_cbe_tmp__487 = (unsigned char )*llvm_cbe_tmp__447;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__487);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = getelementptr inbounds i8* %%out, i32 7, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1610_count);
  llvm_cbe_tmp__488 = ( char *)(&llvm_cbe_out[(((signed int )7u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%81, i8* %%82, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1611_count);
  *llvm_cbe_tmp__488 = llvm_cbe_tmp__487;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__487);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = load i8* %%43, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1644_count);
  llvm_cbe_tmp__489 = (unsigned char )*llvm_cbe_tmp__450;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__489);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = getelementptr inbounds i8* %%out, i32 8, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1645_count);
  llvm_cbe_tmp__490 = ( char *)(&llvm_cbe_out[(((signed int )8u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%83, i8* %%84, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1646_count);
  *llvm_cbe_tmp__490 = llvm_cbe_tmp__489;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__489);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = load i8* %%46, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1656_count);
  llvm_cbe_tmp__491 = (unsigned char )*llvm_cbe_tmp__453;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__491);
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = getelementptr inbounds i8* %%out, i32 9, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1657_count);
  llvm_cbe_tmp__492 = ( char *)(&llvm_cbe_out[(((signed int )9u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%85, i8* %%86, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1658_count);
  *llvm_cbe_tmp__492 = llvm_cbe_tmp__491;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__491);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = load i8* %%49, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1668_count);
  llvm_cbe_tmp__493 = (unsigned char )*llvm_cbe_tmp__456;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__493);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = getelementptr inbounds i8* %%out, i32 10, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1669_count);
  llvm_cbe_tmp__494 = ( char *)(&llvm_cbe_out[(((signed int )10u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%87, i8* %%88, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1670_count);
  *llvm_cbe_tmp__494 = llvm_cbe_tmp__493;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__493);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = load i8* %%52, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1680_count);
  llvm_cbe_tmp__495 = (unsigned char )*llvm_cbe_tmp__459;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__495);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = getelementptr inbounds i8* %%out, i32 11, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1681_count);
  llvm_cbe_tmp__496 = ( char *)(&llvm_cbe_out[(((signed int )11u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%89, i8* %%90, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1682_count);
  *llvm_cbe_tmp__496 = llvm_cbe_tmp__495;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__495);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = load i8* %%55, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1715_count);
  llvm_cbe_tmp__497 = (unsigned char )*llvm_cbe_tmp__462;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__497);
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = getelementptr inbounds i8* %%out, i32 12, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1716_count);
  llvm_cbe_tmp__498 = ( char *)(&llvm_cbe_out[(((signed int )12u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%91, i8* %%92, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1717_count);
  *llvm_cbe_tmp__498 = llvm_cbe_tmp__497;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__497);

#ifdef AESL_BC_SIM
  if (!(((signed int )1u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = load i8* %%58, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1727_count);
  llvm_cbe_tmp__499 = (unsigned char )*llvm_cbe_tmp__465;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__499);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = getelementptr inbounds i8* %%out, i32 13, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1728_count);
  llvm_cbe_tmp__500 = ( char *)(&llvm_cbe_out[(((signed int )13u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%93, i8* %%94, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1729_count);
  *llvm_cbe_tmp__500 = llvm_cbe_tmp__499;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__499);

#ifdef AESL_BC_SIM
  if (!(((signed int )2u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = load i8* %%61, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1739_count);
  llvm_cbe_tmp__501 = (unsigned char )*llvm_cbe_tmp__468;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__501);
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = getelementptr inbounds i8* %%out, i32 14, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1740_count);
  llvm_cbe_tmp__502 = ( char *)(&llvm_cbe_out[(((signed int )14u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%95, i8* %%96, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1741_count);
  *llvm_cbe_tmp__502 = llvm_cbe_tmp__501;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__501);

#ifdef AESL_BC_SIM
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);
  if (!(((signed int )3u) < 4)) fprintf(stderr, "%s:%d: warning: Read access out of array 'state' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = load i8* %%64, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1751_count);
  llvm_cbe_tmp__503 = (unsigned char )*llvm_cbe_tmp__471;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__503);
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = getelementptr inbounds i8* %%out, i32 15, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1752_count);
  llvm_cbe_tmp__504 = ( char *)(&llvm_cbe_out[(((signed int )15u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%97, i8* %%98, align 1, !dbg !7 for 0x%I64xth hint within @Cipher  --> \n", ++aesl_llvm_cbe_1753_count);
  *llvm_cbe_tmp__504 = llvm_cbe_tmp__503;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__503);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @Cipher}\n");
  return;
}

