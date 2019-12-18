; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisRaw/deutero/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@getSBoxValue.sbox = private unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4 ; [#uses=1 type=[256 x i32]*]
@Cipher.Rcon = private unnamed_addr constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203], align 4 ; [#uses=1 type=[255 x i32]*]

; [#uses=5]
define i32 @getSBoxValue(i32 %num) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %sbox = alloca [256 x i32], align 4             ; [#uses=2 type=[256 x i32]*]
  store i32 %num, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !65), !dbg !66 ; [debug line = 7:22] [debug variable = num]
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %sbox}, metadata !67), !dbg !72 ; [debug line = 9:6] [debug variable = sbox]
  %2 = bitcast [256 x i32]* %sbox to i8*, !dbg !73 ; [#uses=1 type=i8*] [debug line = 26:98]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([256 x i32]* @getSBoxValue.sbox to i8*), i32 1024, i32 4, i1 false), !dbg !73 ; [debug line = 26:98]
  %3 = load i32* %1, align 4, !dbg !74            ; [#uses=1 type=i32] [debug line = 27:2]
  %4 = getelementptr inbounds [256 x i32]* %sbox, i32 0, i32 %3, !dbg !74 ; [#uses=1 type=i32*] [debug line = 27:2]
  %5 = load i32* %4, align 4, !dbg !74            ; [#uses=1 type=i32] [debug line = 27:2]
  ret i32 %5, !dbg !74                            ; [debug line = 27:2]
}

; [#uses=31]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

; [#uses=1]
define void @KeyExpansion(i8* %RoundKey, i32* %Key, i32* %Rcon) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=15 type=i8**]
  %2 = alloca i32*, align 4                       ; [#uses=6 type=i32**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=26 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %temp = alloca [4 x i8], align 1                ; [#uses=23 type=[4 x i8]*]
  %k = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store i8* %RoundKey, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !75), !dbg !76 ; [debug line = 36:33] [debug variable = RoundKey]
  store i32* %Key, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !77), !dbg !78 ; [debug line = 36:52] [debug variable = Key]
  store i32* %Rcon, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !79), !dbg !80 ; [debug line = 36:64] [debug variable = Rcon]
  %4 = load i8** %1, align 4, !dbg !81            ; [#uses=1 type=i8*] [debug line = 37:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 240) nounwind, !dbg !81 ; [debug line = 37:2]
  %5 = load i32** %3, align 4, !dbg !83           ; [#uses=1 type=i32*] [debug line = 37:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %5, i32 255) nounwind, !dbg !83 ; [debug line = 37:39]
  %6 = load i32** %2, align 4, !dbg !84           ; [#uses=1 type=i32*] [debug line = 37:72]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %6, i32 32) nounwind, !dbg !84 ; [debug line = 37:72]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !85), !dbg !86 ; [debug line = 38:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !87), !dbg !88 ; [debug line = 38:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %temp}, metadata !89), !dbg !91 ; [debug line = 39:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{i8* %k}, metadata !92), !dbg !93 ; [debug line = 39:24] [debug variable = k]
  store i32 0, i32* %i, align 4, !dbg !94         ; [debug line = 42:6]
  br label %7, !dbg !94                           ; [debug line = 42:6]

; <label>:7                                       ; preds = %57, %0
  %8 = load i32* %i, align 4, !dbg !94            ; [#uses=1 type=i32] [debug line = 42:6]
  %9 = icmp slt i32 %8, 4, !dbg !94               ; [#uses=1 type=i1] [debug line = 42:6]
  br i1 %9, label %10, label %60, !dbg !94        ; [debug line = 42:6]

; <label>:10                                      ; preds = %7
  %11 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 44:3]
  %12 = mul nsw i32 %11, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 44:3]
  %13 = load i32** %2, align 4, !dbg !96          ; [#uses=1 type=i32*] [debug line = 44:3]
  %14 = getelementptr inbounds i32* %13, i32 %12, !dbg !96 ; [#uses=1 type=i32*] [debug line = 44:3]
  %15 = load i32* %14, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 44:3]
  %16 = trunc i32 %15 to i8, !dbg !96             ; [#uses=1 type=i8] [debug line = 44:3]
  %17 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 44:3]
  %18 = mul nsw i32 %17, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 44:3]
  %19 = load i8** %1, align 4, !dbg !96           ; [#uses=1 type=i8*] [debug line = 44:3]
  %20 = getelementptr inbounds i8* %19, i32 %18, !dbg !96 ; [#uses=1 type=i8*] [debug line = 44:3]
  store i8 %16, i8* %20, align 1, !dbg !96        ; [debug line = 44:3]
  %21 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 45:3]
  %22 = mul nsw i32 %21, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 45:3]
  %23 = add nsw i32 %22, 1, !dbg !98              ; [#uses=1 type=i32] [debug line = 45:3]
  %24 = load i32** %2, align 4, !dbg !98          ; [#uses=1 type=i32*] [debug line = 45:3]
  %25 = getelementptr inbounds i32* %24, i32 %23, !dbg !98 ; [#uses=1 type=i32*] [debug line = 45:3]
  %26 = load i32* %25, align 4, !dbg !98          ; [#uses=1 type=i32] [debug line = 45:3]
  %27 = trunc i32 %26 to i8, !dbg !98             ; [#uses=1 type=i8] [debug line = 45:3]
  %28 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 45:3]
  %29 = mul nsw i32 %28, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 45:3]
  %30 = add nsw i32 %29, 1, !dbg !98              ; [#uses=1 type=i32] [debug line = 45:3]
  %31 = load i8** %1, align 4, !dbg !98           ; [#uses=1 type=i8*] [debug line = 45:3]
  %32 = getelementptr inbounds i8* %31, i32 %30, !dbg !98 ; [#uses=1 type=i8*] [debug line = 45:3]
  store i8 %27, i8* %32, align 1, !dbg !98        ; [debug line = 45:3]
  %33 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 46:3]
  %34 = mul nsw i32 %33, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 46:3]
  %35 = add nsw i32 %34, 2, !dbg !99              ; [#uses=1 type=i32] [debug line = 46:3]
  %36 = load i32** %2, align 4, !dbg !99          ; [#uses=1 type=i32*] [debug line = 46:3]
  %37 = getelementptr inbounds i32* %36, i32 %35, !dbg !99 ; [#uses=1 type=i32*] [debug line = 46:3]
  %38 = load i32* %37, align 4, !dbg !99          ; [#uses=1 type=i32] [debug line = 46:3]
  %39 = trunc i32 %38 to i8, !dbg !99             ; [#uses=1 type=i8] [debug line = 46:3]
  %40 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 46:3]
  %41 = mul nsw i32 %40, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 46:3]
  %42 = add nsw i32 %41, 2, !dbg !99              ; [#uses=1 type=i32] [debug line = 46:3]
  %43 = load i8** %1, align 4, !dbg !99           ; [#uses=1 type=i8*] [debug line = 46:3]
  %44 = getelementptr inbounds i8* %43, i32 %42, !dbg !99 ; [#uses=1 type=i8*] [debug line = 46:3]
  store i8 %39, i8* %44, align 1, !dbg !99        ; [debug line = 46:3]
  %45 = load i32* %i, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 47:3]
  %46 = mul nsw i32 %45, 4, !dbg !100             ; [#uses=1 type=i32] [debug line = 47:3]
  %47 = add nsw i32 %46, 3, !dbg !100             ; [#uses=1 type=i32] [debug line = 47:3]
  %48 = load i32** %2, align 4, !dbg !100         ; [#uses=1 type=i32*] [debug line = 47:3]
  %49 = getelementptr inbounds i32* %48, i32 %47, !dbg !100 ; [#uses=1 type=i32*] [debug line = 47:3]
  %50 = load i32* %49, align 4, !dbg !100         ; [#uses=1 type=i32] [debug line = 47:3]
  %51 = trunc i32 %50 to i8, !dbg !100            ; [#uses=1 type=i8] [debug line = 47:3]
  %52 = load i32* %i, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 47:3]
  %53 = mul nsw i32 %52, 4, !dbg !100             ; [#uses=1 type=i32] [debug line = 47:3]
  %54 = add nsw i32 %53, 3, !dbg !100             ; [#uses=1 type=i32] [debug line = 47:3]
  %55 = load i8** %1, align 4, !dbg !100          ; [#uses=1 type=i8*] [debug line = 47:3]
  %56 = getelementptr inbounds i8* %55, i32 %54, !dbg !100 ; [#uses=1 type=i8*] [debug line = 47:3]
  store i8 %51, i8* %56, align 1, !dbg !100       ; [debug line = 47:3]
  br label %57, !dbg !101                         ; [debug line = 48:2]

; <label>:57                                      ; preds = %10
  %58 = load i32* %i, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 42:14]
  %59 = add nsw i32 %58, 1, !dbg !102             ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %59, i32* %i, align 4, !dbg !102      ; [debug line = 42:14]
  br label %7, !dbg !102                          ; [debug line = 42:14]

; <label>:60                                      ; preds = %7
  br label %61, !dbg !103                         ; [debug line = 51:2]

; <label>:61                                      ; preds = %136, %60
  %62 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 51:2]
  %63 = icmp slt i32 %62, 44, !dbg !103           ; [#uses=1 type=i1] [debug line = 51:2]
  br i1 %63, label %64, label %211, !dbg !103     ; [debug line = 51:2]

; <label>:64                                      ; preds = %61
  store i32 0, i32* %j, align 4, !dbg !104        ; [debug line = 53:10]
  br label %65, !dbg !104                         ; [debug line = 53:10]

; <label>:65                                      ; preds = %79, %64
  %66 = load i32* %j, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 53:10]
  %67 = icmp slt i32 %66, 4, !dbg !104            ; [#uses=1 type=i1] [debug line = 53:10]
  br i1 %67, label %68, label %82, !dbg !104      ; [debug line = 53:10]

; <label>:68                                      ; preds = %65
  %69 = load i32* %i, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 55:7]
  %70 = sub nsw i32 %69, 1, !dbg !107             ; [#uses=1 type=i32] [debug line = 55:7]
  %71 = mul nsw i32 %70, 4, !dbg !107             ; [#uses=1 type=i32] [debug line = 55:7]
  %72 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 55:7]
  %73 = add nsw i32 %71, %72, !dbg !107           ; [#uses=1 type=i32] [debug line = 55:7]
  %74 = load i8** %1, align 4, !dbg !107          ; [#uses=1 type=i8*] [debug line = 55:7]
  %75 = getelementptr inbounds i8* %74, i32 %73, !dbg !107 ; [#uses=1 type=i8*] [debug line = 55:7]
  %76 = load i8* %75, align 1, !dbg !107          ; [#uses=1 type=i8] [debug line = 55:7]
  %77 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 55:7]
  %78 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 %77, !dbg !107 ; [#uses=1 type=i8*] [debug line = 55:7]
  store i8 %76, i8* %78, align 1, !dbg !107       ; [debug line = 55:7]
  br label %79, !dbg !109                         ; [debug line = 56:6]

; <label>:79                                      ; preds = %68
  %80 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 53:18]
  %81 = add nsw i32 %80, 1, !dbg !110             ; [#uses=1 type=i32] [debug line = 53:18]
  store i32 %81, i32* %j, align 4, !dbg !110      ; [debug line = 53:18]
  br label %65, !dbg !110                         ; [debug line = 53:18]

; <label>:82                                      ; preds = %65
  %83 = load i32* %i, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 57:6]
  %84 = srem i32 %83, 4, !dbg !111                ; [#uses=1 type=i32] [debug line = 57:6]
  %85 = icmp eq i32 %84, 0, !dbg !111             ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %85, label %86, label %135, !dbg !111     ; [debug line = 57:6]

; <label>:86                                      ; preds = %82
  %87 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !112 ; [#uses=1 type=i8*] [debug line = 64:8]
  %88 = load i8* %87, align 1, !dbg !112          ; [#uses=1 type=i8] [debug line = 64:8]
  store i8 %88, i8* %k, align 1, !dbg !112        ; [debug line = 64:8]
  %89 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !115 ; [#uses=1 type=i8*] [debug line = 65:8]
  %90 = load i8* %89, align 1, !dbg !115          ; [#uses=1 type=i8] [debug line = 65:8]
  %91 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !115 ; [#uses=1 type=i8*] [debug line = 65:8]
  store i8 %90, i8* %91, align 1, !dbg !115       ; [debug line = 65:8]
  %92 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !116 ; [#uses=1 type=i8*] [debug line = 66:8]
  %93 = load i8* %92, align 1, !dbg !116          ; [#uses=1 type=i8] [debug line = 66:8]
  %94 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !116 ; [#uses=1 type=i8*] [debug line = 66:8]
  store i8 %93, i8* %94, align 1, !dbg !116       ; [debug line = 66:8]
  %95 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !117 ; [#uses=1 type=i8*] [debug line = 67:8]
  %96 = load i8* %95, align 1, !dbg !117          ; [#uses=1 type=i8] [debug line = 67:8]
  %97 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !117 ; [#uses=1 type=i8*] [debug line = 67:8]
  store i8 %96, i8* %97, align 1, !dbg !117       ; [debug line = 67:8]
  %98 = load i8* %k, align 1, !dbg !118           ; [#uses=1 type=i8] [debug line = 68:8]
  %99 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !118 ; [#uses=1 type=i8*] [debug line = 68:8]
  store i8 %98, i8* %99, align 1, !dbg !118       ; [debug line = 68:8]
  %100 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !119 ; [#uses=1 type=i8*] [debug line = 76:16]
  %101 = load i8* %100, align 1, !dbg !119        ; [#uses=1 type=i8] [debug line = 76:16]
  %102 = zext i8 %101 to i32, !dbg !119           ; [#uses=1 type=i32] [debug line = 76:16]
  %103 = call i32 @getSBoxValue(i32 %102), !dbg !119 ; [#uses=1 type=i32] [debug line = 76:16]
  %104 = trunc i32 %103 to i8, !dbg !119          ; [#uses=1 type=i8] [debug line = 76:16]
  %105 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !119 ; [#uses=1 type=i8*] [debug line = 76:16]
  store i8 %104, i8* %105, align 1, !dbg !119     ; [debug line = 76:16]
  %106 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 77:16]
  %107 = load i8* %106, align 1, !dbg !121        ; [#uses=1 type=i8] [debug line = 77:16]
  %108 = zext i8 %107 to i32, !dbg !121           ; [#uses=1 type=i32] [debug line = 77:16]
  %109 = call i32 @getSBoxValue(i32 %108), !dbg !121 ; [#uses=1 type=i32] [debug line = 77:16]
  %110 = trunc i32 %109 to i8, !dbg !121          ; [#uses=1 type=i8] [debug line = 77:16]
  %111 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 77:16]
  store i8 %110, i8* %111, align 1, !dbg !121     ; [debug line = 77:16]
  %112 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 78:16]
  %113 = load i8* %112, align 1, !dbg !122        ; [#uses=1 type=i8] [debug line = 78:16]
  %114 = zext i8 %113 to i32, !dbg !122           ; [#uses=1 type=i32] [debug line = 78:16]
  %115 = call i32 @getSBoxValue(i32 %114), !dbg !122 ; [#uses=1 type=i32] [debug line = 78:16]
  %116 = trunc i32 %115 to i8, !dbg !122          ; [#uses=1 type=i8] [debug line = 78:16]
  %117 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 78:16]
  store i8 %116, i8* %117, align 1, !dbg !122     ; [debug line = 78:16]
  %118 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 79:16]
  %119 = load i8* %118, align 1, !dbg !123        ; [#uses=1 type=i8] [debug line = 79:16]
  %120 = zext i8 %119 to i32, !dbg !123           ; [#uses=1 type=i32] [debug line = 79:16]
  %121 = call i32 @getSBoxValue(i32 %120), !dbg !123 ; [#uses=1 type=i32] [debug line = 79:16]
  %122 = trunc i32 %121 to i8, !dbg !123          ; [#uses=1 type=i8] [debug line = 79:16]
  %123 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 79:16]
  store i8 %122, i8* %123, align 1, !dbg !123     ; [debug line = 79:16]
  %124 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 82:7]
  %125 = load i8* %124, align 1, !dbg !124        ; [#uses=1 type=i8] [debug line = 82:7]
  %126 = zext i8 %125 to i32, !dbg !124           ; [#uses=1 type=i32] [debug line = 82:7]
  %127 = load i32* %i, align 4, !dbg !124         ; [#uses=1 type=i32] [debug line = 82:7]
  %128 = sdiv i32 %127, 4, !dbg !124              ; [#uses=1 type=i32] [debug line = 82:7]
  %129 = load i32** %3, align 4, !dbg !124        ; [#uses=1 type=i32*] [debug line = 82:7]
  %130 = getelementptr inbounds i32* %129, i32 %128, !dbg !124 ; [#uses=1 type=i32*] [debug line = 82:7]
  %131 = load i32* %130, align 4, !dbg !124       ; [#uses=1 type=i32] [debug line = 82:7]
  %132 = xor i32 %126, %131, !dbg !124            ; [#uses=1 type=i32] [debug line = 82:7]
  %133 = trunc i32 %132 to i8, !dbg !124          ; [#uses=1 type=i8] [debug line = 82:7]
  %134 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 82:7]
  store i8 %133, i8* %134, align 1, !dbg !124     ; [debug line = 82:7]
  br label %136, !dbg !125                        ; [debug line = 83:6]

; <label>:135                                     ; preds = %82
  br label %136

; <label>:136                                     ; preds = %135, %86
  %137 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 94:6]
  %138 = sub nsw i32 %137, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %139 = mul nsw i32 %138, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %140 = add nsw i32 %139, 0, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %141 = load i8** %1, align 4, !dbg !126         ; [#uses=1 type=i8*] [debug line = 94:6]
  %142 = getelementptr inbounds i8* %141, i32 %140, !dbg !126 ; [#uses=1 type=i8*] [debug line = 94:6]
  %143 = load i8* %142, align 1, !dbg !126        ; [#uses=1 type=i8] [debug line = 94:6]
  %144 = zext i8 %143 to i32, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %145 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !126 ; [#uses=1 type=i8*] [debug line = 94:6]
  %146 = load i8* %145, align 1, !dbg !126        ; [#uses=1 type=i8] [debug line = 94:6]
  %147 = zext i8 %146 to i32, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %148 = xor i32 %144, %147, !dbg !126            ; [#uses=1 type=i32] [debug line = 94:6]
  %149 = trunc i32 %148 to i8, !dbg !126          ; [#uses=1 type=i8] [debug line = 94:6]
  %150 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 94:6]
  %151 = mul nsw i32 %150, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %152 = add nsw i32 %151, 0, !dbg !126           ; [#uses=1 type=i32] [debug line = 94:6]
  %153 = load i8** %1, align 4, !dbg !126         ; [#uses=1 type=i8*] [debug line = 94:6]
  %154 = getelementptr inbounds i8* %153, i32 %152, !dbg !126 ; [#uses=1 type=i8*] [debug line = 94:6]
  store i8 %149, i8* %154, align 1, !dbg !126     ; [debug line = 94:6]
  %155 = load i32* %i, align 4, !dbg !127         ; [#uses=1 type=i32] [debug line = 95:6]
  %156 = sub nsw i32 %155, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %157 = mul nsw i32 %156, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %158 = add nsw i32 %157, 1, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %159 = load i8** %1, align 4, !dbg !127         ; [#uses=1 type=i8*] [debug line = 95:6]
  %160 = getelementptr inbounds i8* %159, i32 %158, !dbg !127 ; [#uses=1 type=i8*] [debug line = 95:6]
  %161 = load i8* %160, align 1, !dbg !127        ; [#uses=1 type=i8] [debug line = 95:6]
  %162 = zext i8 %161 to i32, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %163 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !127 ; [#uses=1 type=i8*] [debug line = 95:6]
  %164 = load i8* %163, align 1, !dbg !127        ; [#uses=1 type=i8] [debug line = 95:6]
  %165 = zext i8 %164 to i32, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %166 = xor i32 %162, %165, !dbg !127            ; [#uses=1 type=i32] [debug line = 95:6]
  %167 = trunc i32 %166 to i8, !dbg !127          ; [#uses=1 type=i8] [debug line = 95:6]
  %168 = load i32* %i, align 4, !dbg !127         ; [#uses=1 type=i32] [debug line = 95:6]
  %169 = mul nsw i32 %168, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %170 = add nsw i32 %169, 1, !dbg !127           ; [#uses=1 type=i32] [debug line = 95:6]
  %171 = load i8** %1, align 4, !dbg !127         ; [#uses=1 type=i8*] [debug line = 95:6]
  %172 = getelementptr inbounds i8* %171, i32 %170, !dbg !127 ; [#uses=1 type=i8*] [debug line = 95:6]
  store i8 %167, i8* %172, align 1, !dbg !127     ; [debug line = 95:6]
  %173 = load i32* %i, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 96:6]
  %174 = sub nsw i32 %173, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %175 = mul nsw i32 %174, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %176 = add nsw i32 %175, 2, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %177 = load i8** %1, align 4, !dbg !128         ; [#uses=1 type=i8*] [debug line = 96:6]
  %178 = getelementptr inbounds i8* %177, i32 %176, !dbg !128 ; [#uses=1 type=i8*] [debug line = 96:6]
  %179 = load i8* %178, align 1, !dbg !128        ; [#uses=1 type=i8] [debug line = 96:6]
  %180 = zext i8 %179 to i32, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %181 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !128 ; [#uses=1 type=i8*] [debug line = 96:6]
  %182 = load i8* %181, align 1, !dbg !128        ; [#uses=1 type=i8] [debug line = 96:6]
  %183 = zext i8 %182 to i32, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %184 = xor i32 %180, %183, !dbg !128            ; [#uses=1 type=i32] [debug line = 96:6]
  %185 = trunc i32 %184 to i8, !dbg !128          ; [#uses=1 type=i8] [debug line = 96:6]
  %186 = load i32* %i, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 96:6]
  %187 = mul nsw i32 %186, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %188 = add nsw i32 %187, 2, !dbg !128           ; [#uses=1 type=i32] [debug line = 96:6]
  %189 = load i8** %1, align 4, !dbg !128         ; [#uses=1 type=i8*] [debug line = 96:6]
  %190 = getelementptr inbounds i8* %189, i32 %188, !dbg !128 ; [#uses=1 type=i8*] [debug line = 96:6]
  store i8 %185, i8* %190, align 1, !dbg !128     ; [debug line = 96:6]
  %191 = load i32* %i, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 97:6]
  %192 = sub nsw i32 %191, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %193 = mul nsw i32 %192, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %194 = add nsw i32 %193, 3, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %195 = load i8** %1, align 4, !dbg !129         ; [#uses=1 type=i8*] [debug line = 97:6]
  %196 = getelementptr inbounds i8* %195, i32 %194, !dbg !129 ; [#uses=1 type=i8*] [debug line = 97:6]
  %197 = load i8* %196, align 1, !dbg !129        ; [#uses=1 type=i8] [debug line = 97:6]
  %198 = zext i8 %197 to i32, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %199 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !129 ; [#uses=1 type=i8*] [debug line = 97:6]
  %200 = load i8* %199, align 1, !dbg !129        ; [#uses=1 type=i8] [debug line = 97:6]
  %201 = zext i8 %200 to i32, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %202 = xor i32 %198, %201, !dbg !129            ; [#uses=1 type=i32] [debug line = 97:6]
  %203 = trunc i32 %202 to i8, !dbg !129          ; [#uses=1 type=i8] [debug line = 97:6]
  %204 = load i32* %i, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 97:6]
  %205 = mul nsw i32 %204, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %206 = add nsw i32 %205, 3, !dbg !129           ; [#uses=1 type=i32] [debug line = 97:6]
  %207 = load i8** %1, align 4, !dbg !129         ; [#uses=1 type=i8*] [debug line = 97:6]
  %208 = getelementptr inbounds i8* %207, i32 %206, !dbg !129 ; [#uses=1 type=i8*] [debug line = 97:6]
  store i8 %203, i8* %208, align 1, !dbg !129     ; [debug line = 97:6]
  %209 = load i32* %i, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 98:6]
  %210 = add nsw i32 %209, 1, !dbg !130           ; [#uses=1 type=i32] [debug line = 98:6]
  store i32 %210, i32* %i, align 4, !dbg !130     ; [debug line = 98:6]
  br label %61, !dbg !131                         ; [debug line = 99:2]

; <label>:211                                     ; preds = %61
  ret void, !dbg !132                             ; [debug line = 100:1]
}

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
define void @AddRoundKey(i32 %round, [4 x i32]* %state, i8* %RoundKey) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca [4 x i32]*, align 4                 ; [#uses=3 type=[4 x i32]**]
  %3 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32 %round, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !133), !dbg !134 ; [debug line = 104:22] [debug variable = round]
  store [4 x i32]* %state, [4 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %2}, metadata !135), !dbg !136 ; [debug line = 104:33] [debug variable = state]
  store i8* %RoundKey, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !137), !dbg !138 ; [debug line = 104:59] [debug variable = RoundKey]
  %4 = load i8** %3, align 4, !dbg !139           ; [#uses=1 type=i8*] [debug line = 105:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 240) nounwind, !dbg !139 ; [debug line = 105:2]
  %5 = load [4 x i32]** %2, align 4, !dbg !141    ; [#uses=1 type=[4 x i32]*] [debug line = 105:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %5, i32 4) nounwind, !dbg !141 ; [debug line = 105:39]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !142), !dbg !143 ; [debug line = 106:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !144), !dbg !145 ; [debug line = 106:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !146        ; [debug line = 107:6]
  br label %6, !dbg !146                          ; [debug line = 107:6]

; <label>:6                                       ; preds = %37, %0
  %7 = load i32* %i, align 4, !dbg !146           ; [#uses=1 type=i32] [debug line = 107:6]
  %8 = icmp slt i32 %7, 4, !dbg !146              ; [#uses=1 type=i1] [debug line = 107:6]
  br i1 %8, label %9, label %40, !dbg !146        ; [debug line = 107:6]

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !148        ; [debug line = 109:7]
  br label %10, !dbg !148                         ; [debug line = 109:7]

; <label>:10                                      ; preds = %33, %9
  %11 = load i32* %j, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 109:7]
  %12 = icmp slt i32 %11, 4, !dbg !148            ; [#uses=1 type=i1] [debug line = 109:7]
  br i1 %12, label %13, label %36, !dbg !148      ; [debug line = 109:7]

; <label>:13                                      ; preds = %10
  %14 = load i32* %1, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 111:4]
  %15 = mul nsw i32 %14, 4, !dbg !151             ; [#uses=1 type=i32] [debug line = 111:4]
  %16 = mul nsw i32 %15, 4, !dbg !151             ; [#uses=1 type=i32] [debug line = 111:4]
  %17 = load i32* %i, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 111:4]
  %18 = mul nsw i32 %17, 4, !dbg !151             ; [#uses=1 type=i32] [debug line = 111:4]
  %19 = add nsw i32 %16, %18, !dbg !151           ; [#uses=1 type=i32] [debug line = 111:4]
  %20 = load i32* %j, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 111:4]
  %21 = add nsw i32 %19, %20, !dbg !151           ; [#uses=1 type=i32] [debug line = 111:4]
  %22 = load i8** %3, align 4, !dbg !151          ; [#uses=1 type=i8*] [debug line = 111:4]
  %23 = getelementptr inbounds i8* %22, i32 %21, !dbg !151 ; [#uses=1 type=i8*] [debug line = 111:4]
  %24 = load i8* %23, align 1, !dbg !151          ; [#uses=1 type=i8] [debug line = 111:4]
  %25 = zext i8 %24 to i32, !dbg !151             ; [#uses=1 type=i32] [debug line = 111:4]
  %26 = load i32* %i, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 111:4]
  %27 = load i32* %j, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 111:4]
  %28 = load [4 x i32]** %2, align 4, !dbg !151   ; [#uses=1 type=[4 x i32]*] [debug line = 111:4]
  %29 = getelementptr inbounds [4 x i32]* %28, i32 %27, !dbg !151 ; [#uses=1 type=[4 x i32]*] [debug line = 111:4]
  %30 = getelementptr inbounds [4 x i32]* %29, i32 0, i32 %26, !dbg !151 ; [#uses=2 type=i32*] [debug line = 111:4]
  %31 = load i32* %30, align 4, !dbg !151         ; [#uses=1 type=i32] [debug line = 111:4]
  %32 = xor i32 %31, %25, !dbg !151               ; [#uses=1 type=i32] [debug line = 111:4]
  store i32 %32, i32* %30, align 4, !dbg !151     ; [debug line = 111:4]
  br label %33, !dbg !153                         ; [debug line = 112:3]

; <label>:33                                      ; preds = %13
  %34 = load i32* %j, align 4, !dbg !154          ; [#uses=1 type=i32] [debug line = 109:15]
  %35 = add nsw i32 %34, 1, !dbg !154             ; [#uses=1 type=i32] [debug line = 109:15]
  store i32 %35, i32* %j, align 4, !dbg !154      ; [debug line = 109:15]
  br label %10, !dbg !154                         ; [debug line = 109:15]

; <label>:36                                      ; preds = %10
  br label %37, !dbg !155                         ; [debug line = 113:2]

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !156          ; [#uses=1 type=i32] [debug line = 107:14]
  %39 = add nsw i32 %38, 1, !dbg !156             ; [#uses=1 type=i32] [debug line = 107:14]
  store i32 %39, i32* %i, align 4, !dbg !156      ; [debug line = 107:14]
  br label %6, !dbg !156                          ; [debug line = 107:14]

; <label>:40                                      ; preds = %6
  ret void, !dbg !157                             ; [debug line = 114:1]
}

; [#uses=2]
define void @SubBytes([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=4 type=[4 x i32]**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !158), !dbg !159 ; [debug line = 118:20] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !160    ; [#uses=1 type=[4 x i32]*] [debug line = 119:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !160 ; [debug line = 119:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !162), !dbg !163 ; [debug line = 120:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !164), !dbg !165 ; [debug line = 120:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !166        ; [debug line = 121:6]
  br label %3, !dbg !166                          ; [debug line = 121:6]

; <label>:3                                       ; preds = %27, %0
  %4 = load i32* %i, align 4, !dbg !166           ; [#uses=1 type=i32] [debug line = 121:6]
  %5 = icmp slt i32 %4, 4, !dbg !166              ; [#uses=1 type=i1] [debug line = 121:6]
  br i1 %5, label %6, label %30, !dbg !166        ; [debug line = 121:6]

; <label>:6                                       ; preds = %3
  store i32 0, i32* %j, align 4, !dbg !168        ; [debug line = 123:7]
  br label %7, !dbg !168                          ; [debug line = 123:7]

; <label>:7                                       ; preds = %23, %6
  %8 = load i32* %j, align 4, !dbg !168           ; [#uses=1 type=i32] [debug line = 123:7]
  %9 = icmp slt i32 %8, 4, !dbg !168              ; [#uses=1 type=i1] [debug line = 123:7]
  br i1 %9, label %10, label %26, !dbg !168       ; [debug line = 123:7]

; <label>:10                                      ; preds = %7
  %11 = load i32* %j, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 125:18]
  %12 = load i32* %i, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 125:18]
  %13 = load [4 x i32]** %1, align 4, !dbg !171   ; [#uses=1 type=[4 x i32]*] [debug line = 125:18]
  %14 = getelementptr inbounds [4 x i32]* %13, i32 %12, !dbg !171 ; [#uses=1 type=[4 x i32]*] [debug line = 125:18]
  %15 = getelementptr inbounds [4 x i32]* %14, i32 0, i32 %11, !dbg !171 ; [#uses=1 type=i32*] [debug line = 125:18]
  %16 = load i32* %15, align 4, !dbg !171         ; [#uses=1 type=i32] [debug line = 125:18]
  %17 = call i32 @getSBoxValue(i32 %16), !dbg !171 ; [#uses=1 type=i32] [debug line = 125:18]
  %18 = load i32* %j, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 125:18]
  %19 = load i32* %i, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 125:18]
  %20 = load [4 x i32]** %1, align 4, !dbg !171   ; [#uses=1 type=[4 x i32]*] [debug line = 125:18]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 %19, !dbg !171 ; [#uses=1 type=[4 x i32]*] [debug line = 125:18]
  %22 = getelementptr inbounds [4 x i32]* %21, i32 0, i32 %18, !dbg !171 ; [#uses=1 type=i32*] [debug line = 125:18]
  store i32 %17, i32* %22, align 4, !dbg !171     ; [debug line = 125:18]
  br label %23, !dbg !173                         ; [debug line = 127:3]

; <label>:23                                      ; preds = %10
  %24 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 123:15]
  %25 = add nsw i32 %24, 1, !dbg !174             ; [#uses=1 type=i32] [debug line = 123:15]
  store i32 %25, i32* %j, align 4, !dbg !174      ; [debug line = 123:15]
  br label %7, !dbg !174                          ; [debug line = 123:15]

; <label>:26                                      ; preds = %7
  br label %27, !dbg !175                         ; [debug line = 128:2]

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !176          ; [#uses=1 type=i32] [debug line = 121:14]
  %29 = add nsw i32 %28, 1, !dbg !176             ; [#uses=1 type=i32] [debug line = 121:14]
  store i32 %29, i32* %i, align 4, !dbg !176      ; [debug line = 121:14]
  br label %3, !dbg !176                          ; [debug line = 121:14]

; <label>:30                                      ; preds = %3
  ret void, !dbg !177                             ; [debug line = 129:1]
}

; [#uses=2]
define void @ShiftRows([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=26 type=[4 x i32]**]
  %temp = alloca i8, align 1                      ; [#uses=8 type=i8*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !178), !dbg !179 ; [debug line = 134:21] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !180    ; [#uses=1 type=[4 x i32]*] [debug line = 135:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !180 ; [debug line = 135:2]
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !182), !dbg !183 ; [debug line = 136:16] [debug variable = temp]
  %3 = load [4 x i32]** %1, align 4, !dbg !184    ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %4 = getelementptr inbounds [4 x i32]* %3, i32 1, !dbg !184 ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %5 = getelementptr inbounds [4 x i32]* %4, i32 0, i32 0, !dbg !184 ; [#uses=1 type=i32*] [debug line = 139:2]
  %6 = load i32* %5, align 4, !dbg !184           ; [#uses=1 type=i32] [debug line = 139:2]
  %7 = trunc i32 %6 to i8, !dbg !184              ; [#uses=1 type=i8] [debug line = 139:2]
  store i8 %7, i8* %temp, align 1, !dbg !184      ; [debug line = 139:2]
  %8 = load [4 x i32]** %1, align 4, !dbg !185    ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %9 = getelementptr inbounds [4 x i32]* %8, i32 1, !dbg !185 ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %10 = getelementptr inbounds [4 x i32]* %9, i32 0, i32 1, !dbg !185 ; [#uses=1 type=i32*] [debug line = 140:2]
  %11 = load i32* %10, align 4, !dbg !185         ; [#uses=1 type=i32] [debug line = 140:2]
  %12 = load [4 x i32]** %1, align 4, !dbg !185   ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %13 = getelementptr inbounds [4 x i32]* %12, i32 1, !dbg !185 ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %14 = getelementptr inbounds [4 x i32]* %13, i32 0, i32 0, !dbg !185 ; [#uses=1 type=i32*] [debug line = 140:2]
  store i32 %11, i32* %14, align 4, !dbg !185     ; [debug line = 140:2]
  %15 = load [4 x i32]** %1, align 4, !dbg !186   ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %16 = getelementptr inbounds [4 x i32]* %15, i32 1, !dbg !186 ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %17 = getelementptr inbounds [4 x i32]* %16, i32 0, i32 2, !dbg !186 ; [#uses=1 type=i32*] [debug line = 141:2]
  %18 = load i32* %17, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 141:2]
  %19 = load [4 x i32]** %1, align 4, !dbg !186   ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %20 = getelementptr inbounds [4 x i32]* %19, i32 1, !dbg !186 ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 0, i32 1, !dbg !186 ; [#uses=1 type=i32*] [debug line = 141:2]
  store i32 %18, i32* %21, align 4, !dbg !186     ; [debug line = 141:2]
  %22 = load [4 x i32]** %1, align 4, !dbg !187   ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %23 = getelementptr inbounds [4 x i32]* %22, i32 1, !dbg !187 ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %24 = getelementptr inbounds [4 x i32]* %23, i32 0, i32 3, !dbg !187 ; [#uses=1 type=i32*] [debug line = 142:2]
  %25 = load i32* %24, align 4, !dbg !187         ; [#uses=1 type=i32] [debug line = 142:2]
  %26 = load [4 x i32]** %1, align 4, !dbg !187   ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %27 = getelementptr inbounds [4 x i32]* %26, i32 1, !dbg !187 ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %28 = getelementptr inbounds [4 x i32]* %27, i32 0, i32 2, !dbg !187 ; [#uses=1 type=i32*] [debug line = 142:2]
  store i32 %25, i32* %28, align 4, !dbg !187     ; [debug line = 142:2]
  %29 = load i8* %temp, align 1, !dbg !188        ; [#uses=1 type=i8] [debug line = 143:2]
  %30 = zext i8 %29 to i32, !dbg !188             ; [#uses=1 type=i32] [debug line = 143:2]
  %31 = load [4 x i32]** %1, align 4, !dbg !188   ; [#uses=1 type=[4 x i32]*] [debug line = 143:2]
  %32 = getelementptr inbounds [4 x i32]* %31, i32 1, !dbg !188 ; [#uses=1 type=[4 x i32]*] [debug line = 143:2]
  %33 = getelementptr inbounds [4 x i32]* %32, i32 0, i32 3, !dbg !188 ; [#uses=1 type=i32*] [debug line = 143:2]
  store i32 %30, i32* %33, align 4, !dbg !188     ; [debug line = 143:2]
  %34 = load [4 x i32]** %1, align 4, !dbg !189   ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %35 = getelementptr inbounds [4 x i32]* %34, i32 2, !dbg !189 ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %36 = getelementptr inbounds [4 x i32]* %35, i32 0, i32 0, !dbg !189 ; [#uses=1 type=i32*] [debug line = 146:2]
  %37 = load i32* %36, align 4, !dbg !189         ; [#uses=1 type=i32] [debug line = 146:2]
  %38 = trunc i32 %37 to i8, !dbg !189            ; [#uses=1 type=i8] [debug line = 146:2]
  store i8 %38, i8* %temp, align 1, !dbg !189     ; [debug line = 146:2]
  %39 = load [4 x i32]** %1, align 4, !dbg !190   ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %40 = getelementptr inbounds [4 x i32]* %39, i32 2, !dbg !190 ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %41 = getelementptr inbounds [4 x i32]* %40, i32 0, i32 2, !dbg !190 ; [#uses=1 type=i32*] [debug line = 147:2]
  %42 = load i32* %41, align 4, !dbg !190         ; [#uses=1 type=i32] [debug line = 147:2]
  %43 = load [4 x i32]** %1, align 4, !dbg !190   ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %44 = getelementptr inbounds [4 x i32]* %43, i32 2, !dbg !190 ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %45 = getelementptr inbounds [4 x i32]* %44, i32 0, i32 0, !dbg !190 ; [#uses=1 type=i32*] [debug line = 147:2]
  store i32 %42, i32* %45, align 4, !dbg !190     ; [debug line = 147:2]
  %46 = load i8* %temp, align 1, !dbg !191        ; [#uses=1 type=i8] [debug line = 148:2]
  %47 = zext i8 %46 to i32, !dbg !191             ; [#uses=1 type=i32] [debug line = 148:2]
  %48 = load [4 x i32]** %1, align 4, !dbg !191   ; [#uses=1 type=[4 x i32]*] [debug line = 148:2]
  %49 = getelementptr inbounds [4 x i32]* %48, i32 2, !dbg !191 ; [#uses=1 type=[4 x i32]*] [debug line = 148:2]
  %50 = getelementptr inbounds [4 x i32]* %49, i32 0, i32 2, !dbg !191 ; [#uses=1 type=i32*] [debug line = 148:2]
  store i32 %47, i32* %50, align 4, !dbg !191     ; [debug line = 148:2]
  %51 = load [4 x i32]** %1, align 4, !dbg !192   ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %52 = getelementptr inbounds [4 x i32]* %51, i32 2, !dbg !192 ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %53 = getelementptr inbounds [4 x i32]* %52, i32 0, i32 1, !dbg !192 ; [#uses=1 type=i32*] [debug line = 150:2]
  %54 = load i32* %53, align 4, !dbg !192         ; [#uses=1 type=i32] [debug line = 150:2]
  %55 = trunc i32 %54 to i8, !dbg !192            ; [#uses=1 type=i8] [debug line = 150:2]
  store i8 %55, i8* %temp, align 1, !dbg !192     ; [debug line = 150:2]
  %56 = load [4 x i32]** %1, align 4, !dbg !193   ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %57 = getelementptr inbounds [4 x i32]* %56, i32 2, !dbg !193 ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %58 = getelementptr inbounds [4 x i32]* %57, i32 0, i32 3, !dbg !193 ; [#uses=1 type=i32*] [debug line = 151:2]
  %59 = load i32* %58, align 4, !dbg !193         ; [#uses=1 type=i32] [debug line = 151:2]
  %60 = load [4 x i32]** %1, align 4, !dbg !193   ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %61 = getelementptr inbounds [4 x i32]* %60, i32 2, !dbg !193 ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %62 = getelementptr inbounds [4 x i32]* %61, i32 0, i32 1, !dbg !193 ; [#uses=1 type=i32*] [debug line = 151:2]
  store i32 %59, i32* %62, align 4, !dbg !193     ; [debug line = 151:2]
  %63 = load i8* %temp, align 1, !dbg !194        ; [#uses=1 type=i8] [debug line = 152:2]
  %64 = zext i8 %63 to i32, !dbg !194             ; [#uses=1 type=i32] [debug line = 152:2]
  %65 = load [4 x i32]** %1, align 4, !dbg !194   ; [#uses=1 type=[4 x i32]*] [debug line = 152:2]
  %66 = getelementptr inbounds [4 x i32]* %65, i32 2, !dbg !194 ; [#uses=1 type=[4 x i32]*] [debug line = 152:2]
  %67 = getelementptr inbounds [4 x i32]* %66, i32 0, i32 3, !dbg !194 ; [#uses=1 type=i32*] [debug line = 152:2]
  store i32 %64, i32* %67, align 4, !dbg !194     ; [debug line = 152:2]
  %68 = load [4 x i32]** %1, align 4, !dbg !195   ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %69 = getelementptr inbounds [4 x i32]* %68, i32 3, !dbg !195 ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %70 = getelementptr inbounds [4 x i32]* %69, i32 0, i32 0, !dbg !195 ; [#uses=1 type=i32*] [debug line = 155:2]
  %71 = load i32* %70, align 4, !dbg !195         ; [#uses=1 type=i32] [debug line = 155:2]
  %72 = trunc i32 %71 to i8, !dbg !195            ; [#uses=1 type=i8] [debug line = 155:2]
  store i8 %72, i8* %temp, align 1, !dbg !195     ; [debug line = 155:2]
  %73 = load [4 x i32]** %1, align 4, !dbg !196   ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %74 = getelementptr inbounds [4 x i32]* %73, i32 3, !dbg !196 ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %75 = getelementptr inbounds [4 x i32]* %74, i32 0, i32 3, !dbg !196 ; [#uses=1 type=i32*] [debug line = 156:2]
  %76 = load i32* %75, align 4, !dbg !196         ; [#uses=1 type=i32] [debug line = 156:2]
  %77 = load [4 x i32]** %1, align 4, !dbg !196   ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %78 = getelementptr inbounds [4 x i32]* %77, i32 3, !dbg !196 ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %79 = getelementptr inbounds [4 x i32]* %78, i32 0, i32 0, !dbg !196 ; [#uses=1 type=i32*] [debug line = 156:2]
  store i32 %76, i32* %79, align 4, !dbg !196     ; [debug line = 156:2]
  %80 = load [4 x i32]** %1, align 4, !dbg !197   ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %81 = getelementptr inbounds [4 x i32]* %80, i32 3, !dbg !197 ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %82 = getelementptr inbounds [4 x i32]* %81, i32 0, i32 2, !dbg !197 ; [#uses=1 type=i32*] [debug line = 157:2]
  %83 = load i32* %82, align 4, !dbg !197         ; [#uses=1 type=i32] [debug line = 157:2]
  %84 = load [4 x i32]** %1, align 4, !dbg !197   ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %85 = getelementptr inbounds [4 x i32]* %84, i32 3, !dbg !197 ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %86 = getelementptr inbounds [4 x i32]* %85, i32 0, i32 3, !dbg !197 ; [#uses=1 type=i32*] [debug line = 157:2]
  store i32 %83, i32* %86, align 4, !dbg !197     ; [debug line = 157:2]
  %87 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %88 = getelementptr inbounds [4 x i32]* %87, i32 3, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %89 = getelementptr inbounds [4 x i32]* %88, i32 0, i32 1, !dbg !198 ; [#uses=1 type=i32*] [debug line = 158:2]
  %90 = load i32* %89, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 158:2]
  %91 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %92 = getelementptr inbounds [4 x i32]* %91, i32 3, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %93 = getelementptr inbounds [4 x i32]* %92, i32 0, i32 2, !dbg !198 ; [#uses=1 type=i32*] [debug line = 158:2]
  store i32 %90, i32* %93, align 4, !dbg !198     ; [debug line = 158:2]
  %94 = load i8* %temp, align 1, !dbg !199        ; [#uses=1 type=i8] [debug line = 159:2]
  %95 = zext i8 %94 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 159:2]
  %96 = load [4 x i32]** %1, align 4, !dbg !199   ; [#uses=1 type=[4 x i32]*] [debug line = 159:2]
  %97 = getelementptr inbounds [4 x i32]* %96, i32 3, !dbg !199 ; [#uses=1 type=[4 x i32]*] [debug line = 159:2]
  %98 = getelementptr inbounds [4 x i32]* %97, i32 0, i32 1, !dbg !199 ; [#uses=1 type=i32*] [debug line = 159:2]
  store i32 %95, i32* %98, align 4, !dbg !199     ; [debug line = 159:2]
  ret void, !dbg !200                             ; [debug line = 160:1]
}

; [#uses=1]
define void @MixColumns([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=18 type=[4 x i32]**]
  %i = alloca i32, align 4                        ; [#uses=20 type=i32*]
  %Tmp = alloca i8, align 1                       ; [#uses=5 type=i8*]
  %Tm = alloca i8, align 1                        ; [#uses=20 type=i8*]
  %t = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !201), !dbg !202 ; [debug line = 166:22] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !203    ; [#uses=1 type=[4 x i32]*] [debug line = 167:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !203 ; [debug line = 167:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !205), !dbg !206 ; [debug line = 168:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %Tmp}, metadata !207), !dbg !208 ; [debug line = 169:16] [debug variable = Tmp]
  call void @llvm.dbg.declare(metadata !{i8* %Tm}, metadata !209), !dbg !210 ; [debug line = 169:20] [debug variable = Tm]
  call void @llvm.dbg.declare(metadata !{i8* %t}, metadata !211), !dbg !212 ; [debug line = 169:23] [debug variable = t]
  store i32 0, i32* %i, align 4, !dbg !213        ; [debug line = 170:6]
  br label %3, !dbg !213                          ; [debug line = 170:6]

; <label>:3                                       ; preds = %166, %0
  %4 = load i32* %i, align 4, !dbg !213           ; [#uses=1 type=i32] [debug line = 170:6]
  %5 = icmp slt i32 %4, 4, !dbg !213              ; [#uses=1 type=i1] [debug line = 170:6]
  br i1 %5, label %6, label %169, !dbg !213       ; [debug line = 170:6]

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4, !dbg !215           ; [#uses=1 type=i32] [debug line = 172:3]
  %8 = load [4 x i32]** %1, align 4, !dbg !215    ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %9 = getelementptr inbounds [4 x i32]* %8, i32 0, !dbg !215 ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %10 = getelementptr inbounds [4 x i32]* %9, i32 0, i32 %7, !dbg !215 ; [#uses=1 type=i32*] [debug line = 172:3]
  %11 = load i32* %10, align 4, !dbg !215         ; [#uses=1 type=i32] [debug line = 172:3]
  %12 = trunc i32 %11 to i8, !dbg !215            ; [#uses=1 type=i8] [debug line = 172:3]
  store i8 %12, i8* %t, align 1, !dbg !215        ; [debug line = 172:3]
  %13 = load i32* %i, align 4, !dbg !217          ; [#uses=1 type=i32] [debug line = 173:3]
  %14 = load [4 x i32]** %1, align 4, !dbg !217   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %15 = getelementptr inbounds [4 x i32]* %14, i32 0, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %16 = getelementptr inbounds [4 x i32]* %15, i32 0, i32 %13, !dbg !217 ; [#uses=1 type=i32*] [debug line = 173:3]
  %17 = load i32* %16, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 173:3]
  %18 = load i32* %i, align 4, !dbg !217          ; [#uses=1 type=i32] [debug line = 173:3]
  %19 = load [4 x i32]** %1, align 4, !dbg !217   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %20 = getelementptr inbounds [4 x i32]* %19, i32 1, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 0, i32 %18, !dbg !217 ; [#uses=1 type=i32*] [debug line = 173:3]
  %22 = load i32* %21, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 173:3]
  %23 = xor i32 %17, %22, !dbg !217               ; [#uses=1 type=i32] [debug line = 173:3]
  %24 = load i32* %i, align 4, !dbg !217          ; [#uses=1 type=i32] [debug line = 173:3]
  %25 = load [4 x i32]** %1, align 4, !dbg !217   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %26 = getelementptr inbounds [4 x i32]* %25, i32 2, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %27 = getelementptr inbounds [4 x i32]* %26, i32 0, i32 %24, !dbg !217 ; [#uses=1 type=i32*] [debug line = 173:3]
  %28 = load i32* %27, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 173:3]
  %29 = xor i32 %23, %28, !dbg !217               ; [#uses=1 type=i32] [debug line = 173:3]
  %30 = load i32* %i, align 4, !dbg !217          ; [#uses=1 type=i32] [debug line = 173:3]
  %31 = load [4 x i32]** %1, align 4, !dbg !217   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %32 = getelementptr inbounds [4 x i32]* %31, i32 3, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %33 = getelementptr inbounds [4 x i32]* %32, i32 0, i32 %30, !dbg !217 ; [#uses=1 type=i32*] [debug line = 173:3]
  %34 = load i32* %33, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 173:3]
  %35 = xor i32 %29, %34, !dbg !217               ; [#uses=1 type=i32] [debug line = 173:3]
  %36 = trunc i32 %35 to i8, !dbg !217            ; [#uses=1 type=i8] [debug line = 173:3]
  store i8 %36, i8* %Tmp, align 1, !dbg !217      ; [debug line = 173:3]
  %37 = load i32* %i, align 4, !dbg !218          ; [#uses=1 type=i32] [debug line = 174:3]
  %38 = load [4 x i32]** %1, align 4, !dbg !218   ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %39 = getelementptr inbounds [4 x i32]* %38, i32 0, !dbg !218 ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %40 = getelementptr inbounds [4 x i32]* %39, i32 0, i32 %37, !dbg !218 ; [#uses=1 type=i32*] [debug line = 174:3]
  %41 = load i32* %40, align 4, !dbg !218         ; [#uses=1 type=i32] [debug line = 174:3]
  %42 = load i32* %i, align 4, !dbg !218          ; [#uses=1 type=i32] [debug line = 174:3]
  %43 = load [4 x i32]** %1, align 4, !dbg !218   ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %44 = getelementptr inbounds [4 x i32]* %43, i32 1, !dbg !218 ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %45 = getelementptr inbounds [4 x i32]* %44, i32 0, i32 %42, !dbg !218 ; [#uses=1 type=i32*] [debug line = 174:3]
  %46 = load i32* %45, align 4, !dbg !218         ; [#uses=1 type=i32] [debug line = 174:3]
  %47 = xor i32 %41, %46, !dbg !218               ; [#uses=1 type=i32] [debug line = 174:3]
  %48 = trunc i32 %47 to i8, !dbg !218            ; [#uses=1 type=i8] [debug line = 174:3]
  store i8 %48, i8* %Tm, align 1, !dbg !218       ; [debug line = 174:3]
  %49 = load i8* %Tm, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 174:36]
  %50 = zext i8 %49 to i32, !dbg !219             ; [#uses=1 type=i32] [debug line = 174:36]
  %51 = shl i32 %50, 1, !dbg !219                 ; [#uses=1 type=i32] [debug line = 174:36]
  %52 = load i8* %Tm, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 174:36]
  %53 = zext i8 %52 to i32, !dbg !219             ; [#uses=1 type=i32] [debug line = 174:36]
  %54 = ashr i32 %53, 7, !dbg !219                ; [#uses=1 type=i32] [debug line = 174:36]
  %55 = and i32 %54, 1, !dbg !219                 ; [#uses=1 type=i32] [debug line = 174:36]
  %56 = mul nsw i32 %55, 27, !dbg !219            ; [#uses=1 type=i32] [debug line = 174:36]
  %57 = xor i32 %51, %56, !dbg !219               ; [#uses=1 type=i32] [debug line = 174:36]
  %58 = trunc i32 %57 to i8, !dbg !219            ; [#uses=1 type=i8] [debug line = 174:36]
  store i8 %58, i8* %Tm, align 1, !dbg !219       ; [debug line = 174:36]
  %59 = load i8* %Tm, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 174:77]
  %60 = zext i8 %59 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 174:77]
  %61 = load i8* %Tmp, align 1, !dbg !220         ; [#uses=1 type=i8] [debug line = 174:77]
  %62 = zext i8 %61 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 174:77]
  %63 = xor i32 %60, %62, !dbg !220               ; [#uses=1 type=i32] [debug line = 174:77]
  %64 = load i32* %i, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 174:77]
  %65 = load [4 x i32]** %1, align 4, !dbg !220   ; [#uses=1 type=[4 x i32]*] [debug line = 174:77]
  %66 = getelementptr inbounds [4 x i32]* %65, i32 0, !dbg !220 ; [#uses=1 type=[4 x i32]*] [debug line = 174:77]
  %67 = getelementptr inbounds [4 x i32]* %66, i32 0, i32 %64, !dbg !220 ; [#uses=2 type=i32*] [debug line = 174:77]
  %68 = load i32* %67, align 4, !dbg !220         ; [#uses=1 type=i32] [debug line = 174:77]
  %69 = xor i32 %68, %63, !dbg !220               ; [#uses=1 type=i32] [debug line = 174:77]
  store i32 %69, i32* %67, align 4, !dbg !220     ; [debug line = 174:77]
  %70 = load i32* %i, align 4, !dbg !221          ; [#uses=1 type=i32] [debug line = 175:3]
  %71 = load [4 x i32]** %1, align 4, !dbg !221   ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %72 = getelementptr inbounds [4 x i32]* %71, i32 1, !dbg !221 ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %73 = getelementptr inbounds [4 x i32]* %72, i32 0, i32 %70, !dbg !221 ; [#uses=1 type=i32*] [debug line = 175:3]
  %74 = load i32* %73, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 175:3]
  %75 = load i32* %i, align 4, !dbg !221          ; [#uses=1 type=i32] [debug line = 175:3]
  %76 = load [4 x i32]** %1, align 4, !dbg !221   ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %77 = getelementptr inbounds [4 x i32]* %76, i32 2, !dbg !221 ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %78 = getelementptr inbounds [4 x i32]* %77, i32 0, i32 %75, !dbg !221 ; [#uses=1 type=i32*] [debug line = 175:3]
  %79 = load i32* %78, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 175:3]
  %80 = xor i32 %74, %79, !dbg !221               ; [#uses=1 type=i32] [debug line = 175:3]
  %81 = trunc i32 %80 to i8, !dbg !221            ; [#uses=1 type=i8] [debug line = 175:3]
  store i8 %81, i8* %Tm, align 1, !dbg !221       ; [debug line = 175:3]
  %82 = load i8* %Tm, align 1, !dbg !222          ; [#uses=1 type=i8] [debug line = 175:36]
  %83 = zext i8 %82 to i32, !dbg !222             ; [#uses=1 type=i32] [debug line = 175:36]
  %84 = shl i32 %83, 1, !dbg !222                 ; [#uses=1 type=i32] [debug line = 175:36]
  %85 = load i8* %Tm, align 1, !dbg !222          ; [#uses=1 type=i8] [debug line = 175:36]
  %86 = zext i8 %85 to i32, !dbg !222             ; [#uses=1 type=i32] [debug line = 175:36]
  %87 = ashr i32 %86, 7, !dbg !222                ; [#uses=1 type=i32] [debug line = 175:36]
  %88 = and i32 %87, 1, !dbg !222                 ; [#uses=1 type=i32] [debug line = 175:36]
  %89 = mul nsw i32 %88, 27, !dbg !222            ; [#uses=1 type=i32] [debug line = 175:36]
  %90 = xor i32 %84, %89, !dbg !222               ; [#uses=1 type=i32] [debug line = 175:36]
  %91 = trunc i32 %90 to i8, !dbg !222            ; [#uses=1 type=i8] [debug line = 175:36]
  store i8 %91, i8* %Tm, align 1, !dbg !222       ; [debug line = 175:36]
  %92 = load i8* %Tm, align 1, !dbg !223          ; [#uses=1 type=i8] [debug line = 175:77]
  %93 = zext i8 %92 to i32, !dbg !223             ; [#uses=1 type=i32] [debug line = 175:77]
  %94 = load i8* %Tmp, align 1, !dbg !223         ; [#uses=1 type=i8] [debug line = 175:77]
  %95 = zext i8 %94 to i32, !dbg !223             ; [#uses=1 type=i32] [debug line = 175:77]
  %96 = xor i32 %93, %95, !dbg !223               ; [#uses=1 type=i32] [debug line = 175:77]
  %97 = load i32* %i, align 4, !dbg !223          ; [#uses=1 type=i32] [debug line = 175:77]
  %98 = load [4 x i32]** %1, align 4, !dbg !223   ; [#uses=1 type=[4 x i32]*] [debug line = 175:77]
  %99 = getelementptr inbounds [4 x i32]* %98, i32 1, !dbg !223 ; [#uses=1 type=[4 x i32]*] [debug line = 175:77]
  %100 = getelementptr inbounds [4 x i32]* %99, i32 0, i32 %97, !dbg !223 ; [#uses=2 type=i32*] [debug line = 175:77]
  %101 = load i32* %100, align 4, !dbg !223       ; [#uses=1 type=i32] [debug line = 175:77]
  %102 = xor i32 %101, %96, !dbg !223             ; [#uses=1 type=i32] [debug line = 175:77]
  store i32 %102, i32* %100, align 4, !dbg !223   ; [debug line = 175:77]
  %103 = load i32* %i, align 4, !dbg !224         ; [#uses=1 type=i32] [debug line = 176:3]
  %104 = load [4 x i32]** %1, align 4, !dbg !224  ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %105 = getelementptr inbounds [4 x i32]* %104, i32 2, !dbg !224 ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %106 = getelementptr inbounds [4 x i32]* %105, i32 0, i32 %103, !dbg !224 ; [#uses=1 type=i32*] [debug line = 176:3]
  %107 = load i32* %106, align 4, !dbg !224       ; [#uses=1 type=i32] [debug line = 176:3]
  %108 = load i32* %i, align 4, !dbg !224         ; [#uses=1 type=i32] [debug line = 176:3]
  %109 = load [4 x i32]** %1, align 4, !dbg !224  ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %110 = getelementptr inbounds [4 x i32]* %109, i32 3, !dbg !224 ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %111 = getelementptr inbounds [4 x i32]* %110, i32 0, i32 %108, !dbg !224 ; [#uses=1 type=i32*] [debug line = 176:3]
  %112 = load i32* %111, align 4, !dbg !224       ; [#uses=1 type=i32] [debug line = 176:3]
  %113 = xor i32 %107, %112, !dbg !224            ; [#uses=1 type=i32] [debug line = 176:3]
  %114 = trunc i32 %113 to i8, !dbg !224          ; [#uses=1 type=i8] [debug line = 176:3]
  store i8 %114, i8* %Tm, align 1, !dbg !224      ; [debug line = 176:3]
  %115 = load i8* %Tm, align 1, !dbg !225         ; [#uses=1 type=i8] [debug line = 176:36]
  %116 = zext i8 %115 to i32, !dbg !225           ; [#uses=1 type=i32] [debug line = 176:36]
  %117 = shl i32 %116, 1, !dbg !225               ; [#uses=1 type=i32] [debug line = 176:36]
  %118 = load i8* %Tm, align 1, !dbg !225         ; [#uses=1 type=i8] [debug line = 176:36]
  %119 = zext i8 %118 to i32, !dbg !225           ; [#uses=1 type=i32] [debug line = 176:36]
  %120 = ashr i32 %119, 7, !dbg !225              ; [#uses=1 type=i32] [debug line = 176:36]
  %121 = and i32 %120, 1, !dbg !225               ; [#uses=1 type=i32] [debug line = 176:36]
  %122 = mul nsw i32 %121, 27, !dbg !225          ; [#uses=1 type=i32] [debug line = 176:36]
  %123 = xor i32 %117, %122, !dbg !225            ; [#uses=1 type=i32] [debug line = 176:36]
  %124 = trunc i32 %123 to i8, !dbg !225          ; [#uses=1 type=i8] [debug line = 176:36]
  store i8 %124, i8* %Tm, align 1, !dbg !225      ; [debug line = 176:36]
  %125 = load i8* %Tm, align 1, !dbg !226         ; [#uses=1 type=i8] [debug line = 176:77]
  %126 = zext i8 %125 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 176:77]
  %127 = load i8* %Tmp, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 176:77]
  %128 = zext i8 %127 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 176:77]
  %129 = xor i32 %126, %128, !dbg !226            ; [#uses=1 type=i32] [debug line = 176:77]
  %130 = load i32* %i, align 4, !dbg !226         ; [#uses=1 type=i32] [debug line = 176:77]
  %131 = load [4 x i32]** %1, align 4, !dbg !226  ; [#uses=1 type=[4 x i32]*] [debug line = 176:77]
  %132 = getelementptr inbounds [4 x i32]* %131, i32 2, !dbg !226 ; [#uses=1 type=[4 x i32]*] [debug line = 176:77]
  %133 = getelementptr inbounds [4 x i32]* %132, i32 0, i32 %130, !dbg !226 ; [#uses=2 type=i32*] [debug line = 176:77]
  %134 = load i32* %133, align 4, !dbg !226       ; [#uses=1 type=i32] [debug line = 176:77]
  %135 = xor i32 %134, %129, !dbg !226            ; [#uses=1 type=i32] [debug line = 176:77]
  store i32 %135, i32* %133, align 4, !dbg !226   ; [debug line = 176:77]
  %136 = load i32* %i, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 177:3]
  %137 = load [4 x i32]** %1, align 4, !dbg !227  ; [#uses=1 type=[4 x i32]*] [debug line = 177:3]
  %138 = getelementptr inbounds [4 x i32]* %137, i32 3, !dbg !227 ; [#uses=1 type=[4 x i32]*] [debug line = 177:3]
  %139 = getelementptr inbounds [4 x i32]* %138, i32 0, i32 %136, !dbg !227 ; [#uses=1 type=i32*] [debug line = 177:3]
  %140 = load i32* %139, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 177:3]
  %141 = load i8* %t, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 177:3]
  %142 = zext i8 %141 to i32, !dbg !227           ; [#uses=1 type=i32] [debug line = 177:3]
  %143 = xor i32 %140, %142, !dbg !227            ; [#uses=1 type=i32] [debug line = 177:3]
  %144 = trunc i32 %143 to i8, !dbg !227          ; [#uses=1 type=i8] [debug line = 177:3]
  store i8 %144, i8* %Tm, align 1, !dbg !227      ; [debug line = 177:3]
  %145 = load i8* %Tm, align 1, !dbg !228         ; [#uses=1 type=i8] [debug line = 177:26]
  %146 = zext i8 %145 to i32, !dbg !228           ; [#uses=1 type=i32] [debug line = 177:26]
  %147 = shl i32 %146, 1, !dbg !228               ; [#uses=1 type=i32] [debug line = 177:26]
  %148 = load i8* %Tm, align 1, !dbg !228         ; [#uses=1 type=i8] [debug line = 177:26]
  %149 = zext i8 %148 to i32, !dbg !228           ; [#uses=1 type=i32] [debug line = 177:26]
  %150 = ashr i32 %149, 7, !dbg !228              ; [#uses=1 type=i32] [debug line = 177:26]
  %151 = and i32 %150, 1, !dbg !228               ; [#uses=1 type=i32] [debug line = 177:26]
  %152 = mul nsw i32 %151, 27, !dbg !228          ; [#uses=1 type=i32] [debug line = 177:26]
  %153 = xor i32 %147, %152, !dbg !228            ; [#uses=1 type=i32] [debug line = 177:26]
  %154 = trunc i32 %153 to i8, !dbg !228          ; [#uses=1 type=i8] [debug line = 177:26]
  store i8 %154, i8* %Tm, align 1, !dbg !228      ; [debug line = 177:26]
  %155 = load i8* %Tm, align 1, !dbg !229         ; [#uses=1 type=i8] [debug line = 177:67]
  %156 = zext i8 %155 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 177:67]
  %157 = load i8* %Tmp, align 1, !dbg !229        ; [#uses=1 type=i8] [debug line = 177:67]
  %158 = zext i8 %157 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 177:67]
  %159 = xor i32 %156, %158, !dbg !229            ; [#uses=1 type=i32] [debug line = 177:67]
  %160 = load i32* %i, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 177:67]
  %161 = load [4 x i32]** %1, align 4, !dbg !229  ; [#uses=1 type=[4 x i32]*] [debug line = 177:67]
  %162 = getelementptr inbounds [4 x i32]* %161, i32 3, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 177:67]
  %163 = getelementptr inbounds [4 x i32]* %162, i32 0, i32 %160, !dbg !229 ; [#uses=2 type=i32*] [debug line = 177:67]
  %164 = load i32* %163, align 4, !dbg !229       ; [#uses=1 type=i32] [debug line = 177:67]
  %165 = xor i32 %164, %159, !dbg !229            ; [#uses=1 type=i32] [debug line = 177:67]
  store i32 %165, i32* %163, align 4, !dbg !229   ; [debug line = 177:67]
  br label %166, !dbg !230                        ; [debug line = 178:2]

; <label>:166                                     ; preds = %6
  %167 = load i32* %i, align 4, !dbg !231         ; [#uses=1 type=i32] [debug line = 170:14]
  %168 = add nsw i32 %167, 1, !dbg !231           ; [#uses=1 type=i32] [debug line = 170:14]
  store i32 %168, i32* %i, align 4, !dbg !231     ; [debug line = 170:14]
  br label %3, !dbg !231                          ; [debug line = 170:14]

; <label>:169                                     ; preds = %3
  ret void, !dbg !232                             ; [debug line = 179:1]
}

; [#uses=0]
define void @Cipher([4 x i32]* %state, i32* %Key) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=10 type=[4 x i32]**]
  %2 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %Rcon = alloca [255 x i32], align 4             ; [#uses=2 type=[255 x i32]*]
  %RoundKey = alloca [240 x i8], align 1          ; [#uses=4 type=[240 x i8]*]
  %i = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %round = alloca i32, align 4                    ; [#uses=6 type=i32*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !233), !dbg !234 ; [debug line = 182:18] [debug variable = state]
  store i32* %Key, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !235), !dbg !236 ; [debug line = 182:35] [debug variable = Key]
  %3 = load [4 x i32]** %1, align 4, !dbg !237    ; [#uses=1 type=[4 x i32]*] [debug line = 183:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %3, i32 4) nounwind, !dbg !237 ; [debug line = 183:2]
  %4 = load i32** %2, align 4, !dbg !239          ; [#uses=1 type=i32*] [debug line = 183:34]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 32) nounwind, !dbg !239 ; [debug line = 183:34]
  call void @llvm.dbg.declare(metadata !{[255 x i32]* %Rcon}, metadata !240), !dbg !244 ; [debug line = 184:6] [debug variable = Rcon]
  %5 = bitcast [255 x i32]* %Rcon to i8*, !dbg !245 ; [#uses=1 type=i8*] [debug line = 200:92]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([255 x i32]* @Cipher.Rcon to i8*), i32 1020, i32 4, i1 false), !dbg !245 ; [debug line = 200:92]
  call void @llvm.dbg.declare(metadata !{[240 x i8]* %RoundKey}, metadata !246), !dbg !250 ; [debug line = 201:16] [debug variable = RoundKey]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !251), !dbg !252 ; [debug line = 205:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !253), !dbg !254 ; [debug line = 205:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %round}, metadata !255), !dbg !256 ; [debug line = 205:10] [debug variable = round]
  store i32 0, i32* %round, align 4, !dbg !257    ; [debug line = 205:17]
  %6 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !258 ; [#uses=1 type=i8*] [debug line = 208:2]
  %7 = load i32** %2, align 4, !dbg !258          ; [#uses=1 type=i32*] [debug line = 208:2]
  %8 = getelementptr inbounds [255 x i32]* %Rcon, i32 0, i32 0, !dbg !258 ; [#uses=1 type=i32*] [debug line = 208:2]
  call void @KeyExpansion(i8* %6, i32* %7, i32* %8), !dbg !258 ; [debug line = 208:2]
  %9 = load [4 x i32]** %1, align 4, !dbg !259    ; [#uses=1 type=[4 x i32]*] [debug line = 216:2]
  %10 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !259 ; [#uses=1 type=i8*] [debug line = 216:2]
  call void @AddRoundKey(i32 0, [4 x i32]* %9, i8* %10), !dbg !259 ; [debug line = 216:2]
  store i32 1, i32* %round, align 4, !dbg !260    ; [debug line = 221:6]
  br label %11, !dbg !260                         ; [debug line = 221:6]

; <label>:11                                      ; preds = %21, %0
  %12 = load i32* %round, align 4, !dbg !260      ; [#uses=1 type=i32] [debug line = 221:6]
  %13 = icmp slt i32 %12, 10, !dbg !260           ; [#uses=1 type=i1] [debug line = 221:6]
  br i1 %13, label %14, label %24, !dbg !260      ; [debug line = 221:6]

; <label>:14                                      ; preds = %11
  %15 = load [4 x i32]** %1, align 4, !dbg !262   ; [#uses=1 type=[4 x i32]*] [debug line = 223:3]
  call void @SubBytes([4 x i32]* %15), !dbg !262  ; [debug line = 223:3]
  %16 = load [4 x i32]** %1, align 4, !dbg !264   ; [#uses=1 type=[4 x i32]*] [debug line = 224:3]
  call void @ShiftRows([4 x i32]* %16), !dbg !264 ; [debug line = 224:3]
  %17 = load [4 x i32]** %1, align 4, !dbg !265   ; [#uses=1 type=[4 x i32]*] [debug line = 225:3]
  call void @MixColumns([4 x i32]* %17), !dbg !265 ; [debug line = 225:3]
  %18 = load i32* %round, align 4, !dbg !266      ; [#uses=1 type=i32] [debug line = 226:3]
  %19 = load [4 x i32]** %1, align 4, !dbg !266   ; [#uses=1 type=[4 x i32]*] [debug line = 226:3]
  %20 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !266 ; [#uses=1 type=i8*] [debug line = 226:3]
  call void @AddRoundKey(i32 %18, [4 x i32]* %19, i8* %20), !dbg !266 ; [debug line = 226:3]
  br label %21, !dbg !267                         ; [debug line = 227:2]

; <label>:21                                      ; preds = %14
  %22 = load i32* %round, align 4, !dbg !268      ; [#uses=1 type=i32] [debug line = 221:23]
  %23 = add nsw i32 %22, 1, !dbg !268             ; [#uses=1 type=i32] [debug line = 221:23]
  store i32 %23, i32* %round, align 4, !dbg !268  ; [debug line = 221:23]
  br label %11, !dbg !268                         ; [debug line = 221:23]

; <label>:24                                      ; preds = %11
  %25 = load [4 x i32]** %1, align 4, !dbg !269   ; [#uses=1 type=[4 x i32]*] [debug line = 231:2]
  call void @SubBytes([4 x i32]* %25), !dbg !269  ; [debug line = 231:2]
  %26 = load [4 x i32]** %1, align 4, !dbg !270   ; [#uses=1 type=[4 x i32]*] [debug line = 232:2]
  call void @ShiftRows([4 x i32]* %26), !dbg !270 ; [debug line = 232:2]
  %27 = load [4 x i32]** %1, align 4, !dbg !271   ; [#uses=1 type=[4 x i32]*] [debug line = 233:2]
  %28 = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !271 ; [#uses=1 type=i8*] [debug line = 233:2]
  call void @AddRoundKey(i32 10, [4 x i32]* %27, i8* %28), !dbg !271 ; [debug line = 233:2]
  ret void, !dbg !272                             ; [debug line = 238:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43, !49, !53, !57, !58, !59}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisRaw/deutero/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !21, metadata !28, metadata !31, metadata !32, metadata !33}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 8} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"Edited/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 36, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*, i32*)* @KeyExpansion, null, null, metadata !10, i32 37} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !17, metadata !20}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 104, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i32]*, i8*)* @AddRoundKey, null, null, metadata !10, i32 105} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !9, metadata !24, metadata !15}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !18, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 118, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @SubBytes, null, null, metadata !10, i32 119} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !24}
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 134, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @ShiftRows, null, null, metadata !10, i32 135} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 166, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @MixColumns, null, null, metadata !10, i32 167} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 182, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*, i32*)* @Cipher, null, null, metadata !10, i32 183} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !24, metadata !17}
!36 = metadata !{i32 (i32)* @getSBoxValue, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{void (i8*, i32*, i32*)* @KeyExpansion, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"word*", metadata !"int*"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!49 = metadata !{void (i32, [4 x i32]*, i8*)* @AddRoundKey, metadata !50, metadata !45, metadata !51, metadata !47, metadata !52, metadata !42}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"uchar*"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!53 = metadata !{void ([4 x i32]*)* @SubBytes, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!57 = metadata !{void ([4 x i32]*)* @ShiftRows, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!58 = metadata !{void ([4 x i32]*)* @MixColumns, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!59 = metadata !{void ([4 x i32]*, i32*)* @Cipher, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !42}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"word*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"Key"}
!65 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 7, i32 22, metadata !5, null}
!67 = metadata !{i32 786688, metadata !68, metadata !"sbox", metadata !6, i32 9, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786443, metadata !5, i32 8, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !9, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!72 = metadata !{i32 9, i32 6, metadata !68, null}
!73 = metadata !{i32 26, i32 98, metadata !68, null}
!74 = metadata !{i32 27, i32 2, metadata !68, null}
!75 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777252, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 36, i32 33, metadata !12, null}
!77 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554468, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 36, i32 52, metadata !12, null}
!79 = metadata !{i32 786689, metadata !12, metadata !"Rcon", metadata !6, i32 50331684, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 36, i32 64, metadata !12, null}
!81 = metadata !{i32 37, i32 2, metadata !82, null}
!82 = metadata !{i32 786443, metadata !12, i32 37, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 37, i32 39, metadata !82, null}
!84 = metadata !{i32 37, i32 72, metadata !82, null}
!85 = metadata !{i32 786688, metadata !82, metadata !"i", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 38, i32 6, metadata !82, null}
!87 = metadata !{i32 786688, metadata !82, metadata !"j", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 38, i32 8, metadata !82, null}
!89 = metadata !{i32 786688, metadata !82, metadata !"temp", metadata !6, i32 39, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!91 = metadata !{i32 39, i32 16, metadata !82, null}
!92 = metadata !{i32 786688, metadata !82, metadata !"k", metadata !6, i32 39, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 39, i32 24, metadata !82, null}
!94 = metadata !{i32 42, i32 6, metadata !95, null}
!95 = metadata !{i32 786443, metadata !82, i32 42, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 44, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !95, i32 43, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 45, i32 3, metadata !97, null}
!99 = metadata !{i32 46, i32 3, metadata !97, null}
!100 = metadata !{i32 47, i32 3, metadata !97, null}
!101 = metadata !{i32 48, i32 2, metadata !97, null}
!102 = metadata !{i32 42, i32 14, metadata !95, null}
!103 = metadata !{i32 51, i32 2, metadata !82, null}
!104 = metadata !{i32 53, i32 10, metadata !105, null}
!105 = metadata !{i32 786443, metadata !106, i32 53, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !82, i32 52, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 55, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !105, i32 54, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 56, i32 6, metadata !108, null}
!110 = metadata !{i32 53, i32 18, metadata !105, null}
!111 = metadata !{i32 57, i32 6, metadata !106, null}
!112 = metadata !{i32 64, i32 8, metadata !113, null}
!113 = metadata !{i32 786443, metadata !114, i32 63, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !106, i32 58, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 65, i32 8, metadata !113, null}
!116 = metadata !{i32 66, i32 8, metadata !113, null}
!117 = metadata !{i32 67, i32 8, metadata !113, null}
!118 = metadata !{i32 68, i32 8, metadata !113, null}
!119 = metadata !{i32 76, i32 16, metadata !120, null}
!120 = metadata !{i32 786443, metadata !114, i32 75, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 77, i32 16, metadata !120, null}
!122 = metadata !{i32 78, i32 16, metadata !120, null}
!123 = metadata !{i32 79, i32 16, metadata !120, null}
!124 = metadata !{i32 82, i32 7, metadata !114, null}
!125 = metadata !{i32 83, i32 6, metadata !114, null}
!126 = metadata !{i32 94, i32 6, metadata !106, null}
!127 = metadata !{i32 95, i32 6, metadata !106, null}
!128 = metadata !{i32 96, i32 6, metadata !106, null}
!129 = metadata !{i32 97, i32 6, metadata !106, null}
!130 = metadata !{i32 98, i32 6, metadata !106, null}
!131 = metadata !{i32 99, i32 2, metadata !106, null}
!132 = metadata !{i32 100, i32 1, metadata !82, null}
!133 = metadata !{i32 786689, metadata !21, metadata !"round", metadata !6, i32 16777320, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 104, i32 22, metadata !21, null}
!135 = metadata !{i32 786689, metadata !21, metadata !"state", metadata !6, i32 33554536, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 104, i32 33, metadata !21, null}
!137 = metadata !{i32 786689, metadata !21, metadata !"RoundKey", metadata !6, i32 50331752, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 104, i32 59, metadata !21, null}
!139 = metadata !{i32 105, i32 2, metadata !140, null}
!140 = metadata !{i32 786443, metadata !21, i32 105, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 105, i32 39, metadata !140, null}
!142 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 106, i32 6, metadata !140, null}
!144 = metadata !{i32 786688, metadata !140, metadata !"j", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 106, i32 8, metadata !140, null}
!146 = metadata !{i32 107, i32 6, metadata !147, null}
!147 = metadata !{i32 786443, metadata !140, i32 107, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 109, i32 7, metadata !149, null}
!149 = metadata !{i32 786443, metadata !150, i32 109, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !147, i32 108, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 111, i32 4, metadata !152, null}
!152 = metadata !{i32 786443, metadata !149, i32 110, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 112, i32 3, metadata !152, null}
!154 = metadata !{i32 109, i32 15, metadata !149, null}
!155 = metadata !{i32 113, i32 2, metadata !150, null}
!156 = metadata !{i32 107, i32 14, metadata !147, null}
!157 = metadata !{i32 114, i32 1, metadata !140, null}
!158 = metadata !{i32 786689, metadata !28, metadata !"state", metadata !6, i32 16777334, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 118, i32 20, metadata !28, null}
!160 = metadata !{i32 119, i32 2, metadata !161, null}
!161 = metadata !{i32 786443, metadata !28, i32 119, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !6, i32 120, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 120, i32 6, metadata !161, null}
!164 = metadata !{i32 786688, metadata !161, metadata !"j", metadata !6, i32 120, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 120, i32 8, metadata !161, null}
!166 = metadata !{i32 121, i32 6, metadata !167, null}
!167 = metadata !{i32 786443, metadata !161, i32 121, i32 2, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 123, i32 7, metadata !169, null}
!169 = metadata !{i32 786443, metadata !170, i32 123, i32 3, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786443, metadata !167, i32 122, i32 2, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 125, i32 18, metadata !172, null}
!172 = metadata !{i32 786443, metadata !169, i32 124, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 127, i32 3, metadata !172, null}
!174 = metadata !{i32 123, i32 15, metadata !169, null}
!175 = metadata !{i32 128, i32 2, metadata !170, null}
!176 = metadata !{i32 121, i32 14, metadata !167, null}
!177 = metadata !{i32 129, i32 1, metadata !161, null}
!178 = metadata !{i32 786689, metadata !31, metadata !"state", metadata !6, i32 16777350, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 134, i32 21, metadata !31, null}
!180 = metadata !{i32 135, i32 2, metadata !181, null}
!181 = metadata !{i32 786443, metadata !31, i32 135, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786688, metadata !181, metadata !"temp", metadata !6, i32 136, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 136, i32 16, metadata !181, null}
!184 = metadata !{i32 139, i32 2, metadata !181, null}
!185 = metadata !{i32 140, i32 2, metadata !181, null}
!186 = metadata !{i32 141, i32 2, metadata !181, null}
!187 = metadata !{i32 142, i32 2, metadata !181, null}
!188 = metadata !{i32 143, i32 2, metadata !181, null}
!189 = metadata !{i32 146, i32 2, metadata !181, null}
!190 = metadata !{i32 147, i32 2, metadata !181, null}
!191 = metadata !{i32 148, i32 2, metadata !181, null}
!192 = metadata !{i32 150, i32 2, metadata !181, null}
!193 = metadata !{i32 151, i32 2, metadata !181, null}
!194 = metadata !{i32 152, i32 2, metadata !181, null}
!195 = metadata !{i32 155, i32 2, metadata !181, null}
!196 = metadata !{i32 156, i32 2, metadata !181, null}
!197 = metadata !{i32 157, i32 2, metadata !181, null}
!198 = metadata !{i32 158, i32 2, metadata !181, null}
!199 = metadata !{i32 159, i32 2, metadata !181, null}
!200 = metadata !{i32 160, i32 1, metadata !181, null}
!201 = metadata !{i32 786689, metadata !32, metadata !"state", metadata !6, i32 16777382, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 166, i32 22, metadata !32, null}
!203 = metadata !{i32 167, i32 2, metadata !204, null}
!204 = metadata !{i32 786443, metadata !32, i32 167, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 786688, metadata !204, metadata !"i", metadata !6, i32 168, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 168, i32 6, metadata !204, null}
!207 = metadata !{i32 786688, metadata !204, metadata !"Tmp", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 169, i32 16, metadata !204, null}
!209 = metadata !{i32 786688, metadata !204, metadata !"Tm", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 169, i32 20, metadata !204, null}
!211 = metadata !{i32 786688, metadata !204, metadata !"t", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 169, i32 23, metadata !204, null}
!213 = metadata !{i32 170, i32 6, metadata !214, null}
!214 = metadata !{i32 786443, metadata !204, i32 170, i32 2, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 172, i32 3, metadata !216, null}
!216 = metadata !{i32 786443, metadata !214, i32 171, i32 2, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 173, i32 3, metadata !216, null}
!218 = metadata !{i32 174, i32 3, metadata !216, null}
!219 = metadata !{i32 174, i32 36, metadata !216, null}
!220 = metadata !{i32 174, i32 77, metadata !216, null}
!221 = metadata !{i32 175, i32 3, metadata !216, null}
!222 = metadata !{i32 175, i32 36, metadata !216, null}
!223 = metadata !{i32 175, i32 77, metadata !216, null}
!224 = metadata !{i32 176, i32 3, metadata !216, null}
!225 = metadata !{i32 176, i32 36, metadata !216, null}
!226 = metadata !{i32 176, i32 77, metadata !216, null}
!227 = metadata !{i32 177, i32 3, metadata !216, null}
!228 = metadata !{i32 177, i32 26, metadata !216, null}
!229 = metadata !{i32 177, i32 67, metadata !216, null}
!230 = metadata !{i32 178, i32 2, metadata !216, null}
!231 = metadata !{i32 170, i32 14, metadata !214, null}
!232 = metadata !{i32 179, i32 1, metadata !204, null}
!233 = metadata !{i32 786689, metadata !33, metadata !"state", metadata !6, i32 16777398, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 182, i32 18, metadata !33, null}
!235 = metadata !{i32 786689, metadata !33, metadata !"Key", metadata !6, i32 33554614, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 182, i32 35, metadata !33, null}
!237 = metadata !{i32 183, i32 2, metadata !238, null}
!238 = metadata !{i32 786443, metadata !33, i32 183, i32 1, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 183, i32 34, metadata !238, null}
!240 = metadata !{i32 786688, metadata !238, metadata !"Rcon", metadata !6, i32 184, metadata !241, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8160, i64 32, i32 0, i32 0, metadata !9, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786465, i64 0, i64 254}     ; [ DW_TAG_subrange_type ]
!244 = metadata !{i32 184, i32 6, metadata !238, null}
!245 = metadata !{i32 200, i32 92, metadata !238, null}
!246 = metadata !{i32 786688, metadata !238, metadata !"RoundKey", metadata !6, i32 201, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1920, i64 8, i32 0, i32 0, metadata !16, metadata !248, i32 0, i32 0} ; [ DW_TAG_array_type ]
!248 = metadata !{metadata !249}
!249 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!250 = metadata !{i32 201, i32 16, metadata !238, null}
!251 = metadata !{i32 786688, metadata !238, metadata !"i", metadata !6, i32 205, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 205, i32 6, metadata !238, null}
!253 = metadata !{i32 786688, metadata !238, metadata !"j", metadata !6, i32 205, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 205, i32 8, metadata !238, null}
!255 = metadata !{i32 786688, metadata !238, metadata !"round", metadata !6, i32 205, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 205, i32 10, metadata !238, null}
!257 = metadata !{i32 205, i32 17, metadata !238, null}
!258 = metadata !{i32 208, i32 2, metadata !238, null}
!259 = metadata !{i32 216, i32 2, metadata !238, null}
!260 = metadata !{i32 221, i32 6, metadata !261, null}
!261 = metadata !{i32 786443, metadata !238, i32 221, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 223, i32 3, metadata !263, null}
!263 = metadata !{i32 786443, metadata !261, i32 222, i32 2, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 224, i32 3, metadata !263, null}
!265 = metadata !{i32 225, i32 3, metadata !263, null}
!266 = metadata !{i32 226, i32 3, metadata !263, null}
!267 = metadata !{i32 227, i32 2, metadata !263, null}
!268 = metadata !{i32 221, i32 23, metadata !261, null}
!269 = metadata !{i32 231, i32 2, metadata !238, null}
!270 = metadata !{i32 232, i32 2, metadata !238, null}
!271 = metadata !{i32 233, i32 2, metadata !238, null}
!272 = metadata !{i32 238, i32 1, metadata !238, null}
