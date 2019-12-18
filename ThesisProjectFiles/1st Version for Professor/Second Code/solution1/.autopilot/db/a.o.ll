; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@getSBoxValue.sbox = private unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4 ; [#uses=1 type=[256 x i32]*]
@Cipher.Rcon = private unnamed_addr constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203], align 4 ; [#uses=1 type=[255 x i32]*]
@Cipher.temp = private unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1 ; [#uses=1 type=[16 x i8]*]
@Cipher.temp2 = private unnamed_addr constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", align 1 ; [#uses=1 type=[16 x i8]*]

; [#uses=9]
define i32 @getSBoxValue(i32 %num) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %sbox = alloca [256 x i32], align 4             ; [#uses=2 type=[256 x i32]*]
  store i32 %num, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !62), !dbg !63 ; [debug line = 4:22] [debug variable = num]
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %sbox}, metadata !64), !dbg !69 ; [debug line = 6:6] [debug variable = sbox]
  %2 = bitcast [256 x i32]* %sbox to i8*, !dbg !70 ; [#uses=1 type=i8*] [debug line = 23:98]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([256 x i32]* @getSBoxValue.sbox to i8*), i32 1024, i32 4, i1 false), !dbg !70 ; [debug line = 23:98]
  %3 = load i32* %1, align 4, !dbg !71            ; [#uses=1 type=i32] [debug line = 24:2]
  %4 = getelementptr inbounds [256 x i32]* %sbox, i32 0, i32 %3, !dbg !71 ; [#uses=1 type=i32*] [debug line = 24:2]
  %5 = load i32* %4, align 4, !dbg !71            ; [#uses=1 type=i32] [debug line = 24:2]
  ret i32 %5, !dbg !71                            ; [debug line = 24:2]
}

; [#uses=39]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

; [#uses=1]
define void @KeyExpansion(i8* %RoundKey, i8* %Key, i32* %Rcon, i32 %Nk, i32 %Nr) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=15 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=6 type=i8**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %4 = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=27 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %temp = alloca [4 x i8], align 1                ; [#uses=31 type=[4 x i8]*]
  %k = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store i8* %RoundKey, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !72), !dbg !73 ; [debug line = 33:33] [debug variable = RoundKey]
  store i8* %Key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !74), !dbg !75 ; [debug line = 33:61] [debug variable = Key]
  store i32* %Rcon, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !76), !dbg !77 ; [debug line = 33:73] [debug variable = Rcon]
  store i32 %Nk, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !78), !dbg !79 ; [debug line = 33:87] [debug variable = Nk]
  store i32 %Nr, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !80), !dbg !81 ; [debug line = 33:94] [debug variable = Nr]
  %6 = load i8** %1, align 4, !dbg !82            ; [#uses=1 type=i8*] [debug line = 34:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %6, i32 240) nounwind, !dbg !82 ; [debug line = 34:2]
  %7 = load i32** %3, align 4, !dbg !84           ; [#uses=1 type=i32*] [debug line = 34:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %7, i32 255) nounwind, !dbg !84 ; [debug line = 34:39]
  %8 = load i8** %2, align 4, !dbg !85            ; [#uses=1 type=i8*] [debug line = 34:72]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %8, i32 32) nounwind, !dbg !85 ; [debug line = 34:72]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !86), !dbg !87 ; [debug line = 35:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !88), !dbg !89 ; [debug line = 35:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %temp}, metadata !90), !dbg !91 ; [debug line = 36:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{i8* %k}, metadata !92), !dbg !93 ; [debug line = 36:24] [debug variable = k]
  store i32 0, i32* %i, align 4, !dbg !94         ; [debug line = 39:6]
  br label %9, !dbg !94                           ; [debug line = 39:6]

; <label>:9                                       ; preds = %56, %0
  %10 = load i32* %i, align 4, !dbg !94           ; [#uses=1 type=i32] [debug line = 39:6]
  %11 = load i32* %4, align 4, !dbg !94           ; [#uses=1 type=i32] [debug line = 39:6]
  %12 = icmp slt i32 %10, %11, !dbg !94           ; [#uses=1 type=i1] [debug line = 39:6]
  br i1 %12, label %13, label %59, !dbg !94       ; [debug line = 39:6]

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 41:3]
  %15 = mul nsw i32 %14, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 41:3]
  %16 = load i8** %2, align 4, !dbg !96           ; [#uses=1 type=i8*] [debug line = 41:3]
  %17 = getelementptr inbounds i8* %16, i32 %15, !dbg !96 ; [#uses=1 type=i8*] [debug line = 41:3]
  %18 = load i8* %17, align 1, !dbg !96           ; [#uses=1 type=i8] [debug line = 41:3]
  %19 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 41:3]
  %20 = mul nsw i32 %19, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 41:3]
  %21 = load i8** %1, align 4, !dbg !96           ; [#uses=1 type=i8*] [debug line = 41:3]
  %22 = getelementptr inbounds i8* %21, i32 %20, !dbg !96 ; [#uses=1 type=i8*] [debug line = 41:3]
  store i8 %18, i8* %22, align 1, !dbg !96        ; [debug line = 41:3]
  %23 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 42:3]
  %24 = mul nsw i32 %23, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %25 = add nsw i32 %24, 1, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %26 = load i8** %2, align 4, !dbg !98           ; [#uses=1 type=i8*] [debug line = 42:3]
  %27 = getelementptr inbounds i8* %26, i32 %25, !dbg !98 ; [#uses=1 type=i8*] [debug line = 42:3]
  %28 = load i8* %27, align 1, !dbg !98           ; [#uses=1 type=i8] [debug line = 42:3]
  %29 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 42:3]
  %30 = mul nsw i32 %29, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %31 = add nsw i32 %30, 1, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %32 = load i8** %1, align 4, !dbg !98           ; [#uses=1 type=i8*] [debug line = 42:3]
  %33 = getelementptr inbounds i8* %32, i32 %31, !dbg !98 ; [#uses=1 type=i8*] [debug line = 42:3]
  store i8 %28, i8* %33, align 1, !dbg !98        ; [debug line = 42:3]
  %34 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %35 = mul nsw i32 %34, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %36 = add nsw i32 %35, 2, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %37 = load i8** %2, align 4, !dbg !99           ; [#uses=1 type=i8*] [debug line = 43:3]
  %38 = getelementptr inbounds i8* %37, i32 %36, !dbg !99 ; [#uses=1 type=i8*] [debug line = 43:3]
  %39 = load i8* %38, align 1, !dbg !99           ; [#uses=1 type=i8] [debug line = 43:3]
  %40 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %41 = mul nsw i32 %40, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %42 = add nsw i32 %41, 2, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %43 = load i8** %1, align 4, !dbg !99           ; [#uses=1 type=i8*] [debug line = 43:3]
  %44 = getelementptr inbounds i8* %43, i32 %42, !dbg !99 ; [#uses=1 type=i8*] [debug line = 43:3]
  store i8 %39, i8* %44, align 1, !dbg !99        ; [debug line = 43:3]
  %45 = load i32* %i, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 44:3]
  %46 = mul nsw i32 %45, 4, !dbg !100             ; [#uses=1 type=i32] [debug line = 44:3]
  %47 = add nsw i32 %46, 3, !dbg !100             ; [#uses=1 type=i32] [debug line = 44:3]
  %48 = load i8** %2, align 4, !dbg !100          ; [#uses=1 type=i8*] [debug line = 44:3]
  %49 = getelementptr inbounds i8* %48, i32 %47, !dbg !100 ; [#uses=1 type=i8*] [debug line = 44:3]
  %50 = load i8* %49, align 1, !dbg !100          ; [#uses=1 type=i8] [debug line = 44:3]
  %51 = load i32* %i, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 44:3]
  %52 = mul nsw i32 %51, 4, !dbg !100             ; [#uses=1 type=i32] [debug line = 44:3]
  %53 = add nsw i32 %52, 3, !dbg !100             ; [#uses=1 type=i32] [debug line = 44:3]
  %54 = load i8** %1, align 4, !dbg !100          ; [#uses=1 type=i8*] [debug line = 44:3]
  %55 = getelementptr inbounds i8* %54, i32 %53, !dbg !100 ; [#uses=1 type=i8*] [debug line = 44:3]
  store i8 %50, i8* %55, align 1, !dbg !100       ; [debug line = 44:3]
  br label %56, !dbg !101                         ; [debug line = 45:2]

; <label>:56                                      ; preds = %13
  %57 = load i32* %i, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 39:15]
  %58 = add nsw i32 %57, 1, !dbg !102             ; [#uses=1 type=i32] [debug line = 39:15]
  store i32 %58, i32* %i, align 4, !dbg !102      ; [debug line = 39:15]
  br label %9, !dbg !102                          ; [debug line = 39:15]

; <label>:59                                      ; preds = %9
  br label %60, !dbg !103                         ; [debug line = 48:2]

; <label>:60                                      ; preds = %173, %59
  %61 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 48:2]
  %62 = load i32* %5, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 48:2]
  %63 = add nsw i32 %62, 1, !dbg !103             ; [#uses=1 type=i32] [debug line = 48:2]
  %64 = mul nsw i32 4, %63, !dbg !103             ; [#uses=1 type=i32] [debug line = 48:2]
  %65 = icmp slt i32 %61, %64, !dbg !103          ; [#uses=1 type=i1] [debug line = 48:2]
  br i1 %65, label %66, label %252, !dbg !103     ; [debug line = 48:2]

; <label>:66                                      ; preds = %60
  store i32 0, i32* %j, align 4, !dbg !104        ; [debug line = 50:10]
  br label %67, !dbg !104                         ; [debug line = 50:10]

; <label>:67                                      ; preds = %81, %66
  %68 = load i32* %j, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 50:10]
  %69 = icmp slt i32 %68, 4, !dbg !104            ; [#uses=1 type=i1] [debug line = 50:10]
  br i1 %69, label %70, label %84, !dbg !104      ; [debug line = 50:10]

; <label>:70                                      ; preds = %67
  %71 = load i32* %i, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 52:7]
  %72 = sub nsw i32 %71, 1, !dbg !107             ; [#uses=1 type=i32] [debug line = 52:7]
  %73 = mul nsw i32 %72, 4, !dbg !107             ; [#uses=1 type=i32] [debug line = 52:7]
  %74 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 52:7]
  %75 = add nsw i32 %73, %74, !dbg !107           ; [#uses=1 type=i32] [debug line = 52:7]
  %76 = load i8** %1, align 4, !dbg !107          ; [#uses=1 type=i8*] [debug line = 52:7]
  %77 = getelementptr inbounds i8* %76, i32 %75, !dbg !107 ; [#uses=1 type=i8*] [debug line = 52:7]
  %78 = load i8* %77, align 1, !dbg !107          ; [#uses=1 type=i8] [debug line = 52:7]
  %79 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 52:7]
  %80 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 %79, !dbg !107 ; [#uses=1 type=i8*] [debug line = 52:7]
  store i8 %78, i8* %80, align 1, !dbg !107       ; [debug line = 52:7]
  br label %81, !dbg !109                         ; [debug line = 53:6]

; <label>:81                                      ; preds = %70
  %82 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 50:18]
  %83 = add nsw i32 %82, 1, !dbg !110             ; [#uses=1 type=i32] [debug line = 50:18]
  store i32 %83, i32* %j, align 4, !dbg !110      ; [debug line = 50:18]
  br label %67, !dbg !110                         ; [debug line = 50:18]

; <label>:84                                      ; preds = %67
  %85 = load i32* %i, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 54:6]
  %86 = load i32* %4, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 54:6]
  %87 = srem i32 %85, %86, !dbg !111              ; [#uses=1 type=i32] [debug line = 54:6]
  %88 = icmp eq i32 %87, 0, !dbg !111             ; [#uses=1 type=i1] [debug line = 54:6]
  br i1 %88, label %89, label %139, !dbg !111     ; [debug line = 54:6]

; <label>:89                                      ; preds = %84
  %90 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !112 ; [#uses=1 type=i8*] [debug line = 61:8]
  %91 = load i8* %90, align 1, !dbg !112          ; [#uses=1 type=i8] [debug line = 61:8]
  store i8 %91, i8* %k, align 1, !dbg !112        ; [debug line = 61:8]
  %92 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !115 ; [#uses=1 type=i8*] [debug line = 62:8]
  %93 = load i8* %92, align 1, !dbg !115          ; [#uses=1 type=i8] [debug line = 62:8]
  %94 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !115 ; [#uses=1 type=i8*] [debug line = 62:8]
  store i8 %93, i8* %94, align 1, !dbg !115       ; [debug line = 62:8]
  %95 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !116 ; [#uses=1 type=i8*] [debug line = 63:8]
  %96 = load i8* %95, align 1, !dbg !116          ; [#uses=1 type=i8] [debug line = 63:8]
  %97 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !116 ; [#uses=1 type=i8*] [debug line = 63:8]
  store i8 %96, i8* %97, align 1, !dbg !116       ; [debug line = 63:8]
  %98 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !117 ; [#uses=1 type=i8*] [debug line = 64:8]
  %99 = load i8* %98, align 1, !dbg !117          ; [#uses=1 type=i8] [debug line = 64:8]
  %100 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !117 ; [#uses=1 type=i8*] [debug line = 64:8]
  store i8 %99, i8* %100, align 1, !dbg !117      ; [debug line = 64:8]
  %101 = load i8* %k, align 1, !dbg !118          ; [#uses=1 type=i8] [debug line = 65:8]
  %102 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !118 ; [#uses=1 type=i8*] [debug line = 65:8]
  store i8 %101, i8* %102, align 1, !dbg !118     ; [debug line = 65:8]
  %103 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !119 ; [#uses=1 type=i8*] [debug line = 73:16]
  %104 = load i8* %103, align 1, !dbg !119        ; [#uses=1 type=i8] [debug line = 73:16]
  %105 = zext i8 %104 to i32, !dbg !119           ; [#uses=1 type=i32] [debug line = 73:16]
  %106 = call i32 @getSBoxValue(i32 %105), !dbg !119 ; [#uses=1 type=i32] [debug line = 73:16]
  %107 = trunc i32 %106 to i8, !dbg !119          ; [#uses=1 type=i8] [debug line = 73:16]
  %108 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !119 ; [#uses=1 type=i8*] [debug line = 73:16]
  store i8 %107, i8* %108, align 1, !dbg !119     ; [debug line = 73:16]
  %109 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 74:16]
  %110 = load i8* %109, align 1, !dbg !121        ; [#uses=1 type=i8] [debug line = 74:16]
  %111 = zext i8 %110 to i32, !dbg !121           ; [#uses=1 type=i32] [debug line = 74:16]
  %112 = call i32 @getSBoxValue(i32 %111), !dbg !121 ; [#uses=1 type=i32] [debug line = 74:16]
  %113 = trunc i32 %112 to i8, !dbg !121          ; [#uses=1 type=i8] [debug line = 74:16]
  %114 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 74:16]
  store i8 %113, i8* %114, align 1, !dbg !121     ; [debug line = 74:16]
  %115 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 75:16]
  %116 = load i8* %115, align 1, !dbg !122        ; [#uses=1 type=i8] [debug line = 75:16]
  %117 = zext i8 %116 to i32, !dbg !122           ; [#uses=1 type=i32] [debug line = 75:16]
  %118 = call i32 @getSBoxValue(i32 %117), !dbg !122 ; [#uses=1 type=i32] [debug line = 75:16]
  %119 = trunc i32 %118 to i8, !dbg !122          ; [#uses=1 type=i8] [debug line = 75:16]
  %120 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 75:16]
  store i8 %119, i8* %120, align 1, !dbg !122     ; [debug line = 75:16]
  %121 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 76:16]
  %122 = load i8* %121, align 1, !dbg !123        ; [#uses=1 type=i8] [debug line = 76:16]
  %123 = zext i8 %122 to i32, !dbg !123           ; [#uses=1 type=i32] [debug line = 76:16]
  %124 = call i32 @getSBoxValue(i32 %123), !dbg !123 ; [#uses=1 type=i32] [debug line = 76:16]
  %125 = trunc i32 %124 to i8, !dbg !123          ; [#uses=1 type=i8] [debug line = 76:16]
  %126 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 76:16]
  store i8 %125, i8* %126, align 1, !dbg !123     ; [debug line = 76:16]
  %127 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 79:7]
  %128 = load i8* %127, align 1, !dbg !124        ; [#uses=1 type=i8] [debug line = 79:7]
  %129 = zext i8 %128 to i32, !dbg !124           ; [#uses=1 type=i32] [debug line = 79:7]
  %130 = load i32* %i, align 4, !dbg !124         ; [#uses=1 type=i32] [debug line = 79:7]
  %131 = load i32* %4, align 4, !dbg !124         ; [#uses=1 type=i32] [debug line = 79:7]
  %132 = sdiv i32 %130, %131, !dbg !124           ; [#uses=1 type=i32] [debug line = 79:7]
  %133 = load i32** %3, align 4, !dbg !124        ; [#uses=1 type=i32*] [debug line = 79:7]
  %134 = getelementptr inbounds i32* %133, i32 %132, !dbg !124 ; [#uses=1 type=i32*] [debug line = 79:7]
  %135 = load i32* %134, align 4, !dbg !124       ; [#uses=1 type=i32] [debug line = 79:7]
  %136 = xor i32 %129, %135, !dbg !124            ; [#uses=1 type=i32] [debug line = 79:7]
  %137 = trunc i32 %136 to i8, !dbg !124          ; [#uses=1 type=i8] [debug line = 79:7]
  %138 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 79:7]
  store i8 %137, i8* %138, align 1, !dbg !124     ; [debug line = 79:7]
  br label %173, !dbg !125                        ; [debug line = 80:6]

; <label>:139                                     ; preds = %84
  %140 = load i32* %4, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 81:11]
  %141 = icmp sgt i32 %140, 6, !dbg !126          ; [#uses=1 type=i1] [debug line = 81:11]
  br i1 %141, label %142, label %172, !dbg !126   ; [debug line = 81:11]

; <label>:142                                     ; preds = %139
  %143 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 81:11]
  %144 = load i32* %4, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 81:11]
  %145 = srem i32 %143, %144, !dbg !126           ; [#uses=1 type=i32] [debug line = 81:11]
  %146 = icmp eq i32 %145, 4, !dbg !126           ; [#uses=1 type=i1] [debug line = 81:11]
  br i1 %146, label %147, label %172, !dbg !126   ; [debug line = 81:11]

; <label>:147                                     ; preds = %142
  %148 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !127 ; [#uses=1 type=i8*] [debug line = 85:16]
  %149 = load i8* %148, align 1, !dbg !127        ; [#uses=1 type=i8] [debug line = 85:16]
  %150 = zext i8 %149 to i32, !dbg !127           ; [#uses=1 type=i32] [debug line = 85:16]
  %151 = call i32 @getSBoxValue(i32 %150), !dbg !127 ; [#uses=1 type=i32] [debug line = 85:16]
  %152 = trunc i32 %151 to i8, !dbg !127          ; [#uses=1 type=i8] [debug line = 85:16]
  %153 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !127 ; [#uses=1 type=i8*] [debug line = 85:16]
  store i8 %152, i8* %153, align 1, !dbg !127     ; [debug line = 85:16]
  %154 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !130 ; [#uses=1 type=i8*] [debug line = 86:16]
  %155 = load i8* %154, align 1, !dbg !130        ; [#uses=1 type=i8] [debug line = 86:16]
  %156 = zext i8 %155 to i32, !dbg !130           ; [#uses=1 type=i32] [debug line = 86:16]
  %157 = call i32 @getSBoxValue(i32 %156), !dbg !130 ; [#uses=1 type=i32] [debug line = 86:16]
  %158 = trunc i32 %157 to i8, !dbg !130          ; [#uses=1 type=i8] [debug line = 86:16]
  %159 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !130 ; [#uses=1 type=i8*] [debug line = 86:16]
  store i8 %158, i8* %159, align 1, !dbg !130     ; [debug line = 86:16]
  %160 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !131 ; [#uses=1 type=i8*] [debug line = 87:16]
  %161 = load i8* %160, align 1, !dbg !131        ; [#uses=1 type=i8] [debug line = 87:16]
  %162 = zext i8 %161 to i32, !dbg !131           ; [#uses=1 type=i32] [debug line = 87:16]
  %163 = call i32 @getSBoxValue(i32 %162), !dbg !131 ; [#uses=1 type=i32] [debug line = 87:16]
  %164 = trunc i32 %163 to i8, !dbg !131          ; [#uses=1 type=i8] [debug line = 87:16]
  %165 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !131 ; [#uses=1 type=i8*] [debug line = 87:16]
  store i8 %164, i8* %165, align 1, !dbg !131     ; [debug line = 87:16]
  %166 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !132 ; [#uses=1 type=i8*] [debug line = 88:16]
  %167 = load i8* %166, align 1, !dbg !132        ; [#uses=1 type=i8] [debug line = 88:16]
  %168 = zext i8 %167 to i32, !dbg !132           ; [#uses=1 type=i32] [debug line = 88:16]
  %169 = call i32 @getSBoxValue(i32 %168), !dbg !132 ; [#uses=1 type=i32] [debug line = 88:16]
  %170 = trunc i32 %169 to i8, !dbg !132          ; [#uses=1 type=i8] [debug line = 88:16]
  %171 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !132 ; [#uses=1 type=i8*] [debug line = 88:16]
  store i8 %170, i8* %171, align 1, !dbg !132     ; [debug line = 88:16]
  br label %172, !dbg !133                        ; [debug line = 90:6]

; <label>:172                                     ; preds = %147, %142, %139
  br label %173

; <label>:173                                     ; preds = %172, %89
  %174 = load i32* %i, align 4, !dbg !134         ; [#uses=1 type=i32] [debug line = 91:6]
  %175 = load i32* %4, align 4, !dbg !134         ; [#uses=1 type=i32] [debug line = 91:6]
  %176 = sub nsw i32 %174, %175, !dbg !134        ; [#uses=1 type=i32] [debug line = 91:6]
  %177 = mul nsw i32 %176, 4, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %178 = add nsw i32 %177, 0, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %179 = load i8** %1, align 4, !dbg !134         ; [#uses=1 type=i8*] [debug line = 91:6]
  %180 = getelementptr inbounds i8* %179, i32 %178, !dbg !134 ; [#uses=1 type=i8*] [debug line = 91:6]
  %181 = load i8* %180, align 1, !dbg !134        ; [#uses=1 type=i8] [debug line = 91:6]
  %182 = zext i8 %181 to i32, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %183 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !134 ; [#uses=1 type=i8*] [debug line = 91:6]
  %184 = load i8* %183, align 1, !dbg !134        ; [#uses=1 type=i8] [debug line = 91:6]
  %185 = zext i8 %184 to i32, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %186 = xor i32 %182, %185, !dbg !134            ; [#uses=1 type=i32] [debug line = 91:6]
  %187 = trunc i32 %186 to i8, !dbg !134          ; [#uses=1 type=i8] [debug line = 91:6]
  %188 = load i32* %i, align 4, !dbg !134         ; [#uses=1 type=i32] [debug line = 91:6]
  %189 = mul nsw i32 %188, 4, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %190 = add nsw i32 %189, 0, !dbg !134           ; [#uses=1 type=i32] [debug line = 91:6]
  %191 = load i8** %1, align 4, !dbg !134         ; [#uses=1 type=i8*] [debug line = 91:6]
  %192 = getelementptr inbounds i8* %191, i32 %190, !dbg !134 ; [#uses=1 type=i8*] [debug line = 91:6]
  store i8 %187, i8* %192, align 1, !dbg !134     ; [debug line = 91:6]
  %193 = load i32* %i, align 4, !dbg !135         ; [#uses=1 type=i32] [debug line = 92:6]
  %194 = load i32* %4, align 4, !dbg !135         ; [#uses=1 type=i32] [debug line = 92:6]
  %195 = sub nsw i32 %193, %194, !dbg !135        ; [#uses=1 type=i32] [debug line = 92:6]
  %196 = mul nsw i32 %195, 4, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %197 = add nsw i32 %196, 1, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %198 = load i8** %1, align 4, !dbg !135         ; [#uses=1 type=i8*] [debug line = 92:6]
  %199 = getelementptr inbounds i8* %198, i32 %197, !dbg !135 ; [#uses=1 type=i8*] [debug line = 92:6]
  %200 = load i8* %199, align 1, !dbg !135        ; [#uses=1 type=i8] [debug line = 92:6]
  %201 = zext i8 %200 to i32, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %202 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !135 ; [#uses=1 type=i8*] [debug line = 92:6]
  %203 = load i8* %202, align 1, !dbg !135        ; [#uses=1 type=i8] [debug line = 92:6]
  %204 = zext i8 %203 to i32, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %205 = xor i32 %201, %204, !dbg !135            ; [#uses=1 type=i32] [debug line = 92:6]
  %206 = trunc i32 %205 to i8, !dbg !135          ; [#uses=1 type=i8] [debug line = 92:6]
  %207 = load i32* %i, align 4, !dbg !135         ; [#uses=1 type=i32] [debug line = 92:6]
  %208 = mul nsw i32 %207, 4, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %209 = add nsw i32 %208, 1, !dbg !135           ; [#uses=1 type=i32] [debug line = 92:6]
  %210 = load i8** %1, align 4, !dbg !135         ; [#uses=1 type=i8*] [debug line = 92:6]
  %211 = getelementptr inbounds i8* %210, i32 %209, !dbg !135 ; [#uses=1 type=i8*] [debug line = 92:6]
  store i8 %206, i8* %211, align 1, !dbg !135     ; [debug line = 92:6]
  %212 = load i32* %i, align 4, !dbg !136         ; [#uses=1 type=i32] [debug line = 93:6]
  %213 = load i32* %4, align 4, !dbg !136         ; [#uses=1 type=i32] [debug line = 93:6]
  %214 = sub nsw i32 %212, %213, !dbg !136        ; [#uses=1 type=i32] [debug line = 93:6]
  %215 = mul nsw i32 %214, 4, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %216 = add nsw i32 %215, 2, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %217 = load i8** %1, align 4, !dbg !136         ; [#uses=1 type=i8*] [debug line = 93:6]
  %218 = getelementptr inbounds i8* %217, i32 %216, !dbg !136 ; [#uses=1 type=i8*] [debug line = 93:6]
  %219 = load i8* %218, align 1, !dbg !136        ; [#uses=1 type=i8] [debug line = 93:6]
  %220 = zext i8 %219 to i32, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %221 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !136 ; [#uses=1 type=i8*] [debug line = 93:6]
  %222 = load i8* %221, align 1, !dbg !136        ; [#uses=1 type=i8] [debug line = 93:6]
  %223 = zext i8 %222 to i32, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %224 = xor i32 %220, %223, !dbg !136            ; [#uses=1 type=i32] [debug line = 93:6]
  %225 = trunc i32 %224 to i8, !dbg !136          ; [#uses=1 type=i8] [debug line = 93:6]
  %226 = load i32* %i, align 4, !dbg !136         ; [#uses=1 type=i32] [debug line = 93:6]
  %227 = mul nsw i32 %226, 4, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %228 = add nsw i32 %227, 2, !dbg !136           ; [#uses=1 type=i32] [debug line = 93:6]
  %229 = load i8** %1, align 4, !dbg !136         ; [#uses=1 type=i8*] [debug line = 93:6]
  %230 = getelementptr inbounds i8* %229, i32 %228, !dbg !136 ; [#uses=1 type=i8*] [debug line = 93:6]
  store i8 %225, i8* %230, align 1, !dbg !136     ; [debug line = 93:6]
  %231 = load i32* %i, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 94:6]
  %232 = load i32* %4, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 94:6]
  %233 = sub nsw i32 %231, %232, !dbg !137        ; [#uses=1 type=i32] [debug line = 94:6]
  %234 = mul nsw i32 %233, 4, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %235 = add nsw i32 %234, 3, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %236 = load i8** %1, align 4, !dbg !137         ; [#uses=1 type=i8*] [debug line = 94:6]
  %237 = getelementptr inbounds i8* %236, i32 %235, !dbg !137 ; [#uses=1 type=i8*] [debug line = 94:6]
  %238 = load i8* %237, align 1, !dbg !137        ; [#uses=1 type=i8] [debug line = 94:6]
  %239 = zext i8 %238 to i32, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %240 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !137 ; [#uses=1 type=i8*] [debug line = 94:6]
  %241 = load i8* %240, align 1, !dbg !137        ; [#uses=1 type=i8] [debug line = 94:6]
  %242 = zext i8 %241 to i32, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %243 = xor i32 %239, %242, !dbg !137            ; [#uses=1 type=i32] [debug line = 94:6]
  %244 = trunc i32 %243 to i8, !dbg !137          ; [#uses=1 type=i8] [debug line = 94:6]
  %245 = load i32* %i, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 94:6]
  %246 = mul nsw i32 %245, 4, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %247 = add nsw i32 %246, 3, !dbg !137           ; [#uses=1 type=i32] [debug line = 94:6]
  %248 = load i8** %1, align 4, !dbg !137         ; [#uses=1 type=i8*] [debug line = 94:6]
  %249 = getelementptr inbounds i8* %248, i32 %247, !dbg !137 ; [#uses=1 type=i8*] [debug line = 94:6]
  store i8 %244, i8* %249, align 1, !dbg !137     ; [debug line = 94:6]
  %250 = load i32* %i, align 4, !dbg !138         ; [#uses=1 type=i32] [debug line = 95:6]
  %251 = add nsw i32 %250, 1, !dbg !138           ; [#uses=1 type=i32] [debug line = 95:6]
  store i32 %251, i32* %i, align 4, !dbg !138     ; [debug line = 95:6]
  br label %60, !dbg !139                         ; [debug line = 96:2]

; <label>:252                                     ; preds = %60
  ret void, !dbg !140                             ; [debug line = 97:1]
}

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
define void @AddRoundKey(i32 %round, [4 x i8]* %state, i8* %RoundKey) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca [4 x i8]*, align 4                  ; [#uses=3 type=[4 x i8]**]
  %3 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32 %round, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !141), !dbg !142 ; [debug line = 101:22] [debug variable = round]
  store [4 x i8]* %state, [4 x i8]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i8]** %2}, metadata !143), !dbg !144 ; [debug line = 101:42] [debug variable = state]
  store i8* %RoundKey, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !145), !dbg !146 ; [debug line = 101:68] [debug variable = RoundKey]
  %4 = load i8** %3, align 4, !dbg !147           ; [#uses=1 type=i8*] [debug line = 102:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 240) nounwind, !dbg !147 ; [debug line = 102:2]
  %5 = load [4 x i8]** %2, align 4, !dbg !149     ; [#uses=1 type=[4 x i8]*] [debug line = 102:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i8]*, i32)*)([4 x i8]* %5, i32 4) nounwind, !dbg !149 ; [debug line = 102:39]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !150), !dbg !151 ; [debug line = 103:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !152), !dbg !153 ; [debug line = 103:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !154        ; [debug line = 104:6]
  br label %6, !dbg !154                          ; [debug line = 104:6]

; <label>:6                                       ; preds = %39, %0
  %7 = load i32* %i, align 4, !dbg !154           ; [#uses=1 type=i32] [debug line = 104:6]
  %8 = icmp slt i32 %7, 4, !dbg !154              ; [#uses=1 type=i1] [debug line = 104:6]
  br i1 %8, label %9, label %42, !dbg !154        ; [debug line = 104:6]

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !156        ; [debug line = 106:7]
  br label %10, !dbg !156                         ; [debug line = 106:7]

; <label>:10                                      ; preds = %35, %9
  %11 = load i32* %j, align 4, !dbg !156          ; [#uses=1 type=i32] [debug line = 106:7]
  %12 = icmp slt i32 %11, 4, !dbg !156            ; [#uses=1 type=i1] [debug line = 106:7]
  br i1 %12, label %13, label %38, !dbg !156      ; [debug line = 106:7]

; <label>:13                                      ; preds = %10
  %14 = load i32* %1, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:4]
  %15 = mul nsw i32 %14, 4, !dbg !159             ; [#uses=1 type=i32] [debug line = 108:4]
  %16 = mul nsw i32 %15, 4, !dbg !159             ; [#uses=1 type=i32] [debug line = 108:4]
  %17 = load i32* %i, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:4]
  %18 = mul nsw i32 %17, 4, !dbg !159             ; [#uses=1 type=i32] [debug line = 108:4]
  %19 = add nsw i32 %16, %18, !dbg !159           ; [#uses=1 type=i32] [debug line = 108:4]
  %20 = load i32* %j, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:4]
  %21 = add nsw i32 %19, %20, !dbg !159           ; [#uses=1 type=i32] [debug line = 108:4]
  %22 = load i8** %3, align 4, !dbg !159          ; [#uses=1 type=i8*] [debug line = 108:4]
  %23 = getelementptr inbounds i8* %22, i32 %21, !dbg !159 ; [#uses=1 type=i8*] [debug line = 108:4]
  %24 = load i8* %23, align 1, !dbg !159          ; [#uses=1 type=i8] [debug line = 108:4]
  %25 = zext i8 %24 to i32, !dbg !159             ; [#uses=1 type=i32] [debug line = 108:4]
  %26 = load i32* %i, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:4]
  %27 = load i32* %j, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:4]
  %28 = load [4 x i8]** %2, align 4, !dbg !159    ; [#uses=1 type=[4 x i8]*] [debug line = 108:4]
  %29 = getelementptr inbounds [4 x i8]* %28, i32 %27, !dbg !159 ; [#uses=1 type=[4 x i8]*] [debug line = 108:4]
  %30 = getelementptr inbounds [4 x i8]* %29, i32 0, i32 %26, !dbg !159 ; [#uses=2 type=i8*] [debug line = 108:4]
  %31 = load i8* %30, align 1, !dbg !159          ; [#uses=1 type=i8] [debug line = 108:4]
  %32 = zext i8 %31 to i32, !dbg !159             ; [#uses=1 type=i32] [debug line = 108:4]
  %33 = xor i32 %32, %25, !dbg !159               ; [#uses=1 type=i32] [debug line = 108:4]
  %34 = trunc i32 %33 to i8, !dbg !159            ; [#uses=1 type=i8] [debug line = 108:4]
  store i8 %34, i8* %30, align 1, !dbg !159       ; [debug line = 108:4]
  br label %35, !dbg !161                         ; [debug line = 109:3]

; <label>:35                                      ; preds = %13
  %36 = load i32* %j, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 106:15]
  %37 = add nsw i32 %36, 1, !dbg !162             ; [#uses=1 type=i32] [debug line = 106:15]
  store i32 %37, i32* %j, align 4, !dbg !162      ; [debug line = 106:15]
  br label %10, !dbg !162                         ; [debug line = 106:15]

; <label>:38                                      ; preds = %10
  br label %39, !dbg !163                         ; [debug line = 110:2]

; <label>:39                                      ; preds = %38
  %40 = load i32* %i, align 4, !dbg !164          ; [#uses=1 type=i32] [debug line = 104:14]
  %41 = add nsw i32 %40, 1, !dbg !164             ; [#uses=1 type=i32] [debug line = 104:14]
  store i32 %41, i32* %i, align 4, !dbg !164      ; [debug line = 104:14]
  br label %6, !dbg !164                          ; [debug line = 104:14]

; <label>:42                                      ; preds = %6
  ret void, !dbg !165                             ; [debug line = 111:1]
}

; [#uses=2]
define void @SubBytes([4 x i8]* %state) nounwind {
  %1 = alloca [4 x i8]*, align 4                  ; [#uses=4 type=[4 x i8]**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [4 x i8]* %state, [4 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i8]** %1}, metadata !166), !dbg !167 ; [debug line = 115:29] [debug variable = state]
  %2 = load [4 x i8]** %1, align 4, !dbg !168     ; [#uses=1 type=[4 x i8]*] [debug line = 116:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i8]*, i32)*)([4 x i8]* %2, i32 4) nounwind, !dbg !168 ; [debug line = 116:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !170), !dbg !171 ; [debug line = 117:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !172), !dbg !173 ; [debug line = 117:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !174        ; [debug line = 118:6]
  br label %3, !dbg !174                          ; [debug line = 118:6]

; <label>:3                                       ; preds = %29, %0
  %4 = load i32* %i, align 4, !dbg !174           ; [#uses=1 type=i32] [debug line = 118:6]
  %5 = icmp slt i32 %4, 4, !dbg !174              ; [#uses=1 type=i1] [debug line = 118:6]
  br i1 %5, label %6, label %32, !dbg !174        ; [debug line = 118:6]

; <label>:6                                       ; preds = %3
  store i32 0, i32* %j, align 4, !dbg !176        ; [debug line = 120:7]
  br label %7, !dbg !176                          ; [debug line = 120:7]

; <label>:7                                       ; preds = %25, %6
  %8 = load i32* %j, align 4, !dbg !176           ; [#uses=1 type=i32] [debug line = 120:7]
  %9 = icmp slt i32 %8, 4, !dbg !176              ; [#uses=1 type=i1] [debug line = 120:7]
  br i1 %9, label %10, label %28, !dbg !176       ; [debug line = 120:7]

; <label>:10                                      ; preds = %7
  %11 = load i32* %j, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 122:18]
  %12 = load i32* %i, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 122:18]
  %13 = load [4 x i8]** %1, align 4, !dbg !179    ; [#uses=1 type=[4 x i8]*] [debug line = 122:18]
  %14 = getelementptr inbounds [4 x i8]* %13, i32 %12, !dbg !179 ; [#uses=1 type=[4 x i8]*] [debug line = 122:18]
  %15 = getelementptr inbounds [4 x i8]* %14, i32 0, i32 %11, !dbg !179 ; [#uses=1 type=i8*] [debug line = 122:18]
  %16 = load i8* %15, align 1, !dbg !179          ; [#uses=1 type=i8] [debug line = 122:18]
  %17 = zext i8 %16 to i32, !dbg !179             ; [#uses=1 type=i32] [debug line = 122:18]
  %18 = call i32 @getSBoxValue(i32 %17), !dbg !179 ; [#uses=1 type=i32] [debug line = 122:18]
  %19 = trunc i32 %18 to i8, !dbg !179            ; [#uses=1 type=i8] [debug line = 122:18]
  %20 = load i32* %j, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 122:18]
  %21 = load i32* %i, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 122:18]
  %22 = load [4 x i8]** %1, align 4, !dbg !179    ; [#uses=1 type=[4 x i8]*] [debug line = 122:18]
  %23 = getelementptr inbounds [4 x i8]* %22, i32 %21, !dbg !179 ; [#uses=1 type=[4 x i8]*] [debug line = 122:18]
  %24 = getelementptr inbounds [4 x i8]* %23, i32 0, i32 %20, !dbg !179 ; [#uses=1 type=i8*] [debug line = 122:18]
  store i8 %19, i8* %24, align 1, !dbg !179       ; [debug line = 122:18]
  br label %25, !dbg !181                         ; [debug line = 124:3]

; <label>:25                                      ; preds = %10
  %26 = load i32* %j, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 120:15]
  %27 = add nsw i32 %26, 1, !dbg !182             ; [#uses=1 type=i32] [debug line = 120:15]
  store i32 %27, i32* %j, align 4, !dbg !182      ; [debug line = 120:15]
  br label %7, !dbg !182                          ; [debug line = 120:15]

; <label>:28                                      ; preds = %7
  br label %29, !dbg !183                         ; [debug line = 125:2]

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4, !dbg !184          ; [#uses=1 type=i32] [debug line = 118:14]
  %31 = add nsw i32 %30, 1, !dbg !184             ; [#uses=1 type=i32] [debug line = 118:14]
  store i32 %31, i32* %i, align 4, !dbg !184      ; [debug line = 118:14]
  br label %3, !dbg !184                          ; [debug line = 118:14]

; <label>:32                                      ; preds = %3
  ret void, !dbg !185                             ; [debug line = 126:1]
}

; [#uses=2]
define void @ShiftRows([4 x i8]* %state) nounwind {
  %1 = alloca [4 x i8]*, align 4                  ; [#uses=26 type=[4 x i8]**]
  %temp = alloca i8, align 1                      ; [#uses=8 type=i8*]
  store [4 x i8]* %state, [4 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i8]** %1}, metadata !186), !dbg !187 ; [debug line = 131:30] [debug variable = state]
  %2 = load [4 x i8]** %1, align 4, !dbg !188     ; [#uses=1 type=[4 x i8]*] [debug line = 132:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i8]*, i32)*)([4 x i8]* %2, i32 4) nounwind, !dbg !188 ; [debug line = 132:2]
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !190), !dbg !191 ; [debug line = 133:16] [debug variable = temp]
  %3 = load [4 x i8]** %1, align 4, !dbg !192     ; [#uses=1 type=[4 x i8]*] [debug line = 136:2]
  %4 = getelementptr inbounds [4 x i8]* %3, i32 1, !dbg !192 ; [#uses=1 type=[4 x i8]*] [debug line = 136:2]
  %5 = getelementptr inbounds [4 x i8]* %4, i32 0, i32 0, !dbg !192 ; [#uses=1 type=i8*] [debug line = 136:2]
  %6 = load i8* %5, align 1, !dbg !192            ; [#uses=1 type=i8] [debug line = 136:2]
  store i8 %6, i8* %temp, align 1, !dbg !192      ; [debug line = 136:2]
  %7 = load [4 x i8]** %1, align 4, !dbg !193     ; [#uses=1 type=[4 x i8]*] [debug line = 137:2]
  %8 = getelementptr inbounds [4 x i8]* %7, i32 1, !dbg !193 ; [#uses=1 type=[4 x i8]*] [debug line = 137:2]
  %9 = getelementptr inbounds [4 x i8]* %8, i32 0, i32 1, !dbg !193 ; [#uses=1 type=i8*] [debug line = 137:2]
  %10 = load i8* %9, align 1, !dbg !193           ; [#uses=1 type=i8] [debug line = 137:2]
  %11 = load [4 x i8]** %1, align 4, !dbg !193    ; [#uses=1 type=[4 x i8]*] [debug line = 137:2]
  %12 = getelementptr inbounds [4 x i8]* %11, i32 1, !dbg !193 ; [#uses=1 type=[4 x i8]*] [debug line = 137:2]
  %13 = getelementptr inbounds [4 x i8]* %12, i32 0, i32 0, !dbg !193 ; [#uses=1 type=i8*] [debug line = 137:2]
  store i8 %10, i8* %13, align 1, !dbg !193       ; [debug line = 137:2]
  %14 = load [4 x i8]** %1, align 4, !dbg !194    ; [#uses=1 type=[4 x i8]*] [debug line = 138:2]
  %15 = getelementptr inbounds [4 x i8]* %14, i32 1, !dbg !194 ; [#uses=1 type=[4 x i8]*] [debug line = 138:2]
  %16 = getelementptr inbounds [4 x i8]* %15, i32 0, i32 2, !dbg !194 ; [#uses=1 type=i8*] [debug line = 138:2]
  %17 = load i8* %16, align 1, !dbg !194          ; [#uses=1 type=i8] [debug line = 138:2]
  %18 = load [4 x i8]** %1, align 4, !dbg !194    ; [#uses=1 type=[4 x i8]*] [debug line = 138:2]
  %19 = getelementptr inbounds [4 x i8]* %18, i32 1, !dbg !194 ; [#uses=1 type=[4 x i8]*] [debug line = 138:2]
  %20 = getelementptr inbounds [4 x i8]* %19, i32 0, i32 1, !dbg !194 ; [#uses=1 type=i8*] [debug line = 138:2]
  store i8 %17, i8* %20, align 1, !dbg !194       ; [debug line = 138:2]
  %21 = load [4 x i8]** %1, align 4, !dbg !195    ; [#uses=1 type=[4 x i8]*] [debug line = 139:2]
  %22 = getelementptr inbounds [4 x i8]* %21, i32 1, !dbg !195 ; [#uses=1 type=[4 x i8]*] [debug line = 139:2]
  %23 = getelementptr inbounds [4 x i8]* %22, i32 0, i32 3, !dbg !195 ; [#uses=1 type=i8*] [debug line = 139:2]
  %24 = load i8* %23, align 1, !dbg !195          ; [#uses=1 type=i8] [debug line = 139:2]
  %25 = load [4 x i8]** %1, align 4, !dbg !195    ; [#uses=1 type=[4 x i8]*] [debug line = 139:2]
  %26 = getelementptr inbounds [4 x i8]* %25, i32 1, !dbg !195 ; [#uses=1 type=[4 x i8]*] [debug line = 139:2]
  %27 = getelementptr inbounds [4 x i8]* %26, i32 0, i32 2, !dbg !195 ; [#uses=1 type=i8*] [debug line = 139:2]
  store i8 %24, i8* %27, align 1, !dbg !195       ; [debug line = 139:2]
  %28 = load i8* %temp, align 1, !dbg !196        ; [#uses=1 type=i8] [debug line = 140:2]
  %29 = load [4 x i8]** %1, align 4, !dbg !196    ; [#uses=1 type=[4 x i8]*] [debug line = 140:2]
  %30 = getelementptr inbounds [4 x i8]* %29, i32 1, !dbg !196 ; [#uses=1 type=[4 x i8]*] [debug line = 140:2]
  %31 = getelementptr inbounds [4 x i8]* %30, i32 0, i32 3, !dbg !196 ; [#uses=1 type=i8*] [debug line = 140:2]
  store i8 %28, i8* %31, align 1, !dbg !196       ; [debug line = 140:2]
  %32 = load [4 x i8]** %1, align 4, !dbg !197    ; [#uses=1 type=[4 x i8]*] [debug line = 143:2]
  %33 = getelementptr inbounds [4 x i8]* %32, i32 2, !dbg !197 ; [#uses=1 type=[4 x i8]*] [debug line = 143:2]
  %34 = getelementptr inbounds [4 x i8]* %33, i32 0, i32 0, !dbg !197 ; [#uses=1 type=i8*] [debug line = 143:2]
  %35 = load i8* %34, align 1, !dbg !197          ; [#uses=1 type=i8] [debug line = 143:2]
  store i8 %35, i8* %temp, align 1, !dbg !197     ; [debug line = 143:2]
  %36 = load [4 x i8]** %1, align 4, !dbg !198    ; [#uses=1 type=[4 x i8]*] [debug line = 144:2]
  %37 = getelementptr inbounds [4 x i8]* %36, i32 2, !dbg !198 ; [#uses=1 type=[4 x i8]*] [debug line = 144:2]
  %38 = getelementptr inbounds [4 x i8]* %37, i32 0, i32 2, !dbg !198 ; [#uses=1 type=i8*] [debug line = 144:2]
  %39 = load i8* %38, align 1, !dbg !198          ; [#uses=1 type=i8] [debug line = 144:2]
  %40 = load [4 x i8]** %1, align 4, !dbg !198    ; [#uses=1 type=[4 x i8]*] [debug line = 144:2]
  %41 = getelementptr inbounds [4 x i8]* %40, i32 2, !dbg !198 ; [#uses=1 type=[4 x i8]*] [debug line = 144:2]
  %42 = getelementptr inbounds [4 x i8]* %41, i32 0, i32 0, !dbg !198 ; [#uses=1 type=i8*] [debug line = 144:2]
  store i8 %39, i8* %42, align 1, !dbg !198       ; [debug line = 144:2]
  %43 = load i8* %temp, align 1, !dbg !199        ; [#uses=1 type=i8] [debug line = 145:2]
  %44 = load [4 x i8]** %1, align 4, !dbg !199    ; [#uses=1 type=[4 x i8]*] [debug line = 145:2]
  %45 = getelementptr inbounds [4 x i8]* %44, i32 2, !dbg !199 ; [#uses=1 type=[4 x i8]*] [debug line = 145:2]
  %46 = getelementptr inbounds [4 x i8]* %45, i32 0, i32 2, !dbg !199 ; [#uses=1 type=i8*] [debug line = 145:2]
  store i8 %43, i8* %46, align 1, !dbg !199       ; [debug line = 145:2]
  %47 = load [4 x i8]** %1, align 4, !dbg !200    ; [#uses=1 type=[4 x i8]*] [debug line = 147:2]
  %48 = getelementptr inbounds [4 x i8]* %47, i32 2, !dbg !200 ; [#uses=1 type=[4 x i8]*] [debug line = 147:2]
  %49 = getelementptr inbounds [4 x i8]* %48, i32 0, i32 1, !dbg !200 ; [#uses=1 type=i8*] [debug line = 147:2]
  %50 = load i8* %49, align 1, !dbg !200          ; [#uses=1 type=i8] [debug line = 147:2]
  store i8 %50, i8* %temp, align 1, !dbg !200     ; [debug line = 147:2]
  %51 = load [4 x i8]** %1, align 4, !dbg !201    ; [#uses=1 type=[4 x i8]*] [debug line = 148:2]
  %52 = getelementptr inbounds [4 x i8]* %51, i32 2, !dbg !201 ; [#uses=1 type=[4 x i8]*] [debug line = 148:2]
  %53 = getelementptr inbounds [4 x i8]* %52, i32 0, i32 3, !dbg !201 ; [#uses=1 type=i8*] [debug line = 148:2]
  %54 = load i8* %53, align 1, !dbg !201          ; [#uses=1 type=i8] [debug line = 148:2]
  %55 = load [4 x i8]** %1, align 4, !dbg !201    ; [#uses=1 type=[4 x i8]*] [debug line = 148:2]
  %56 = getelementptr inbounds [4 x i8]* %55, i32 2, !dbg !201 ; [#uses=1 type=[4 x i8]*] [debug line = 148:2]
  %57 = getelementptr inbounds [4 x i8]* %56, i32 0, i32 1, !dbg !201 ; [#uses=1 type=i8*] [debug line = 148:2]
  store i8 %54, i8* %57, align 1, !dbg !201       ; [debug line = 148:2]
  %58 = load i8* %temp, align 1, !dbg !202        ; [#uses=1 type=i8] [debug line = 149:2]
  %59 = load [4 x i8]** %1, align 4, !dbg !202    ; [#uses=1 type=[4 x i8]*] [debug line = 149:2]
  %60 = getelementptr inbounds [4 x i8]* %59, i32 2, !dbg !202 ; [#uses=1 type=[4 x i8]*] [debug line = 149:2]
  %61 = getelementptr inbounds [4 x i8]* %60, i32 0, i32 3, !dbg !202 ; [#uses=1 type=i8*] [debug line = 149:2]
  store i8 %58, i8* %61, align 1, !dbg !202       ; [debug line = 149:2]
  %62 = load [4 x i8]** %1, align 4, !dbg !203    ; [#uses=1 type=[4 x i8]*] [debug line = 152:2]
  %63 = getelementptr inbounds [4 x i8]* %62, i32 3, !dbg !203 ; [#uses=1 type=[4 x i8]*] [debug line = 152:2]
  %64 = getelementptr inbounds [4 x i8]* %63, i32 0, i32 0, !dbg !203 ; [#uses=1 type=i8*] [debug line = 152:2]
  %65 = load i8* %64, align 1, !dbg !203          ; [#uses=1 type=i8] [debug line = 152:2]
  store i8 %65, i8* %temp, align 1, !dbg !203     ; [debug line = 152:2]
  %66 = load [4 x i8]** %1, align 4, !dbg !204    ; [#uses=1 type=[4 x i8]*] [debug line = 153:2]
  %67 = getelementptr inbounds [4 x i8]* %66, i32 3, !dbg !204 ; [#uses=1 type=[4 x i8]*] [debug line = 153:2]
  %68 = getelementptr inbounds [4 x i8]* %67, i32 0, i32 3, !dbg !204 ; [#uses=1 type=i8*] [debug line = 153:2]
  %69 = load i8* %68, align 1, !dbg !204          ; [#uses=1 type=i8] [debug line = 153:2]
  %70 = load [4 x i8]** %1, align 4, !dbg !204    ; [#uses=1 type=[4 x i8]*] [debug line = 153:2]
  %71 = getelementptr inbounds [4 x i8]* %70, i32 3, !dbg !204 ; [#uses=1 type=[4 x i8]*] [debug line = 153:2]
  %72 = getelementptr inbounds [4 x i8]* %71, i32 0, i32 0, !dbg !204 ; [#uses=1 type=i8*] [debug line = 153:2]
  store i8 %69, i8* %72, align 1, !dbg !204       ; [debug line = 153:2]
  %73 = load [4 x i8]** %1, align 4, !dbg !205    ; [#uses=1 type=[4 x i8]*] [debug line = 154:2]
  %74 = getelementptr inbounds [4 x i8]* %73, i32 3, !dbg !205 ; [#uses=1 type=[4 x i8]*] [debug line = 154:2]
  %75 = getelementptr inbounds [4 x i8]* %74, i32 0, i32 2, !dbg !205 ; [#uses=1 type=i8*] [debug line = 154:2]
  %76 = load i8* %75, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 154:2]
  %77 = load [4 x i8]** %1, align 4, !dbg !205    ; [#uses=1 type=[4 x i8]*] [debug line = 154:2]
  %78 = getelementptr inbounds [4 x i8]* %77, i32 3, !dbg !205 ; [#uses=1 type=[4 x i8]*] [debug line = 154:2]
  %79 = getelementptr inbounds [4 x i8]* %78, i32 0, i32 3, !dbg !205 ; [#uses=1 type=i8*] [debug line = 154:2]
  store i8 %76, i8* %79, align 1, !dbg !205       ; [debug line = 154:2]
  %80 = load [4 x i8]** %1, align 4, !dbg !206    ; [#uses=1 type=[4 x i8]*] [debug line = 155:2]
  %81 = getelementptr inbounds [4 x i8]* %80, i32 3, !dbg !206 ; [#uses=1 type=[4 x i8]*] [debug line = 155:2]
  %82 = getelementptr inbounds [4 x i8]* %81, i32 0, i32 1, !dbg !206 ; [#uses=1 type=i8*] [debug line = 155:2]
  %83 = load i8* %82, align 1, !dbg !206          ; [#uses=1 type=i8] [debug line = 155:2]
  %84 = load [4 x i8]** %1, align 4, !dbg !206    ; [#uses=1 type=[4 x i8]*] [debug line = 155:2]
  %85 = getelementptr inbounds [4 x i8]* %84, i32 3, !dbg !206 ; [#uses=1 type=[4 x i8]*] [debug line = 155:2]
  %86 = getelementptr inbounds [4 x i8]* %85, i32 0, i32 2, !dbg !206 ; [#uses=1 type=i8*] [debug line = 155:2]
  store i8 %83, i8* %86, align 1, !dbg !206       ; [debug line = 155:2]
  %87 = load i8* %temp, align 1, !dbg !207        ; [#uses=1 type=i8] [debug line = 156:2]
  %88 = load [4 x i8]** %1, align 4, !dbg !207    ; [#uses=1 type=[4 x i8]*] [debug line = 156:2]
  %89 = getelementptr inbounds [4 x i8]* %88, i32 3, !dbg !207 ; [#uses=1 type=[4 x i8]*] [debug line = 156:2]
  %90 = getelementptr inbounds [4 x i8]* %89, i32 0, i32 1, !dbg !207 ; [#uses=1 type=i8*] [debug line = 156:2]
  store i8 %87, i8* %90, align 1, !dbg !207       ; [debug line = 156:2]
  ret void, !dbg !208                             ; [debug line = 157:1]
}

; [#uses=1]
define void @MixColumns([4 x i8]* %state) nounwind {
  %1 = alloca [4 x i8]*, align 4                  ; [#uses=18 type=[4 x i8]**]
  %i = alloca i32, align 4                        ; [#uses=20 type=i32*]
  %Tmp = alloca i8, align 1                       ; [#uses=5 type=i8*]
  %Tm = alloca i8, align 1                        ; [#uses=20 type=i8*]
  %t = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store [4 x i8]* %state, [4 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i8]** %1}, metadata !209), !dbg !210 ; [debug line = 163:31] [debug variable = state]
  %2 = load [4 x i8]** %1, align 4, !dbg !211     ; [#uses=1 type=[4 x i8]*] [debug line = 164:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i8]*, i32)*)([4 x i8]* %2, i32 4) nounwind, !dbg !211 ; [debug line = 164:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !213), !dbg !214 ; [debug line = 165:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %Tmp}, metadata !215), !dbg !216 ; [debug line = 166:16] [debug variable = Tmp]
  call void @llvm.dbg.declare(metadata !{i8* %Tm}, metadata !217), !dbg !218 ; [debug line = 166:20] [debug variable = Tm]
  call void @llvm.dbg.declare(metadata !{i8* %t}, metadata !219), !dbg !220 ; [debug line = 166:23] [debug variable = t]
  store i32 0, i32* %i, align 4, !dbg !221        ; [debug line = 167:6]
  br label %3, !dbg !221                          ; [debug line = 167:6]

; <label>:3                                       ; preds = %184, %0
  %4 = load i32* %i, align 4, !dbg !221           ; [#uses=1 type=i32] [debug line = 167:6]
  %5 = icmp slt i32 %4, 4, !dbg !221              ; [#uses=1 type=i1] [debug line = 167:6]
  br i1 %5, label %6, label %187, !dbg !221       ; [debug line = 167:6]

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4, !dbg !223           ; [#uses=1 type=i32] [debug line = 169:3]
  %8 = load [4 x i8]** %1, align 4, !dbg !223     ; [#uses=1 type=[4 x i8]*] [debug line = 169:3]
  %9 = getelementptr inbounds [4 x i8]* %8, i32 0, !dbg !223 ; [#uses=1 type=[4 x i8]*] [debug line = 169:3]
  %10 = getelementptr inbounds [4 x i8]* %9, i32 0, i32 %7, !dbg !223 ; [#uses=1 type=i8*] [debug line = 169:3]
  %11 = load i8* %10, align 1, !dbg !223          ; [#uses=1 type=i8] [debug line = 169:3]
  store i8 %11, i8* %t, align 1, !dbg !223        ; [debug line = 169:3]
  %12 = load i32* %i, align 4, !dbg !225          ; [#uses=1 type=i32] [debug line = 170:3]
  %13 = load [4 x i8]** %1, align 4, !dbg !225    ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %14 = getelementptr inbounds [4 x i8]* %13, i32 0, !dbg !225 ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %15 = getelementptr inbounds [4 x i8]* %14, i32 0, i32 %12, !dbg !225 ; [#uses=1 type=i8*] [debug line = 170:3]
  %16 = load i8* %15, align 1, !dbg !225          ; [#uses=1 type=i8] [debug line = 170:3]
  %17 = zext i8 %16 to i32, !dbg !225             ; [#uses=1 type=i32] [debug line = 170:3]
  %18 = load i32* %i, align 4, !dbg !225          ; [#uses=1 type=i32] [debug line = 170:3]
  %19 = load [4 x i8]** %1, align 4, !dbg !225    ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %20 = getelementptr inbounds [4 x i8]* %19, i32 1, !dbg !225 ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %21 = getelementptr inbounds [4 x i8]* %20, i32 0, i32 %18, !dbg !225 ; [#uses=1 type=i8*] [debug line = 170:3]
  %22 = load i8* %21, align 1, !dbg !225          ; [#uses=1 type=i8] [debug line = 170:3]
  %23 = zext i8 %22 to i32, !dbg !225             ; [#uses=1 type=i32] [debug line = 170:3]
  %24 = xor i32 %17, %23, !dbg !225               ; [#uses=1 type=i32] [debug line = 170:3]
  %25 = load i32* %i, align 4, !dbg !225          ; [#uses=1 type=i32] [debug line = 170:3]
  %26 = load [4 x i8]** %1, align 4, !dbg !225    ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %27 = getelementptr inbounds [4 x i8]* %26, i32 2, !dbg !225 ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %28 = getelementptr inbounds [4 x i8]* %27, i32 0, i32 %25, !dbg !225 ; [#uses=1 type=i8*] [debug line = 170:3]
  %29 = load i8* %28, align 1, !dbg !225          ; [#uses=1 type=i8] [debug line = 170:3]
  %30 = zext i8 %29 to i32, !dbg !225             ; [#uses=1 type=i32] [debug line = 170:3]
  %31 = xor i32 %24, %30, !dbg !225               ; [#uses=1 type=i32] [debug line = 170:3]
  %32 = load i32* %i, align 4, !dbg !225          ; [#uses=1 type=i32] [debug line = 170:3]
  %33 = load [4 x i8]** %1, align 4, !dbg !225    ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %34 = getelementptr inbounds [4 x i8]* %33, i32 3, !dbg !225 ; [#uses=1 type=[4 x i8]*] [debug line = 170:3]
  %35 = getelementptr inbounds [4 x i8]* %34, i32 0, i32 %32, !dbg !225 ; [#uses=1 type=i8*] [debug line = 170:3]
  %36 = load i8* %35, align 1, !dbg !225          ; [#uses=1 type=i8] [debug line = 170:3]
  %37 = zext i8 %36 to i32, !dbg !225             ; [#uses=1 type=i32] [debug line = 170:3]
  %38 = xor i32 %31, %37, !dbg !225               ; [#uses=1 type=i32] [debug line = 170:3]
  %39 = trunc i32 %38 to i8, !dbg !225            ; [#uses=1 type=i8] [debug line = 170:3]
  store i8 %39, i8* %Tmp, align 1, !dbg !225      ; [debug line = 170:3]
  %40 = load i32* %i, align 4, !dbg !226          ; [#uses=1 type=i32] [debug line = 171:3]
  %41 = load [4 x i8]** %1, align 4, !dbg !226    ; [#uses=1 type=[4 x i8]*] [debug line = 171:3]
  %42 = getelementptr inbounds [4 x i8]* %41, i32 0, !dbg !226 ; [#uses=1 type=[4 x i8]*] [debug line = 171:3]
  %43 = getelementptr inbounds [4 x i8]* %42, i32 0, i32 %40, !dbg !226 ; [#uses=1 type=i8*] [debug line = 171:3]
  %44 = load i8* %43, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 171:3]
  %45 = zext i8 %44 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 171:3]
  %46 = load i32* %i, align 4, !dbg !226          ; [#uses=1 type=i32] [debug line = 171:3]
  %47 = load [4 x i8]** %1, align 4, !dbg !226    ; [#uses=1 type=[4 x i8]*] [debug line = 171:3]
  %48 = getelementptr inbounds [4 x i8]* %47, i32 1, !dbg !226 ; [#uses=1 type=[4 x i8]*] [debug line = 171:3]
  %49 = getelementptr inbounds [4 x i8]* %48, i32 0, i32 %46, !dbg !226 ; [#uses=1 type=i8*] [debug line = 171:3]
  %50 = load i8* %49, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 171:3]
  %51 = zext i8 %50 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 171:3]
  %52 = xor i32 %45, %51, !dbg !226               ; [#uses=1 type=i32] [debug line = 171:3]
  %53 = trunc i32 %52 to i8, !dbg !226            ; [#uses=1 type=i8] [debug line = 171:3]
  store i8 %53, i8* %Tm, align 1, !dbg !226       ; [debug line = 171:3]
  %54 = load i8* %Tm, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 171:36]
  %55 = zext i8 %54 to i32, !dbg !227             ; [#uses=1 type=i32] [debug line = 171:36]
  %56 = shl i32 %55, 1, !dbg !227                 ; [#uses=1 type=i32] [debug line = 171:36]
  %57 = load i8* %Tm, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 171:36]
  %58 = zext i8 %57 to i32, !dbg !227             ; [#uses=1 type=i32] [debug line = 171:36]
  %59 = ashr i32 %58, 7, !dbg !227                ; [#uses=1 type=i32] [debug line = 171:36]
  %60 = and i32 %59, 1, !dbg !227                 ; [#uses=1 type=i32] [debug line = 171:36]
  %61 = mul nsw i32 %60, 27, !dbg !227            ; [#uses=1 type=i32] [debug line = 171:36]
  %62 = xor i32 %56, %61, !dbg !227               ; [#uses=1 type=i32] [debug line = 171:36]
  %63 = trunc i32 %62 to i8, !dbg !227            ; [#uses=1 type=i8] [debug line = 171:36]
  store i8 %63, i8* %Tm, align 1, !dbg !227       ; [debug line = 171:36]
  %64 = load i8* %Tm, align 1, !dbg !228          ; [#uses=1 type=i8] [debug line = 171:77]
  %65 = zext i8 %64 to i32, !dbg !228             ; [#uses=1 type=i32] [debug line = 171:77]
  %66 = load i8* %Tmp, align 1, !dbg !228         ; [#uses=1 type=i8] [debug line = 171:77]
  %67 = zext i8 %66 to i32, !dbg !228             ; [#uses=1 type=i32] [debug line = 171:77]
  %68 = xor i32 %65, %67, !dbg !228               ; [#uses=1 type=i32] [debug line = 171:77]
  %69 = load i32* %i, align 4, !dbg !228          ; [#uses=1 type=i32] [debug line = 171:77]
  %70 = load [4 x i8]** %1, align 4, !dbg !228    ; [#uses=1 type=[4 x i8]*] [debug line = 171:77]
  %71 = getelementptr inbounds [4 x i8]* %70, i32 0, !dbg !228 ; [#uses=1 type=[4 x i8]*] [debug line = 171:77]
  %72 = getelementptr inbounds [4 x i8]* %71, i32 0, i32 %69, !dbg !228 ; [#uses=2 type=i8*] [debug line = 171:77]
  %73 = load i8* %72, align 1, !dbg !228          ; [#uses=1 type=i8] [debug line = 171:77]
  %74 = zext i8 %73 to i32, !dbg !228             ; [#uses=1 type=i32] [debug line = 171:77]
  %75 = xor i32 %74, %68, !dbg !228               ; [#uses=1 type=i32] [debug line = 171:77]
  %76 = trunc i32 %75 to i8, !dbg !228            ; [#uses=1 type=i8] [debug line = 171:77]
  store i8 %76, i8* %72, align 1, !dbg !228       ; [debug line = 171:77]
  %77 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %78 = load [4 x i8]** %1, align 4, !dbg !229    ; [#uses=1 type=[4 x i8]*] [debug line = 172:3]
  %79 = getelementptr inbounds [4 x i8]* %78, i32 1, !dbg !229 ; [#uses=1 type=[4 x i8]*] [debug line = 172:3]
  %80 = getelementptr inbounds [4 x i8]* %79, i32 0, i32 %77, !dbg !229 ; [#uses=1 type=i8*] [debug line = 172:3]
  %81 = load i8* %80, align 1, !dbg !229          ; [#uses=1 type=i8] [debug line = 172:3]
  %82 = zext i8 %81 to i32, !dbg !229             ; [#uses=1 type=i32] [debug line = 172:3]
  %83 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %84 = load [4 x i8]** %1, align 4, !dbg !229    ; [#uses=1 type=[4 x i8]*] [debug line = 172:3]
  %85 = getelementptr inbounds [4 x i8]* %84, i32 2, !dbg !229 ; [#uses=1 type=[4 x i8]*] [debug line = 172:3]
  %86 = getelementptr inbounds [4 x i8]* %85, i32 0, i32 %83, !dbg !229 ; [#uses=1 type=i8*] [debug line = 172:3]
  %87 = load i8* %86, align 1, !dbg !229          ; [#uses=1 type=i8] [debug line = 172:3]
  %88 = zext i8 %87 to i32, !dbg !229             ; [#uses=1 type=i32] [debug line = 172:3]
  %89 = xor i32 %82, %88, !dbg !229               ; [#uses=1 type=i32] [debug line = 172:3]
  %90 = trunc i32 %89 to i8, !dbg !229            ; [#uses=1 type=i8] [debug line = 172:3]
  store i8 %90, i8* %Tm, align 1, !dbg !229       ; [debug line = 172:3]
  %91 = load i8* %Tm, align 1, !dbg !230          ; [#uses=1 type=i8] [debug line = 172:36]
  %92 = zext i8 %91 to i32, !dbg !230             ; [#uses=1 type=i32] [debug line = 172:36]
  %93 = shl i32 %92, 1, !dbg !230                 ; [#uses=1 type=i32] [debug line = 172:36]
  %94 = load i8* %Tm, align 1, !dbg !230          ; [#uses=1 type=i8] [debug line = 172:36]
  %95 = zext i8 %94 to i32, !dbg !230             ; [#uses=1 type=i32] [debug line = 172:36]
  %96 = ashr i32 %95, 7, !dbg !230                ; [#uses=1 type=i32] [debug line = 172:36]
  %97 = and i32 %96, 1, !dbg !230                 ; [#uses=1 type=i32] [debug line = 172:36]
  %98 = mul nsw i32 %97, 27, !dbg !230            ; [#uses=1 type=i32] [debug line = 172:36]
  %99 = xor i32 %93, %98, !dbg !230               ; [#uses=1 type=i32] [debug line = 172:36]
  %100 = trunc i32 %99 to i8, !dbg !230           ; [#uses=1 type=i8] [debug line = 172:36]
  store i8 %100, i8* %Tm, align 1, !dbg !230      ; [debug line = 172:36]
  %101 = load i8* %Tm, align 1, !dbg !231         ; [#uses=1 type=i8] [debug line = 172:77]
  %102 = zext i8 %101 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 172:77]
  %103 = load i8* %Tmp, align 1, !dbg !231        ; [#uses=1 type=i8] [debug line = 172:77]
  %104 = zext i8 %103 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 172:77]
  %105 = xor i32 %102, %104, !dbg !231            ; [#uses=1 type=i32] [debug line = 172:77]
  %106 = load i32* %i, align 4, !dbg !231         ; [#uses=1 type=i32] [debug line = 172:77]
  %107 = load [4 x i8]** %1, align 4, !dbg !231   ; [#uses=1 type=[4 x i8]*] [debug line = 172:77]
  %108 = getelementptr inbounds [4 x i8]* %107, i32 1, !dbg !231 ; [#uses=1 type=[4 x i8]*] [debug line = 172:77]
  %109 = getelementptr inbounds [4 x i8]* %108, i32 0, i32 %106, !dbg !231 ; [#uses=2 type=i8*] [debug line = 172:77]
  %110 = load i8* %109, align 1, !dbg !231        ; [#uses=1 type=i8] [debug line = 172:77]
  %111 = zext i8 %110 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 172:77]
  %112 = xor i32 %111, %105, !dbg !231            ; [#uses=1 type=i32] [debug line = 172:77]
  %113 = trunc i32 %112 to i8, !dbg !231          ; [#uses=1 type=i8] [debug line = 172:77]
  store i8 %113, i8* %109, align 1, !dbg !231     ; [debug line = 172:77]
  %114 = load i32* %i, align 4, !dbg !232         ; [#uses=1 type=i32] [debug line = 173:3]
  %115 = load [4 x i8]** %1, align 4, !dbg !232   ; [#uses=1 type=[4 x i8]*] [debug line = 173:3]
  %116 = getelementptr inbounds [4 x i8]* %115, i32 2, !dbg !232 ; [#uses=1 type=[4 x i8]*] [debug line = 173:3]
  %117 = getelementptr inbounds [4 x i8]* %116, i32 0, i32 %114, !dbg !232 ; [#uses=1 type=i8*] [debug line = 173:3]
  %118 = load i8* %117, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 173:3]
  %119 = zext i8 %118 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 173:3]
  %120 = load i32* %i, align 4, !dbg !232         ; [#uses=1 type=i32] [debug line = 173:3]
  %121 = load [4 x i8]** %1, align 4, !dbg !232   ; [#uses=1 type=[4 x i8]*] [debug line = 173:3]
  %122 = getelementptr inbounds [4 x i8]* %121, i32 3, !dbg !232 ; [#uses=1 type=[4 x i8]*] [debug line = 173:3]
  %123 = getelementptr inbounds [4 x i8]* %122, i32 0, i32 %120, !dbg !232 ; [#uses=1 type=i8*] [debug line = 173:3]
  %124 = load i8* %123, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 173:3]
  %125 = zext i8 %124 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 173:3]
  %126 = xor i32 %119, %125, !dbg !232            ; [#uses=1 type=i32] [debug line = 173:3]
  %127 = trunc i32 %126 to i8, !dbg !232          ; [#uses=1 type=i8] [debug line = 173:3]
  store i8 %127, i8* %Tm, align 1, !dbg !232      ; [debug line = 173:3]
  %128 = load i8* %Tm, align 1, !dbg !233         ; [#uses=1 type=i8] [debug line = 173:36]
  %129 = zext i8 %128 to i32, !dbg !233           ; [#uses=1 type=i32] [debug line = 173:36]
  %130 = shl i32 %129, 1, !dbg !233               ; [#uses=1 type=i32] [debug line = 173:36]
  %131 = load i8* %Tm, align 1, !dbg !233         ; [#uses=1 type=i8] [debug line = 173:36]
  %132 = zext i8 %131 to i32, !dbg !233           ; [#uses=1 type=i32] [debug line = 173:36]
  %133 = ashr i32 %132, 7, !dbg !233              ; [#uses=1 type=i32] [debug line = 173:36]
  %134 = and i32 %133, 1, !dbg !233               ; [#uses=1 type=i32] [debug line = 173:36]
  %135 = mul nsw i32 %134, 27, !dbg !233          ; [#uses=1 type=i32] [debug line = 173:36]
  %136 = xor i32 %130, %135, !dbg !233            ; [#uses=1 type=i32] [debug line = 173:36]
  %137 = trunc i32 %136 to i8, !dbg !233          ; [#uses=1 type=i8] [debug line = 173:36]
  store i8 %137, i8* %Tm, align 1, !dbg !233      ; [debug line = 173:36]
  %138 = load i8* %Tm, align 1, !dbg !234         ; [#uses=1 type=i8] [debug line = 173:77]
  %139 = zext i8 %138 to i32, !dbg !234           ; [#uses=1 type=i32] [debug line = 173:77]
  %140 = load i8* %Tmp, align 1, !dbg !234        ; [#uses=1 type=i8] [debug line = 173:77]
  %141 = zext i8 %140 to i32, !dbg !234           ; [#uses=1 type=i32] [debug line = 173:77]
  %142 = xor i32 %139, %141, !dbg !234            ; [#uses=1 type=i32] [debug line = 173:77]
  %143 = load i32* %i, align 4, !dbg !234         ; [#uses=1 type=i32] [debug line = 173:77]
  %144 = load [4 x i8]** %1, align 4, !dbg !234   ; [#uses=1 type=[4 x i8]*] [debug line = 173:77]
  %145 = getelementptr inbounds [4 x i8]* %144, i32 2, !dbg !234 ; [#uses=1 type=[4 x i8]*] [debug line = 173:77]
  %146 = getelementptr inbounds [4 x i8]* %145, i32 0, i32 %143, !dbg !234 ; [#uses=2 type=i8*] [debug line = 173:77]
  %147 = load i8* %146, align 1, !dbg !234        ; [#uses=1 type=i8] [debug line = 173:77]
  %148 = zext i8 %147 to i32, !dbg !234           ; [#uses=1 type=i32] [debug line = 173:77]
  %149 = xor i32 %148, %142, !dbg !234            ; [#uses=1 type=i32] [debug line = 173:77]
  %150 = trunc i32 %149 to i8, !dbg !234          ; [#uses=1 type=i8] [debug line = 173:77]
  store i8 %150, i8* %146, align 1, !dbg !234     ; [debug line = 173:77]
  %151 = load i32* %i, align 4, !dbg !235         ; [#uses=1 type=i32] [debug line = 174:3]
  %152 = load [4 x i8]** %1, align 4, !dbg !235   ; [#uses=1 type=[4 x i8]*] [debug line = 174:3]
  %153 = getelementptr inbounds [4 x i8]* %152, i32 3, !dbg !235 ; [#uses=1 type=[4 x i8]*] [debug line = 174:3]
  %154 = getelementptr inbounds [4 x i8]* %153, i32 0, i32 %151, !dbg !235 ; [#uses=1 type=i8*] [debug line = 174:3]
  %155 = load i8* %154, align 1, !dbg !235        ; [#uses=1 type=i8] [debug line = 174:3]
  %156 = zext i8 %155 to i32, !dbg !235           ; [#uses=1 type=i32] [debug line = 174:3]
  %157 = load i8* %t, align 1, !dbg !235          ; [#uses=1 type=i8] [debug line = 174:3]
  %158 = zext i8 %157 to i32, !dbg !235           ; [#uses=1 type=i32] [debug line = 174:3]
  %159 = xor i32 %156, %158, !dbg !235            ; [#uses=1 type=i32] [debug line = 174:3]
  %160 = trunc i32 %159 to i8, !dbg !235          ; [#uses=1 type=i8] [debug line = 174:3]
  store i8 %160, i8* %Tm, align 1, !dbg !235      ; [debug line = 174:3]
  %161 = load i8* %Tm, align 1, !dbg !236         ; [#uses=1 type=i8] [debug line = 174:26]
  %162 = zext i8 %161 to i32, !dbg !236           ; [#uses=1 type=i32] [debug line = 174:26]
  %163 = shl i32 %162, 1, !dbg !236               ; [#uses=1 type=i32] [debug line = 174:26]
  %164 = load i8* %Tm, align 1, !dbg !236         ; [#uses=1 type=i8] [debug line = 174:26]
  %165 = zext i8 %164 to i32, !dbg !236           ; [#uses=1 type=i32] [debug line = 174:26]
  %166 = ashr i32 %165, 7, !dbg !236              ; [#uses=1 type=i32] [debug line = 174:26]
  %167 = and i32 %166, 1, !dbg !236               ; [#uses=1 type=i32] [debug line = 174:26]
  %168 = mul nsw i32 %167, 27, !dbg !236          ; [#uses=1 type=i32] [debug line = 174:26]
  %169 = xor i32 %163, %168, !dbg !236            ; [#uses=1 type=i32] [debug line = 174:26]
  %170 = trunc i32 %169 to i8, !dbg !236          ; [#uses=1 type=i8] [debug line = 174:26]
  store i8 %170, i8* %Tm, align 1, !dbg !236      ; [debug line = 174:26]
  %171 = load i8* %Tm, align 1, !dbg !237         ; [#uses=1 type=i8] [debug line = 174:67]
  %172 = zext i8 %171 to i32, !dbg !237           ; [#uses=1 type=i32] [debug line = 174:67]
  %173 = load i8* %Tmp, align 1, !dbg !237        ; [#uses=1 type=i8] [debug line = 174:67]
  %174 = zext i8 %173 to i32, !dbg !237           ; [#uses=1 type=i32] [debug line = 174:67]
  %175 = xor i32 %172, %174, !dbg !237            ; [#uses=1 type=i32] [debug line = 174:67]
  %176 = load i32* %i, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 174:67]
  %177 = load [4 x i8]** %1, align 4, !dbg !237   ; [#uses=1 type=[4 x i8]*] [debug line = 174:67]
  %178 = getelementptr inbounds [4 x i8]* %177, i32 3, !dbg !237 ; [#uses=1 type=[4 x i8]*] [debug line = 174:67]
  %179 = getelementptr inbounds [4 x i8]* %178, i32 0, i32 %176, !dbg !237 ; [#uses=2 type=i8*] [debug line = 174:67]
  %180 = load i8* %179, align 1, !dbg !237        ; [#uses=1 type=i8] [debug line = 174:67]
  %181 = zext i8 %180 to i32, !dbg !237           ; [#uses=1 type=i32] [debug line = 174:67]
  %182 = xor i32 %181, %175, !dbg !237            ; [#uses=1 type=i32] [debug line = 174:67]
  %183 = trunc i32 %182 to i8, !dbg !237          ; [#uses=1 type=i8] [debug line = 174:67]
  store i8 %183, i8* %179, align 1, !dbg !237     ; [debug line = 174:67]
  br label %184, !dbg !238                        ; [debug line = 175:2]

; <label>:184                                     ; preds = %6
  %185 = load i32* %i, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 167:14]
  %186 = add nsw i32 %185, 1, !dbg !239           ; [#uses=1 type=i32] [debug line = 167:14]
  store i32 %186, i32* %i, align 4, !dbg !239     ; [debug line = 167:14]
  br label %3, !dbg !239                          ; [debug line = 167:14]

; <label>:187                                     ; preds = %3
  ret void, !dbg !240                             ; [debug line = 176:1]
}

; [#uses=0]
define void @Cipher(i32 %Nr, i32 %Nk, i8* %out) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %3 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %Rcon = alloca [255 x i32], align 4             ; [#uses=2 type=[255 x i32]*]
  %i = alloca i32, align 4                        ; [#uses=20 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %round = alloca i32, align 4                    ; [#uses=6 type=i32*]
  %state = alloca [4 x [4 x i8]], align 1         ; [#uses=10 type=[4 x [4 x i8]]*]
  %RoundKey = alloca [240 x i8], align 1          ; [#uses=4 type=[240 x i8]*]
  %Key = alloca [32 x i8], align 1                ; [#uses=2 type=[32 x i8]*]
  %in = alloca [16 x i8], align 1                 ; [#uses=2 type=[16 x i8]*]
  %temp = alloca [16 x i8], align 1               ; [#uses=2 type=[16 x i8]*]
  %temp2 = alloca [16 x i8], align 1              ; [#uses=2 type=[16 x i8]*]
  store i32 %Nr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !241), !dbg !242 ; [debug line = 179:17] [debug variable = Nr]
  store i32 %Nk, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !243), !dbg !244 ; [debug line = 179:24] [debug variable = Nk]
  store i8* %out, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !245), !dbg !246 ; [debug line = 179:41] [debug variable = out]
  %4 = load i8** %3, align 4, !dbg !247           ; [#uses=1 type=i8*] [debug line = 180:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 16) nounwind, !dbg !247 ; [debug line = 180:2]
  call void @llvm.dbg.declare(metadata !{[255 x i32]* %Rcon}, metadata !249), !dbg !253 ; [debug line = 183:6] [debug variable = Rcon]
  %5 = bitcast [255 x i32]* %Rcon to i8*, !dbg !254 ; [#uses=1 type=i8*] [debug line = 199:93]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([255 x i32]* @Cipher.Rcon to i8*), i32 1020, i32 4, i1 false), !dbg !254 ; [debug line = 199:93]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !255), !dbg !256 ; [debug line = 200:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !257), !dbg !258 ; [debug line = 200:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %round}, metadata !259), !dbg !260 ; [debug line = 200:10] [debug variable = round]
  store i32 0, i32* %round, align 4, !dbg !261    ; [debug line = 200:17]
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i8]]* %state}, metadata !262), !dbg !265 ; [debug line = 201:16] [debug variable = state]
  call void @llvm.dbg.declare(metadata !{[240 x i8]* %RoundKey}, metadata !266), !dbg !270 ; [debug line = 202:16] [debug variable = RoundKey]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %Key}, metadata !271), !dbg !275 ; [debug line = 203:16] [debug variable = Key]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %in}, metadata !276), !dbg !280 ; [debug line = 204:16] [debug variable = in]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %temp}, metadata !281), !dbg !282 ; [debug line = 205:16] [debug variable = temp]
  %6 = bitcast [16 x i8]* %temp to i8*, !dbg !283 ; [#uses=1 type=i8*] [debug line = 205:123]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* getelementptr inbounds ([16 x i8]* @Cipher.temp, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !283 ; [debug line = 205:123]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %temp2}, metadata !284), !dbg !285 ; [debug line = 206:16] [debug variable = temp2]
  %7 = bitcast [16 x i8]* %temp2 to i8*, !dbg !286 ; [#uses=1 type=i8*] [debug line = 206:123]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* getelementptr inbounds ([16 x i8]* @Cipher.temp2, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !286 ; [debug line = 206:123]
  store i32 0, i32* %i, align 4, !dbg !287        ; [debug line = 208:6]
  br label %8, !dbg !287                          ; [debug line = 208:6]

; <label>:8                                       ; preds = %24, %0
  %9 = load i32* %i, align 4, !dbg !287           ; [#uses=1 type=i32] [debug line = 208:6]
  %10 = load i32* %2, align 4, !dbg !287          ; [#uses=1 type=i32] [debug line = 208:6]
  %11 = mul nsw i32 %10, 4, !dbg !287             ; [#uses=1 type=i32] [debug line = 208:6]
  %12 = icmp slt i32 %9, %11, !dbg !287           ; [#uses=1 type=i1] [debug line = 208:6]
  br i1 %12, label %13, label %27, !dbg !287      ; [debug line = 208:6]

; <label>:13                                      ; preds = %8
  %14 = load i32* %i, align 4, !dbg !289          ; [#uses=1 type=i32] [debug line = 210:3]
  %15 = getelementptr inbounds [16 x i8]* %temp, i32 0, i32 %14, !dbg !289 ; [#uses=1 type=i8*] [debug line = 210:3]
  %16 = load i8* %15, align 1, !dbg !289          ; [#uses=1 type=i8] [debug line = 210:3]
  %17 = load i32* %i, align 4, !dbg !289          ; [#uses=1 type=i32] [debug line = 210:3]
  %18 = getelementptr inbounds [32 x i8]* %Key, i32 0, i32 %17, !dbg !289 ; [#uses=1 type=i8*] [debug line = 210:3]
  store i8 %16, i8* %18, align 1, !dbg !289       ; [debug line = 210:3]
  %19 = load i32* %i, align 4, !dbg !291          ; [#uses=1 type=i32] [debug line = 211:3]
  %20 = getelementptr inbounds [16 x i8]* %temp2, i32 0, i32 %19, !dbg !291 ; [#uses=1 type=i8*] [debug line = 211:3]
  %21 = load i8* %20, align 1, !dbg !291          ; [#uses=1 type=i8] [debug line = 211:3]
  %22 = load i32* %i, align 4, !dbg !291          ; [#uses=1 type=i32] [debug line = 211:3]
  %23 = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %22, !dbg !291 ; [#uses=1 type=i8*] [debug line = 211:3]
  store i8 %21, i8* %23, align 1, !dbg !291       ; [debug line = 211:3]
  br label %24, !dbg !292                         ; [debug line = 212:2]

; <label>:24                                      ; preds = %13
  %25 = load i32* %i, align 4, !dbg !293          ; [#uses=1 type=i32] [debug line = 208:17]
  %26 = add nsw i32 %25, 1, !dbg !293             ; [#uses=1 type=i32] [debug line = 208:17]
  store i32 %26, i32* %i, align 4, !dbg !293      ; [debug line = 208:17]
  br label %8, !dbg !293                          ; [debug line = 208:17]

; <label>:27                                      ; preds = %8
  %28 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !294 ; [#uses=1 type=i8*] [debug line = 215:2]
  %29 = getelementptr inbounds [32 x i8]* %Key, i32 0, i32 0, !dbg !294 ; [#uses=1 type=i8*] [debug line = 215:2]
  %30 = getelementptr inbounds [255 x i32]* %Rcon, i32 0, i32 0, !dbg !294 ; [#uses=1 type=i32*] [debug line = 215:2]
  %31 = load i32* %2, align 4, !dbg !294          ; [#uses=1 type=i32] [debug line = 215:2]
  %32 = load i32* %1, align 4, !dbg !294          ; [#uses=1 type=i32] [debug line = 215:2]
  call void @KeyExpansion(i8* %28, i8* %29, i32* %30, i32 %31, i32 %32), !dbg !294 ; [debug line = 215:2]
  store i32 0, i32* %i, align 4, !dbg !295        ; [debug line = 218:6]
  br label %33, !dbg !295                         ; [debug line = 218:6]

; <label>:33                                      ; preds = %55, %27
  %34 = load i32* %i, align 4, !dbg !295          ; [#uses=1 type=i32] [debug line = 218:6]
  %35 = icmp slt i32 %34, 4, !dbg !295            ; [#uses=1 type=i1] [debug line = 218:6]
  br i1 %35, label %36, label %58, !dbg !295      ; [debug line = 218:6]

; <label>:36                                      ; preds = %33
  store i32 0, i32* %j, align 4, !dbg !297        ; [debug line = 220:7]
  br label %37, !dbg !297                         ; [debug line = 220:7]

; <label>:37                                      ; preds = %51, %36
  %38 = load i32* %j, align 4, !dbg !297          ; [#uses=1 type=i32] [debug line = 220:7]
  %39 = icmp slt i32 %38, 4, !dbg !297            ; [#uses=1 type=i1] [debug line = 220:7]
  br i1 %39, label %40, label %54, !dbg !297      ; [debug line = 220:7]

; <label>:40                                      ; preds = %37
  %41 = load i32* %i, align 4, !dbg !300          ; [#uses=1 type=i32] [debug line = 222:4]
  %42 = mul nsw i32 %41, 4, !dbg !300             ; [#uses=1 type=i32] [debug line = 222:4]
  %43 = load i32* %j, align 4, !dbg !300          ; [#uses=1 type=i32] [debug line = 222:4]
  %44 = add nsw i32 %42, %43, !dbg !300           ; [#uses=1 type=i32] [debug line = 222:4]
  %45 = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %44, !dbg !300 ; [#uses=1 type=i8*] [debug line = 222:4]
  %46 = load i8* %45, align 1, !dbg !300          ; [#uses=1 type=i8] [debug line = 222:4]
  %47 = load i32* %i, align 4, !dbg !300          ; [#uses=1 type=i32] [debug line = 222:4]
  %48 = load i32* %j, align 4, !dbg !300          ; [#uses=1 type=i32] [debug line = 222:4]
  %49 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %48, !dbg !300 ; [#uses=1 type=[4 x i8]*] [debug line = 222:4]
  %50 = getelementptr inbounds [4 x i8]* %49, i32 0, i32 %47, !dbg !300 ; [#uses=1 type=i8*] [debug line = 222:4]
  store i8 %46, i8* %50, align 1, !dbg !300       ; [debug line = 222:4]
  br label %51, !dbg !302                         ; [debug line = 223:3]

; <label>:51                                      ; preds = %40
  %52 = load i32* %j, align 4, !dbg !303          ; [#uses=1 type=i32] [debug line = 220:15]
  %53 = add nsw i32 %52, 1, !dbg !303             ; [#uses=1 type=i32] [debug line = 220:15]
  store i32 %53, i32* %j, align 4, !dbg !303      ; [debug line = 220:15]
  br label %37, !dbg !303                         ; [debug line = 220:15]

; <label>:54                                      ; preds = %37
  br label %55, !dbg !304                         ; [debug line = 224:2]

; <label>:55                                      ; preds = %54
  %56 = load i32* %i, align 4, !dbg !305          ; [#uses=1 type=i32] [debug line = 218:14]
  %57 = add nsw i32 %56, 1, !dbg !305             ; [#uses=1 type=i32] [debug line = 218:14]
  store i32 %57, i32* %i, align 4, !dbg !305      ; [debug line = 218:14]
  br label %33, !dbg !305                         ; [debug line = 218:14]

; <label>:58                                      ; preds = %33
  %59 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !306 ; [#uses=1 type=[4 x i8]*] [debug line = 227:2]
  %60 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !306 ; [#uses=1 type=i8*] [debug line = 227:2]
  call void @AddRoundKey(i32 0, [4 x i8]* %59, i8* %60), !dbg !306 ; [debug line = 227:2]
  store i32 1, i32* %round, align 4, !dbg !307    ; [debug line = 232:6]
  br label %61, !dbg !307                         ; [debug line = 232:6]

; <label>:61                                      ; preds = %72, %58
  %62 = load i32* %round, align 4, !dbg !307      ; [#uses=1 type=i32] [debug line = 232:6]
  %63 = load i32* %1, align 4, !dbg !307          ; [#uses=1 type=i32] [debug line = 232:6]
  %64 = icmp slt i32 %62, %63, !dbg !307          ; [#uses=1 type=i1] [debug line = 232:6]
  br i1 %64, label %65, label %75, !dbg !307      ; [debug line = 232:6]

; <label>:65                                      ; preds = %61
  %66 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !309 ; [#uses=1 type=[4 x i8]*] [debug line = 234:3]
  call void @SubBytes([4 x i8]* %66), !dbg !309   ; [debug line = 234:3]
  %67 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !311 ; [#uses=1 type=[4 x i8]*] [debug line = 235:3]
  call void @ShiftRows([4 x i8]* %67), !dbg !311  ; [debug line = 235:3]
  %68 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !312 ; [#uses=1 type=[4 x i8]*] [debug line = 236:3]
  call void @MixColumns([4 x i8]* %68), !dbg !312 ; [debug line = 236:3]
  %69 = load i32* %round, align 4, !dbg !313      ; [#uses=1 type=i32] [debug line = 237:3]
  %70 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !313 ; [#uses=1 type=[4 x i8]*] [debug line = 237:3]
  %71 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !313 ; [#uses=1 type=i8*] [debug line = 237:3]
  call void @AddRoundKey(i32 %69, [4 x i8]* %70, i8* %71), !dbg !313 ; [debug line = 237:3]
  br label %72, !dbg !314                         ; [debug line = 238:2]

; <label>:72                                      ; preds = %65
  %73 = load i32* %round, align 4, !dbg !315      ; [#uses=1 type=i32] [debug line = 232:23]
  %74 = add nsw i32 %73, 1, !dbg !315             ; [#uses=1 type=i32] [debug line = 232:23]
  store i32 %74, i32* %round, align 4, !dbg !315  ; [debug line = 232:23]
  br label %61, !dbg !315                         ; [debug line = 232:23]

; <label>:75                                      ; preds = %61
  %76 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !316 ; [#uses=1 type=[4 x i8]*] [debug line = 242:2]
  call void @SubBytes([4 x i8]* %76), !dbg !316   ; [debug line = 242:2]
  %77 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !317 ; [#uses=1 type=[4 x i8]*] [debug line = 243:2]
  call void @ShiftRows([4 x i8]* %77), !dbg !317  ; [debug line = 243:2]
  %78 = load i32* %1, align 4, !dbg !318          ; [#uses=1 type=i32] [debug line = 244:2]
  %79 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !318 ; [#uses=1 type=[4 x i8]*] [debug line = 244:2]
  %80 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !318 ; [#uses=1 type=i8*] [debug line = 244:2]
  call void @AddRoundKey(i32 %78, [4 x i8]* %79, i8* %80), !dbg !318 ; [debug line = 244:2]
  store i32 0, i32* %i, align 4, !dbg !319        ; [debug line = 248:6]
  br label %81, !dbg !319                         ; [debug line = 248:6]

; <label>:81                                      ; preds = %104, %75
  %82 = load i32* %i, align 4, !dbg !319          ; [#uses=1 type=i32] [debug line = 248:6]
  %83 = icmp slt i32 %82, 4, !dbg !319            ; [#uses=1 type=i1] [debug line = 248:6]
  br i1 %83, label %84, label %107, !dbg !319     ; [debug line = 248:6]

; <label>:84                                      ; preds = %81
  store i32 0, i32* %j, align 4, !dbg !321        ; [debug line = 250:7]
  br label %85, !dbg !321                         ; [debug line = 250:7]

; <label>:85                                      ; preds = %100, %84
  %86 = load i32* %j, align 4, !dbg !321          ; [#uses=1 type=i32] [debug line = 250:7]
  %87 = icmp slt i32 %86, 4, !dbg !321            ; [#uses=1 type=i1] [debug line = 250:7]
  br i1 %87, label %88, label %103, !dbg !321     ; [debug line = 250:7]

; <label>:88                                      ; preds = %85
  %89 = load i32* %i, align 4, !dbg !324          ; [#uses=1 type=i32] [debug line = 252:4]
  %90 = load i32* %j, align 4, !dbg !324          ; [#uses=1 type=i32] [debug line = 252:4]
  %91 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %90, !dbg !324 ; [#uses=1 type=[4 x i8]*] [debug line = 252:4]
  %92 = getelementptr inbounds [4 x i8]* %91, i32 0, i32 %89, !dbg !324 ; [#uses=1 type=i8*] [debug line = 252:4]
  %93 = load i8* %92, align 1, !dbg !324          ; [#uses=1 type=i8] [debug line = 252:4]
  %94 = load i32* %i, align 4, !dbg !324          ; [#uses=1 type=i32] [debug line = 252:4]
  %95 = mul nsw i32 %94, 4, !dbg !324             ; [#uses=1 type=i32] [debug line = 252:4]
  %96 = load i32* %j, align 4, !dbg !324          ; [#uses=1 type=i32] [debug line = 252:4]
  %97 = add nsw i32 %95, %96, !dbg !324           ; [#uses=1 type=i32] [debug line = 252:4]
  %98 = load i8** %3, align 4, !dbg !324          ; [#uses=1 type=i8*] [debug line = 252:4]
  %99 = getelementptr inbounds i8* %98, i32 %97, !dbg !324 ; [#uses=1 type=i8*] [debug line = 252:4]
  store i8 %93, i8* %99, align 1, !dbg !324       ; [debug line = 252:4]
  br label %100, !dbg !326                        ; [debug line = 253:3]

; <label>:100                                     ; preds = %88
  %101 = load i32* %j, align 4, !dbg !327         ; [#uses=1 type=i32] [debug line = 250:15]
  %102 = add nsw i32 %101, 1, !dbg !327           ; [#uses=1 type=i32] [debug line = 250:15]
  store i32 %102, i32* %j, align 4, !dbg !327     ; [debug line = 250:15]
  br label %85, !dbg !327                         ; [debug line = 250:15]

; <label>:103                                     ; preds = %85
  br label %104, !dbg !328                        ; [debug line = 254:2]

; <label>:104                                     ; preds = %103
  %105 = load i32* %i, align 4, !dbg !329         ; [#uses=1 type=i32] [debug line = 248:14]
  %106 = add nsw i32 %105, 1, !dbg !329           ; [#uses=1 type=i32] [debug line = 248:14]
  store i32 %106, i32* %i, align 4, !dbg !329     ; [debug line = 248:14]
  br label %81, !dbg !329                         ; [debug line = 248:14]

; <label>:107                                     ; preds = %81
  ret void, !dbg !330                             ; [debug line = 256:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !46, !52, !56, !57, !58}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !18, metadata !25, metadata !28, metadata !29, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32*, i32, i32)* @KeyExpansion, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !17, metadata !9, metadata !9}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 101, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i8]*, i8*)* @AddRoundKey, null, null, metadata !10, i32 102} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !9, metadata !21, metadata !15}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 115, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @SubBytes, null, null, metadata !10, i32 116} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !21}
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 131, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @ShiftRows, null, null, metadata !10, i32 132} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 163, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @MixColumns, null, null, metadata !10, i32 164} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 179, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i8*)* @Cipher, null, null, metadata !10, i32 180} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !9, metadata !9, metadata !15}
!33 = metadata !{i32 (i32)* @getSBoxValue, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!39 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!40 = metadata !{void (i8*, i8*, i32*, i32, i32)* @KeyExpansion, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !39}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0, i32 0}
!42 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int*", metadata !"int", metadata !"int"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon", metadata !"Nk", metadata !"Nr"}
!46 = metadata !{void (i32, [4 x i8]*, i8*)* @AddRoundKey, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !39}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar [4]*", metadata !"uchar*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!52 = metadata !{void ([4 x i8]*)* @SubBytes, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"uchar [4]*"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!56 = metadata !{void ([4 x i8]*)* @ShiftRows, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!57 = metadata !{void ([4 x i8]*)* @MixColumns, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!58 = metadata !{void (i32, i32, i8*)* @Cipher, metadata !59, metadata !48, metadata !60, metadata !50, metadata !61, metadata !39}
!59 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uchar*"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Nr", metadata !"Nk", metadata !"out"}
!62 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 4, i32 22, metadata !5, null}
!64 = metadata !{i32 786688, metadata !65, metadata !"sbox", metadata !6, i32 6, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !9, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!69 = metadata !{i32 6, i32 6, metadata !65, null}
!70 = metadata !{i32 23, i32 98, metadata !65, null}
!71 = metadata !{i32 24, i32 2, metadata !65, null}
!72 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777249, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 33, i32 33, metadata !12, null}
!74 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554465, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 33, i32 61, metadata !12, null}
!76 = metadata !{i32 786689, metadata !12, metadata !"Rcon", metadata !6, i32 50331681, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 33, i32 73, metadata !12, null}
!78 = metadata !{i32 786689, metadata !12, metadata !"Nk", metadata !6, i32 67108897, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 33, i32 87, metadata !12, null}
!80 = metadata !{i32 786689, metadata !12, metadata !"Nr", metadata !6, i32 83886113, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 33, i32 94, metadata !12, null}
!82 = metadata !{i32 34, i32 2, metadata !83, null}
!83 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 34, i32 39, metadata !83, null}
!85 = metadata !{i32 34, i32 72, metadata !83, null}
!86 = metadata !{i32 786688, metadata !83, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 35, i32 6, metadata !83, null}
!88 = metadata !{i32 786688, metadata !83, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 35, i32 8, metadata !83, null}
!90 = metadata !{i32 786688, metadata !83, metadata !"temp", metadata !6, i32 36, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 36, i32 16, metadata !83, null}
!92 = metadata !{i32 786688, metadata !83, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 36, i32 24, metadata !83, null}
!94 = metadata !{i32 39, i32 6, metadata !95, null}
!95 = metadata !{i32 786443, metadata !83, i32 39, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 41, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !95, i32 40, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 42, i32 3, metadata !97, null}
!99 = metadata !{i32 43, i32 3, metadata !97, null}
!100 = metadata !{i32 44, i32 3, metadata !97, null}
!101 = metadata !{i32 45, i32 2, metadata !97, null}
!102 = metadata !{i32 39, i32 15, metadata !95, null}
!103 = metadata !{i32 48, i32 2, metadata !83, null}
!104 = metadata !{i32 50, i32 10, metadata !105, null}
!105 = metadata !{i32 786443, metadata !106, i32 50, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !83, i32 49, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 52, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !105, i32 51, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 53, i32 6, metadata !108, null}
!110 = metadata !{i32 50, i32 18, metadata !105, null}
!111 = metadata !{i32 54, i32 6, metadata !106, null}
!112 = metadata !{i32 61, i32 8, metadata !113, null}
!113 = metadata !{i32 786443, metadata !114, i32 60, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !106, i32 55, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 62, i32 8, metadata !113, null}
!116 = metadata !{i32 63, i32 8, metadata !113, null}
!117 = metadata !{i32 64, i32 8, metadata !113, null}
!118 = metadata !{i32 65, i32 8, metadata !113, null}
!119 = metadata !{i32 73, i32 16, metadata !120, null}
!120 = metadata !{i32 786443, metadata !114, i32 72, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 74, i32 16, metadata !120, null}
!122 = metadata !{i32 75, i32 16, metadata !120, null}
!123 = metadata !{i32 76, i32 16, metadata !120, null}
!124 = metadata !{i32 79, i32 7, metadata !114, null}
!125 = metadata !{i32 80, i32 6, metadata !114, null}
!126 = metadata !{i32 81, i32 11, metadata !106, null}
!127 = metadata !{i32 85, i32 16, metadata !128, null}
!128 = metadata !{i32 786443, metadata !129, i32 84, i32 7, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !106, i32 82, i32 6, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 86, i32 16, metadata !128, null}
!131 = metadata !{i32 87, i32 16, metadata !128, null}
!132 = metadata !{i32 88, i32 16, metadata !128, null}
!133 = metadata !{i32 90, i32 6, metadata !129, null}
!134 = metadata !{i32 91, i32 6, metadata !106, null}
!135 = metadata !{i32 92, i32 6, metadata !106, null}
!136 = metadata !{i32 93, i32 6, metadata !106, null}
!137 = metadata !{i32 94, i32 6, metadata !106, null}
!138 = metadata !{i32 95, i32 6, metadata !106, null}
!139 = metadata !{i32 96, i32 2, metadata !106, null}
!140 = metadata !{i32 97, i32 1, metadata !83, null}
!141 = metadata !{i32 786689, metadata !18, metadata !"round", metadata !6, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 101, i32 22, metadata !18, null}
!143 = metadata !{i32 786689, metadata !18, metadata !"state", metadata !6, i32 33554533, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 101, i32 42, metadata !18, null}
!145 = metadata !{i32 786689, metadata !18, metadata !"RoundKey", metadata !6, i32 50331749, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 101, i32 68, metadata !18, null}
!147 = metadata !{i32 102, i32 2, metadata !148, null}
!148 = metadata !{i32 786443, metadata !18, i32 102, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 102, i32 39, metadata !148, null}
!150 = metadata !{i32 786688, metadata !148, metadata !"i", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 103, i32 6, metadata !148, null}
!152 = metadata !{i32 786688, metadata !148, metadata !"j", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 103, i32 8, metadata !148, null}
!154 = metadata !{i32 104, i32 6, metadata !155, null}
!155 = metadata !{i32 786443, metadata !148, i32 104, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 106, i32 7, metadata !157, null}
!157 = metadata !{i32 786443, metadata !158, i32 106, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !155, i32 105, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 108, i32 4, metadata !160, null}
!160 = metadata !{i32 786443, metadata !157, i32 107, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 109, i32 3, metadata !160, null}
!162 = metadata !{i32 106, i32 15, metadata !157, null}
!163 = metadata !{i32 110, i32 2, metadata !158, null}
!164 = metadata !{i32 104, i32 14, metadata !155, null}
!165 = metadata !{i32 111, i32 1, metadata !148, null}
!166 = metadata !{i32 786689, metadata !25, metadata !"state", metadata !6, i32 16777331, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 115, i32 29, metadata !25, null}
!168 = metadata !{i32 116, i32 2, metadata !169, null}
!169 = metadata !{i32 786443, metadata !25, i32 116, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 117, i32 6, metadata !169, null}
!172 = metadata !{i32 786688, metadata !169, metadata !"j", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 117, i32 8, metadata !169, null}
!174 = metadata !{i32 118, i32 6, metadata !175, null}
!175 = metadata !{i32 786443, metadata !169, i32 118, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 120, i32 7, metadata !177, null}
!177 = metadata !{i32 786443, metadata !178, i32 120, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786443, metadata !175, i32 119, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 122, i32 18, metadata !180, null}
!180 = metadata !{i32 786443, metadata !177, i32 121, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 124, i32 3, metadata !180, null}
!182 = metadata !{i32 120, i32 15, metadata !177, null}
!183 = metadata !{i32 125, i32 2, metadata !178, null}
!184 = metadata !{i32 118, i32 14, metadata !175, null}
!185 = metadata !{i32 126, i32 1, metadata !169, null}
!186 = metadata !{i32 786689, metadata !28, metadata !"state", metadata !6, i32 16777347, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 131, i32 30, metadata !28, null}
!188 = metadata !{i32 132, i32 2, metadata !189, null}
!189 = metadata !{i32 786443, metadata !28, i32 132, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 786688, metadata !189, metadata !"temp", metadata !6, i32 133, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 133, i32 16, metadata !189, null}
!192 = metadata !{i32 136, i32 2, metadata !189, null}
!193 = metadata !{i32 137, i32 2, metadata !189, null}
!194 = metadata !{i32 138, i32 2, metadata !189, null}
!195 = metadata !{i32 139, i32 2, metadata !189, null}
!196 = metadata !{i32 140, i32 2, metadata !189, null}
!197 = metadata !{i32 143, i32 2, metadata !189, null}
!198 = metadata !{i32 144, i32 2, metadata !189, null}
!199 = metadata !{i32 145, i32 2, metadata !189, null}
!200 = metadata !{i32 147, i32 2, metadata !189, null}
!201 = metadata !{i32 148, i32 2, metadata !189, null}
!202 = metadata !{i32 149, i32 2, metadata !189, null}
!203 = metadata !{i32 152, i32 2, metadata !189, null}
!204 = metadata !{i32 153, i32 2, metadata !189, null}
!205 = metadata !{i32 154, i32 2, metadata !189, null}
!206 = metadata !{i32 155, i32 2, metadata !189, null}
!207 = metadata !{i32 156, i32 2, metadata !189, null}
!208 = metadata !{i32 157, i32 1, metadata !189, null}
!209 = metadata !{i32 786689, metadata !29, metadata !"state", metadata !6, i32 16777379, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 163, i32 31, metadata !29, null}
!211 = metadata !{i32 164, i32 2, metadata !212, null}
!212 = metadata !{i32 786443, metadata !29, i32 164, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786688, metadata !212, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 165, i32 6, metadata !212, null}
!215 = metadata !{i32 786688, metadata !212, metadata !"Tmp", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 166, i32 16, metadata !212, null}
!217 = metadata !{i32 786688, metadata !212, metadata !"Tm", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 166, i32 20, metadata !212, null}
!219 = metadata !{i32 786688, metadata !212, metadata !"t", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 166, i32 23, metadata !212, null}
!221 = metadata !{i32 167, i32 6, metadata !222, null}
!222 = metadata !{i32 786443, metadata !212, i32 167, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 169, i32 3, metadata !224, null}
!224 = metadata !{i32 786443, metadata !222, i32 168, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 170, i32 3, metadata !224, null}
!226 = metadata !{i32 171, i32 3, metadata !224, null}
!227 = metadata !{i32 171, i32 36, metadata !224, null}
!228 = metadata !{i32 171, i32 77, metadata !224, null}
!229 = metadata !{i32 172, i32 3, metadata !224, null}
!230 = metadata !{i32 172, i32 36, metadata !224, null}
!231 = metadata !{i32 172, i32 77, metadata !224, null}
!232 = metadata !{i32 173, i32 3, metadata !224, null}
!233 = metadata !{i32 173, i32 36, metadata !224, null}
!234 = metadata !{i32 173, i32 77, metadata !224, null}
!235 = metadata !{i32 174, i32 3, metadata !224, null}
!236 = metadata !{i32 174, i32 26, metadata !224, null}
!237 = metadata !{i32 174, i32 67, metadata !224, null}
!238 = metadata !{i32 175, i32 2, metadata !224, null}
!239 = metadata !{i32 167, i32 14, metadata !222, null}
!240 = metadata !{i32 176, i32 1, metadata !212, null}
!241 = metadata !{i32 786689, metadata !30, metadata !"Nr", metadata !6, i32 16777395, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!242 = metadata !{i32 179, i32 17, metadata !30, null}
!243 = metadata !{i32 786689, metadata !30, metadata !"Nk", metadata !6, i32 33554611, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 179, i32 24, metadata !30, null}
!245 = metadata !{i32 786689, metadata !30, metadata !"out", metadata !6, i32 50331827, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 179, i32 41, metadata !30, null}
!247 = metadata !{i32 180, i32 2, metadata !248, null}
!248 = metadata !{i32 786443, metadata !30, i32 180, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 786688, metadata !248, metadata !"Rcon", metadata !6, i32 183, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8160, i64 32, i32 0, i32 0, metadata !9, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786465, i64 0, i64 254}     ; [ DW_TAG_subrange_type ]
!253 = metadata !{i32 183, i32 6, metadata !248, null}
!254 = metadata !{i32 199, i32 93, metadata !248, null}
!255 = metadata !{i32 786688, metadata !248, metadata !"i", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 200, i32 6, metadata !248, null}
!257 = metadata !{i32 786688, metadata !248, metadata !"j", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 200, i32 8, metadata !248, null}
!259 = metadata !{i32 786688, metadata !248, metadata !"round", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 200, i32 10, metadata !248, null}
!261 = metadata !{i32 200, i32 17, metadata !248, null}
!262 = metadata !{i32 786688, metadata !248, metadata !"state", metadata !6, i32 201, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !264, i32 0, i32 0} ; [ DW_TAG_array_type ]
!264 = metadata !{metadata !24, metadata !24}
!265 = metadata !{i32 201, i32 16, metadata !248, null}
!266 = metadata !{i32 786688, metadata !248, metadata !"RoundKey", metadata !6, i32 202, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1920, i64 8, i32 0, i32 0, metadata !16, metadata !268, i32 0, i32 0} ; [ DW_TAG_array_type ]
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!270 = metadata !{i32 202, i32 16, metadata !248, null}
!271 = metadata !{i32 786688, metadata !248, metadata !"Key", metadata !6, i32 203, metadata !272, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !16, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!275 = metadata !{i32 203, i32 16, metadata !248, null}
!276 = metadata !{i32 786688, metadata !248, metadata !"in", metadata !6, i32 204, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !278, i32 0, i32 0} ; [ DW_TAG_array_type ]
!278 = metadata !{metadata !279}
!279 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!280 = metadata !{i32 204, i32 16, metadata !248, null}
!281 = metadata !{i32 786688, metadata !248, metadata !"temp", metadata !6, i32 205, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 205, i32 16, metadata !248, null}
!283 = metadata !{i32 205, i32 123, metadata !248, null}
!284 = metadata !{i32 786688, metadata !248, metadata !"temp2", metadata !6, i32 206, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 206, i32 16, metadata !248, null}
!286 = metadata !{i32 206, i32 123, metadata !248, null}
!287 = metadata !{i32 208, i32 6, metadata !288, null}
!288 = metadata !{i32 786443, metadata !248, i32 208, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 210, i32 3, metadata !290, null}
!290 = metadata !{i32 786443, metadata !288, i32 209, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 211, i32 3, metadata !290, null}
!292 = metadata !{i32 212, i32 2, metadata !290, null}
!293 = metadata !{i32 208, i32 17, metadata !288, null}
!294 = metadata !{i32 215, i32 2, metadata !248, null}
!295 = metadata !{i32 218, i32 6, metadata !296, null}
!296 = metadata !{i32 786443, metadata !248, i32 218, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 220, i32 7, metadata !298, null}
!298 = metadata !{i32 786443, metadata !299, i32 220, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 786443, metadata !296, i32 219, i32 2, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 222, i32 4, metadata !301, null}
!301 = metadata !{i32 786443, metadata !298, i32 221, i32 3, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 223, i32 3, metadata !301, null}
!303 = metadata !{i32 220, i32 15, metadata !298, null}
!304 = metadata !{i32 224, i32 2, metadata !299, null}
!305 = metadata !{i32 218, i32 14, metadata !296, null}
!306 = metadata !{i32 227, i32 2, metadata !248, null}
!307 = metadata !{i32 232, i32 6, metadata !308, null}
!308 = metadata !{i32 786443, metadata !248, i32 232, i32 2, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 234, i32 3, metadata !310, null}
!310 = metadata !{i32 786443, metadata !308, i32 233, i32 2, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 235, i32 3, metadata !310, null}
!312 = metadata !{i32 236, i32 3, metadata !310, null}
!313 = metadata !{i32 237, i32 3, metadata !310, null}
!314 = metadata !{i32 238, i32 2, metadata !310, null}
!315 = metadata !{i32 232, i32 23, metadata !308, null}
!316 = metadata !{i32 242, i32 2, metadata !248, null}
!317 = metadata !{i32 243, i32 2, metadata !248, null}
!318 = metadata !{i32 244, i32 2, metadata !248, null}
!319 = metadata !{i32 248, i32 6, metadata !320, null}
!320 = metadata !{i32 786443, metadata !248, i32 248, i32 2, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 250, i32 7, metadata !322, null}
!322 = metadata !{i32 786443, metadata !323, i32 250, i32 3, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 786443, metadata !320, i32 249, i32 2, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!324 = metadata !{i32 252, i32 4, metadata !325, null}
!325 = metadata !{i32 786443, metadata !322, i32 251, i32 3, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!326 = metadata !{i32 253, i32 3, metadata !325, null}
!327 = metadata !{i32 250, i32 15, metadata !322, null}
!328 = metadata !{i32 254, i32 2, metadata !323, null}
!329 = metadata !{i32 248, i32 14, metadata !320, null}
!330 = metadata !{i32 256, i32 1, metadata !248, null}
