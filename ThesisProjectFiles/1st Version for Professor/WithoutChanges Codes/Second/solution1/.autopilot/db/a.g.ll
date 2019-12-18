; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@getSBoxValue.sbox = private unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4 ; [#uses=1 type=[256 x i32]*]
@Cipher.Rcon = private unnamed_addr constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203], align 4 ; [#uses=1 type=[255 x i32]*]

; [#uses=9]
define i32 @getSBoxValue(i32 %num) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %sbox = alloca [256 x i32], align 4             ; [#uses=2 type=[256 x i32]*]
  store i32 %num, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !63), !dbg !64 ; [debug line = 4:22] [debug variable = num]
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %sbox}, metadata !65), !dbg !70 ; [debug line = 6:6] [debug variable = sbox]
  %2 = bitcast [256 x i32]* %sbox to i8*, !dbg !71 ; [#uses=1 type=i8*] [debug line = 23:98]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([256 x i32]* @getSBoxValue.sbox to i8*), i32 1024, i32 4, i1 false), !dbg !71 ; [debug line = 23:98]
  %3 = load i32* %1, align 4, !dbg !72            ; [#uses=1 type=i32] [debug line = 24:2]
  %4 = getelementptr inbounds [256 x i32]* %sbox, i32 0, i32 %3, !dbg !72 ; [#uses=1 type=i32*] [debug line = 24:2]
  %5 = load i32* %4, align 4, !dbg !72            ; [#uses=1 type=i32] [debug line = 24:2]
  ret i32 %5, !dbg !72                            ; [debug line = 24:2]
}

; [#uses=33]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

; [#uses=1]
define void @KeyExpansion(i32* %RoundKey, i32* %Key, i32* %Rcon) nounwind {
  %1 = alloca i32*, align 4                       ; [#uses=15 type=i32**]
  %2 = alloca i32*, align 4                       ; [#uses=6 type=i32**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=27 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %temp = alloca [4 x i32], align 4               ; [#uses=31 type=[4 x i32]*]
  %k = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %Nk = alloca i32, align 4                       ; [#uses=10 type=i32*]
  %Nr = alloca i32, align 4                       ; [#uses=2 type=i32*]
  store i32* %RoundKey, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !73), !dbg !74 ; [debug line = 33:24] [debug variable = RoundKey]
  store i32* %Key, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !75), !dbg !76 ; [debug line = 33:43] [debug variable = Key]
  store i32* %Rcon, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !77), !dbg !78 ; [debug line = 33:55] [debug variable = Rcon]
  %4 = load i32** %1, align 4, !dbg !79           ; [#uses=1 type=i32*] [debug line = 34:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 240) nounwind, !dbg !79 ; [debug line = 34:2]
  %5 = load i32** %3, align 4, !dbg !81           ; [#uses=1 type=i32*] [debug line = 34:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %5, i32 255) nounwind, !dbg !81 ; [debug line = 34:39]
  %6 = load i32** %2, align 4, !dbg !82           ; [#uses=1 type=i32*] [debug line = 34:72]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %6, i32 32) nounwind, !dbg !82 ; [debug line = 34:72]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !83), !dbg !84 ; [debug line = 35:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !85), !dbg !86 ; [debug line = 35:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %temp}, metadata !87), !dbg !88 ; [debug line = 36:7] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !89), !dbg !90 ; [debug line = 36:15] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i32* %Nk}, metadata !91), !dbg !92 ; [debug line = 37:6] [debug variable = Nk]
  store i32 4, i32* %Nk, align 4, !dbg !93        ; [debug line = 37:10]
  call void @llvm.dbg.declare(metadata !{i32* %Nr}, metadata !94), !dbg !95 ; [debug line = 38:6] [debug variable = Nr]
  store i32 10, i32* %Nr, align 4, !dbg !96       ; [debug line = 38:11]
  store i32 0, i32* %i, align 4, !dbg !97         ; [debug line = 41:6]
  br label %7, !dbg !97                           ; [debug line = 41:6]

; <label>:7                                       ; preds = %54, %0
  %8 = load i32* %i, align 4, !dbg !97            ; [#uses=1 type=i32] [debug line = 41:6]
  %9 = load i32* %Nk, align 4, !dbg !97           ; [#uses=1 type=i32] [debug line = 41:6]
  %10 = icmp slt i32 %8, %9, !dbg !97             ; [#uses=1 type=i1] [debug line = 41:6]
  br i1 %10, label %11, label %57, !dbg !97       ; [debug line = 41:6]

; <label>:11                                      ; preds = %7
  %12 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %13 = mul nsw i32 %12, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %14 = load i32** %2, align 4, !dbg !99          ; [#uses=1 type=i32*] [debug line = 43:3]
  %15 = getelementptr inbounds i32* %14, i32 %13, !dbg !99 ; [#uses=1 type=i32*] [debug line = 43:3]
  %16 = load i32* %15, align 4, !dbg !99          ; [#uses=1 type=i32] [debug line = 43:3]
  %17 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %18 = mul nsw i32 %17, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %19 = load i32** %1, align 4, !dbg !99          ; [#uses=1 type=i32*] [debug line = 43:3]
  %20 = getelementptr inbounds i32* %19, i32 %18, !dbg !99 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %16, i32* %20, align 4, !dbg !99      ; [debug line = 43:3]
  %21 = load i32* %i, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 44:3]
  %22 = mul nsw i32 %21, 4, !dbg !101             ; [#uses=1 type=i32] [debug line = 44:3]
  %23 = add nsw i32 %22, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 44:3]
  %24 = load i32** %2, align 4, !dbg !101         ; [#uses=1 type=i32*] [debug line = 44:3]
  %25 = getelementptr inbounds i32* %24, i32 %23, !dbg !101 ; [#uses=1 type=i32*] [debug line = 44:3]
  %26 = load i32* %25, align 4, !dbg !101         ; [#uses=1 type=i32] [debug line = 44:3]
  %27 = load i32* %i, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 44:3]
  %28 = mul nsw i32 %27, 4, !dbg !101             ; [#uses=1 type=i32] [debug line = 44:3]
  %29 = add nsw i32 %28, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 44:3]
  %30 = load i32** %1, align 4, !dbg !101         ; [#uses=1 type=i32*] [debug line = 44:3]
  %31 = getelementptr inbounds i32* %30, i32 %29, !dbg !101 ; [#uses=1 type=i32*] [debug line = 44:3]
  store i32 %26, i32* %31, align 4, !dbg !101     ; [debug line = 44:3]
  %32 = load i32* %i, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 45:3]
  %33 = mul nsw i32 %32, 4, !dbg !102             ; [#uses=1 type=i32] [debug line = 45:3]
  %34 = add nsw i32 %33, 2, !dbg !102             ; [#uses=1 type=i32] [debug line = 45:3]
  %35 = load i32** %2, align 4, !dbg !102         ; [#uses=1 type=i32*] [debug line = 45:3]
  %36 = getelementptr inbounds i32* %35, i32 %34, !dbg !102 ; [#uses=1 type=i32*] [debug line = 45:3]
  %37 = load i32* %36, align 4, !dbg !102         ; [#uses=1 type=i32] [debug line = 45:3]
  %38 = load i32* %i, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 45:3]
  %39 = mul nsw i32 %38, 4, !dbg !102             ; [#uses=1 type=i32] [debug line = 45:3]
  %40 = add nsw i32 %39, 2, !dbg !102             ; [#uses=1 type=i32] [debug line = 45:3]
  %41 = load i32** %1, align 4, !dbg !102         ; [#uses=1 type=i32*] [debug line = 45:3]
  %42 = getelementptr inbounds i32* %41, i32 %40, !dbg !102 ; [#uses=1 type=i32*] [debug line = 45:3]
  store i32 %37, i32* %42, align 4, !dbg !102     ; [debug line = 45:3]
  %43 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 46:3]
  %44 = mul nsw i32 %43, 4, !dbg !103             ; [#uses=1 type=i32] [debug line = 46:3]
  %45 = add nsw i32 %44, 3, !dbg !103             ; [#uses=1 type=i32] [debug line = 46:3]
  %46 = load i32** %2, align 4, !dbg !103         ; [#uses=1 type=i32*] [debug line = 46:3]
  %47 = getelementptr inbounds i32* %46, i32 %45, !dbg !103 ; [#uses=1 type=i32*] [debug line = 46:3]
  %48 = load i32* %47, align 4, !dbg !103         ; [#uses=1 type=i32] [debug line = 46:3]
  %49 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 46:3]
  %50 = mul nsw i32 %49, 4, !dbg !103             ; [#uses=1 type=i32] [debug line = 46:3]
  %51 = add nsw i32 %50, 3, !dbg !103             ; [#uses=1 type=i32] [debug line = 46:3]
  %52 = load i32** %1, align 4, !dbg !103         ; [#uses=1 type=i32*] [debug line = 46:3]
  %53 = getelementptr inbounds i32* %52, i32 %51, !dbg !103 ; [#uses=1 type=i32*] [debug line = 46:3]
  store i32 %48, i32* %53, align 4, !dbg !103     ; [debug line = 46:3]
  br label %54, !dbg !104                         ; [debug line = 47:2]

; <label>:54                                      ; preds = %11
  %55 = load i32* %i, align 4, !dbg !105          ; [#uses=1 type=i32] [debug line = 41:15]
  %56 = add nsw i32 %55, 1, !dbg !105             ; [#uses=1 type=i32] [debug line = 41:15]
  store i32 %56, i32* %i, align 4, !dbg !105      ; [debug line = 41:15]
  br label %7, !dbg !105                          ; [debug line = 41:15]

; <label>:57                                      ; preds = %7
  br label %58, !dbg !106                         ; [debug line = 50:2]

; <label>:58                                      ; preds = %153, %57
  %59 = load i32* %i, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 50:2]
  %60 = load i32* %Nr, align 4, !dbg !106         ; [#uses=1 type=i32] [debug line = 50:2]
  %61 = add nsw i32 %60, 1, !dbg !106             ; [#uses=1 type=i32] [debug line = 50:2]
  %62 = mul nsw i32 4, %61, !dbg !106             ; [#uses=1 type=i32] [debug line = 50:2]
  %63 = icmp slt i32 %59, %62, !dbg !106          ; [#uses=1 type=i1] [debug line = 50:2]
  br i1 %63, label %64, label %220, !dbg !106     ; [debug line = 50:2]

; <label>:64                                      ; preds = %58
  store i32 0, i32* %j, align 4, !dbg !107        ; [debug line = 52:10]
  br label %65, !dbg !107                         ; [debug line = 52:10]

; <label>:65                                      ; preds = %79, %64
  %66 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 52:10]
  %67 = icmp slt i32 %66, 4, !dbg !107            ; [#uses=1 type=i1] [debug line = 52:10]
  br i1 %67, label %68, label %82, !dbg !107      ; [debug line = 52:10]

; <label>:68                                      ; preds = %65
  %69 = load i32* %i, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 54:7]
  %70 = sub nsw i32 %69, 1, !dbg !110             ; [#uses=1 type=i32] [debug line = 54:7]
  %71 = mul nsw i32 %70, 4, !dbg !110             ; [#uses=1 type=i32] [debug line = 54:7]
  %72 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 54:7]
  %73 = add nsw i32 %71, %72, !dbg !110           ; [#uses=1 type=i32] [debug line = 54:7]
  %74 = load i32** %1, align 4, !dbg !110         ; [#uses=1 type=i32*] [debug line = 54:7]
  %75 = getelementptr inbounds i32* %74, i32 %73, !dbg !110 ; [#uses=1 type=i32*] [debug line = 54:7]
  %76 = load i32* %75, align 4, !dbg !110         ; [#uses=1 type=i32] [debug line = 54:7]
  %77 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 54:7]
  %78 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 %77, !dbg !110 ; [#uses=1 type=i32*] [debug line = 54:7]
  store i32 %76, i32* %78, align 4, !dbg !110     ; [debug line = 54:7]
  br label %79, !dbg !112                         ; [debug line = 55:6]

; <label>:79                                      ; preds = %68
  %80 = load i32* %j, align 4, !dbg !113          ; [#uses=1 type=i32] [debug line = 52:18]
  %81 = add nsw i32 %80, 1, !dbg !113             ; [#uses=1 type=i32] [debug line = 52:18]
  store i32 %81, i32* %j, align 4, !dbg !113      ; [debug line = 52:18]
  br label %65, !dbg !113                         ; [debug line = 52:18]

; <label>:82                                      ; preds = %65
  %83 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 56:6]
  %84 = load i32* %Nk, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 56:6]
  %85 = srem i32 %83, %84, !dbg !114              ; [#uses=1 type=i32] [debug line = 56:6]
  %86 = icmp eq i32 %85, 0, !dbg !114             ; [#uses=1 type=i1] [debug line = 56:6]
  br i1 %86, label %87, label %127, !dbg !114     ; [debug line = 56:6]

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !115 ; [#uses=1 type=i32*] [debug line = 63:8]
  %89 = load i32* %88, align 4, !dbg !115         ; [#uses=1 type=i32] [debug line = 63:8]
  store i32 %89, i32* %k, align 4, !dbg !115      ; [debug line = 63:8]
  %90 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !118 ; [#uses=1 type=i32*] [debug line = 64:8]
  %91 = load i32* %90, align 4, !dbg !118         ; [#uses=1 type=i32] [debug line = 64:8]
  %92 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !118 ; [#uses=1 type=i32*] [debug line = 64:8]
  store i32 %91, i32* %92, align 4, !dbg !118     ; [debug line = 64:8]
  %93 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !119 ; [#uses=1 type=i32*] [debug line = 65:8]
  %94 = load i32* %93, align 4, !dbg !119         ; [#uses=1 type=i32] [debug line = 65:8]
  %95 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !119 ; [#uses=1 type=i32*] [debug line = 65:8]
  store i32 %94, i32* %95, align 4, !dbg !119     ; [debug line = 65:8]
  %96 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !120 ; [#uses=1 type=i32*] [debug line = 66:8]
  %97 = load i32* %96, align 4, !dbg !120         ; [#uses=1 type=i32] [debug line = 66:8]
  %98 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i32*] [debug line = 66:8]
  store i32 %97, i32* %98, align 4, !dbg !120     ; [debug line = 66:8]
  %99 = load i32* %k, align 4, !dbg !121          ; [#uses=1 type=i32] [debug line = 67:8]
  %100 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !121 ; [#uses=1 type=i32*] [debug line = 67:8]
  store i32 %99, i32* %100, align 4, !dbg !121    ; [debug line = 67:8]
  %101 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !122 ; [#uses=1 type=i32*] [debug line = 75:16]
  %102 = load i32* %101, align 4, !dbg !122       ; [#uses=1 type=i32] [debug line = 75:16]
  %103 = call i32 @getSBoxValue(i32 %102), !dbg !122 ; [#uses=1 type=i32] [debug line = 75:16]
  %104 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !122 ; [#uses=1 type=i32*] [debug line = 75:16]
  store i32 %103, i32* %104, align 4, !dbg !122   ; [debug line = 75:16]
  %105 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !124 ; [#uses=1 type=i32*] [debug line = 76:16]
  %106 = load i32* %105, align 4, !dbg !124       ; [#uses=1 type=i32] [debug line = 76:16]
  %107 = call i32 @getSBoxValue(i32 %106), !dbg !124 ; [#uses=1 type=i32] [debug line = 76:16]
  %108 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !124 ; [#uses=1 type=i32*] [debug line = 76:16]
  store i32 %107, i32* %108, align 4, !dbg !124   ; [debug line = 76:16]
  %109 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !125 ; [#uses=1 type=i32*] [debug line = 77:16]
  %110 = load i32* %109, align 4, !dbg !125       ; [#uses=1 type=i32] [debug line = 77:16]
  %111 = call i32 @getSBoxValue(i32 %110), !dbg !125 ; [#uses=1 type=i32] [debug line = 77:16]
  %112 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !125 ; [#uses=1 type=i32*] [debug line = 77:16]
  store i32 %111, i32* %112, align 4, !dbg !125   ; [debug line = 77:16]
  %113 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !126 ; [#uses=1 type=i32*] [debug line = 78:16]
  %114 = load i32* %113, align 4, !dbg !126       ; [#uses=1 type=i32] [debug line = 78:16]
  %115 = call i32 @getSBoxValue(i32 %114), !dbg !126 ; [#uses=1 type=i32] [debug line = 78:16]
  %116 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !126 ; [#uses=1 type=i32*] [debug line = 78:16]
  store i32 %115, i32* %116, align 4, !dbg !126   ; [debug line = 78:16]
  %117 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !127 ; [#uses=1 type=i32*] [debug line = 81:7]
  %118 = load i32* %117, align 4, !dbg !127       ; [#uses=1 type=i32] [debug line = 81:7]
  %119 = load i32* %i, align 4, !dbg !127         ; [#uses=1 type=i32] [debug line = 81:7]
  %120 = load i32* %Nk, align 4, !dbg !127        ; [#uses=1 type=i32] [debug line = 81:7]
  %121 = sdiv i32 %119, %120, !dbg !127           ; [#uses=1 type=i32] [debug line = 81:7]
  %122 = load i32** %3, align 4, !dbg !127        ; [#uses=1 type=i32*] [debug line = 81:7]
  %123 = getelementptr inbounds i32* %122, i32 %121, !dbg !127 ; [#uses=1 type=i32*] [debug line = 81:7]
  %124 = load i32* %123, align 4, !dbg !127       ; [#uses=1 type=i32] [debug line = 81:7]
  %125 = xor i32 %118, %124, !dbg !127            ; [#uses=1 type=i32] [debug line = 81:7]
  %126 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !127 ; [#uses=1 type=i32*] [debug line = 81:7]
  store i32 %125, i32* %126, align 4, !dbg !127   ; [debug line = 81:7]
  br label %153, !dbg !128                        ; [debug line = 82:6]

; <label>:127                                     ; preds = %82
  %128 = load i32* %Nk, align 4, !dbg !129        ; [#uses=1 type=i32] [debug line = 83:11]
  %129 = icmp sgt i32 %128, 6, !dbg !129          ; [#uses=1 type=i1] [debug line = 83:11]
  br i1 %129, label %130, label %152, !dbg !129   ; [debug line = 83:11]

; <label>:130                                     ; preds = %127
  %131 = load i32* %i, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 83:11]
  %132 = load i32* %Nk, align 4, !dbg !129        ; [#uses=1 type=i32] [debug line = 83:11]
  %133 = srem i32 %131, %132, !dbg !129           ; [#uses=1 type=i32] [debug line = 83:11]
  %134 = icmp eq i32 %133, 4, !dbg !129           ; [#uses=1 type=i1] [debug line = 83:11]
  br i1 %134, label %135, label %152, !dbg !129   ; [debug line = 83:11]

; <label>:135                                     ; preds = %130
  %136 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !130 ; [#uses=1 type=i32*] [debug line = 87:16]
  %137 = load i32* %136, align 4, !dbg !130       ; [#uses=1 type=i32] [debug line = 87:16]
  %138 = call i32 @getSBoxValue(i32 %137), !dbg !130 ; [#uses=1 type=i32] [debug line = 87:16]
  %139 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !130 ; [#uses=1 type=i32*] [debug line = 87:16]
  store i32 %138, i32* %139, align 4, !dbg !130   ; [debug line = 87:16]
  %140 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !133 ; [#uses=1 type=i32*] [debug line = 88:16]
  %141 = load i32* %140, align 4, !dbg !133       ; [#uses=1 type=i32] [debug line = 88:16]
  %142 = call i32 @getSBoxValue(i32 %141), !dbg !133 ; [#uses=1 type=i32] [debug line = 88:16]
  %143 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !133 ; [#uses=1 type=i32*] [debug line = 88:16]
  store i32 %142, i32* %143, align 4, !dbg !133   ; [debug line = 88:16]
  %144 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !134 ; [#uses=1 type=i32*] [debug line = 89:16]
  %145 = load i32* %144, align 4, !dbg !134       ; [#uses=1 type=i32] [debug line = 89:16]
  %146 = call i32 @getSBoxValue(i32 %145), !dbg !134 ; [#uses=1 type=i32] [debug line = 89:16]
  %147 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !134 ; [#uses=1 type=i32*] [debug line = 89:16]
  store i32 %146, i32* %147, align 4, !dbg !134   ; [debug line = 89:16]
  %148 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !135 ; [#uses=1 type=i32*] [debug line = 90:16]
  %149 = load i32* %148, align 4, !dbg !135       ; [#uses=1 type=i32] [debug line = 90:16]
  %150 = call i32 @getSBoxValue(i32 %149), !dbg !135 ; [#uses=1 type=i32] [debug line = 90:16]
  %151 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !135 ; [#uses=1 type=i32*] [debug line = 90:16]
  store i32 %150, i32* %151, align 4, !dbg !135   ; [debug line = 90:16]
  br label %152, !dbg !136                        ; [debug line = 92:6]

; <label>:152                                     ; preds = %135, %130, %127
  br label %153

; <label>:153                                     ; preds = %152, %87
  %154 = load i32* %i, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 93:6]
  %155 = load i32* %Nk, align 4, !dbg !137        ; [#uses=1 type=i32] [debug line = 93:6]
  %156 = sub nsw i32 %154, %155, !dbg !137        ; [#uses=1 type=i32] [debug line = 93:6]
  %157 = mul nsw i32 %156, 4, !dbg !137           ; [#uses=1 type=i32] [debug line = 93:6]
  %158 = add nsw i32 %157, 0, !dbg !137           ; [#uses=1 type=i32] [debug line = 93:6]
  %159 = load i32** %1, align 4, !dbg !137        ; [#uses=1 type=i32*] [debug line = 93:6]
  %160 = getelementptr inbounds i32* %159, i32 %158, !dbg !137 ; [#uses=1 type=i32*] [debug line = 93:6]
  %161 = load i32* %160, align 4, !dbg !137       ; [#uses=1 type=i32] [debug line = 93:6]
  %162 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !137 ; [#uses=1 type=i32*] [debug line = 93:6]
  %163 = load i32* %162, align 4, !dbg !137       ; [#uses=1 type=i32] [debug line = 93:6]
  %164 = xor i32 %161, %163, !dbg !137            ; [#uses=1 type=i32] [debug line = 93:6]
  %165 = load i32* %i, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 93:6]
  %166 = mul nsw i32 %165, 4, !dbg !137           ; [#uses=1 type=i32] [debug line = 93:6]
  %167 = add nsw i32 %166, 0, !dbg !137           ; [#uses=1 type=i32] [debug line = 93:6]
  %168 = load i32** %1, align 4, !dbg !137        ; [#uses=1 type=i32*] [debug line = 93:6]
  %169 = getelementptr inbounds i32* %168, i32 %167, !dbg !137 ; [#uses=1 type=i32*] [debug line = 93:6]
  store i32 %164, i32* %169, align 4, !dbg !137   ; [debug line = 93:6]
  %170 = load i32* %i, align 4, !dbg !138         ; [#uses=1 type=i32] [debug line = 94:6]
  %171 = load i32* %Nk, align 4, !dbg !138        ; [#uses=1 type=i32] [debug line = 94:6]
  %172 = sub nsw i32 %170, %171, !dbg !138        ; [#uses=1 type=i32] [debug line = 94:6]
  %173 = mul nsw i32 %172, 4, !dbg !138           ; [#uses=1 type=i32] [debug line = 94:6]
  %174 = add nsw i32 %173, 1, !dbg !138           ; [#uses=1 type=i32] [debug line = 94:6]
  %175 = load i32** %1, align 4, !dbg !138        ; [#uses=1 type=i32*] [debug line = 94:6]
  %176 = getelementptr inbounds i32* %175, i32 %174, !dbg !138 ; [#uses=1 type=i32*] [debug line = 94:6]
  %177 = load i32* %176, align 4, !dbg !138       ; [#uses=1 type=i32] [debug line = 94:6]
  %178 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !138 ; [#uses=1 type=i32*] [debug line = 94:6]
  %179 = load i32* %178, align 4, !dbg !138       ; [#uses=1 type=i32] [debug line = 94:6]
  %180 = xor i32 %177, %179, !dbg !138            ; [#uses=1 type=i32] [debug line = 94:6]
  %181 = load i32* %i, align 4, !dbg !138         ; [#uses=1 type=i32] [debug line = 94:6]
  %182 = mul nsw i32 %181, 4, !dbg !138           ; [#uses=1 type=i32] [debug line = 94:6]
  %183 = add nsw i32 %182, 1, !dbg !138           ; [#uses=1 type=i32] [debug line = 94:6]
  %184 = load i32** %1, align 4, !dbg !138        ; [#uses=1 type=i32*] [debug line = 94:6]
  %185 = getelementptr inbounds i32* %184, i32 %183, !dbg !138 ; [#uses=1 type=i32*] [debug line = 94:6]
  store i32 %180, i32* %185, align 4, !dbg !138   ; [debug line = 94:6]
  %186 = load i32* %i, align 4, !dbg !139         ; [#uses=1 type=i32] [debug line = 95:6]
  %187 = load i32* %Nk, align 4, !dbg !139        ; [#uses=1 type=i32] [debug line = 95:6]
  %188 = sub nsw i32 %186, %187, !dbg !139        ; [#uses=1 type=i32] [debug line = 95:6]
  %189 = mul nsw i32 %188, 4, !dbg !139           ; [#uses=1 type=i32] [debug line = 95:6]
  %190 = add nsw i32 %189, 2, !dbg !139           ; [#uses=1 type=i32] [debug line = 95:6]
  %191 = load i32** %1, align 4, !dbg !139        ; [#uses=1 type=i32*] [debug line = 95:6]
  %192 = getelementptr inbounds i32* %191, i32 %190, !dbg !139 ; [#uses=1 type=i32*] [debug line = 95:6]
  %193 = load i32* %192, align 4, !dbg !139       ; [#uses=1 type=i32] [debug line = 95:6]
  %194 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !139 ; [#uses=1 type=i32*] [debug line = 95:6]
  %195 = load i32* %194, align 4, !dbg !139       ; [#uses=1 type=i32] [debug line = 95:6]
  %196 = xor i32 %193, %195, !dbg !139            ; [#uses=1 type=i32] [debug line = 95:6]
  %197 = load i32* %i, align 4, !dbg !139         ; [#uses=1 type=i32] [debug line = 95:6]
  %198 = mul nsw i32 %197, 4, !dbg !139           ; [#uses=1 type=i32] [debug line = 95:6]
  %199 = add nsw i32 %198, 2, !dbg !139           ; [#uses=1 type=i32] [debug line = 95:6]
  %200 = load i32** %1, align 4, !dbg !139        ; [#uses=1 type=i32*] [debug line = 95:6]
  %201 = getelementptr inbounds i32* %200, i32 %199, !dbg !139 ; [#uses=1 type=i32*] [debug line = 95:6]
  store i32 %196, i32* %201, align 4, !dbg !139   ; [debug line = 95:6]
  %202 = load i32* %i, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 96:6]
  %203 = load i32* %Nk, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 96:6]
  %204 = sub nsw i32 %202, %203, !dbg !140        ; [#uses=1 type=i32] [debug line = 96:6]
  %205 = mul nsw i32 %204, 4, !dbg !140           ; [#uses=1 type=i32] [debug line = 96:6]
  %206 = add nsw i32 %205, 3, !dbg !140           ; [#uses=1 type=i32] [debug line = 96:6]
  %207 = load i32** %1, align 4, !dbg !140        ; [#uses=1 type=i32*] [debug line = 96:6]
  %208 = getelementptr inbounds i32* %207, i32 %206, !dbg !140 ; [#uses=1 type=i32*] [debug line = 96:6]
  %209 = load i32* %208, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 96:6]
  %210 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !140 ; [#uses=1 type=i32*] [debug line = 96:6]
  %211 = load i32* %210, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 96:6]
  %212 = xor i32 %209, %211, !dbg !140            ; [#uses=1 type=i32] [debug line = 96:6]
  %213 = load i32* %i, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 96:6]
  %214 = mul nsw i32 %213, 4, !dbg !140           ; [#uses=1 type=i32] [debug line = 96:6]
  %215 = add nsw i32 %214, 3, !dbg !140           ; [#uses=1 type=i32] [debug line = 96:6]
  %216 = load i32** %1, align 4, !dbg !140        ; [#uses=1 type=i32*] [debug line = 96:6]
  %217 = getelementptr inbounds i32* %216, i32 %215, !dbg !140 ; [#uses=1 type=i32*] [debug line = 96:6]
  store i32 %212, i32* %217, align 4, !dbg !140   ; [debug line = 96:6]
  %218 = load i32* %i, align 4, !dbg !141         ; [#uses=1 type=i32] [debug line = 97:6]
  %219 = add nsw i32 %218, 1, !dbg !141           ; [#uses=1 type=i32] [debug line = 97:6]
  store i32 %219, i32* %i, align 4, !dbg !141     ; [debug line = 97:6]
  br label %58, !dbg !142                         ; [debug line = 98:2]

; <label>:220                                     ; preds = %58
  ret void, !dbg !143                             ; [debug line = 99:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
define void @AddRoundKey(i32 %round, [4 x i32]* %state, i32* %RoundKey) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca [4 x i32]*, align 4                 ; [#uses=3 type=[4 x i32]**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32 %round, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !144), !dbg !145 ; [debug line = 103:22] [debug variable = round]
  store [4 x i32]* %state, [4 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %2}, metadata !146), !dbg !147 ; [debug line = 103:33] [debug variable = state]
  store i32* %RoundKey, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !148), !dbg !149 ; [debug line = 103:50] [debug variable = RoundKey]
  %4 = load i32** %3, align 4, !dbg !150          ; [#uses=1 type=i32*] [debug line = 104:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 240) nounwind, !dbg !150 ; [debug line = 104:2]
  %5 = load [4 x i32]** %2, align 4, !dbg !152    ; [#uses=1 type=[4 x i32]*] [debug line = 104:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %5, i32 4) nounwind, !dbg !152 ; [debug line = 104:39]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !153), !dbg !154 ; [debug line = 105:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !155), !dbg !156 ; [debug line = 105:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !157        ; [debug line = 106:6]
  br label %6, !dbg !157                          ; [debug line = 106:6]

; <label>:6                                       ; preds = %36, %0
  %7 = load i32* %i, align 4, !dbg !157           ; [#uses=1 type=i32] [debug line = 106:6]
  %8 = icmp slt i32 %7, 4, !dbg !157              ; [#uses=1 type=i1] [debug line = 106:6]
  br i1 %8, label %9, label %39, !dbg !157        ; [debug line = 106:6]

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !159        ; [debug line = 108:7]
  br label %10, !dbg !159                         ; [debug line = 108:7]

; <label>:10                                      ; preds = %32, %9
  %11 = load i32* %j, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 108:7]
  %12 = icmp slt i32 %11, 4, !dbg !159            ; [#uses=1 type=i1] [debug line = 108:7]
  br i1 %12, label %13, label %35, !dbg !159      ; [debug line = 108:7]

; <label>:13                                      ; preds = %10
  %14 = load i32* %1, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 110:4]
  %15 = mul nsw i32 %14, 4, !dbg !162             ; [#uses=1 type=i32] [debug line = 110:4]
  %16 = mul nsw i32 %15, 4, !dbg !162             ; [#uses=1 type=i32] [debug line = 110:4]
  %17 = load i32* %i, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 110:4]
  %18 = mul nsw i32 %17, 4, !dbg !162             ; [#uses=1 type=i32] [debug line = 110:4]
  %19 = add nsw i32 %16, %18, !dbg !162           ; [#uses=1 type=i32] [debug line = 110:4]
  %20 = load i32* %j, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 110:4]
  %21 = add nsw i32 %19, %20, !dbg !162           ; [#uses=1 type=i32] [debug line = 110:4]
  %22 = load i32** %3, align 4, !dbg !162         ; [#uses=1 type=i32*] [debug line = 110:4]
  %23 = getelementptr inbounds i32* %22, i32 %21, !dbg !162 ; [#uses=1 type=i32*] [debug line = 110:4]
  %24 = load i32* %23, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 110:4]
  %25 = load i32* %i, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 110:4]
  %26 = load i32* %j, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 110:4]
  %27 = load [4 x i32]** %2, align 4, !dbg !162   ; [#uses=1 type=[4 x i32]*] [debug line = 110:4]
  %28 = getelementptr inbounds [4 x i32]* %27, i32 %26, !dbg !162 ; [#uses=1 type=[4 x i32]*] [debug line = 110:4]
  %29 = getelementptr inbounds [4 x i32]* %28, i32 0, i32 %25, !dbg !162 ; [#uses=2 type=i32*] [debug line = 110:4]
  %30 = load i32* %29, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 110:4]
  %31 = xor i32 %30, %24, !dbg !162               ; [#uses=1 type=i32] [debug line = 110:4]
  store i32 %31, i32* %29, align 4, !dbg !162     ; [debug line = 110:4]
  br label %32, !dbg !164                         ; [debug line = 111:3]

; <label>:32                                      ; preds = %13
  %33 = load i32* %j, align 4, !dbg !165          ; [#uses=1 type=i32] [debug line = 108:15]
  %34 = add nsw i32 %33, 1, !dbg !165             ; [#uses=1 type=i32] [debug line = 108:15]
  store i32 %34, i32* %j, align 4, !dbg !165      ; [debug line = 108:15]
  br label %10, !dbg !165                         ; [debug line = 108:15]

; <label>:35                                      ; preds = %10
  br label %36, !dbg !166                         ; [debug line = 112:2]

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 106:14]
  %38 = add nsw i32 %37, 1, !dbg !167             ; [#uses=1 type=i32] [debug line = 106:14]
  store i32 %38, i32* %i, align 4, !dbg !167      ; [debug line = 106:14]
  br label %6, !dbg !167                          ; [debug line = 106:14]

; <label>:39                                      ; preds = %6
  ret void, !dbg !168                             ; [debug line = 113:1]
}

; [#uses=2]
define void @SubBytes([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=4 type=[4 x i32]**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !169), !dbg !170 ; [debug line = 117:20] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !171    ; [#uses=1 type=[4 x i32]*] [debug line = 118:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !171 ; [debug line = 118:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !173), !dbg !174 ; [debug line = 119:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !175), !dbg !176 ; [debug line = 119:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !177        ; [debug line = 120:6]
  br label %3, !dbg !177                          ; [debug line = 120:6]

; <label>:3                                       ; preds = %27, %0
  %4 = load i32* %i, align 4, !dbg !177           ; [#uses=1 type=i32] [debug line = 120:6]
  %5 = icmp slt i32 %4, 4, !dbg !177              ; [#uses=1 type=i1] [debug line = 120:6]
  br i1 %5, label %6, label %30, !dbg !177        ; [debug line = 120:6]

; <label>:6                                       ; preds = %3
  store i32 0, i32* %j, align 4, !dbg !179        ; [debug line = 122:7]
  br label %7, !dbg !179                          ; [debug line = 122:7]

; <label>:7                                       ; preds = %23, %6
  %8 = load i32* %j, align 4, !dbg !179           ; [#uses=1 type=i32] [debug line = 122:7]
  %9 = icmp slt i32 %8, 4, !dbg !179              ; [#uses=1 type=i1] [debug line = 122:7]
  br i1 %9, label %10, label %26, !dbg !179       ; [debug line = 122:7]

; <label>:10                                      ; preds = %7
  %11 = load i32* %j, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 124:18]
  %12 = load i32* %i, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 124:18]
  %13 = load [4 x i32]** %1, align 4, !dbg !182   ; [#uses=1 type=[4 x i32]*] [debug line = 124:18]
  %14 = getelementptr inbounds [4 x i32]* %13, i32 %12, !dbg !182 ; [#uses=1 type=[4 x i32]*] [debug line = 124:18]
  %15 = getelementptr inbounds [4 x i32]* %14, i32 0, i32 %11, !dbg !182 ; [#uses=1 type=i32*] [debug line = 124:18]
  %16 = load i32* %15, align 4, !dbg !182         ; [#uses=1 type=i32] [debug line = 124:18]
  %17 = call i32 @getSBoxValue(i32 %16), !dbg !182 ; [#uses=1 type=i32] [debug line = 124:18]
  %18 = load i32* %j, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 124:18]
  %19 = load i32* %i, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 124:18]
  %20 = load [4 x i32]** %1, align 4, !dbg !182   ; [#uses=1 type=[4 x i32]*] [debug line = 124:18]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 %19, !dbg !182 ; [#uses=1 type=[4 x i32]*] [debug line = 124:18]
  %22 = getelementptr inbounds [4 x i32]* %21, i32 0, i32 %18, !dbg !182 ; [#uses=1 type=i32*] [debug line = 124:18]
  store i32 %17, i32* %22, align 4, !dbg !182     ; [debug line = 124:18]
  br label %23, !dbg !184                         ; [debug line = 126:3]

; <label>:23                                      ; preds = %10
  %24 = load i32* %j, align 4, !dbg !185          ; [#uses=1 type=i32] [debug line = 122:15]
  %25 = add nsw i32 %24, 1, !dbg !185             ; [#uses=1 type=i32] [debug line = 122:15]
  store i32 %25, i32* %j, align 4, !dbg !185      ; [debug line = 122:15]
  br label %7, !dbg !185                          ; [debug line = 122:15]

; <label>:26                                      ; preds = %7
  br label %27, !dbg !186                         ; [debug line = 127:2]

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 120:14]
  %29 = add nsw i32 %28, 1, !dbg !187             ; [#uses=1 type=i32] [debug line = 120:14]
  store i32 %29, i32* %i, align 4, !dbg !187      ; [debug line = 120:14]
  br label %3, !dbg !187                          ; [debug line = 120:14]

; <label>:30                                      ; preds = %3
  ret void, !dbg !188                             ; [debug line = 128:1]
}

; [#uses=2]
define void @ShiftRows([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=26 type=[4 x i32]**]
  %temp = alloca i8, align 1                      ; [#uses=8 type=i8*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !189), !dbg !190 ; [debug line = 133:21] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !191    ; [#uses=1 type=[4 x i32]*] [debug line = 134:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !191 ; [debug line = 134:2]
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !193), !dbg !195 ; [debug line = 135:16] [debug variable = temp]
  %3 = load [4 x i32]** %1, align 4, !dbg !196    ; [#uses=1 type=[4 x i32]*] [debug line = 138:2]
  %4 = getelementptr inbounds [4 x i32]* %3, i32 1, !dbg !196 ; [#uses=1 type=[4 x i32]*] [debug line = 138:2]
  %5 = getelementptr inbounds [4 x i32]* %4, i32 0, i32 0, !dbg !196 ; [#uses=1 type=i32*] [debug line = 138:2]
  %6 = load i32* %5, align 4, !dbg !196           ; [#uses=1 type=i32] [debug line = 138:2]
  %7 = trunc i32 %6 to i8, !dbg !196              ; [#uses=1 type=i8] [debug line = 138:2]
  store i8 %7, i8* %temp, align 1, !dbg !196      ; [debug line = 138:2]
  %8 = load [4 x i32]** %1, align 4, !dbg !197    ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %9 = getelementptr inbounds [4 x i32]* %8, i32 1, !dbg !197 ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %10 = getelementptr inbounds [4 x i32]* %9, i32 0, i32 1, !dbg !197 ; [#uses=1 type=i32*] [debug line = 139:2]
  %11 = load i32* %10, align 4, !dbg !197         ; [#uses=1 type=i32] [debug line = 139:2]
  %12 = load [4 x i32]** %1, align 4, !dbg !197   ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %13 = getelementptr inbounds [4 x i32]* %12, i32 1, !dbg !197 ; [#uses=1 type=[4 x i32]*] [debug line = 139:2]
  %14 = getelementptr inbounds [4 x i32]* %13, i32 0, i32 0, !dbg !197 ; [#uses=1 type=i32*] [debug line = 139:2]
  store i32 %11, i32* %14, align 4, !dbg !197     ; [debug line = 139:2]
  %15 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %16 = getelementptr inbounds [4 x i32]* %15, i32 1, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %17 = getelementptr inbounds [4 x i32]* %16, i32 0, i32 2, !dbg !198 ; [#uses=1 type=i32*] [debug line = 140:2]
  %18 = load i32* %17, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 140:2]
  %19 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %20 = getelementptr inbounds [4 x i32]* %19, i32 1, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 140:2]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 0, i32 1, !dbg !198 ; [#uses=1 type=i32*] [debug line = 140:2]
  store i32 %18, i32* %21, align 4, !dbg !198     ; [debug line = 140:2]
  %22 = load [4 x i32]** %1, align 4, !dbg !199   ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %23 = getelementptr inbounds [4 x i32]* %22, i32 1, !dbg !199 ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %24 = getelementptr inbounds [4 x i32]* %23, i32 0, i32 3, !dbg !199 ; [#uses=1 type=i32*] [debug line = 141:2]
  %25 = load i32* %24, align 4, !dbg !199         ; [#uses=1 type=i32] [debug line = 141:2]
  %26 = load [4 x i32]** %1, align 4, !dbg !199   ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %27 = getelementptr inbounds [4 x i32]* %26, i32 1, !dbg !199 ; [#uses=1 type=[4 x i32]*] [debug line = 141:2]
  %28 = getelementptr inbounds [4 x i32]* %27, i32 0, i32 2, !dbg !199 ; [#uses=1 type=i32*] [debug line = 141:2]
  store i32 %25, i32* %28, align 4, !dbg !199     ; [debug line = 141:2]
  %29 = load i8* %temp, align 1, !dbg !200        ; [#uses=1 type=i8] [debug line = 142:2]
  %30 = zext i8 %29 to i32, !dbg !200             ; [#uses=1 type=i32] [debug line = 142:2]
  %31 = load [4 x i32]** %1, align 4, !dbg !200   ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %32 = getelementptr inbounds [4 x i32]* %31, i32 1, !dbg !200 ; [#uses=1 type=[4 x i32]*] [debug line = 142:2]
  %33 = getelementptr inbounds [4 x i32]* %32, i32 0, i32 3, !dbg !200 ; [#uses=1 type=i32*] [debug line = 142:2]
  store i32 %30, i32* %33, align 4, !dbg !200     ; [debug line = 142:2]
  %34 = load [4 x i32]** %1, align 4, !dbg !201   ; [#uses=1 type=[4 x i32]*] [debug line = 145:2]
  %35 = getelementptr inbounds [4 x i32]* %34, i32 2, !dbg !201 ; [#uses=1 type=[4 x i32]*] [debug line = 145:2]
  %36 = getelementptr inbounds [4 x i32]* %35, i32 0, i32 0, !dbg !201 ; [#uses=1 type=i32*] [debug line = 145:2]
  %37 = load i32* %36, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 145:2]
  %38 = trunc i32 %37 to i8, !dbg !201            ; [#uses=1 type=i8] [debug line = 145:2]
  store i8 %38, i8* %temp, align 1, !dbg !201     ; [debug line = 145:2]
  %39 = load [4 x i32]** %1, align 4, !dbg !202   ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %40 = getelementptr inbounds [4 x i32]* %39, i32 2, !dbg !202 ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %41 = getelementptr inbounds [4 x i32]* %40, i32 0, i32 2, !dbg !202 ; [#uses=1 type=i32*] [debug line = 146:2]
  %42 = load i32* %41, align 4, !dbg !202         ; [#uses=1 type=i32] [debug line = 146:2]
  %43 = load [4 x i32]** %1, align 4, !dbg !202   ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %44 = getelementptr inbounds [4 x i32]* %43, i32 2, !dbg !202 ; [#uses=1 type=[4 x i32]*] [debug line = 146:2]
  %45 = getelementptr inbounds [4 x i32]* %44, i32 0, i32 0, !dbg !202 ; [#uses=1 type=i32*] [debug line = 146:2]
  store i32 %42, i32* %45, align 4, !dbg !202     ; [debug line = 146:2]
  %46 = load i8* %temp, align 1, !dbg !203        ; [#uses=1 type=i8] [debug line = 147:2]
  %47 = zext i8 %46 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 147:2]
  %48 = load [4 x i32]** %1, align 4, !dbg !203   ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %49 = getelementptr inbounds [4 x i32]* %48, i32 2, !dbg !203 ; [#uses=1 type=[4 x i32]*] [debug line = 147:2]
  %50 = getelementptr inbounds [4 x i32]* %49, i32 0, i32 2, !dbg !203 ; [#uses=1 type=i32*] [debug line = 147:2]
  store i32 %47, i32* %50, align 4, !dbg !203     ; [debug line = 147:2]
  %51 = load [4 x i32]** %1, align 4, !dbg !204   ; [#uses=1 type=[4 x i32]*] [debug line = 149:2]
  %52 = getelementptr inbounds [4 x i32]* %51, i32 2, !dbg !204 ; [#uses=1 type=[4 x i32]*] [debug line = 149:2]
  %53 = getelementptr inbounds [4 x i32]* %52, i32 0, i32 1, !dbg !204 ; [#uses=1 type=i32*] [debug line = 149:2]
  %54 = load i32* %53, align 4, !dbg !204         ; [#uses=1 type=i32] [debug line = 149:2]
  %55 = trunc i32 %54 to i8, !dbg !204            ; [#uses=1 type=i8] [debug line = 149:2]
  store i8 %55, i8* %temp, align 1, !dbg !204     ; [debug line = 149:2]
  %56 = load [4 x i32]** %1, align 4, !dbg !205   ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %57 = getelementptr inbounds [4 x i32]* %56, i32 2, !dbg !205 ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %58 = getelementptr inbounds [4 x i32]* %57, i32 0, i32 3, !dbg !205 ; [#uses=1 type=i32*] [debug line = 150:2]
  %59 = load i32* %58, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 150:2]
  %60 = load [4 x i32]** %1, align 4, !dbg !205   ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %61 = getelementptr inbounds [4 x i32]* %60, i32 2, !dbg !205 ; [#uses=1 type=[4 x i32]*] [debug line = 150:2]
  %62 = getelementptr inbounds [4 x i32]* %61, i32 0, i32 1, !dbg !205 ; [#uses=1 type=i32*] [debug line = 150:2]
  store i32 %59, i32* %62, align 4, !dbg !205     ; [debug line = 150:2]
  %63 = load i8* %temp, align 1, !dbg !206        ; [#uses=1 type=i8] [debug line = 151:2]
  %64 = zext i8 %63 to i32, !dbg !206             ; [#uses=1 type=i32] [debug line = 151:2]
  %65 = load [4 x i32]** %1, align 4, !dbg !206   ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %66 = getelementptr inbounds [4 x i32]* %65, i32 2, !dbg !206 ; [#uses=1 type=[4 x i32]*] [debug line = 151:2]
  %67 = getelementptr inbounds [4 x i32]* %66, i32 0, i32 3, !dbg !206 ; [#uses=1 type=i32*] [debug line = 151:2]
  store i32 %64, i32* %67, align 4, !dbg !206     ; [debug line = 151:2]
  %68 = load [4 x i32]** %1, align 4, !dbg !207   ; [#uses=1 type=[4 x i32]*] [debug line = 154:2]
  %69 = getelementptr inbounds [4 x i32]* %68, i32 3, !dbg !207 ; [#uses=1 type=[4 x i32]*] [debug line = 154:2]
  %70 = getelementptr inbounds [4 x i32]* %69, i32 0, i32 0, !dbg !207 ; [#uses=1 type=i32*] [debug line = 154:2]
  %71 = load i32* %70, align 4, !dbg !207         ; [#uses=1 type=i32] [debug line = 154:2]
  %72 = trunc i32 %71 to i8, !dbg !207            ; [#uses=1 type=i8] [debug line = 154:2]
  store i8 %72, i8* %temp, align 1, !dbg !207     ; [debug line = 154:2]
  %73 = load [4 x i32]** %1, align 4, !dbg !208   ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %74 = getelementptr inbounds [4 x i32]* %73, i32 3, !dbg !208 ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %75 = getelementptr inbounds [4 x i32]* %74, i32 0, i32 3, !dbg !208 ; [#uses=1 type=i32*] [debug line = 155:2]
  %76 = load i32* %75, align 4, !dbg !208         ; [#uses=1 type=i32] [debug line = 155:2]
  %77 = load [4 x i32]** %1, align 4, !dbg !208   ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %78 = getelementptr inbounds [4 x i32]* %77, i32 3, !dbg !208 ; [#uses=1 type=[4 x i32]*] [debug line = 155:2]
  %79 = getelementptr inbounds [4 x i32]* %78, i32 0, i32 0, !dbg !208 ; [#uses=1 type=i32*] [debug line = 155:2]
  store i32 %76, i32* %79, align 4, !dbg !208     ; [debug line = 155:2]
  %80 = load [4 x i32]** %1, align 4, !dbg !209   ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %81 = getelementptr inbounds [4 x i32]* %80, i32 3, !dbg !209 ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %82 = getelementptr inbounds [4 x i32]* %81, i32 0, i32 2, !dbg !209 ; [#uses=1 type=i32*] [debug line = 156:2]
  %83 = load i32* %82, align 4, !dbg !209         ; [#uses=1 type=i32] [debug line = 156:2]
  %84 = load [4 x i32]** %1, align 4, !dbg !209   ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %85 = getelementptr inbounds [4 x i32]* %84, i32 3, !dbg !209 ; [#uses=1 type=[4 x i32]*] [debug line = 156:2]
  %86 = getelementptr inbounds [4 x i32]* %85, i32 0, i32 3, !dbg !209 ; [#uses=1 type=i32*] [debug line = 156:2]
  store i32 %83, i32* %86, align 4, !dbg !209     ; [debug line = 156:2]
  %87 = load [4 x i32]** %1, align 4, !dbg !210   ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %88 = getelementptr inbounds [4 x i32]* %87, i32 3, !dbg !210 ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %89 = getelementptr inbounds [4 x i32]* %88, i32 0, i32 1, !dbg !210 ; [#uses=1 type=i32*] [debug line = 157:2]
  %90 = load i32* %89, align 4, !dbg !210         ; [#uses=1 type=i32] [debug line = 157:2]
  %91 = load [4 x i32]** %1, align 4, !dbg !210   ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %92 = getelementptr inbounds [4 x i32]* %91, i32 3, !dbg !210 ; [#uses=1 type=[4 x i32]*] [debug line = 157:2]
  %93 = getelementptr inbounds [4 x i32]* %92, i32 0, i32 2, !dbg !210 ; [#uses=1 type=i32*] [debug line = 157:2]
  store i32 %90, i32* %93, align 4, !dbg !210     ; [debug line = 157:2]
  %94 = load i8* %temp, align 1, !dbg !211        ; [#uses=1 type=i8] [debug line = 158:2]
  %95 = zext i8 %94 to i32, !dbg !211             ; [#uses=1 type=i32] [debug line = 158:2]
  %96 = load [4 x i32]** %1, align 4, !dbg !211   ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %97 = getelementptr inbounds [4 x i32]* %96, i32 3, !dbg !211 ; [#uses=1 type=[4 x i32]*] [debug line = 158:2]
  %98 = getelementptr inbounds [4 x i32]* %97, i32 0, i32 1, !dbg !211 ; [#uses=1 type=i32*] [debug line = 158:2]
  store i32 %95, i32* %98, align 4, !dbg !211     ; [debug line = 158:2]
  ret void, !dbg !212                             ; [debug line = 159:1]
}

; [#uses=1]
define void @MixColumns([4 x i32]* %state) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=18 type=[4 x i32]**]
  %i = alloca i32, align 4                        ; [#uses=20 type=i32*]
  %Tmp = alloca i8, align 1                       ; [#uses=5 type=i8*]
  %Tm = alloca i8, align 1                        ; [#uses=20 type=i8*]
  %t = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !213), !dbg !214 ; [debug line = 165:22] [debug variable = state]
  %2 = load [4 x i32]** %1, align 4, !dbg !215    ; [#uses=1 type=[4 x i32]*] [debug line = 166:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %2, i32 4) nounwind, !dbg !215 ; [debug line = 166:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !217), !dbg !218 ; [debug line = 167:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %Tmp}, metadata !219), !dbg !220 ; [debug line = 168:16] [debug variable = Tmp]
  call void @llvm.dbg.declare(metadata !{i8* %Tm}, metadata !221), !dbg !222 ; [debug line = 168:20] [debug variable = Tm]
  call void @llvm.dbg.declare(metadata !{i8* %t}, metadata !223), !dbg !224 ; [debug line = 168:23] [debug variable = t]
  store i32 0, i32* %i, align 4, !dbg !225        ; [debug line = 169:6]
  br label %3, !dbg !225                          ; [debug line = 169:6]

; <label>:3                                       ; preds = %166, %0
  %4 = load i32* %i, align 4, !dbg !225           ; [#uses=1 type=i32] [debug line = 169:6]
  %5 = icmp slt i32 %4, 4, !dbg !225              ; [#uses=1 type=i1] [debug line = 169:6]
  br i1 %5, label %6, label %169, !dbg !225       ; [debug line = 169:6]

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4, !dbg !227           ; [#uses=1 type=i32] [debug line = 171:3]
  %8 = load [4 x i32]** %1, align 4, !dbg !227    ; [#uses=1 type=[4 x i32]*] [debug line = 171:3]
  %9 = getelementptr inbounds [4 x i32]* %8, i32 0, !dbg !227 ; [#uses=1 type=[4 x i32]*] [debug line = 171:3]
  %10 = getelementptr inbounds [4 x i32]* %9, i32 0, i32 %7, !dbg !227 ; [#uses=1 type=i32*] [debug line = 171:3]
  %11 = load i32* %10, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 171:3]
  %12 = trunc i32 %11 to i8, !dbg !227            ; [#uses=1 type=i8] [debug line = 171:3]
  store i8 %12, i8* %t, align 1, !dbg !227        ; [debug line = 171:3]
  %13 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %14 = load [4 x i32]** %1, align 4, !dbg !229   ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %15 = getelementptr inbounds [4 x i32]* %14, i32 0, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %16 = getelementptr inbounds [4 x i32]* %15, i32 0, i32 %13, !dbg !229 ; [#uses=1 type=i32*] [debug line = 172:3]
  %17 = load i32* %16, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 172:3]
  %18 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %19 = load [4 x i32]** %1, align 4, !dbg !229   ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %20 = getelementptr inbounds [4 x i32]* %19, i32 1, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %21 = getelementptr inbounds [4 x i32]* %20, i32 0, i32 %18, !dbg !229 ; [#uses=1 type=i32*] [debug line = 172:3]
  %22 = load i32* %21, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 172:3]
  %23 = xor i32 %17, %22, !dbg !229               ; [#uses=1 type=i32] [debug line = 172:3]
  %24 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %25 = load [4 x i32]** %1, align 4, !dbg !229   ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %26 = getelementptr inbounds [4 x i32]* %25, i32 2, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %27 = getelementptr inbounds [4 x i32]* %26, i32 0, i32 %24, !dbg !229 ; [#uses=1 type=i32*] [debug line = 172:3]
  %28 = load i32* %27, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 172:3]
  %29 = xor i32 %23, %28, !dbg !229               ; [#uses=1 type=i32] [debug line = 172:3]
  %30 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 172:3]
  %31 = load [4 x i32]** %1, align 4, !dbg !229   ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %32 = getelementptr inbounds [4 x i32]* %31, i32 3, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 172:3]
  %33 = getelementptr inbounds [4 x i32]* %32, i32 0, i32 %30, !dbg !229 ; [#uses=1 type=i32*] [debug line = 172:3]
  %34 = load i32* %33, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 172:3]
  %35 = xor i32 %29, %34, !dbg !229               ; [#uses=1 type=i32] [debug line = 172:3]
  %36 = trunc i32 %35 to i8, !dbg !229            ; [#uses=1 type=i8] [debug line = 172:3]
  store i8 %36, i8* %Tmp, align 1, !dbg !229      ; [debug line = 172:3]
  %37 = load i32* %i, align 4, !dbg !230          ; [#uses=1 type=i32] [debug line = 173:3]
  %38 = load [4 x i32]** %1, align 4, !dbg !230   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %39 = getelementptr inbounds [4 x i32]* %38, i32 0, !dbg !230 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %40 = getelementptr inbounds [4 x i32]* %39, i32 0, i32 %37, !dbg !230 ; [#uses=1 type=i32*] [debug line = 173:3]
  %41 = load i32* %40, align 4, !dbg !230         ; [#uses=1 type=i32] [debug line = 173:3]
  %42 = load i32* %i, align 4, !dbg !230          ; [#uses=1 type=i32] [debug line = 173:3]
  %43 = load [4 x i32]** %1, align 4, !dbg !230   ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %44 = getelementptr inbounds [4 x i32]* %43, i32 1, !dbg !230 ; [#uses=1 type=[4 x i32]*] [debug line = 173:3]
  %45 = getelementptr inbounds [4 x i32]* %44, i32 0, i32 %42, !dbg !230 ; [#uses=1 type=i32*] [debug line = 173:3]
  %46 = load i32* %45, align 4, !dbg !230         ; [#uses=1 type=i32] [debug line = 173:3]
  %47 = xor i32 %41, %46, !dbg !230               ; [#uses=1 type=i32] [debug line = 173:3]
  %48 = trunc i32 %47 to i8, !dbg !230            ; [#uses=1 type=i8] [debug line = 173:3]
  store i8 %48, i8* %Tm, align 1, !dbg !230       ; [debug line = 173:3]
  %49 = load i8* %Tm, align 1, !dbg !231          ; [#uses=1 type=i8] [debug line = 173:36]
  %50 = zext i8 %49 to i32, !dbg !231             ; [#uses=1 type=i32] [debug line = 173:36]
  %51 = shl i32 %50, 1, !dbg !231                 ; [#uses=1 type=i32] [debug line = 173:36]
  %52 = load i8* %Tm, align 1, !dbg !231          ; [#uses=1 type=i8] [debug line = 173:36]
  %53 = zext i8 %52 to i32, !dbg !231             ; [#uses=1 type=i32] [debug line = 173:36]
  %54 = ashr i32 %53, 7, !dbg !231                ; [#uses=1 type=i32] [debug line = 173:36]
  %55 = and i32 %54, 1, !dbg !231                 ; [#uses=1 type=i32] [debug line = 173:36]
  %56 = mul nsw i32 %55, 27, !dbg !231            ; [#uses=1 type=i32] [debug line = 173:36]
  %57 = xor i32 %51, %56, !dbg !231               ; [#uses=1 type=i32] [debug line = 173:36]
  %58 = trunc i32 %57 to i8, !dbg !231            ; [#uses=1 type=i8] [debug line = 173:36]
  store i8 %58, i8* %Tm, align 1, !dbg !231       ; [debug line = 173:36]
  %59 = load i8* %Tm, align 1, !dbg !232          ; [#uses=1 type=i8] [debug line = 173:77]
  %60 = zext i8 %59 to i32, !dbg !232             ; [#uses=1 type=i32] [debug line = 173:77]
  %61 = load i8* %Tmp, align 1, !dbg !232         ; [#uses=1 type=i8] [debug line = 173:77]
  %62 = zext i8 %61 to i32, !dbg !232             ; [#uses=1 type=i32] [debug line = 173:77]
  %63 = xor i32 %60, %62, !dbg !232               ; [#uses=1 type=i32] [debug line = 173:77]
  %64 = load i32* %i, align 4, !dbg !232          ; [#uses=1 type=i32] [debug line = 173:77]
  %65 = load [4 x i32]** %1, align 4, !dbg !232   ; [#uses=1 type=[4 x i32]*] [debug line = 173:77]
  %66 = getelementptr inbounds [4 x i32]* %65, i32 0, !dbg !232 ; [#uses=1 type=[4 x i32]*] [debug line = 173:77]
  %67 = getelementptr inbounds [4 x i32]* %66, i32 0, i32 %64, !dbg !232 ; [#uses=2 type=i32*] [debug line = 173:77]
  %68 = load i32* %67, align 4, !dbg !232         ; [#uses=1 type=i32] [debug line = 173:77]
  %69 = xor i32 %68, %63, !dbg !232               ; [#uses=1 type=i32] [debug line = 173:77]
  store i32 %69, i32* %67, align 4, !dbg !232     ; [debug line = 173:77]
  %70 = load i32* %i, align 4, !dbg !233          ; [#uses=1 type=i32] [debug line = 174:3]
  %71 = load [4 x i32]** %1, align 4, !dbg !233   ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %72 = getelementptr inbounds [4 x i32]* %71, i32 1, !dbg !233 ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %73 = getelementptr inbounds [4 x i32]* %72, i32 0, i32 %70, !dbg !233 ; [#uses=1 type=i32*] [debug line = 174:3]
  %74 = load i32* %73, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 174:3]
  %75 = load i32* %i, align 4, !dbg !233          ; [#uses=1 type=i32] [debug line = 174:3]
  %76 = load [4 x i32]** %1, align 4, !dbg !233   ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %77 = getelementptr inbounds [4 x i32]* %76, i32 2, !dbg !233 ; [#uses=1 type=[4 x i32]*] [debug line = 174:3]
  %78 = getelementptr inbounds [4 x i32]* %77, i32 0, i32 %75, !dbg !233 ; [#uses=1 type=i32*] [debug line = 174:3]
  %79 = load i32* %78, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 174:3]
  %80 = xor i32 %74, %79, !dbg !233               ; [#uses=1 type=i32] [debug line = 174:3]
  %81 = trunc i32 %80 to i8, !dbg !233            ; [#uses=1 type=i8] [debug line = 174:3]
  store i8 %81, i8* %Tm, align 1, !dbg !233       ; [debug line = 174:3]
  %82 = load i8* %Tm, align 1, !dbg !234          ; [#uses=1 type=i8] [debug line = 174:36]
  %83 = zext i8 %82 to i32, !dbg !234             ; [#uses=1 type=i32] [debug line = 174:36]
  %84 = shl i32 %83, 1, !dbg !234                 ; [#uses=1 type=i32] [debug line = 174:36]
  %85 = load i8* %Tm, align 1, !dbg !234          ; [#uses=1 type=i8] [debug line = 174:36]
  %86 = zext i8 %85 to i32, !dbg !234             ; [#uses=1 type=i32] [debug line = 174:36]
  %87 = ashr i32 %86, 7, !dbg !234                ; [#uses=1 type=i32] [debug line = 174:36]
  %88 = and i32 %87, 1, !dbg !234                 ; [#uses=1 type=i32] [debug line = 174:36]
  %89 = mul nsw i32 %88, 27, !dbg !234            ; [#uses=1 type=i32] [debug line = 174:36]
  %90 = xor i32 %84, %89, !dbg !234               ; [#uses=1 type=i32] [debug line = 174:36]
  %91 = trunc i32 %90 to i8, !dbg !234            ; [#uses=1 type=i8] [debug line = 174:36]
  store i8 %91, i8* %Tm, align 1, !dbg !234       ; [debug line = 174:36]
  %92 = load i8* %Tm, align 1, !dbg !235          ; [#uses=1 type=i8] [debug line = 174:77]
  %93 = zext i8 %92 to i32, !dbg !235             ; [#uses=1 type=i32] [debug line = 174:77]
  %94 = load i8* %Tmp, align 1, !dbg !235         ; [#uses=1 type=i8] [debug line = 174:77]
  %95 = zext i8 %94 to i32, !dbg !235             ; [#uses=1 type=i32] [debug line = 174:77]
  %96 = xor i32 %93, %95, !dbg !235               ; [#uses=1 type=i32] [debug line = 174:77]
  %97 = load i32* %i, align 4, !dbg !235          ; [#uses=1 type=i32] [debug line = 174:77]
  %98 = load [4 x i32]** %1, align 4, !dbg !235   ; [#uses=1 type=[4 x i32]*] [debug line = 174:77]
  %99 = getelementptr inbounds [4 x i32]* %98, i32 1, !dbg !235 ; [#uses=1 type=[4 x i32]*] [debug line = 174:77]
  %100 = getelementptr inbounds [4 x i32]* %99, i32 0, i32 %97, !dbg !235 ; [#uses=2 type=i32*] [debug line = 174:77]
  %101 = load i32* %100, align 4, !dbg !235       ; [#uses=1 type=i32] [debug line = 174:77]
  %102 = xor i32 %101, %96, !dbg !235             ; [#uses=1 type=i32] [debug line = 174:77]
  store i32 %102, i32* %100, align 4, !dbg !235   ; [debug line = 174:77]
  %103 = load i32* %i, align 4, !dbg !236         ; [#uses=1 type=i32] [debug line = 175:3]
  %104 = load [4 x i32]** %1, align 4, !dbg !236  ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %105 = getelementptr inbounds [4 x i32]* %104, i32 2, !dbg !236 ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %106 = getelementptr inbounds [4 x i32]* %105, i32 0, i32 %103, !dbg !236 ; [#uses=1 type=i32*] [debug line = 175:3]
  %107 = load i32* %106, align 4, !dbg !236       ; [#uses=1 type=i32] [debug line = 175:3]
  %108 = load i32* %i, align 4, !dbg !236         ; [#uses=1 type=i32] [debug line = 175:3]
  %109 = load [4 x i32]** %1, align 4, !dbg !236  ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %110 = getelementptr inbounds [4 x i32]* %109, i32 3, !dbg !236 ; [#uses=1 type=[4 x i32]*] [debug line = 175:3]
  %111 = getelementptr inbounds [4 x i32]* %110, i32 0, i32 %108, !dbg !236 ; [#uses=1 type=i32*] [debug line = 175:3]
  %112 = load i32* %111, align 4, !dbg !236       ; [#uses=1 type=i32] [debug line = 175:3]
  %113 = xor i32 %107, %112, !dbg !236            ; [#uses=1 type=i32] [debug line = 175:3]
  %114 = trunc i32 %113 to i8, !dbg !236          ; [#uses=1 type=i8] [debug line = 175:3]
  store i8 %114, i8* %Tm, align 1, !dbg !236      ; [debug line = 175:3]
  %115 = load i8* %Tm, align 1, !dbg !237         ; [#uses=1 type=i8] [debug line = 175:36]
  %116 = zext i8 %115 to i32, !dbg !237           ; [#uses=1 type=i32] [debug line = 175:36]
  %117 = shl i32 %116, 1, !dbg !237               ; [#uses=1 type=i32] [debug line = 175:36]
  %118 = load i8* %Tm, align 1, !dbg !237         ; [#uses=1 type=i8] [debug line = 175:36]
  %119 = zext i8 %118 to i32, !dbg !237           ; [#uses=1 type=i32] [debug line = 175:36]
  %120 = ashr i32 %119, 7, !dbg !237              ; [#uses=1 type=i32] [debug line = 175:36]
  %121 = and i32 %120, 1, !dbg !237               ; [#uses=1 type=i32] [debug line = 175:36]
  %122 = mul nsw i32 %121, 27, !dbg !237          ; [#uses=1 type=i32] [debug line = 175:36]
  %123 = xor i32 %117, %122, !dbg !237            ; [#uses=1 type=i32] [debug line = 175:36]
  %124 = trunc i32 %123 to i8, !dbg !237          ; [#uses=1 type=i8] [debug line = 175:36]
  store i8 %124, i8* %Tm, align 1, !dbg !237      ; [debug line = 175:36]
  %125 = load i8* %Tm, align 1, !dbg !238         ; [#uses=1 type=i8] [debug line = 175:77]
  %126 = zext i8 %125 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 175:77]
  %127 = load i8* %Tmp, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 175:77]
  %128 = zext i8 %127 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 175:77]
  %129 = xor i32 %126, %128, !dbg !238            ; [#uses=1 type=i32] [debug line = 175:77]
  %130 = load i32* %i, align 4, !dbg !238         ; [#uses=1 type=i32] [debug line = 175:77]
  %131 = load [4 x i32]** %1, align 4, !dbg !238  ; [#uses=1 type=[4 x i32]*] [debug line = 175:77]
  %132 = getelementptr inbounds [4 x i32]* %131, i32 2, !dbg !238 ; [#uses=1 type=[4 x i32]*] [debug line = 175:77]
  %133 = getelementptr inbounds [4 x i32]* %132, i32 0, i32 %130, !dbg !238 ; [#uses=2 type=i32*] [debug line = 175:77]
  %134 = load i32* %133, align 4, !dbg !238       ; [#uses=1 type=i32] [debug line = 175:77]
  %135 = xor i32 %134, %129, !dbg !238            ; [#uses=1 type=i32] [debug line = 175:77]
  store i32 %135, i32* %133, align 4, !dbg !238   ; [debug line = 175:77]
  %136 = load i32* %i, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 176:3]
  %137 = load [4 x i32]** %1, align 4, !dbg !239  ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %138 = getelementptr inbounds [4 x i32]* %137, i32 3, !dbg !239 ; [#uses=1 type=[4 x i32]*] [debug line = 176:3]
  %139 = getelementptr inbounds [4 x i32]* %138, i32 0, i32 %136, !dbg !239 ; [#uses=1 type=i32*] [debug line = 176:3]
  %140 = load i32* %139, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 176:3]
  %141 = load i8* %t, align 1, !dbg !239          ; [#uses=1 type=i8] [debug line = 176:3]
  %142 = zext i8 %141 to i32, !dbg !239           ; [#uses=1 type=i32] [debug line = 176:3]
  %143 = xor i32 %140, %142, !dbg !239            ; [#uses=1 type=i32] [debug line = 176:3]
  %144 = trunc i32 %143 to i8, !dbg !239          ; [#uses=1 type=i8] [debug line = 176:3]
  store i8 %144, i8* %Tm, align 1, !dbg !239      ; [debug line = 176:3]
  %145 = load i8* %Tm, align 1, !dbg !240         ; [#uses=1 type=i8] [debug line = 176:26]
  %146 = zext i8 %145 to i32, !dbg !240           ; [#uses=1 type=i32] [debug line = 176:26]
  %147 = shl i32 %146, 1, !dbg !240               ; [#uses=1 type=i32] [debug line = 176:26]
  %148 = load i8* %Tm, align 1, !dbg !240         ; [#uses=1 type=i8] [debug line = 176:26]
  %149 = zext i8 %148 to i32, !dbg !240           ; [#uses=1 type=i32] [debug line = 176:26]
  %150 = ashr i32 %149, 7, !dbg !240              ; [#uses=1 type=i32] [debug line = 176:26]
  %151 = and i32 %150, 1, !dbg !240               ; [#uses=1 type=i32] [debug line = 176:26]
  %152 = mul nsw i32 %151, 27, !dbg !240          ; [#uses=1 type=i32] [debug line = 176:26]
  %153 = xor i32 %147, %152, !dbg !240            ; [#uses=1 type=i32] [debug line = 176:26]
  %154 = trunc i32 %153 to i8, !dbg !240          ; [#uses=1 type=i8] [debug line = 176:26]
  store i8 %154, i8* %Tm, align 1, !dbg !240      ; [debug line = 176:26]
  %155 = load i8* %Tm, align 1, !dbg !241         ; [#uses=1 type=i8] [debug line = 176:67]
  %156 = zext i8 %155 to i32, !dbg !241           ; [#uses=1 type=i32] [debug line = 176:67]
  %157 = load i8* %Tmp, align 1, !dbg !241        ; [#uses=1 type=i8] [debug line = 176:67]
  %158 = zext i8 %157 to i32, !dbg !241           ; [#uses=1 type=i32] [debug line = 176:67]
  %159 = xor i32 %156, %158, !dbg !241            ; [#uses=1 type=i32] [debug line = 176:67]
  %160 = load i32* %i, align 4, !dbg !241         ; [#uses=1 type=i32] [debug line = 176:67]
  %161 = load [4 x i32]** %1, align 4, !dbg !241  ; [#uses=1 type=[4 x i32]*] [debug line = 176:67]
  %162 = getelementptr inbounds [4 x i32]* %161, i32 3, !dbg !241 ; [#uses=1 type=[4 x i32]*] [debug line = 176:67]
  %163 = getelementptr inbounds [4 x i32]* %162, i32 0, i32 %160, !dbg !241 ; [#uses=2 type=i32*] [debug line = 176:67]
  %164 = load i32* %163, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 176:67]
  %165 = xor i32 %164, %159, !dbg !241            ; [#uses=1 type=i32] [debug line = 176:67]
  store i32 %165, i32* %163, align 4, !dbg !241   ; [debug line = 176:67]
  br label %166, !dbg !242                        ; [debug line = 177:2]

; <label>:166                                     ; preds = %6
  %167 = load i32* %i, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 169:14]
  %168 = add nsw i32 %167, 1, !dbg !243           ; [#uses=1 type=i32] [debug line = 169:14]
  store i32 %168, i32* %i, align 4, !dbg !243     ; [debug line = 169:14]
  br label %3, !dbg !243                          ; [debug line = 169:14]

; <label>:169                                     ; preds = %3
  ret void, !dbg !244                             ; [debug line = 178:1]
}

; [#uses=0]
define void @Cipher(i32* %Key, [4 x i32]* %state) nounwind {
  %1 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %2 = alloca [4 x i32]*, align 4                 ; [#uses=10 type=[4 x i32]**]
  %Rcon = alloca [255 x i32], align 4             ; [#uses=2 type=[255 x i32]*]
  %i = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %round = alloca i32, align 4                    ; [#uses=6 type=i32*]
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=4 type=[240 x i32]*]
  store i32* %Key, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !245), !dbg !246 ; [debug line = 181:18] [debug variable = Key]
  store [4 x i32]* %state, [4 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %2}, metadata !247), !dbg !248 ; [debug line = 181:31] [debug variable = state]
  %3 = load [4 x i32]** %2, align 4, !dbg !249    ; [#uses=1 type=[4 x i32]*] [debug line = 182:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %3, i32 4) nounwind, !dbg !249 ; [debug line = 182:2]
  %4 = load i32** %1, align 4, !dbg !251          ; [#uses=1 type=i32*] [debug line = 182:34]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 32) nounwind, !dbg !251 ; [debug line = 182:34]
  call void @llvm.dbg.declare(metadata !{[255 x i32]* %Rcon}, metadata !252), !dbg !256 ; [debug line = 185:6] [debug variable = Rcon]
  %5 = bitcast [255 x i32]* %Rcon to i8*, !dbg !257 ; [#uses=1 type=i8*] [debug line = 201:93]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([255 x i32]* @Cipher.Rcon to i8*), i32 1020, i32 4, i1 false), !dbg !257 ; [debug line = 201:93]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !258), !dbg !259 ; [debug line = 202:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !260), !dbg !261 ; [debug line = 202:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %round}, metadata !262), !dbg !263 ; [debug line = 202:10] [debug variable = round]
  store i32 0, i32* %round, align 4, !dbg !264    ; [debug line = 202:17]
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !265), !dbg !269 ; [debug line = 203:7] [debug variable = RoundKey]
  %6 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !270 ; [#uses=1 type=i32*] [debug line = 207:2]
  %7 = load i32** %1, align 4, !dbg !270          ; [#uses=1 type=i32*] [debug line = 207:2]
  %8 = getelementptr inbounds [255 x i32]* %Rcon, i32 0, i32 0, !dbg !270 ; [#uses=1 type=i32*] [debug line = 207:2]
  call void @KeyExpansion(i32* %6, i32* %7, i32* %8), !dbg !270 ; [debug line = 207:2]
  %9 = load [4 x i32]** %2, align 4, !dbg !271    ; [#uses=1 type=[4 x i32]*] [debug line = 212:2]
  %10 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !271 ; [#uses=1 type=i32*] [debug line = 212:2]
  call void @AddRoundKey(i32 0, [4 x i32]* %9, i32* %10), !dbg !271 ; [debug line = 212:2]
  store i32 1, i32* %round, align 4, !dbg !272    ; [debug line = 217:6]
  br label %11, !dbg !272                         ; [debug line = 217:6]

; <label>:11                                      ; preds = %21, %0
  %12 = load i32* %round, align 4, !dbg !272      ; [#uses=1 type=i32] [debug line = 217:6]
  %13 = icmp slt i32 %12, 10, !dbg !272           ; [#uses=1 type=i1] [debug line = 217:6]
  br i1 %13, label %14, label %24, !dbg !272      ; [debug line = 217:6]

; <label>:14                                      ; preds = %11
  %15 = load [4 x i32]** %2, align 4, !dbg !274   ; [#uses=1 type=[4 x i32]*] [debug line = 219:3]
  call void @SubBytes([4 x i32]* %15), !dbg !274  ; [debug line = 219:3]
  %16 = load [4 x i32]** %2, align 4, !dbg !276   ; [#uses=1 type=[4 x i32]*] [debug line = 220:3]
  call void @ShiftRows([4 x i32]* %16), !dbg !276 ; [debug line = 220:3]
  %17 = load [4 x i32]** %2, align 4, !dbg !277   ; [#uses=1 type=[4 x i32]*] [debug line = 221:3]
  call void @MixColumns([4 x i32]* %17), !dbg !277 ; [debug line = 221:3]
  %18 = load i32* %round, align 4, !dbg !278      ; [#uses=1 type=i32] [debug line = 222:3]
  %19 = load [4 x i32]** %2, align 4, !dbg !278   ; [#uses=1 type=[4 x i32]*] [debug line = 222:3]
  %20 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !278 ; [#uses=1 type=i32*] [debug line = 222:3]
  call void @AddRoundKey(i32 %18, [4 x i32]* %19, i32* %20), !dbg !278 ; [debug line = 222:3]
  br label %21, !dbg !279                         ; [debug line = 223:2]

; <label>:21                                      ; preds = %14
  %22 = load i32* %round, align 4, !dbg !280      ; [#uses=1 type=i32] [debug line = 217:23]
  %23 = add nsw i32 %22, 1, !dbg !280             ; [#uses=1 type=i32] [debug line = 217:23]
  store i32 %23, i32* %round, align 4, !dbg !280  ; [debug line = 217:23]
  br label %11, !dbg !280                         ; [debug line = 217:23]

; <label>:24                                      ; preds = %11
  %25 = load [4 x i32]** %2, align 4, !dbg !281   ; [#uses=1 type=[4 x i32]*] [debug line = 227:2]
  call void @SubBytes([4 x i32]* %25), !dbg !281  ; [debug line = 227:2]
  %26 = load [4 x i32]** %2, align 4, !dbg !282   ; [#uses=1 type=[4 x i32]*] [debug line = 228:2]
  call void @ShiftRows([4 x i32]* %26), !dbg !282 ; [debug line = 228:2]
  %27 = load [4 x i32]** %2, align 4, !dbg !283   ; [#uses=1 type=[4 x i32]*] [debug line = 229:2]
  %28 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !283 ; [#uses=1 type=i32*] [debug line = 229:2]
  call void @AddRoundKey(i32 10, [4 x i32]* %27, i32* %28), !dbg !283 ; [debug line = 229:2]
  ret void, !dbg !284                             ; [debug line = 235:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41, !47, !51, !55, !56, !57}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5Cxorisallages2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !19, metadata !26, metadata !29, metadata !30, metadata !31}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5Cxorisallages2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @KeyExpansion, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !18}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 103, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i32]*, i32*)* @AddRoundKey, null, null, metadata !10, i32 104} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9, metadata !22, metadata !15}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 117, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @SubBytes, null, null, metadata !10, i32 118} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !22}
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 133, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @ShiftRows, null, null, metadata !10, i32 134} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 165, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @MixColumns, null, null, metadata !10, i32 166} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 181, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, [4 x i32]*)* @Cipher, null, null, metadata !10, i32 182} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !15, metadata !22}
!34 = metadata !{i32 (i32)* @getSBoxValue, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{void (i32*, i32*, i32*)* @KeyExpansion, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"int*"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!47 = metadata !{void (i32, [4 x i32]*, i32*)* @AddRoundKey, metadata !48, metadata !43, metadata !49, metadata !45, metadata !50, metadata !40}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!51 = metadata !{void ([4 x i32]*)* @SubBytes, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!52 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!55 = metadata !{void ([4 x i32]*)* @ShiftRows, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!56 = metadata !{void ([4 x i32]*)* @MixColumns, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!57 = metadata !{void (i32*, [4 x i32]*)* @Cipher, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !40}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!59 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word [4]*"}
!61 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"Key", metadata !"state"}
!63 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 4, i32 22, metadata !5, null}
!65 = metadata !{i32 786688, metadata !66, metadata !"sbox", metadata !6, i32 6, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !9, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!70 = metadata !{i32 6, i32 6, metadata !66, null}
!71 = metadata !{i32 23, i32 98, metadata !66, null}
!72 = metadata !{i32 24, i32 2, metadata !66, null}
!73 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777249, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 33, i32 24, metadata !12, null}
!75 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554465, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 33, i32 43, metadata !12, null}
!77 = metadata !{i32 786689, metadata !12, metadata !"Rcon", metadata !6, i32 50331681, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 33, i32 55, metadata !12, null}
!79 = metadata !{i32 34, i32 2, metadata !80, null}
!80 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 34, i32 39, metadata !80, null}
!82 = metadata !{i32 34, i32 72, metadata !80, null}
!83 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 35, i32 6, metadata !80, null}
!85 = metadata !{i32 786688, metadata !80, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 35, i32 8, metadata !80, null}
!87 = metadata !{i32 786688, metadata !80, metadata !"temp", metadata !6, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 36, i32 7, metadata !80, null}
!89 = metadata !{i32 786688, metadata !80, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 36, i32 15, metadata !80, null}
!91 = metadata !{i32 786688, metadata !80, metadata !"Nk", metadata !6, i32 37, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 37, i32 6, metadata !80, null}
!93 = metadata !{i32 37, i32 10, metadata !80, null}
!94 = metadata !{i32 786688, metadata !80, metadata !"Nr", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 38, i32 6, metadata !80, null}
!96 = metadata !{i32 38, i32 11, metadata !80, null}
!97 = metadata !{i32 41, i32 6, metadata !98, null}
!98 = metadata !{i32 786443, metadata !80, i32 41, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 43, i32 3, metadata !100, null}
!100 = metadata !{i32 786443, metadata !98, i32 42, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 44, i32 3, metadata !100, null}
!102 = metadata !{i32 45, i32 3, metadata !100, null}
!103 = metadata !{i32 46, i32 3, metadata !100, null}
!104 = metadata !{i32 47, i32 2, metadata !100, null}
!105 = metadata !{i32 41, i32 15, metadata !98, null}
!106 = metadata !{i32 50, i32 2, metadata !80, null}
!107 = metadata !{i32 52, i32 10, metadata !108, null}
!108 = metadata !{i32 786443, metadata !109, i32 52, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786443, metadata !80, i32 51, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 54, i32 7, metadata !111, null}
!111 = metadata !{i32 786443, metadata !108, i32 53, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 55, i32 6, metadata !111, null}
!113 = metadata !{i32 52, i32 18, metadata !108, null}
!114 = metadata !{i32 56, i32 6, metadata !109, null}
!115 = metadata !{i32 63, i32 8, metadata !116, null}
!116 = metadata !{i32 786443, metadata !117, i32 62, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !109, i32 57, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 64, i32 8, metadata !116, null}
!119 = metadata !{i32 65, i32 8, metadata !116, null}
!120 = metadata !{i32 66, i32 8, metadata !116, null}
!121 = metadata !{i32 67, i32 8, metadata !116, null}
!122 = metadata !{i32 75, i32 16, metadata !123, null}
!123 = metadata !{i32 786443, metadata !117, i32 74, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 76, i32 16, metadata !123, null}
!125 = metadata !{i32 77, i32 16, metadata !123, null}
!126 = metadata !{i32 78, i32 16, metadata !123, null}
!127 = metadata !{i32 81, i32 7, metadata !117, null}
!128 = metadata !{i32 82, i32 6, metadata !117, null}
!129 = metadata !{i32 83, i32 11, metadata !109, null}
!130 = metadata !{i32 87, i32 16, metadata !131, null}
!131 = metadata !{i32 786443, metadata !132, i32 86, i32 7, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !109, i32 84, i32 6, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 88, i32 16, metadata !131, null}
!134 = metadata !{i32 89, i32 16, metadata !131, null}
!135 = metadata !{i32 90, i32 16, metadata !131, null}
!136 = metadata !{i32 92, i32 6, metadata !132, null}
!137 = metadata !{i32 93, i32 6, metadata !109, null}
!138 = metadata !{i32 94, i32 6, metadata !109, null}
!139 = metadata !{i32 95, i32 6, metadata !109, null}
!140 = metadata !{i32 96, i32 6, metadata !109, null}
!141 = metadata !{i32 97, i32 6, metadata !109, null}
!142 = metadata !{i32 98, i32 2, metadata !109, null}
!143 = metadata !{i32 99, i32 1, metadata !80, null}
!144 = metadata !{i32 786689, metadata !19, metadata !"round", metadata !6, i32 16777319, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 103, i32 22, metadata !19, null}
!146 = metadata !{i32 786689, metadata !19, metadata !"state", metadata !6, i32 33554535, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 103, i32 33, metadata !19, null}
!148 = metadata !{i32 786689, metadata !19, metadata !"RoundKey", metadata !6, i32 50331751, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 103, i32 50, metadata !19, null}
!150 = metadata !{i32 104, i32 2, metadata !151, null}
!151 = metadata !{i32 786443, metadata !19, i32 104, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 104, i32 39, metadata !151, null}
!153 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 105, i32 6, metadata !151, null}
!155 = metadata !{i32 786688, metadata !151, metadata !"j", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 105, i32 8, metadata !151, null}
!157 = metadata !{i32 106, i32 6, metadata !158, null}
!158 = metadata !{i32 786443, metadata !151, i32 106, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 108, i32 7, metadata !160, null}
!160 = metadata !{i32 786443, metadata !161, i32 108, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !158, i32 107, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 110, i32 4, metadata !163, null}
!163 = metadata !{i32 786443, metadata !160, i32 109, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 111, i32 3, metadata !163, null}
!165 = metadata !{i32 108, i32 15, metadata !160, null}
!166 = metadata !{i32 112, i32 2, metadata !161, null}
!167 = metadata !{i32 106, i32 14, metadata !158, null}
!168 = metadata !{i32 113, i32 1, metadata !151, null}
!169 = metadata !{i32 786689, metadata !26, metadata !"state", metadata !6, i32 16777333, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 117, i32 20, metadata !26, null}
!171 = metadata !{i32 118, i32 2, metadata !172, null}
!172 = metadata !{i32 786443, metadata !26, i32 118, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786688, metadata !172, metadata !"i", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 119, i32 6, metadata !172, null}
!175 = metadata !{i32 786688, metadata !172, metadata !"j", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 119, i32 8, metadata !172, null}
!177 = metadata !{i32 120, i32 6, metadata !178, null}
!178 = metadata !{i32 786443, metadata !172, i32 120, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 122, i32 7, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 122, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !178, i32 121, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 124, i32 18, metadata !183, null}
!183 = metadata !{i32 786443, metadata !180, i32 123, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 126, i32 3, metadata !183, null}
!185 = metadata !{i32 122, i32 15, metadata !180, null}
!186 = metadata !{i32 127, i32 2, metadata !181, null}
!187 = metadata !{i32 120, i32 14, metadata !178, null}
!188 = metadata !{i32 128, i32 1, metadata !172, null}
!189 = metadata !{i32 786689, metadata !29, metadata !"state", metadata !6, i32 16777349, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 133, i32 21, metadata !29, null}
!191 = metadata !{i32 134, i32 2, metadata !192, null}
!192 = metadata !{i32 786443, metadata !29, i32 134, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786688, metadata !192, metadata !"temp", metadata !6, i32 135, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!195 = metadata !{i32 135, i32 16, metadata !192, null}
!196 = metadata !{i32 138, i32 2, metadata !192, null}
!197 = metadata !{i32 139, i32 2, metadata !192, null}
!198 = metadata !{i32 140, i32 2, metadata !192, null}
!199 = metadata !{i32 141, i32 2, metadata !192, null}
!200 = metadata !{i32 142, i32 2, metadata !192, null}
!201 = metadata !{i32 145, i32 2, metadata !192, null}
!202 = metadata !{i32 146, i32 2, metadata !192, null}
!203 = metadata !{i32 147, i32 2, metadata !192, null}
!204 = metadata !{i32 149, i32 2, metadata !192, null}
!205 = metadata !{i32 150, i32 2, metadata !192, null}
!206 = metadata !{i32 151, i32 2, metadata !192, null}
!207 = metadata !{i32 154, i32 2, metadata !192, null}
!208 = metadata !{i32 155, i32 2, metadata !192, null}
!209 = metadata !{i32 156, i32 2, metadata !192, null}
!210 = metadata !{i32 157, i32 2, metadata !192, null}
!211 = metadata !{i32 158, i32 2, metadata !192, null}
!212 = metadata !{i32 159, i32 1, metadata !192, null}
!213 = metadata !{i32 786689, metadata !30, metadata !"state", metadata !6, i32 16777381, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 165, i32 22, metadata !30, null}
!215 = metadata !{i32 166, i32 2, metadata !216, null}
!216 = metadata !{i32 786443, metadata !30, i32 166, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 786688, metadata !216, metadata !"i", metadata !6, i32 167, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 167, i32 6, metadata !216, null}
!219 = metadata !{i32 786688, metadata !216, metadata !"Tmp", metadata !6, i32 168, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 168, i32 16, metadata !216, null}
!221 = metadata !{i32 786688, metadata !216, metadata !"Tm", metadata !6, i32 168, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 168, i32 20, metadata !216, null}
!223 = metadata !{i32 786688, metadata !216, metadata !"t", metadata !6, i32 168, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 168, i32 23, metadata !216, null}
!225 = metadata !{i32 169, i32 6, metadata !226, null}
!226 = metadata !{i32 786443, metadata !216, i32 169, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 171, i32 3, metadata !228, null}
!228 = metadata !{i32 786443, metadata !226, i32 170, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 172, i32 3, metadata !228, null}
!230 = metadata !{i32 173, i32 3, metadata !228, null}
!231 = metadata !{i32 173, i32 36, metadata !228, null}
!232 = metadata !{i32 173, i32 77, metadata !228, null}
!233 = metadata !{i32 174, i32 3, metadata !228, null}
!234 = metadata !{i32 174, i32 36, metadata !228, null}
!235 = metadata !{i32 174, i32 77, metadata !228, null}
!236 = metadata !{i32 175, i32 3, metadata !228, null}
!237 = metadata !{i32 175, i32 36, metadata !228, null}
!238 = metadata !{i32 175, i32 77, metadata !228, null}
!239 = metadata !{i32 176, i32 3, metadata !228, null}
!240 = metadata !{i32 176, i32 26, metadata !228, null}
!241 = metadata !{i32 176, i32 67, metadata !228, null}
!242 = metadata !{i32 177, i32 2, metadata !228, null}
!243 = metadata !{i32 169, i32 14, metadata !226, null}
!244 = metadata !{i32 178, i32 1, metadata !216, null}
!245 = metadata !{i32 786689, metadata !31, metadata !"Key", metadata !6, i32 16777397, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 181, i32 18, metadata !31, null}
!247 = metadata !{i32 786689, metadata !31, metadata !"state", metadata !6, i32 33554613, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 181, i32 31, metadata !31, null}
!249 = metadata !{i32 182, i32 2, metadata !250, null}
!250 = metadata !{i32 786443, metadata !31, i32 182, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 182, i32 34, metadata !250, null}
!252 = metadata !{i32 786688, metadata !250, metadata !"Rcon", metadata !6, i32 185, metadata !253, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8160, i64 32, i32 0, i32 0, metadata !9, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 254}     ; [ DW_TAG_subrange_type ]
!256 = metadata !{i32 185, i32 6, metadata !250, null}
!257 = metadata !{i32 201, i32 93, metadata !250, null}
!258 = metadata !{i32 786688, metadata !250, metadata !"i", metadata !6, i32 202, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 202, i32 6, metadata !250, null}
!260 = metadata !{i32 786688, metadata !250, metadata !"j", metadata !6, i32 202, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 202, i32 8, metadata !250, null}
!262 = metadata !{i32 786688, metadata !250, metadata !"round", metadata !6, i32 202, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 202, i32 10, metadata !250, null}
!264 = metadata !{i32 202, i32 17, metadata !250, null}
!265 = metadata !{i32 786688, metadata !250, metadata !"RoundKey", metadata !6, i32 203, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !16, metadata !267, i32 0, i32 0} ; [ DW_TAG_array_type ]
!267 = metadata !{metadata !268}
!268 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!269 = metadata !{i32 203, i32 7, metadata !250, null}
!270 = metadata !{i32 207, i32 2, metadata !250, null}
!271 = metadata !{i32 212, i32 2, metadata !250, null}
!272 = metadata !{i32 217, i32 6, metadata !273, null}
!273 = metadata !{i32 786443, metadata !250, i32 217, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 219, i32 3, metadata !275, null}
!275 = metadata !{i32 786443, metadata !273, i32 218, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 220, i32 3, metadata !275, null}
!277 = metadata !{i32 221, i32 3, metadata !275, null}
!278 = metadata !{i32 222, i32 3, metadata !275, null}
!279 = metadata !{i32 223, i32 2, metadata !275, null}
!280 = metadata !{i32 217, i32 23, metadata !273, null}
!281 = metadata !{i32 227, i32 2, metadata !250, null}
!282 = metadata !{i32 228, i32 2, metadata !250, null}
!283 = metadata !{i32 229, i32 2, metadata !250, null}
!284 = metadata !{i32 235, i32 1, metadata !250, null}
