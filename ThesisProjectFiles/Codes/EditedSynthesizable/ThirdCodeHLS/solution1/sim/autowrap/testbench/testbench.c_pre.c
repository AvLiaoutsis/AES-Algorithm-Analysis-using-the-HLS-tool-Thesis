# 1 "C:/Users/Lincoln/Desktop/ThesisRaw/Edited/3rd/testbench.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Lincoln/Desktop/ThesisRaw/Edited/3rd/testbench.c"
# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 1 3
# 19 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 1 3
# 32 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
       
# 33 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/_mingw.h" 3
# 20 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3






# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
# 212 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 353 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef short unsigned int wint_t;
# 27 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3

# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdarg.h" 1 3 4
# 40 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 29 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3
# 129 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;
# 154 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
extern __attribute__ ((__dllimport__)) FILE _iob[];
# 169 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
# 204 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
# 293 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
# 308 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
# 331 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);



extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 412 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
# 455 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
typedef long long fpos_t;




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);
# 480 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);






 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);


 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
# 522 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
# 534 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 1 3
# 21 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 3
# 1 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 1 3 4
# 150 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 22 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 2 3





typedef long __time32_t;




typedef long long __time64_t;
# 45 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/sys/types.h" 3
typedef __time32_t time_t;






typedef long _off_t;


typedef _off_t off_t;







typedef unsigned int _dev_t;





typedef _dev_t dev_t;






typedef short _ino_t;


typedef _ino_t ino_t;






typedef int _pid_t;


typedef _pid_t pid_t;






typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef int _sigset_t;


typedef _sigset_t sigset_t;





typedef int _ssize_t;


typedef _ssize_t ssize_t;





typedef long long fpos64_t;




typedef long long off64_t;



typedef unsigned int useconds_t;
# 535 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 2 3
extern __inline__ FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{
  return fopen (filename, mode);
}

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);






extern __inline__ off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
# 563 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);



 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);



int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);





int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
# 625 "c:\\xilinx\\vivado_hls\\2017.2\\msys\\bin\\../lib/gcc/mingw32/4.6.2/../../../../include/stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);






 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);


 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);
# 2 "C:/Users/Lincoln/Desktop/ThesisRaw/Edited/3rd/testbench.c" 2


void aes_main();


int main ()
{
  int out[32];
  int key[32];
  int statemt[32];
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
  statemt[9] = 49;
  statemt[10] = 152;
  statemt[11] = 162;
  statemt[12] = 224;
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
  key[15] = 60;
  aes_main(statemt,key,out);

   printf ("encrypted message EDW!! \t");
   for (int i = 0; i < 4 * 4; ++i)
  {
       if (out[i] < 16)
       printf ("0");
       printf ("%x", out[i]);
     }
   printf ("\n");
return 0;
    }
