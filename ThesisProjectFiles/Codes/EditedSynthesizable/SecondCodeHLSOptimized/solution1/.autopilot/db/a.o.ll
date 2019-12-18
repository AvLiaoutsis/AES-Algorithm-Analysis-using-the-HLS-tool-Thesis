; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@getSBoxValue.sbox = private unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4 ; [#uses=1 type=[256 x i32]*]
@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [21 x i8] c"KeyExpansion_label17\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [20 x i8] c"KeyExpansion_label4\00", align 1 ; [#uses=1 type=[20 x i8]*]
@.str4 = private unnamed_addr constant [20 x i8] c"AddRoundKey_label19\00", align 1 ; [#uses=1 type=[20 x i8]*]
@Cipher.Rcon = private unnamed_addr constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203], align 4 ; [#uses=1 type=[255 x i32]*]
@.str5 = private unnamed_addr constant [15 x i8] c"Cipher_label34\00", align 1 ; [#uses=1 type=[15 x i8]*]

; [#uses=5]
define i32 @getSBoxValue(i32 %num) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %sbox = alloca [256 x i32], align 4             ; [#uses=3 type=[256 x i32]*]
  store i32 %num, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !59), !dbg !60 ; [debug line = 3:22] [debug variable = num]
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %sbox}, metadata !61), !dbg !66 ; [debug line = 5:6] [debug variable = sbox]
  %2 = bitcast [256 x i32]* %sbox to i8*, !dbg !67 ; [#uses=1 type=i8*] [debug line = 22:98]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([256 x i32]* @getSBoxValue.sbox to i8*), i32 1024, i32 4, i1 false), !dbg !67 ; [debug line = 22:98]
  %3 = getelementptr inbounds [256 x i32]* %sbox, i32 0, i32 0, !dbg !68 ; [#uses=1 type=i32*] [debug line = 23:1]
  call void bitcast (void (...)* @_ssdm_SpecArrayPartition to void (i32*, i32, i8*, i32, i8*)*)(i32* %3, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 23:1]
  %4 = load i32* %1, align 4, !dbg !69            ; [#uses=1 type=i32] [debug line = 23:2]
  %5 = getelementptr inbounds [256 x i32]* %sbox, i32 0, i32 %4, !dbg !69 ; [#uses=1 type=i32*] [debug line = 23:2]
  %6 = load i32* %5, align 4, !dbg !69            ; [#uses=1 type=i32] [debug line = 23:2]
  ret i32 %6, !dbg !69                            ; [debug line = 23:2]
}

; [#uses=31]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=1]
define void @KeyExpansion(i32* %RoundKey, i32* %Key, i32* %Rcon) nounwind {
  %1 = alloca i32*, align 4                       ; [#uses=15 type=i32**]
  %2 = alloca i32*, align 4                       ; [#uses=6 type=i32**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=26 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %temp = alloca [4 x i8], align 1                ; [#uses=23 type=[4 x i8]*]
  %k = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store i32* %RoundKey, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !70), !dbg !71 ; [debug line = 32:24] [debug variable = RoundKey]
  store i32* %Key, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !72), !dbg !73 ; [debug line = 32:43] [debug variable = Key]
  store i32* %Rcon, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !74), !dbg !75 ; [debug line = 32:55] [debug variable = Rcon]
  %4 = load i32** %1, align 4, !dbg !76           ; [#uses=1 type=i32*] [debug line = 33:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 240) nounwind, !dbg !76 ; [debug line = 33:2]
  %5 = load i32** %3, align 4, !dbg !78           ; [#uses=1 type=i32*] [debug line = 33:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %5, i32 255) nounwind, !dbg !78 ; [debug line = 33:39]
  %6 = load i32** %2, align 4, !dbg !79           ; [#uses=1 type=i32*] [debug line = 33:72]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %6, i32 32) nounwind, !dbg !79 ; [debug line = 33:72]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !80), !dbg !81 ; [debug line = 34:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !82), !dbg !83 ; [debug line = 34:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %temp}, metadata !84), !dbg !87 ; [debug line = 35:16] [debug variable = temp]
  call void @llvm.dbg.declare(metadata !{i8* %k}, metadata !88), !dbg !89 ; [debug line = 35:24] [debug variable = k]
  br label %7, !dbg !90                           ; [debug line = 35:25]

; <label>:7                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !91         ; [debug line = 38:27]
  br label %8, !dbg !91                           ; [debug line = 38:27]

; <label>:8                                       ; preds = %54, %7
  %9 = load i32* %i, align 4, !dbg !91            ; [#uses=1 type=i32] [debug line = 38:27]
  %10 = icmp slt i32 %9, 4, !dbg !91              ; [#uses=1 type=i1] [debug line = 38:27]
  br i1 %10, label %11, label %57, !dbg !91       ; [debug line = 38:27]

; <label>:11                                      ; preds = %8
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 39:3]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 39:3]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !95 ; [debug line = 40:1]
  %12 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 40:3]
  %13 = mul nsw i32 %12, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 40:3]
  %14 = load i32** %2, align 4, !dbg !96          ; [#uses=1 type=i32*] [debug line = 40:3]
  %15 = getelementptr inbounds i32* %14, i32 %13, !dbg !96 ; [#uses=1 type=i32*] [debug line = 40:3]
  %16 = load i32* %15, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 40:3]
  %17 = load i32* %i, align 4, !dbg !96           ; [#uses=1 type=i32] [debug line = 40:3]
  %18 = mul nsw i32 %17, 4, !dbg !96              ; [#uses=1 type=i32] [debug line = 40:3]
  %19 = load i32** %1, align 4, !dbg !96          ; [#uses=1 type=i32*] [debug line = 40:3]
  %20 = getelementptr inbounds i32* %19, i32 %18, !dbg !96 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %16, i32* %20, align 4, !dbg !96      ; [debug line = 40:3]
  %21 = load i32* %i, align 4, !dbg !97           ; [#uses=1 type=i32] [debug line = 41:3]
  %22 = mul nsw i32 %21, 4, !dbg !97              ; [#uses=1 type=i32] [debug line = 41:3]
  %23 = add nsw i32 %22, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 41:3]
  %24 = load i32** %2, align 4, !dbg !97          ; [#uses=1 type=i32*] [debug line = 41:3]
  %25 = getelementptr inbounds i32* %24, i32 %23, !dbg !97 ; [#uses=1 type=i32*] [debug line = 41:3]
  %26 = load i32* %25, align 4, !dbg !97          ; [#uses=1 type=i32] [debug line = 41:3]
  %27 = load i32* %i, align 4, !dbg !97           ; [#uses=1 type=i32] [debug line = 41:3]
  %28 = mul nsw i32 %27, 4, !dbg !97              ; [#uses=1 type=i32] [debug line = 41:3]
  %29 = add nsw i32 %28, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 41:3]
  %30 = load i32** %1, align 4, !dbg !97          ; [#uses=1 type=i32*] [debug line = 41:3]
  %31 = getelementptr inbounds i32* %30, i32 %29, !dbg !97 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %26, i32* %31, align 4, !dbg !97      ; [debug line = 41:3]
  %32 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 42:3]
  %33 = mul nsw i32 %32, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %34 = add nsw i32 %33, 2, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %35 = load i32** %2, align 4, !dbg !98          ; [#uses=1 type=i32*] [debug line = 42:3]
  %36 = getelementptr inbounds i32* %35, i32 %34, !dbg !98 ; [#uses=1 type=i32*] [debug line = 42:3]
  %37 = load i32* %36, align 4, !dbg !98          ; [#uses=1 type=i32] [debug line = 42:3]
  %38 = load i32* %i, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 42:3]
  %39 = mul nsw i32 %38, 4, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %40 = add nsw i32 %39, 2, !dbg !98              ; [#uses=1 type=i32] [debug line = 42:3]
  %41 = load i32** %1, align 4, !dbg !98          ; [#uses=1 type=i32*] [debug line = 42:3]
  %42 = getelementptr inbounds i32* %41, i32 %40, !dbg !98 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %37, i32* %42, align 4, !dbg !98      ; [debug line = 42:3]
  %43 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %44 = mul nsw i32 %43, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %45 = add nsw i32 %44, 3, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %46 = load i32** %2, align 4, !dbg !99          ; [#uses=1 type=i32*] [debug line = 43:3]
  %47 = getelementptr inbounds i32* %46, i32 %45, !dbg !99 ; [#uses=1 type=i32*] [debug line = 43:3]
  %48 = load i32* %47, align 4, !dbg !99          ; [#uses=1 type=i32] [debug line = 43:3]
  %49 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 43:3]
  %50 = mul nsw i32 %49, 4, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %51 = add nsw i32 %50, 3, !dbg !99              ; [#uses=1 type=i32] [debug line = 43:3]
  %52 = load i32** %1, align 4, !dbg !99          ; [#uses=1 type=i32*] [debug line = 43:3]
  %53 = getelementptr inbounds i32* %52, i32 %51, !dbg !99 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %48, i32* %53, align 4, !dbg !99      ; [debug line = 43:3]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !100 ; [debug line = 44:2]
  br label %54, !dbg !100                         ; [debug line = 44:2]

; <label>:54                                      ; preds = %11
  %55 = load i32* %i, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 38:35]
  %56 = add nsw i32 %55, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 38:35]
  store i32 %56, i32* %i, align 4, !dbg !101      ; [debug line = 38:35]
  br label %8, !dbg !101                          ; [debug line = 38:35]

; <label>:57                                      ; preds = %8
  br label %58, !dbg !102                         ; [debug line = 44:2]

; <label>:58                                      ; preds = %57
  br label %59, !dbg !103                         ; [debug line = 47:22]

; <label>:59                                      ; preds = %135, %58
  %60 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 47:22]
  %61 = icmp slt i32 %60, 44, !dbg !103           ; [#uses=1 type=i1] [debug line = 47:22]
  br i1 %61, label %62, label %202, !dbg !103     ; [debug line = 47:22]

; <label>:62                                      ; preds = %59
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !104 ; [debug line = 48:3]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !104 ; [debug line = 48:3]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !106 ; [debug line = 49:1]
  store i32 0, i32* %j, align 4, !dbg !107        ; [debug line = 49:10]
  br label %63, !dbg !107                         ; [debug line = 49:10]

; <label>:63                                      ; preds = %78, %62
  %64 = load i32* %j, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 49:10]
  %65 = icmp slt i32 %64, 4, !dbg !107            ; [#uses=1 type=i1] [debug line = 49:10]
  br i1 %65, label %66, label %81, !dbg !107      ; [debug line = 49:10]

; <label>:66                                      ; preds = %63
  %67 = load i32* %i, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 51:7]
  %68 = sub nsw i32 %67, 1, !dbg !109             ; [#uses=1 type=i32] [debug line = 51:7]
  %69 = mul nsw i32 %68, 4, !dbg !109             ; [#uses=1 type=i32] [debug line = 51:7]
  %70 = load i32* %j, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 51:7]
  %71 = add nsw i32 %69, %70, !dbg !109           ; [#uses=1 type=i32] [debug line = 51:7]
  %72 = load i32** %1, align 4, !dbg !109         ; [#uses=1 type=i32*] [debug line = 51:7]
  %73 = getelementptr inbounds i32* %72, i32 %71, !dbg !109 ; [#uses=1 type=i32*] [debug line = 51:7]
  %74 = load i32* %73, align 4, !dbg !109         ; [#uses=1 type=i32] [debug line = 51:7]
  %75 = trunc i32 %74 to i8, !dbg !109            ; [#uses=1 type=i8] [debug line = 51:7]
  %76 = load i32* %j, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 51:7]
  %77 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 %76, !dbg !109 ; [#uses=1 type=i8*] [debug line = 51:7]
  store i8 %75, i8* %77, align 1, !dbg !109       ; [debug line = 51:7]
  br label %78, !dbg !111                         ; [debug line = 52:6]

; <label>:78                                      ; preds = %66
  %79 = load i32* %j, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 49:18]
  %80 = add nsw i32 %79, 1, !dbg !112             ; [#uses=1 type=i32] [debug line = 49:18]
  store i32 %80, i32* %j, align 4, !dbg !112      ; [debug line = 49:18]
  br label %63, !dbg !112                         ; [debug line = 49:18]

; <label>:81                                      ; preds = %63
  %82 = load i32* %i, align 4, !dbg !113          ; [#uses=1 type=i32] [debug line = 53:6]
  %83 = srem i32 %82, 4, !dbg !113                ; [#uses=1 type=i32] [debug line = 53:6]
  %84 = icmp eq i32 %83, 0, !dbg !113             ; [#uses=1 type=i1] [debug line = 53:6]
  br i1 %84, label %85, label %134, !dbg !113     ; [debug line = 53:6]

; <label>:85                                      ; preds = %81
  %86 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !114 ; [#uses=1 type=i8*] [debug line = 55:8]
  %87 = load i8* %86, align 1, !dbg !114          ; [#uses=1 type=i8] [debug line = 55:8]
  store i8 %87, i8* %k, align 1, !dbg !114        ; [debug line = 55:8]
  %88 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !116 ; [#uses=1 type=i8*] [debug line = 56:8]
  %89 = load i8* %88, align 1, !dbg !116          ; [#uses=1 type=i8] [debug line = 56:8]
  %90 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !116 ; [#uses=1 type=i8*] [debug line = 56:8]
  store i8 %89, i8* %90, align 1, !dbg !116       ; [debug line = 56:8]
  %91 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !117 ; [#uses=1 type=i8*] [debug line = 57:8]
  %92 = load i8* %91, align 1, !dbg !117          ; [#uses=1 type=i8] [debug line = 57:8]
  %93 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !117 ; [#uses=1 type=i8*] [debug line = 57:8]
  store i8 %92, i8* %93, align 1, !dbg !117       ; [debug line = 57:8]
  %94 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !118 ; [#uses=1 type=i8*] [debug line = 58:8]
  %95 = load i8* %94, align 1, !dbg !118          ; [#uses=1 type=i8] [debug line = 58:8]
  %96 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !118 ; [#uses=1 type=i8*] [debug line = 58:8]
  store i8 %95, i8* %96, align 1, !dbg !118       ; [debug line = 58:8]
  %97 = load i8* %k, align 1, !dbg !119           ; [#uses=1 type=i8] [debug line = 59:8]
  %98 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !119 ; [#uses=1 type=i8*] [debug line = 59:8]
  store i8 %97, i8* %98, align 1, !dbg !119       ; [debug line = 59:8]
  %99 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 60:16]
  %100 = load i8* %99, align 1, !dbg !120         ; [#uses=1 type=i8] [debug line = 60:16]
  %101 = zext i8 %100 to i32, !dbg !120           ; [#uses=1 type=i32] [debug line = 60:16]
  %102 = call i32 @getSBoxValue(i32 %101), !dbg !120 ; [#uses=1 type=i32] [debug line = 60:16]
  %103 = trunc i32 %102 to i8, !dbg !120          ; [#uses=1 type=i8] [debug line = 60:16]
  %104 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 60:16]
  store i8 %103, i8* %104, align 1, !dbg !120     ; [debug line = 60:16]
  %105 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 61:16]
  %106 = load i8* %105, align 1, !dbg !121        ; [#uses=1 type=i8] [debug line = 61:16]
  %107 = zext i8 %106 to i32, !dbg !121           ; [#uses=1 type=i32] [debug line = 61:16]
  %108 = call i32 @getSBoxValue(i32 %107), !dbg !121 ; [#uses=1 type=i32] [debug line = 61:16]
  %109 = trunc i32 %108 to i8, !dbg !121          ; [#uses=1 type=i8] [debug line = 61:16]
  %110 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i8*] [debug line = 61:16]
  store i8 %109, i8* %110, align 1, !dbg !121     ; [debug line = 61:16]
  %111 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 62:16]
  %112 = load i8* %111, align 1, !dbg !122        ; [#uses=1 type=i8] [debug line = 62:16]
  %113 = zext i8 %112 to i32, !dbg !122           ; [#uses=1 type=i32] [debug line = 62:16]
  %114 = call i32 @getSBoxValue(i32 %113), !dbg !122 ; [#uses=1 type=i32] [debug line = 62:16]
  %115 = trunc i32 %114 to i8, !dbg !122          ; [#uses=1 type=i8] [debug line = 62:16]
  %116 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i8*] [debug line = 62:16]
  store i8 %115, i8* %116, align 1, !dbg !122     ; [debug line = 62:16]
  %117 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 63:16]
  %118 = load i8* %117, align 1, !dbg !123        ; [#uses=1 type=i8] [debug line = 63:16]
  %119 = zext i8 %118 to i32, !dbg !123           ; [#uses=1 type=i32] [debug line = 63:16]
  %120 = call i32 @getSBoxValue(i32 %119), !dbg !123 ; [#uses=1 type=i32] [debug line = 63:16]
  %121 = trunc i32 %120 to i8, !dbg !123          ; [#uses=1 type=i8] [debug line = 63:16]
  %122 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !123 ; [#uses=1 type=i8*] [debug line = 63:16]
  store i8 %121, i8* %122, align 1, !dbg !123     ; [debug line = 63:16]
  %123 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 64:7]
  %124 = load i8* %123, align 1, !dbg !124        ; [#uses=1 type=i8] [debug line = 64:7]
  %125 = zext i8 %124 to i32, !dbg !124           ; [#uses=1 type=i32] [debug line = 64:7]
  %126 = load i32* %i, align 4, !dbg !124         ; [#uses=1 type=i32] [debug line = 64:7]
  %127 = sdiv i32 %126, 4, !dbg !124              ; [#uses=1 type=i32] [debug line = 64:7]
  %128 = load i32** %3, align 4, !dbg !124        ; [#uses=1 type=i32*] [debug line = 64:7]
  %129 = getelementptr inbounds i32* %128, i32 %127, !dbg !124 ; [#uses=1 type=i32*] [debug line = 64:7]
  %130 = load i32* %129, align 4, !dbg !124       ; [#uses=1 type=i32] [debug line = 64:7]
  %131 = xor i32 %125, %130, !dbg !124            ; [#uses=1 type=i32] [debug line = 64:7]
  %132 = trunc i32 %131 to i8, !dbg !124          ; [#uses=1 type=i8] [debug line = 64:7]
  %133 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i8*] [debug line = 64:7]
  store i8 %132, i8* %133, align 1, !dbg !124     ; [debug line = 64:7]
  br label %135, !dbg !125                        ; [debug line = 65:6]

; <label>:134                                     ; preds = %81
  br label %135

; <label>:135                                     ; preds = %134, %85
  %136 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 73:6]
  %137 = sub nsw i32 %136, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %138 = mul nsw i32 %137, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %139 = add nsw i32 %138, 0, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %140 = load i32** %1, align 4, !dbg !126        ; [#uses=1 type=i32*] [debug line = 73:6]
  %141 = getelementptr inbounds i32* %140, i32 %139, !dbg !126 ; [#uses=1 type=i32*] [debug line = 73:6]
  %142 = load i32* %141, align 4, !dbg !126       ; [#uses=1 type=i32] [debug line = 73:6]
  %143 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !126 ; [#uses=1 type=i8*] [debug line = 73:6]
  %144 = load i8* %143, align 1, !dbg !126        ; [#uses=1 type=i8] [debug line = 73:6]
  %145 = zext i8 %144 to i32, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %146 = xor i32 %142, %145, !dbg !126            ; [#uses=1 type=i32] [debug line = 73:6]
  %147 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 73:6]
  %148 = mul nsw i32 %147, 4, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %149 = add nsw i32 %148, 0, !dbg !126           ; [#uses=1 type=i32] [debug line = 73:6]
  %150 = load i32** %1, align 4, !dbg !126        ; [#uses=1 type=i32*] [debug line = 73:6]
  %151 = getelementptr inbounds i32* %150, i32 %149, !dbg !126 ; [#uses=1 type=i32*] [debug line = 73:6]
  store i32 %146, i32* %151, align 4, !dbg !126   ; [debug line = 73:6]
  %152 = load i32* %i, align 4, !dbg !127         ; [#uses=1 type=i32] [debug line = 74:6]
  %153 = sub nsw i32 %152, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %154 = mul nsw i32 %153, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %155 = add nsw i32 %154, 1, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %156 = load i32** %1, align 4, !dbg !127        ; [#uses=1 type=i32*] [debug line = 74:6]
  %157 = getelementptr inbounds i32* %156, i32 %155, !dbg !127 ; [#uses=1 type=i32*] [debug line = 74:6]
  %158 = load i32* %157, align 4, !dbg !127       ; [#uses=1 type=i32] [debug line = 74:6]
  %159 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !127 ; [#uses=1 type=i8*] [debug line = 74:6]
  %160 = load i8* %159, align 1, !dbg !127        ; [#uses=1 type=i8] [debug line = 74:6]
  %161 = zext i8 %160 to i32, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %162 = xor i32 %158, %161, !dbg !127            ; [#uses=1 type=i32] [debug line = 74:6]
  %163 = load i32* %i, align 4, !dbg !127         ; [#uses=1 type=i32] [debug line = 74:6]
  %164 = mul nsw i32 %163, 4, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %165 = add nsw i32 %164, 1, !dbg !127           ; [#uses=1 type=i32] [debug line = 74:6]
  %166 = load i32** %1, align 4, !dbg !127        ; [#uses=1 type=i32*] [debug line = 74:6]
  %167 = getelementptr inbounds i32* %166, i32 %165, !dbg !127 ; [#uses=1 type=i32*] [debug line = 74:6]
  store i32 %162, i32* %167, align 4, !dbg !127   ; [debug line = 74:6]
  %168 = load i32* %i, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 75:6]
  %169 = sub nsw i32 %168, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %170 = mul nsw i32 %169, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %171 = add nsw i32 %170, 2, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %172 = load i32** %1, align 4, !dbg !128        ; [#uses=1 type=i32*] [debug line = 75:6]
  %173 = getelementptr inbounds i32* %172, i32 %171, !dbg !128 ; [#uses=1 type=i32*] [debug line = 75:6]
  %174 = load i32* %173, align 4, !dbg !128       ; [#uses=1 type=i32] [debug line = 75:6]
  %175 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !128 ; [#uses=1 type=i8*] [debug line = 75:6]
  %176 = load i8* %175, align 1, !dbg !128        ; [#uses=1 type=i8] [debug line = 75:6]
  %177 = zext i8 %176 to i32, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %178 = xor i32 %174, %177, !dbg !128            ; [#uses=1 type=i32] [debug line = 75:6]
  %179 = load i32* %i, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 75:6]
  %180 = mul nsw i32 %179, 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %181 = add nsw i32 %180, 2, !dbg !128           ; [#uses=1 type=i32] [debug line = 75:6]
  %182 = load i32** %1, align 4, !dbg !128        ; [#uses=1 type=i32*] [debug line = 75:6]
  %183 = getelementptr inbounds i32* %182, i32 %181, !dbg !128 ; [#uses=1 type=i32*] [debug line = 75:6]
  store i32 %178, i32* %183, align 4, !dbg !128   ; [debug line = 75:6]
  %184 = load i32* %i, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 76:6]
  %185 = sub nsw i32 %184, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %186 = mul nsw i32 %185, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %187 = add nsw i32 %186, 3, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %188 = load i32** %1, align 4, !dbg !129        ; [#uses=1 type=i32*] [debug line = 76:6]
  %189 = getelementptr inbounds i32* %188, i32 %187, !dbg !129 ; [#uses=1 type=i32*] [debug line = 76:6]
  %190 = load i32* %189, align 4, !dbg !129       ; [#uses=1 type=i32] [debug line = 76:6]
  %191 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !129 ; [#uses=1 type=i8*] [debug line = 76:6]
  %192 = load i8* %191, align 1, !dbg !129        ; [#uses=1 type=i8] [debug line = 76:6]
  %193 = zext i8 %192 to i32, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %194 = xor i32 %190, %193, !dbg !129            ; [#uses=1 type=i32] [debug line = 76:6]
  %195 = load i32* %i, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 76:6]
  %196 = mul nsw i32 %195, 4, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %197 = add nsw i32 %196, 3, !dbg !129           ; [#uses=1 type=i32] [debug line = 76:6]
  %198 = load i32** %1, align 4, !dbg !129        ; [#uses=1 type=i32*] [debug line = 76:6]
  %199 = getelementptr inbounds i32* %198, i32 %197, !dbg !129 ; [#uses=1 type=i32*] [debug line = 76:6]
  store i32 %194, i32* %199, align 4, !dbg !129   ; [debug line = 76:6]
  %200 = load i32* %i, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 77:6]
  %201 = add nsw i32 %200, 1, !dbg !130           ; [#uses=1 type=i32] [debug line = 77:6]
  store i32 %201, i32* %i, align 4, !dbg !130     ; [debug line = 77:6]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 78:2]
  br label %59, !dbg !131                         ; [debug line = 78:2]

; <label>:202                                     ; preds = %59
  ret void, !dbg !132                             ; [debug line = 79:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
define void @AddRoundKey(i32 %round, [4 x i32]* %state, i32* %RoundKey) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca [4 x i32]*, align 4                 ; [#uses=3 type=[4 x i32]**]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32 %round, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !133), !dbg !134 ; [debug line = 83:22] [debug variable = round]
  store [4 x i32]* %state, [4 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %2}, metadata !135), !dbg !136 ; [debug line = 83:33] [debug variable = state]
  store i32* %RoundKey, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !137), !dbg !138 ; [debug line = 83:50] [debug variable = RoundKey]
  %4 = load i32** %3, align 4, !dbg !139          ; [#uses=1 type=i32*] [debug line = 84:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 240) nounwind, !dbg !139 ; [debug line = 84:2]
  %5 = load [4 x i32]** %2, align 4, !dbg !141    ; [#uses=1 type=[4 x i32]*] [debug line = 84:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %5, i32 4) nounwind, !dbg !141 ; [debug line = 84:39]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !142), !dbg !143 ; [debug line = 85:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !144), !dbg !145 ; [debug line = 85:8] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !146        ; [debug line = 86:6]
  br label %6, !dbg !146                          ; [debug line = 86:6]

; <label>:6                                       ; preds = %37, %0
  %7 = load i32* %i, align 4, !dbg !146           ; [#uses=1 type=i32] [debug line = 86:6]
  %8 = icmp slt i32 %7, 4, !dbg !146              ; [#uses=1 type=i1] [debug line = 86:6]
  br i1 %8, label %9, label %40, !dbg !146        ; [debug line = 86:6]

; <label>:9                                       ; preds = %6
  br label %10, !dbg !148                         ; [debug line = 87:2]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %j, align 4, !dbg !150        ; [debug line = 88:27]
  br label %11, !dbg !150                         ; [debug line = 88:27]

; <label>:11                                      ; preds = %33, %10
  %12 = load i32* %j, align 4, !dbg !150          ; [#uses=1 type=i32] [debug line = 88:27]
  %13 = icmp slt i32 %12, 4, !dbg !150            ; [#uses=1 type=i1] [debug line = 88:27]
  br i1 %13, label %14, label %36, !dbg !150      ; [debug line = 88:27]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 89:4]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 89:4]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !154 ; [debug line = 90:1]
  %15 = load i32* %1, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 90:4]
  %16 = mul nsw i32 %15, 4, !dbg !155             ; [#uses=1 type=i32] [debug line = 90:4]
  %17 = mul nsw i32 %16, 4, !dbg !155             ; [#uses=1 type=i32] [debug line = 90:4]
  %18 = load i32* %i, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 90:4]
  %19 = mul nsw i32 %18, 4, !dbg !155             ; [#uses=1 type=i32] [debug line = 90:4]
  %20 = add nsw i32 %17, %19, !dbg !155           ; [#uses=1 type=i32] [debug line = 90:4]
  %21 = load i32* %j, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 90:4]
  %22 = add nsw i32 %20, %21, !dbg !155           ; [#uses=1 type=i32] [debug line = 90:4]
  %23 = load i32** %3, align 4, !dbg !155         ; [#uses=1 type=i32*] [debug line = 90:4]
  %24 = getelementptr inbounds i32* %23, i32 %22, !dbg !155 ; [#uses=1 type=i32*] [debug line = 90:4]
  %25 = load i32* %24, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 90:4]
  %26 = load i32* %i, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 90:4]
  %27 = load i32* %j, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 90:4]
  %28 = load [4 x i32]** %2, align 4, !dbg !155   ; [#uses=1 type=[4 x i32]*] [debug line = 90:4]
  %29 = getelementptr inbounds [4 x i32]* %28, i32 %27, !dbg !155 ; [#uses=1 type=[4 x i32]*] [debug line = 90:4]
  %30 = getelementptr inbounds [4 x i32]* %29, i32 0, i32 %26, !dbg !155 ; [#uses=2 type=i32*] [debug line = 90:4]
  %31 = load i32* %30, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 90:4]
  %32 = xor i32 %31, %25, !dbg !155               ; [#uses=1 type=i32] [debug line = 90:4]
  store i32 %32, i32* %30, align 4, !dbg !155     ; [debug line = 90:4]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 91:3]
  br label %33, !dbg !156                         ; [debug line = 91:3]

; <label>:33                                      ; preds = %14
  %34 = load i32* %j, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 88:35]
  %35 = add nsw i32 %34, 1, !dbg !157             ; [#uses=1 type=i32] [debug line = 88:35]
  store i32 %35, i32* %j, align 4, !dbg !157      ; [debug line = 88:35]
  br label %11, !dbg !157                         ; [debug line = 88:35]

; <label>:36                                      ; preds = %11
  br label %37, !dbg !158                         ; [debug line = 92:2]

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 86:14]
  %39 = add nsw i32 %38, 1, !dbg !159             ; [#uses=1 type=i32] [debug line = 86:14]
  store i32 %39, i32* %i, align 4, !dbg !159      ; [debug line = 86:14]
  br label %6, !dbg !159                          ; [debug line = 86:14]

; <label>:40                                      ; preds = %6
  ret void, !dbg !160                             ; [debug line = 93:1]
}

; [#uses=2]
define void @SubBytes([4 x i32]* %state, i32 %round, i32* %RoundKey) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=46 type=[4 x i32]**]
  %2 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %3 = alloca i32*, align 4                       ; [#uses=4 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=32 type=i32*]
  %a = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=18 type=i32*]
  %temp = alloca i8, align 1                      ; [#uses=8 type=i8*]
  %Tmp = alloca i8, align 1                       ; [#uses=5 type=i8*]
  %Tm = alloca i8, align 1                        ; [#uses=20 type=i8*]
  %t = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !161), !dbg !162 ; [debug line = 97:20] [debug variable = state]
  store i32 %round, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !163), !dbg !164 ; [debug line = 97:36] [debug variable = round]
  store i32* %RoundKey, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !165), !dbg !166 ; [debug line = 97:47] [debug variable = RoundKey]
  %4 = load i32** %3, align 4, !dbg !167          ; [#uses=1 type=i32*] [debug line = 98:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 240) nounwind, !dbg !167 ; [debug line = 98:2]
  %5 = load [4 x i32]** %1, align 4, !dbg !169    ; [#uses=1 type=[4 x i32]*] [debug line = 98:39]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %5, i32 4) nounwind, !dbg !169 ; [debug line = 98:39]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !170), !dbg !171 ; [debug line = 99:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !172), !dbg !173 ; [debug line = 99:8] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !174), !dbg !175 ; [debug line = 99:10] [debug variable = j]
  store i32 0, i32* %a, align 4, !dbg !176        ; [debug line = 100:6]
  br label %6, !dbg !176                          ; [debug line = 100:6]

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %a, align 4, !dbg !176           ; [#uses=1 type=i32] [debug line = 100:6]
  %8 = icmp slt i32 %7, 4, !dbg !176              ; [#uses=1 type=i1] [debug line = 100:6]
  br i1 %8, label %9, label %33, !dbg !176        ; [debug line = 100:6]

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !178        ; [debug line = 102:7]
  br label %10, !dbg !178                         ; [debug line = 102:7]

; <label>:10                                      ; preds = %26, %9
  %11 = load i32* %j, align 4, !dbg !178          ; [#uses=1 type=i32] [debug line = 102:7]
  %12 = icmp slt i32 %11, 4, !dbg !178            ; [#uses=1 type=i1] [debug line = 102:7]
  br i1 %12, label %13, label %29, !dbg !178      ; [debug line = 102:7]

; <label>:13                                      ; preds = %10
  %14 = load i32* %j, align 4, !dbg !181          ; [#uses=1 type=i32] [debug line = 104:18]
  %15 = load i32* %a, align 4, !dbg !181          ; [#uses=1 type=i32] [debug line = 104:18]
  %16 = load [4 x i32]** %1, align 4, !dbg !181   ; [#uses=1 type=[4 x i32]*] [debug line = 104:18]
  %17 = getelementptr inbounds [4 x i32]* %16, i32 %15, !dbg !181 ; [#uses=1 type=[4 x i32]*] [debug line = 104:18]
  %18 = getelementptr inbounds [4 x i32]* %17, i32 0, i32 %14, !dbg !181 ; [#uses=1 type=i32*] [debug line = 104:18]
  %19 = load i32* %18, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 104:18]
  %20 = call i32 @getSBoxValue(i32 %19), !dbg !181 ; [#uses=1 type=i32] [debug line = 104:18]
  %21 = load i32* %j, align 4, !dbg !181          ; [#uses=1 type=i32] [debug line = 104:18]
  %22 = load i32* %a, align 4, !dbg !181          ; [#uses=1 type=i32] [debug line = 104:18]
  %23 = load [4 x i32]** %1, align 4, !dbg !181   ; [#uses=1 type=[4 x i32]*] [debug line = 104:18]
  %24 = getelementptr inbounds [4 x i32]* %23, i32 %22, !dbg !181 ; [#uses=1 type=[4 x i32]*] [debug line = 104:18]
  %25 = getelementptr inbounds [4 x i32]* %24, i32 0, i32 %21, !dbg !181 ; [#uses=1 type=i32*] [debug line = 104:18]
  store i32 %20, i32* %25, align 4, !dbg !181     ; [debug line = 104:18]
  br label %26, !dbg !183                         ; [debug line = 106:3]

; <label>:26                                      ; preds = %13
  %27 = load i32* %j, align 4, !dbg !184          ; [#uses=1 type=i32] [debug line = 102:15]
  %28 = add nsw i32 %27, 1, !dbg !184             ; [#uses=1 type=i32] [debug line = 102:15]
  store i32 %28, i32* %j, align 4, !dbg !184      ; [debug line = 102:15]
  br label %10, !dbg !184                         ; [debug line = 102:15]

; <label>:29                                      ; preds = %10
  br label %30, !dbg !185                         ; [debug line = 107:2]

; <label>:30                                      ; preds = %29
  %31 = load i32* %a, align 4, !dbg !186          ; [#uses=1 type=i32] [debug line = 100:14]
  %32 = add nsw i32 %31, 1, !dbg !186             ; [#uses=1 type=i32] [debug line = 100:14]
  store i32 %32, i32* %a, align 4, !dbg !186      ; [debug line = 100:14]
  br label %6, !dbg !186                          ; [debug line = 100:14]

; <label>:33                                      ; preds = %6
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !187), !dbg !188 ; [debug line = 108:16] [debug variable = temp]
  %34 = load [4 x i32]** %1, align 4, !dbg !189   ; [#uses=1 type=[4 x i32]*] [debug line = 110:3]
  %35 = getelementptr inbounds [4 x i32]* %34, i32 1, !dbg !189 ; [#uses=1 type=[4 x i32]*] [debug line = 110:3]
  %36 = getelementptr inbounds [4 x i32]* %35, i32 0, i32 0, !dbg !189 ; [#uses=1 type=i32*] [debug line = 110:3]
  %37 = load i32* %36, align 4, !dbg !189         ; [#uses=1 type=i32] [debug line = 110:3]
  %38 = trunc i32 %37 to i8, !dbg !189            ; [#uses=1 type=i8] [debug line = 110:3]
  store i8 %38, i8* %temp, align 1, !dbg !189     ; [debug line = 110:3]
  %39 = load [4 x i32]** %1, align 4, !dbg !190   ; [#uses=1 type=[4 x i32]*] [debug line = 111:3]
  %40 = getelementptr inbounds [4 x i32]* %39, i32 1, !dbg !190 ; [#uses=1 type=[4 x i32]*] [debug line = 111:3]
  %41 = getelementptr inbounds [4 x i32]* %40, i32 0, i32 1, !dbg !190 ; [#uses=1 type=i32*] [debug line = 111:3]
  %42 = load i32* %41, align 4, !dbg !190         ; [#uses=1 type=i32] [debug line = 111:3]
  %43 = load [4 x i32]** %1, align 4, !dbg !190   ; [#uses=1 type=[4 x i32]*] [debug line = 111:3]
  %44 = getelementptr inbounds [4 x i32]* %43, i32 1, !dbg !190 ; [#uses=1 type=[4 x i32]*] [debug line = 111:3]
  %45 = getelementptr inbounds [4 x i32]* %44, i32 0, i32 0, !dbg !190 ; [#uses=1 type=i32*] [debug line = 111:3]
  store i32 %42, i32* %45, align 4, !dbg !190     ; [debug line = 111:3]
  %46 = load [4 x i32]** %1, align 4, !dbg !191   ; [#uses=1 type=[4 x i32]*] [debug line = 112:3]
  %47 = getelementptr inbounds [4 x i32]* %46, i32 1, !dbg !191 ; [#uses=1 type=[4 x i32]*] [debug line = 112:3]
  %48 = getelementptr inbounds [4 x i32]* %47, i32 0, i32 2, !dbg !191 ; [#uses=1 type=i32*] [debug line = 112:3]
  %49 = load i32* %48, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 112:3]
  %50 = load [4 x i32]** %1, align 4, !dbg !191   ; [#uses=1 type=[4 x i32]*] [debug line = 112:3]
  %51 = getelementptr inbounds [4 x i32]* %50, i32 1, !dbg !191 ; [#uses=1 type=[4 x i32]*] [debug line = 112:3]
  %52 = getelementptr inbounds [4 x i32]* %51, i32 0, i32 1, !dbg !191 ; [#uses=1 type=i32*] [debug line = 112:3]
  store i32 %49, i32* %52, align 4, !dbg !191     ; [debug line = 112:3]
  %53 = load [4 x i32]** %1, align 4, !dbg !192   ; [#uses=1 type=[4 x i32]*] [debug line = 113:3]
  %54 = getelementptr inbounds [4 x i32]* %53, i32 1, !dbg !192 ; [#uses=1 type=[4 x i32]*] [debug line = 113:3]
  %55 = getelementptr inbounds [4 x i32]* %54, i32 0, i32 3, !dbg !192 ; [#uses=1 type=i32*] [debug line = 113:3]
  %56 = load i32* %55, align 4, !dbg !192         ; [#uses=1 type=i32] [debug line = 113:3]
  %57 = load [4 x i32]** %1, align 4, !dbg !192   ; [#uses=1 type=[4 x i32]*] [debug line = 113:3]
  %58 = getelementptr inbounds [4 x i32]* %57, i32 1, !dbg !192 ; [#uses=1 type=[4 x i32]*] [debug line = 113:3]
  %59 = getelementptr inbounds [4 x i32]* %58, i32 0, i32 2, !dbg !192 ; [#uses=1 type=i32*] [debug line = 113:3]
  store i32 %56, i32* %59, align 4, !dbg !192     ; [debug line = 113:3]
  %60 = load i8* %temp, align 1, !dbg !193        ; [#uses=1 type=i8] [debug line = 114:3]
  %61 = zext i8 %60 to i32, !dbg !193             ; [#uses=1 type=i32] [debug line = 114:3]
  %62 = load [4 x i32]** %1, align 4, !dbg !193   ; [#uses=1 type=[4 x i32]*] [debug line = 114:3]
  %63 = getelementptr inbounds [4 x i32]* %62, i32 1, !dbg !193 ; [#uses=1 type=[4 x i32]*] [debug line = 114:3]
  %64 = getelementptr inbounds [4 x i32]* %63, i32 0, i32 3, !dbg !193 ; [#uses=1 type=i32*] [debug line = 114:3]
  store i32 %61, i32* %64, align 4, !dbg !193     ; [debug line = 114:3]
  %65 = load [4 x i32]** %1, align 4, !dbg !194   ; [#uses=1 type=[4 x i32]*] [debug line = 116:3]
  %66 = getelementptr inbounds [4 x i32]* %65, i32 2, !dbg !194 ; [#uses=1 type=[4 x i32]*] [debug line = 116:3]
  %67 = getelementptr inbounds [4 x i32]* %66, i32 0, i32 0, !dbg !194 ; [#uses=1 type=i32*] [debug line = 116:3]
  %68 = load i32* %67, align 4, !dbg !194         ; [#uses=1 type=i32] [debug line = 116:3]
  %69 = trunc i32 %68 to i8, !dbg !194            ; [#uses=1 type=i8] [debug line = 116:3]
  store i8 %69, i8* %temp, align 1, !dbg !194     ; [debug line = 116:3]
  %70 = load [4 x i32]** %1, align 4, !dbg !195   ; [#uses=1 type=[4 x i32]*] [debug line = 117:3]
  %71 = getelementptr inbounds [4 x i32]* %70, i32 2, !dbg !195 ; [#uses=1 type=[4 x i32]*] [debug line = 117:3]
  %72 = getelementptr inbounds [4 x i32]* %71, i32 0, i32 2, !dbg !195 ; [#uses=1 type=i32*] [debug line = 117:3]
  %73 = load i32* %72, align 4, !dbg !195         ; [#uses=1 type=i32] [debug line = 117:3]
  %74 = load [4 x i32]** %1, align 4, !dbg !195   ; [#uses=1 type=[4 x i32]*] [debug line = 117:3]
  %75 = getelementptr inbounds [4 x i32]* %74, i32 2, !dbg !195 ; [#uses=1 type=[4 x i32]*] [debug line = 117:3]
  %76 = getelementptr inbounds [4 x i32]* %75, i32 0, i32 0, !dbg !195 ; [#uses=1 type=i32*] [debug line = 117:3]
  store i32 %73, i32* %76, align 4, !dbg !195     ; [debug line = 117:3]
  %77 = load i8* %temp, align 1, !dbg !196        ; [#uses=1 type=i8] [debug line = 118:3]
  %78 = zext i8 %77 to i32, !dbg !196             ; [#uses=1 type=i32] [debug line = 118:3]
  %79 = load [4 x i32]** %1, align 4, !dbg !196   ; [#uses=1 type=[4 x i32]*] [debug line = 118:3]
  %80 = getelementptr inbounds [4 x i32]* %79, i32 2, !dbg !196 ; [#uses=1 type=[4 x i32]*] [debug line = 118:3]
  %81 = getelementptr inbounds [4 x i32]* %80, i32 0, i32 2, !dbg !196 ; [#uses=1 type=i32*] [debug line = 118:3]
  store i32 %78, i32* %81, align 4, !dbg !196     ; [debug line = 118:3]
  %82 = load [4 x i32]** %1, align 4, !dbg !197   ; [#uses=1 type=[4 x i32]*] [debug line = 120:3]
  %83 = getelementptr inbounds [4 x i32]* %82, i32 2, !dbg !197 ; [#uses=1 type=[4 x i32]*] [debug line = 120:3]
  %84 = getelementptr inbounds [4 x i32]* %83, i32 0, i32 1, !dbg !197 ; [#uses=1 type=i32*] [debug line = 120:3]
  %85 = load i32* %84, align 4, !dbg !197         ; [#uses=1 type=i32] [debug line = 120:3]
  %86 = trunc i32 %85 to i8, !dbg !197            ; [#uses=1 type=i8] [debug line = 120:3]
  store i8 %86, i8* %temp, align 1, !dbg !197     ; [debug line = 120:3]
  %87 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 121:3]
  %88 = getelementptr inbounds [4 x i32]* %87, i32 2, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 121:3]
  %89 = getelementptr inbounds [4 x i32]* %88, i32 0, i32 3, !dbg !198 ; [#uses=1 type=i32*] [debug line = 121:3]
  %90 = load i32* %89, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 121:3]
  %91 = load [4 x i32]** %1, align 4, !dbg !198   ; [#uses=1 type=[4 x i32]*] [debug line = 121:3]
  %92 = getelementptr inbounds [4 x i32]* %91, i32 2, !dbg !198 ; [#uses=1 type=[4 x i32]*] [debug line = 121:3]
  %93 = getelementptr inbounds [4 x i32]* %92, i32 0, i32 1, !dbg !198 ; [#uses=1 type=i32*] [debug line = 121:3]
  store i32 %90, i32* %93, align 4, !dbg !198     ; [debug line = 121:3]
  %94 = load i8* %temp, align 1, !dbg !199        ; [#uses=1 type=i8] [debug line = 122:3]
  %95 = zext i8 %94 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 122:3]
  %96 = load [4 x i32]** %1, align 4, !dbg !199   ; [#uses=1 type=[4 x i32]*] [debug line = 122:3]
  %97 = getelementptr inbounds [4 x i32]* %96, i32 2, !dbg !199 ; [#uses=1 type=[4 x i32]*] [debug line = 122:3]
  %98 = getelementptr inbounds [4 x i32]* %97, i32 0, i32 3, !dbg !199 ; [#uses=1 type=i32*] [debug line = 122:3]
  store i32 %95, i32* %98, align 4, !dbg !199     ; [debug line = 122:3]
  %99 = load [4 x i32]** %1, align 4, !dbg !200   ; [#uses=1 type=[4 x i32]*] [debug line = 124:3]
  %100 = getelementptr inbounds [4 x i32]* %99, i32 3, !dbg !200 ; [#uses=1 type=[4 x i32]*] [debug line = 124:3]
  %101 = getelementptr inbounds [4 x i32]* %100, i32 0, i32 0, !dbg !200 ; [#uses=1 type=i32*] [debug line = 124:3]
  %102 = load i32* %101, align 4, !dbg !200       ; [#uses=1 type=i32] [debug line = 124:3]
  %103 = trunc i32 %102 to i8, !dbg !200          ; [#uses=1 type=i8] [debug line = 124:3]
  store i8 %103, i8* %temp, align 1, !dbg !200    ; [debug line = 124:3]
  %104 = load [4 x i32]** %1, align 4, !dbg !201  ; [#uses=1 type=[4 x i32]*] [debug line = 125:3]
  %105 = getelementptr inbounds [4 x i32]* %104, i32 3, !dbg !201 ; [#uses=1 type=[4 x i32]*] [debug line = 125:3]
  %106 = getelementptr inbounds [4 x i32]* %105, i32 0, i32 3, !dbg !201 ; [#uses=1 type=i32*] [debug line = 125:3]
  %107 = load i32* %106, align 4, !dbg !201       ; [#uses=1 type=i32] [debug line = 125:3]
  %108 = load [4 x i32]** %1, align 4, !dbg !201  ; [#uses=1 type=[4 x i32]*] [debug line = 125:3]
  %109 = getelementptr inbounds [4 x i32]* %108, i32 3, !dbg !201 ; [#uses=1 type=[4 x i32]*] [debug line = 125:3]
  %110 = getelementptr inbounds [4 x i32]* %109, i32 0, i32 0, !dbg !201 ; [#uses=1 type=i32*] [debug line = 125:3]
  store i32 %107, i32* %110, align 4, !dbg !201   ; [debug line = 125:3]
  %111 = load [4 x i32]** %1, align 4, !dbg !202  ; [#uses=1 type=[4 x i32]*] [debug line = 126:3]
  %112 = getelementptr inbounds [4 x i32]* %111, i32 3, !dbg !202 ; [#uses=1 type=[4 x i32]*] [debug line = 126:3]
  %113 = getelementptr inbounds [4 x i32]* %112, i32 0, i32 2, !dbg !202 ; [#uses=1 type=i32*] [debug line = 126:3]
  %114 = load i32* %113, align 4, !dbg !202       ; [#uses=1 type=i32] [debug line = 126:3]
  %115 = load [4 x i32]** %1, align 4, !dbg !202  ; [#uses=1 type=[4 x i32]*] [debug line = 126:3]
  %116 = getelementptr inbounds [4 x i32]* %115, i32 3, !dbg !202 ; [#uses=1 type=[4 x i32]*] [debug line = 126:3]
  %117 = getelementptr inbounds [4 x i32]* %116, i32 0, i32 3, !dbg !202 ; [#uses=1 type=i32*] [debug line = 126:3]
  store i32 %114, i32* %117, align 4, !dbg !202   ; [debug line = 126:3]
  %118 = load [4 x i32]** %1, align 4, !dbg !203  ; [#uses=1 type=[4 x i32]*] [debug line = 127:3]
  %119 = getelementptr inbounds [4 x i32]* %118, i32 3, !dbg !203 ; [#uses=1 type=[4 x i32]*] [debug line = 127:3]
  %120 = getelementptr inbounds [4 x i32]* %119, i32 0, i32 1, !dbg !203 ; [#uses=1 type=i32*] [debug line = 127:3]
  %121 = load i32* %120, align 4, !dbg !203       ; [#uses=1 type=i32] [debug line = 127:3]
  %122 = load [4 x i32]** %1, align 4, !dbg !203  ; [#uses=1 type=[4 x i32]*] [debug line = 127:3]
  %123 = getelementptr inbounds [4 x i32]* %122, i32 3, !dbg !203 ; [#uses=1 type=[4 x i32]*] [debug line = 127:3]
  %124 = getelementptr inbounds [4 x i32]* %123, i32 0, i32 2, !dbg !203 ; [#uses=1 type=i32*] [debug line = 127:3]
  store i32 %121, i32* %124, align 4, !dbg !203   ; [debug line = 127:3]
  %125 = load i8* %temp, align 1, !dbg !204       ; [#uses=1 type=i8] [debug line = 128:3]
  %126 = zext i8 %125 to i32, !dbg !204           ; [#uses=1 type=i32] [debug line = 128:3]
  %127 = load [4 x i32]** %1, align 4, !dbg !204  ; [#uses=1 type=[4 x i32]*] [debug line = 128:3]
  %128 = getelementptr inbounds [4 x i32]* %127, i32 3, !dbg !204 ; [#uses=1 type=[4 x i32]*] [debug line = 128:3]
  %129 = getelementptr inbounds [4 x i32]* %128, i32 0, i32 1, !dbg !204 ; [#uses=1 type=i32*] [debug line = 128:3]
  store i32 %126, i32* %129, align 4, !dbg !204   ; [debug line = 128:3]
  %130 = load i32* %2, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 130:3]
  %131 = icmp slt i32 %130, 10, !dbg !205         ; [#uses=1 type=i1] [debug line = 130:3]
  br i1 %131, label %132, label %336, !dbg !205   ; [debug line = 130:3]

; <label>:132                                     ; preds = %33
  call void @llvm.dbg.declare(metadata !{i8* %Tmp}, metadata !206), !dbg !208 ; [debug line = 134:16] [debug variable = Tmp]
  call void @llvm.dbg.declare(metadata !{i8* %Tm}, metadata !209), !dbg !210 ; [debug line = 134:20] [debug variable = Tm]
  call void @llvm.dbg.declare(metadata !{i8* %t}, metadata !211), !dbg !212 ; [debug line = 134:23] [debug variable = t]
  store i32 0, i32* %i, align 4, !dbg !213        ; [debug line = 136:6]
  br label %133, !dbg !213                        ; [debug line = 136:6]

; <label>:133                                     ; preds = %296, %132
  %134 = load i32* %i, align 4, !dbg !213         ; [#uses=1 type=i32] [debug line = 136:6]
  %135 = icmp slt i32 %134, 4, !dbg !213          ; [#uses=1 type=i1] [debug line = 136:6]
  br i1 %135, label %136, label %299, !dbg !213   ; [debug line = 136:6]

; <label>:136                                     ; preds = %133
  %137 = load i32* %i, align 4, !dbg !215         ; [#uses=1 type=i32] [debug line = 138:3]
  %138 = load [4 x i32]** %1, align 4, !dbg !215  ; [#uses=1 type=[4 x i32]*] [debug line = 138:3]
  %139 = getelementptr inbounds [4 x i32]* %138, i32 0, !dbg !215 ; [#uses=1 type=[4 x i32]*] [debug line = 138:3]
  %140 = getelementptr inbounds [4 x i32]* %139, i32 0, i32 %137, !dbg !215 ; [#uses=1 type=i32*] [debug line = 138:3]
  %141 = load i32* %140, align 4, !dbg !215       ; [#uses=1 type=i32] [debug line = 138:3]
  %142 = trunc i32 %141 to i8, !dbg !215          ; [#uses=1 type=i8] [debug line = 138:3]
  store i8 %142, i8* %t, align 1, !dbg !215       ; [debug line = 138:3]
  %143 = load i32* %i, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 139:3]
  %144 = load [4 x i32]** %1, align 4, !dbg !217  ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %145 = getelementptr inbounds [4 x i32]* %144, i32 0, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %146 = getelementptr inbounds [4 x i32]* %145, i32 0, i32 %143, !dbg !217 ; [#uses=1 type=i32*] [debug line = 139:3]
  %147 = load i32* %146, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 139:3]
  %148 = load i32* %i, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 139:3]
  %149 = load [4 x i32]** %1, align 4, !dbg !217  ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %150 = getelementptr inbounds [4 x i32]* %149, i32 1, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %151 = getelementptr inbounds [4 x i32]* %150, i32 0, i32 %148, !dbg !217 ; [#uses=1 type=i32*] [debug line = 139:3]
  %152 = load i32* %151, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 139:3]
  %153 = xor i32 %147, %152, !dbg !217            ; [#uses=1 type=i32] [debug line = 139:3]
  %154 = load i32* %i, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 139:3]
  %155 = load [4 x i32]** %1, align 4, !dbg !217  ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %156 = getelementptr inbounds [4 x i32]* %155, i32 2, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %157 = getelementptr inbounds [4 x i32]* %156, i32 0, i32 %154, !dbg !217 ; [#uses=1 type=i32*] [debug line = 139:3]
  %158 = load i32* %157, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 139:3]
  %159 = xor i32 %153, %158, !dbg !217            ; [#uses=1 type=i32] [debug line = 139:3]
  %160 = load i32* %i, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 139:3]
  %161 = load [4 x i32]** %1, align 4, !dbg !217  ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %162 = getelementptr inbounds [4 x i32]* %161, i32 3, !dbg !217 ; [#uses=1 type=[4 x i32]*] [debug line = 139:3]
  %163 = getelementptr inbounds [4 x i32]* %162, i32 0, i32 %160, !dbg !217 ; [#uses=1 type=i32*] [debug line = 139:3]
  %164 = load i32* %163, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 139:3]
  %165 = xor i32 %159, %164, !dbg !217            ; [#uses=1 type=i32] [debug line = 139:3]
  %166 = trunc i32 %165 to i8, !dbg !217          ; [#uses=1 type=i8] [debug line = 139:3]
  store i8 %166, i8* %Tmp, align 1, !dbg !217     ; [debug line = 139:3]
  %167 = load i32* %i, align 4, !dbg !218         ; [#uses=1 type=i32] [debug line = 140:3]
  %168 = load [4 x i32]** %1, align 4, !dbg !218  ; [#uses=1 type=[4 x i32]*] [debug line = 140:3]
  %169 = getelementptr inbounds [4 x i32]* %168, i32 0, !dbg !218 ; [#uses=1 type=[4 x i32]*] [debug line = 140:3]
  %170 = getelementptr inbounds [4 x i32]* %169, i32 0, i32 %167, !dbg !218 ; [#uses=1 type=i32*] [debug line = 140:3]
  %171 = load i32* %170, align 4, !dbg !218       ; [#uses=1 type=i32] [debug line = 140:3]
  %172 = load i32* %i, align 4, !dbg !218         ; [#uses=1 type=i32] [debug line = 140:3]
  %173 = load [4 x i32]** %1, align 4, !dbg !218  ; [#uses=1 type=[4 x i32]*] [debug line = 140:3]
  %174 = getelementptr inbounds [4 x i32]* %173, i32 1, !dbg !218 ; [#uses=1 type=[4 x i32]*] [debug line = 140:3]
  %175 = getelementptr inbounds [4 x i32]* %174, i32 0, i32 %172, !dbg !218 ; [#uses=1 type=i32*] [debug line = 140:3]
  %176 = load i32* %175, align 4, !dbg !218       ; [#uses=1 type=i32] [debug line = 140:3]
  %177 = xor i32 %171, %176, !dbg !218            ; [#uses=1 type=i32] [debug line = 140:3]
  %178 = trunc i32 %177 to i8, !dbg !218          ; [#uses=1 type=i8] [debug line = 140:3]
  store i8 %178, i8* %Tm, align 1, !dbg !218      ; [debug line = 140:3]
  %179 = load i8* %Tm, align 1, !dbg !219         ; [#uses=1 type=i8] [debug line = 140:36]
  %180 = zext i8 %179 to i32, !dbg !219           ; [#uses=1 type=i32] [debug line = 140:36]
  %181 = shl i32 %180, 1, !dbg !219               ; [#uses=1 type=i32] [debug line = 140:36]
  %182 = load i8* %Tm, align 1, !dbg !219         ; [#uses=1 type=i8] [debug line = 140:36]
  %183 = zext i8 %182 to i32, !dbg !219           ; [#uses=1 type=i32] [debug line = 140:36]
  %184 = ashr i32 %183, 7, !dbg !219              ; [#uses=1 type=i32] [debug line = 140:36]
  %185 = and i32 %184, 1, !dbg !219               ; [#uses=1 type=i32] [debug line = 140:36]
  %186 = mul nsw i32 %185, 27, !dbg !219          ; [#uses=1 type=i32] [debug line = 140:36]
  %187 = xor i32 %181, %186, !dbg !219            ; [#uses=1 type=i32] [debug line = 140:36]
  %188 = trunc i32 %187 to i8, !dbg !219          ; [#uses=1 type=i8] [debug line = 140:36]
  store i8 %188, i8* %Tm, align 1, !dbg !219      ; [debug line = 140:36]
  %189 = load i8* %Tm, align 1, !dbg !220         ; [#uses=1 type=i8] [debug line = 140:77]
  %190 = zext i8 %189 to i32, !dbg !220           ; [#uses=1 type=i32] [debug line = 140:77]
  %191 = load i8* %Tmp, align 1, !dbg !220        ; [#uses=1 type=i8] [debug line = 140:77]
  %192 = zext i8 %191 to i32, !dbg !220           ; [#uses=1 type=i32] [debug line = 140:77]
  %193 = xor i32 %190, %192, !dbg !220            ; [#uses=1 type=i32] [debug line = 140:77]
  %194 = load i32* %i, align 4, !dbg !220         ; [#uses=1 type=i32] [debug line = 140:77]
  %195 = load [4 x i32]** %1, align 4, !dbg !220  ; [#uses=1 type=[4 x i32]*] [debug line = 140:77]
  %196 = getelementptr inbounds [4 x i32]* %195, i32 0, !dbg !220 ; [#uses=1 type=[4 x i32]*] [debug line = 140:77]
  %197 = getelementptr inbounds [4 x i32]* %196, i32 0, i32 %194, !dbg !220 ; [#uses=2 type=i32*] [debug line = 140:77]
  %198 = load i32* %197, align 4, !dbg !220       ; [#uses=1 type=i32] [debug line = 140:77]
  %199 = xor i32 %198, %193, !dbg !220            ; [#uses=1 type=i32] [debug line = 140:77]
  store i32 %199, i32* %197, align 4, !dbg !220   ; [debug line = 140:77]
  %200 = load i32* %i, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 141:3]
  %201 = load [4 x i32]** %1, align 4, !dbg !221  ; [#uses=1 type=[4 x i32]*] [debug line = 141:3]
  %202 = getelementptr inbounds [4 x i32]* %201, i32 1, !dbg !221 ; [#uses=1 type=[4 x i32]*] [debug line = 141:3]
  %203 = getelementptr inbounds [4 x i32]* %202, i32 0, i32 %200, !dbg !221 ; [#uses=1 type=i32*] [debug line = 141:3]
  %204 = load i32* %203, align 4, !dbg !221       ; [#uses=1 type=i32] [debug line = 141:3]
  %205 = load i32* %i, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 141:3]
  %206 = load [4 x i32]** %1, align 4, !dbg !221  ; [#uses=1 type=[4 x i32]*] [debug line = 141:3]
  %207 = getelementptr inbounds [4 x i32]* %206, i32 2, !dbg !221 ; [#uses=1 type=[4 x i32]*] [debug line = 141:3]
  %208 = getelementptr inbounds [4 x i32]* %207, i32 0, i32 %205, !dbg !221 ; [#uses=1 type=i32*] [debug line = 141:3]
  %209 = load i32* %208, align 4, !dbg !221       ; [#uses=1 type=i32] [debug line = 141:3]
  %210 = xor i32 %204, %209, !dbg !221            ; [#uses=1 type=i32] [debug line = 141:3]
  %211 = trunc i32 %210 to i8, !dbg !221          ; [#uses=1 type=i8] [debug line = 141:3]
  store i8 %211, i8* %Tm, align 1, !dbg !221      ; [debug line = 141:3]
  %212 = load i8* %Tm, align 1, !dbg !222         ; [#uses=1 type=i8] [debug line = 141:36]
  %213 = zext i8 %212 to i32, !dbg !222           ; [#uses=1 type=i32] [debug line = 141:36]
  %214 = shl i32 %213, 1, !dbg !222               ; [#uses=1 type=i32] [debug line = 141:36]
  %215 = load i8* %Tm, align 1, !dbg !222         ; [#uses=1 type=i8] [debug line = 141:36]
  %216 = zext i8 %215 to i32, !dbg !222           ; [#uses=1 type=i32] [debug line = 141:36]
  %217 = ashr i32 %216, 7, !dbg !222              ; [#uses=1 type=i32] [debug line = 141:36]
  %218 = and i32 %217, 1, !dbg !222               ; [#uses=1 type=i32] [debug line = 141:36]
  %219 = mul nsw i32 %218, 27, !dbg !222          ; [#uses=1 type=i32] [debug line = 141:36]
  %220 = xor i32 %214, %219, !dbg !222            ; [#uses=1 type=i32] [debug line = 141:36]
  %221 = trunc i32 %220 to i8, !dbg !222          ; [#uses=1 type=i8] [debug line = 141:36]
  store i8 %221, i8* %Tm, align 1, !dbg !222      ; [debug line = 141:36]
  %222 = load i8* %Tm, align 1, !dbg !223         ; [#uses=1 type=i8] [debug line = 141:77]
  %223 = zext i8 %222 to i32, !dbg !223           ; [#uses=1 type=i32] [debug line = 141:77]
  %224 = load i8* %Tmp, align 1, !dbg !223        ; [#uses=1 type=i8] [debug line = 141:77]
  %225 = zext i8 %224 to i32, !dbg !223           ; [#uses=1 type=i32] [debug line = 141:77]
  %226 = xor i32 %223, %225, !dbg !223            ; [#uses=1 type=i32] [debug line = 141:77]
  %227 = load i32* %i, align 4, !dbg !223         ; [#uses=1 type=i32] [debug line = 141:77]
  %228 = load [4 x i32]** %1, align 4, !dbg !223  ; [#uses=1 type=[4 x i32]*] [debug line = 141:77]
  %229 = getelementptr inbounds [4 x i32]* %228, i32 1, !dbg !223 ; [#uses=1 type=[4 x i32]*] [debug line = 141:77]
  %230 = getelementptr inbounds [4 x i32]* %229, i32 0, i32 %227, !dbg !223 ; [#uses=2 type=i32*] [debug line = 141:77]
  %231 = load i32* %230, align 4, !dbg !223       ; [#uses=1 type=i32] [debug line = 141:77]
  %232 = xor i32 %231, %226, !dbg !223            ; [#uses=1 type=i32] [debug line = 141:77]
  store i32 %232, i32* %230, align 4, !dbg !223   ; [debug line = 141:77]
  %233 = load i32* %i, align 4, !dbg !224         ; [#uses=1 type=i32] [debug line = 142:3]
  %234 = load [4 x i32]** %1, align 4, !dbg !224  ; [#uses=1 type=[4 x i32]*] [debug line = 142:3]
  %235 = getelementptr inbounds [4 x i32]* %234, i32 2, !dbg !224 ; [#uses=1 type=[4 x i32]*] [debug line = 142:3]
  %236 = getelementptr inbounds [4 x i32]* %235, i32 0, i32 %233, !dbg !224 ; [#uses=1 type=i32*] [debug line = 142:3]
  %237 = load i32* %236, align 4, !dbg !224       ; [#uses=1 type=i32] [debug line = 142:3]
  %238 = load i32* %i, align 4, !dbg !224         ; [#uses=1 type=i32] [debug line = 142:3]
  %239 = load [4 x i32]** %1, align 4, !dbg !224  ; [#uses=1 type=[4 x i32]*] [debug line = 142:3]
  %240 = getelementptr inbounds [4 x i32]* %239, i32 3, !dbg !224 ; [#uses=1 type=[4 x i32]*] [debug line = 142:3]
  %241 = getelementptr inbounds [4 x i32]* %240, i32 0, i32 %238, !dbg !224 ; [#uses=1 type=i32*] [debug line = 142:3]
  %242 = load i32* %241, align 4, !dbg !224       ; [#uses=1 type=i32] [debug line = 142:3]
  %243 = xor i32 %237, %242, !dbg !224            ; [#uses=1 type=i32] [debug line = 142:3]
  %244 = trunc i32 %243 to i8, !dbg !224          ; [#uses=1 type=i8] [debug line = 142:3]
  store i8 %244, i8* %Tm, align 1, !dbg !224      ; [debug line = 142:3]
  %245 = load i8* %Tm, align 1, !dbg !225         ; [#uses=1 type=i8] [debug line = 142:36]
  %246 = zext i8 %245 to i32, !dbg !225           ; [#uses=1 type=i32] [debug line = 142:36]
  %247 = shl i32 %246, 1, !dbg !225               ; [#uses=1 type=i32] [debug line = 142:36]
  %248 = load i8* %Tm, align 1, !dbg !225         ; [#uses=1 type=i8] [debug line = 142:36]
  %249 = zext i8 %248 to i32, !dbg !225           ; [#uses=1 type=i32] [debug line = 142:36]
  %250 = ashr i32 %249, 7, !dbg !225              ; [#uses=1 type=i32] [debug line = 142:36]
  %251 = and i32 %250, 1, !dbg !225               ; [#uses=1 type=i32] [debug line = 142:36]
  %252 = mul nsw i32 %251, 27, !dbg !225          ; [#uses=1 type=i32] [debug line = 142:36]
  %253 = xor i32 %247, %252, !dbg !225            ; [#uses=1 type=i32] [debug line = 142:36]
  %254 = trunc i32 %253 to i8, !dbg !225          ; [#uses=1 type=i8] [debug line = 142:36]
  store i8 %254, i8* %Tm, align 1, !dbg !225      ; [debug line = 142:36]
  %255 = load i8* %Tm, align 1, !dbg !226         ; [#uses=1 type=i8] [debug line = 142:77]
  %256 = zext i8 %255 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 142:77]
  %257 = load i8* %Tmp, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 142:77]
  %258 = zext i8 %257 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 142:77]
  %259 = xor i32 %256, %258, !dbg !226            ; [#uses=1 type=i32] [debug line = 142:77]
  %260 = load i32* %i, align 4, !dbg !226         ; [#uses=1 type=i32] [debug line = 142:77]
  %261 = load [4 x i32]** %1, align 4, !dbg !226  ; [#uses=1 type=[4 x i32]*] [debug line = 142:77]
  %262 = getelementptr inbounds [4 x i32]* %261, i32 2, !dbg !226 ; [#uses=1 type=[4 x i32]*] [debug line = 142:77]
  %263 = getelementptr inbounds [4 x i32]* %262, i32 0, i32 %260, !dbg !226 ; [#uses=2 type=i32*] [debug line = 142:77]
  %264 = load i32* %263, align 4, !dbg !226       ; [#uses=1 type=i32] [debug line = 142:77]
  %265 = xor i32 %264, %259, !dbg !226            ; [#uses=1 type=i32] [debug line = 142:77]
  store i32 %265, i32* %263, align 4, !dbg !226   ; [debug line = 142:77]
  %266 = load i32* %i, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 143:3]
  %267 = load [4 x i32]** %1, align 4, !dbg !227  ; [#uses=1 type=[4 x i32]*] [debug line = 143:3]
  %268 = getelementptr inbounds [4 x i32]* %267, i32 3, !dbg !227 ; [#uses=1 type=[4 x i32]*] [debug line = 143:3]
  %269 = getelementptr inbounds [4 x i32]* %268, i32 0, i32 %266, !dbg !227 ; [#uses=1 type=i32*] [debug line = 143:3]
  %270 = load i32* %269, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 143:3]
  %271 = load i8* %t, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 143:3]
  %272 = zext i8 %271 to i32, !dbg !227           ; [#uses=1 type=i32] [debug line = 143:3]
  %273 = xor i32 %270, %272, !dbg !227            ; [#uses=1 type=i32] [debug line = 143:3]
  %274 = trunc i32 %273 to i8, !dbg !227          ; [#uses=1 type=i8] [debug line = 143:3]
  store i8 %274, i8* %Tm, align 1, !dbg !227      ; [debug line = 143:3]
  %275 = load i8* %Tm, align 1, !dbg !228         ; [#uses=1 type=i8] [debug line = 143:26]
  %276 = zext i8 %275 to i32, !dbg !228           ; [#uses=1 type=i32] [debug line = 143:26]
  %277 = shl i32 %276, 1, !dbg !228               ; [#uses=1 type=i32] [debug line = 143:26]
  %278 = load i8* %Tm, align 1, !dbg !228         ; [#uses=1 type=i8] [debug line = 143:26]
  %279 = zext i8 %278 to i32, !dbg !228           ; [#uses=1 type=i32] [debug line = 143:26]
  %280 = ashr i32 %279, 7, !dbg !228              ; [#uses=1 type=i32] [debug line = 143:26]
  %281 = and i32 %280, 1, !dbg !228               ; [#uses=1 type=i32] [debug line = 143:26]
  %282 = mul nsw i32 %281, 27, !dbg !228          ; [#uses=1 type=i32] [debug line = 143:26]
  %283 = xor i32 %277, %282, !dbg !228            ; [#uses=1 type=i32] [debug line = 143:26]
  %284 = trunc i32 %283 to i8, !dbg !228          ; [#uses=1 type=i8] [debug line = 143:26]
  store i8 %284, i8* %Tm, align 1, !dbg !228      ; [debug line = 143:26]
  %285 = load i8* %Tm, align 1, !dbg !229         ; [#uses=1 type=i8] [debug line = 143:67]
  %286 = zext i8 %285 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 143:67]
  %287 = load i8* %Tmp, align 1, !dbg !229        ; [#uses=1 type=i8] [debug line = 143:67]
  %288 = zext i8 %287 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 143:67]
  %289 = xor i32 %286, %288, !dbg !229            ; [#uses=1 type=i32] [debug line = 143:67]
  %290 = load i32* %i, align 4, !dbg !229         ; [#uses=1 type=i32] [debug line = 143:67]
  %291 = load [4 x i32]** %1, align 4, !dbg !229  ; [#uses=1 type=[4 x i32]*] [debug line = 143:67]
  %292 = getelementptr inbounds [4 x i32]* %291, i32 3, !dbg !229 ; [#uses=1 type=[4 x i32]*] [debug line = 143:67]
  %293 = getelementptr inbounds [4 x i32]* %292, i32 0, i32 %290, !dbg !229 ; [#uses=2 type=i32*] [debug line = 143:67]
  %294 = load i32* %293, align 4, !dbg !229       ; [#uses=1 type=i32] [debug line = 143:67]
  %295 = xor i32 %294, %289, !dbg !229            ; [#uses=1 type=i32] [debug line = 143:67]
  store i32 %295, i32* %293, align 4, !dbg !229   ; [debug line = 143:67]
  br label %296, !dbg !230                        ; [debug line = 144:2]

; <label>:296                                     ; preds = %136
  %297 = load i32* %i, align 4, !dbg !231         ; [#uses=1 type=i32] [debug line = 136:14]
  %298 = add nsw i32 %297, 1, !dbg !231           ; [#uses=1 type=i32] [debug line = 136:14]
  store i32 %298, i32* %i, align 4, !dbg !231     ; [debug line = 136:14]
  br label %133, !dbg !231                        ; [debug line = 136:14]

; <label>:299                                     ; preds = %133
  store i32 0, i32* %i, align 4, !dbg !232        ; [debug line = 146:6]
  br label %300, !dbg !232                        ; [debug line = 146:6]

; <label>:300                                     ; preds = %330, %299
  %301 = load i32* %i, align 4, !dbg !232         ; [#uses=1 type=i32] [debug line = 146:6]
  %302 = icmp slt i32 %301, 4, !dbg !232          ; [#uses=1 type=i1] [debug line = 146:6]
  br i1 %302, label %303, label %333, !dbg !232   ; [debug line = 146:6]

; <label>:303                                     ; preds = %300
  store i32 0, i32* %j, align 4, !dbg !234        ; [debug line = 148:8]
  br label %304, !dbg !234                        ; [debug line = 148:8]

; <label>:304                                     ; preds = %326, %303
  %305 = load i32* %j, align 4, !dbg !234         ; [#uses=1 type=i32] [debug line = 148:8]
  %306 = icmp slt i32 %305, 4, !dbg !234          ; [#uses=1 type=i1] [debug line = 148:8]
  br i1 %306, label %307, label %329, !dbg !234   ; [debug line = 148:8]

; <label>:307                                     ; preds = %304
  %308 = load i32* %2, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 150:5]
  %309 = mul nsw i32 %308, 4, !dbg !237           ; [#uses=1 type=i32] [debug line = 150:5]
  %310 = mul nsw i32 %309, 4, !dbg !237           ; [#uses=1 type=i32] [debug line = 150:5]
  %311 = load i32* %i, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 150:5]
  %312 = mul nsw i32 %311, 4, !dbg !237           ; [#uses=1 type=i32] [debug line = 150:5]
  %313 = add nsw i32 %310, %312, !dbg !237        ; [#uses=1 type=i32] [debug line = 150:5]
  %314 = load i32* %j, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 150:5]
  %315 = add nsw i32 %313, %314, !dbg !237        ; [#uses=1 type=i32] [debug line = 150:5]
  %316 = load i32** %3, align 4, !dbg !237        ; [#uses=1 type=i32*] [debug line = 150:5]
  %317 = getelementptr inbounds i32* %316, i32 %315, !dbg !237 ; [#uses=1 type=i32*] [debug line = 150:5]
  %318 = load i32* %317, align 4, !dbg !237       ; [#uses=1 type=i32] [debug line = 150:5]
  %319 = load i32* %i, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 150:5]
  %320 = load i32* %j, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 150:5]
  %321 = load [4 x i32]** %1, align 4, !dbg !237  ; [#uses=1 type=[4 x i32]*] [debug line = 150:5]
  %322 = getelementptr inbounds [4 x i32]* %321, i32 %320, !dbg !237 ; [#uses=1 type=[4 x i32]*] [debug line = 150:5]
  %323 = getelementptr inbounds [4 x i32]* %322, i32 0, i32 %319, !dbg !237 ; [#uses=2 type=i32*] [debug line = 150:5]
  %324 = load i32* %323, align 4, !dbg !237       ; [#uses=1 type=i32] [debug line = 150:5]
  %325 = xor i32 %324, %318, !dbg !237            ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %325, i32* %323, align 4, !dbg !237   ; [debug line = 150:5]
  br label %326, !dbg !239                        ; [debug line = 151:4]

; <label>:326                                     ; preds = %307
  %327 = load i32* %j, align 4, !dbg !240         ; [#uses=1 type=i32] [debug line = 148:16]
  %328 = add nsw i32 %327, 1, !dbg !240           ; [#uses=1 type=i32] [debug line = 148:16]
  store i32 %328, i32* %j, align 4, !dbg !240     ; [debug line = 148:16]
  br label %304, !dbg !240                        ; [debug line = 148:16]

; <label>:329                                     ; preds = %304
  br label %330, !dbg !241                        ; [debug line = 152:3]

; <label>:330                                     ; preds = %329
  %331 = load i32* %i, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 146:14]
  %332 = add nsw i32 %331, 1, !dbg !242           ; [#uses=1 type=i32] [debug line = 146:14]
  store i32 %332, i32* %i, align 4, !dbg !242     ; [debug line = 146:14]
  br label %300, !dbg !242                        ; [debug line = 146:14]

; <label>:333                                     ; preds = %300
  %334 = load i32* %2, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 153:2]
  %335 = add nsw i32 %334, 1, !dbg !243           ; [#uses=1 type=i32] [debug line = 153:2]
  store i32 %335, i32* %2, align 4, !dbg !243     ; [debug line = 153:2]
  br label %368, !dbg !244                        ; [debug line = 155:3]

; <label>:336                                     ; preds = %33
  store i32 0, i32* %i, align 4, !dbg !245        ; [debug line = 156:8]
  br label %337, !dbg !245                        ; [debug line = 156:8]

; <label>:337                                     ; preds = %364, %336
  %338 = load i32* %i, align 4, !dbg !245         ; [#uses=1 type=i32] [debug line = 156:8]
  %339 = icmp slt i32 %338, 4, !dbg !245          ; [#uses=1 type=i1] [debug line = 156:8]
  br i1 %339, label %340, label %367, !dbg !245   ; [debug line = 156:8]

; <label>:340                                     ; preds = %337
  store i32 0, i32* %j, align 4, !dbg !247        ; [debug line = 158:9]
  br label %341, !dbg !247                        ; [debug line = 158:9]

; <label>:341                                     ; preds = %360, %340
  %342 = load i32* %j, align 4, !dbg !247         ; [#uses=1 type=i32] [debug line = 158:9]
  %343 = icmp slt i32 %342, 4, !dbg !247          ; [#uses=1 type=i1] [debug line = 158:9]
  br i1 %343, label %344, label %363, !dbg !247   ; [debug line = 158:9]

; <label>:344                                     ; preds = %341
  %345 = load i32* %i, align 4, !dbg !250         ; [#uses=1 type=i32] [debug line = 160:6]
  %346 = mul nsw i32 %345, 4, !dbg !250           ; [#uses=1 type=i32] [debug line = 160:6]
  %347 = add nsw i32 160, %346, !dbg !250         ; [#uses=1 type=i32] [debug line = 160:6]
  %348 = load i32* %j, align 4, !dbg !250         ; [#uses=1 type=i32] [debug line = 160:6]
  %349 = add nsw i32 %347, %348, !dbg !250        ; [#uses=1 type=i32] [debug line = 160:6]
  %350 = load i32** %3, align 4, !dbg !250        ; [#uses=1 type=i32*] [debug line = 160:6]
  %351 = getelementptr inbounds i32* %350, i32 %349, !dbg !250 ; [#uses=1 type=i32*] [debug line = 160:6]
  %352 = load i32* %351, align 4, !dbg !250       ; [#uses=1 type=i32] [debug line = 160:6]
  %353 = load i32* %i, align 4, !dbg !250         ; [#uses=1 type=i32] [debug line = 160:6]
  %354 = load i32* %j, align 4, !dbg !250         ; [#uses=1 type=i32] [debug line = 160:6]
  %355 = load [4 x i32]** %1, align 4, !dbg !250  ; [#uses=1 type=[4 x i32]*] [debug line = 160:6]
  %356 = getelementptr inbounds [4 x i32]* %355, i32 %354, !dbg !250 ; [#uses=1 type=[4 x i32]*] [debug line = 160:6]
  %357 = getelementptr inbounds [4 x i32]* %356, i32 0, i32 %353, !dbg !250 ; [#uses=2 type=i32*] [debug line = 160:6]
  %358 = load i32* %357, align 4, !dbg !250       ; [#uses=1 type=i32] [debug line = 160:6]
  %359 = xor i32 %358, %352, !dbg !250            ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %359, i32* %357, align 4, !dbg !250   ; [debug line = 160:6]
  br label %360, !dbg !252                        ; [debug line = 161:5]

; <label>:360                                     ; preds = %344
  %361 = load i32* %j, align 4, !dbg !253         ; [#uses=1 type=i32] [debug line = 158:17]
  %362 = add nsw i32 %361, 1, !dbg !253           ; [#uses=1 type=i32] [debug line = 158:17]
  store i32 %362, i32* %j, align 4, !dbg !253     ; [debug line = 158:17]
  br label %341, !dbg !253                        ; [debug line = 158:17]

; <label>:363                                     ; preds = %341
  br label %364, !dbg !254                        ; [debug line = 162:4]

; <label>:364                                     ; preds = %363
  %365 = load i32* %i, align 4, !dbg !255         ; [#uses=1 type=i32] [debug line = 156:16]
  %366 = add nsw i32 %365, 1, !dbg !255           ; [#uses=1 type=i32] [debug line = 156:16]
  store i32 %366, i32* %i, align 4, !dbg !255     ; [debug line = 156:16]
  br label %337, !dbg !255                        ; [debug line = 156:16]

; <label>:367                                     ; preds = %337
  br label %368

; <label>:368                                     ; preds = %367, %333
  ret void, !dbg !256                             ; [debug line = 168:1]
}

; [#uses=0]
define void @Cipher([4 x i32]* %state, i32* %Key) nounwind {
  %1 = alloca [4 x i32]*, align 4                 ; [#uses=6 type=[4 x i32]**]
  %2 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %Rcon = alloca [255 x i32], align 4             ; [#uses=2 type=[255 x i32]*]
  %i = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %round = alloca i32, align 4                    ; [#uses=7 type=i32*]
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=4 type=[240 x i32]*]
  store [4 x i32]* %state, [4 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[4 x i32]** %1}, metadata !257), !dbg !258 ; [debug line = 181:18] [debug variable = state]
  store i32* %Key, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !259), !dbg !260 ; [debug line = 181:35] [debug variable = Key]
  %3 = load [4 x i32]** %1, align 4, !dbg !261    ; [#uses=1 type=[4 x i32]*] [debug line = 183:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([4 x i32]*, i32)*)([4 x i32]* %3, i32 4) nounwind, !dbg !261 ; [debug line = 183:2]
  %4 = load i32** %2, align 4, !dbg !263          ; [#uses=1 type=i32*] [debug line = 183:34]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 32) nounwind, !dbg !263 ; [debug line = 183:34]
  %5 = load [4 x i32]** %1, align 4, !dbg !264    ; [#uses=1 type=[4 x i32]*] [debug line = 184:1]
  call void bitcast (void (...)* @_ssdm_SpecArrayReshape to void ([4 x i32]*, i32, i8*, i32, i8*)*)([4 x i32]* %5, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !264 ; [debug line = 184:1]
  call void @llvm.dbg.declare(metadata !{[255 x i32]* %Rcon}, metadata !265), !dbg !269 ; [debug line = 186:6] [debug variable = Rcon]
  %6 = bitcast [255 x i32]* %Rcon to i8*, !dbg !270 ; [#uses=1 type=i8*] [debug line = 202:93]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([255 x i32]* @Cipher.Rcon to i8*), i32 1020, i32 4, i1 false), !dbg !270 ; [debug line = 202:93]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !271), !dbg !272 ; [debug line = 203:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !273), !dbg !274 ; [debug line = 203:8] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %round}, metadata !275), !dbg !276 ; [debug line = 203:10] [debug variable = round]
  store i32 0, i32* %round, align 4, !dbg !277    ; [debug line = 203:17]
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !278), !dbg !282 ; [debug line = 204:7] [debug variable = RoundKey]
  %7 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !283 ; [#uses=1 type=i32*] [debug line = 206:2]
  %8 = load i32** %2, align 4, !dbg !283          ; [#uses=1 type=i32*] [debug line = 206:2]
  %9 = getelementptr inbounds [255 x i32]* %Rcon, i32 0, i32 0, !dbg !283 ; [#uses=1 type=i32*] [debug line = 206:2]
  call void @KeyExpansion(i32* %7, i32* %8, i32* %9), !dbg !283 ; [debug line = 206:2]
  %10 = load [4 x i32]** %1, align 4, !dbg !284   ; [#uses=1 type=[4 x i32]*] [debug line = 208:2]
  %11 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !284 ; [#uses=1 type=i32*] [debug line = 208:2]
  call void @AddRoundKey(i32 0, [4 x i32]* %10, i32* %11), !dbg !284 ; [debug line = 208:2]
  br label %12, !dbg !284                         ; [debug line = 208:2]

; <label>:12                                      ; preds = %0
  store i32 1, i32* %round, align 4, !dbg !285    ; [debug line = 210:21]
  br label %13, !dbg !285                         ; [debug line = 210:21]

; <label>:13                                      ; preds = %20, %12
  %14 = load i32* %round, align 4, !dbg !285      ; [#uses=1 type=i32] [debug line = 210:21]
  %15 = icmp slt i32 %14, 10, !dbg !285           ; [#uses=1 type=i1] [debug line = 210:21]
  br i1 %15, label %16, label %23, !dbg !285      ; [debug line = 210:21]

; <label>:16                                      ; preds = %13
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !287 ; [debug line = 211:3]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !287 ; [debug line = 211:3]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !289 ; [debug line = 212:1]
  %17 = load [4 x i32]** %1, align 4, !dbg !290   ; [#uses=1 type=[4 x i32]*] [debug line = 212:3]
  %18 = load i32* %round, align 4, !dbg !290      ; [#uses=1 type=i32] [debug line = 212:3]
  %19 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !290 ; [#uses=1 type=i32*] [debug line = 212:3]
  call void @SubBytes([4 x i32]* %17, i32 %18, i32* %19), !dbg !290 ; [debug line = 212:3]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !291 ; [debug line = 215:2]
  br label %20, !dbg !291                         ; [debug line = 215:2]

; <label>:20                                      ; preds = %16
  %21 = load i32* %round, align 4, !dbg !292      ; [#uses=1 type=i32] [debug line = 210:38]
  %22 = add nsw i32 %21, 1, !dbg !292             ; [#uses=1 type=i32] [debug line = 210:38]
  store i32 %22, i32* %round, align 4, !dbg !292  ; [debug line = 210:38]
  br label %13, !dbg !292                         ; [debug line = 210:38]

; <label>:23                                      ; preds = %13
  %24 = load [4 x i32]** %1, align 4, !dbg !293   ; [#uses=1 type=[4 x i32]*] [debug line = 218:2]
  %25 = load i32* %round, align 4, !dbg !293      ; [#uses=1 type=i32] [debug line = 218:2]
  %26 = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !293 ; [#uses=1 type=i32*] [debug line = 218:2]
  call void @SubBytes([4 x i32]* %24, i32 %25, i32* %26), !dbg !293 ; [debug line = 218:2]
  ret void, !dbg !294                             ; [debug line = 219:1]
}

; [#uses=1]
declare void @_ssdm_SpecArrayReshape(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!32, !39, !45, !49, !53}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !19, metadata !26, metadata !29}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 32, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @KeyExpansion, null, null, metadata !10, i32 33} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !18}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 2, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 83, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i32]*, i32*)* @AddRoundKey, null, null, metadata !10, i32 84} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9, metadata !22, metadata !15}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 97, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*, i32, i32*)* @SubBytes, null, null, metadata !10, i32 98} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !22, metadata !9, metadata !15}
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 181, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*, i32*)* @Cipher, null, null, metadata !10, i32 183} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !22, metadata !15}
!32 = metadata !{i32 (i32)* @getSBoxValue, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!38 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!39 = metadata !{void (i32*, i32*, i32*)* @KeyExpansion, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !38}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"int*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!45 = metadata !{void (i32, [4 x i32]*, i32*)* @AddRoundKey, metadata !46, metadata !41, metadata !47, metadata !43, metadata !48, metadata !38}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!49 = metadata !{void ([4 x i32]*, i32, i32*)* @SubBytes, metadata !50, metadata !41, metadata !51, metadata !43, metadata !52, metadata !38}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"int", metadata !"word*"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"round", metadata !"RoundKey"}
!53 = metadata !{void ([4 x i32]*, i32*)* @Cipher, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !38}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!55 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"word*"}
!57 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"Key"}
!59 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 3, i32 22, metadata !5, null}
!61 = metadata !{i32 786688, metadata !62, metadata !"sbox", metadata !6, i32 5, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !9, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!66 = metadata !{i32 5, i32 6, metadata !62, null}
!67 = metadata !{i32 22, i32 98, metadata !62, null}
!68 = metadata !{i32 23, i32 1, metadata !62, null}
!69 = metadata !{i32 23, i32 2, metadata !62, null}
!70 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777248, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 32, i32 24, metadata !12, null}
!72 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554464, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 32, i32 43, metadata !12, null}
!74 = metadata !{i32 786689, metadata !12, metadata !"Rcon", metadata !6, i32 50331680, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 32, i32 55, metadata !12, null}
!76 = metadata !{i32 33, i32 2, metadata !77, null}
!77 = metadata !{i32 786443, metadata !12, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 33, i32 39, metadata !77, null}
!79 = metadata !{i32 33, i32 72, metadata !77, null}
!80 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 34, i32 6, metadata !77, null}
!82 = metadata !{i32 786688, metadata !77, metadata !"j", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 34, i32 8, metadata !77, null}
!84 = metadata !{i32 786688, metadata !77, metadata !"temp", metadata !6, i32 35, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !86, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!86 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 35, i32 16, metadata !77, null}
!88 = metadata !{i32 786688, metadata !77, metadata !"k", metadata !6, i32 35, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 35, i32 24, metadata !77, null}
!90 = metadata !{i32 35, i32 25, metadata !77, null}
!91 = metadata !{i32 38, i32 27, metadata !92, null}
!92 = metadata !{i32 786443, metadata !77, i32 38, i32 23, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 39, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !92, i32 39, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 40, i32 1, metadata !94, null}
!96 = metadata !{i32 40, i32 3, metadata !94, null}
!97 = metadata !{i32 41, i32 3, metadata !94, null}
!98 = metadata !{i32 42, i32 3, metadata !94, null}
!99 = metadata !{i32 43, i32 3, metadata !94, null}
!100 = metadata !{i32 44, i32 2, metadata !94, null}
!101 = metadata !{i32 38, i32 35, metadata !92, null}
!102 = metadata !{i32 44, i32 2, metadata !92, null}
!103 = metadata !{i32 47, i32 22, metadata !77, null}
!104 = metadata !{i32 48, i32 3, metadata !105, null}
!105 = metadata !{i32 786443, metadata !77, i32 48, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 49, i32 1, metadata !105, null}
!107 = metadata !{i32 49, i32 10, metadata !108, null}
!108 = metadata !{i32 786443, metadata !105, i32 49, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 51, i32 7, metadata !110, null}
!110 = metadata !{i32 786443, metadata !108, i32 50, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 52, i32 6, metadata !110, null}
!112 = metadata !{i32 49, i32 18, metadata !108, null}
!113 = metadata !{i32 53, i32 6, metadata !105, null}
!114 = metadata !{i32 55, i32 8, metadata !115, null}
!115 = metadata !{i32 786443, metadata !105, i32 54, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 56, i32 8, metadata !115, null}
!117 = metadata !{i32 57, i32 8, metadata !115, null}
!118 = metadata !{i32 58, i32 8, metadata !115, null}
!119 = metadata !{i32 59, i32 8, metadata !115, null}
!120 = metadata !{i32 60, i32 16, metadata !115, null}
!121 = metadata !{i32 61, i32 16, metadata !115, null}
!122 = metadata !{i32 62, i32 16, metadata !115, null}
!123 = metadata !{i32 63, i32 16, metadata !115, null}
!124 = metadata !{i32 64, i32 7, metadata !115, null}
!125 = metadata !{i32 65, i32 6, metadata !115, null}
!126 = metadata !{i32 73, i32 6, metadata !105, null}
!127 = metadata !{i32 74, i32 6, metadata !105, null}
!128 = metadata !{i32 75, i32 6, metadata !105, null}
!129 = metadata !{i32 76, i32 6, metadata !105, null}
!130 = metadata !{i32 77, i32 6, metadata !105, null}
!131 = metadata !{i32 78, i32 2, metadata !105, null}
!132 = metadata !{i32 79, i32 1, metadata !77, null}
!133 = metadata !{i32 786689, metadata !19, metadata !"round", metadata !6, i32 16777299, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 83, i32 22, metadata !19, null}
!135 = metadata !{i32 786689, metadata !19, metadata !"state", metadata !6, i32 33554515, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 83, i32 33, metadata !19, null}
!137 = metadata !{i32 786689, metadata !19, metadata !"RoundKey", metadata !6, i32 50331731, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 83, i32 50, metadata !19, null}
!139 = metadata !{i32 84, i32 2, metadata !140, null}
!140 = metadata !{i32 786443, metadata !19, i32 84, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 84, i32 39, metadata !140, null}
!142 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 85, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 85, i32 6, metadata !140, null}
!144 = metadata !{i32 786688, metadata !140, metadata !"j", metadata !6, i32 85, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 85, i32 8, metadata !140, null}
!146 = metadata !{i32 86, i32 6, metadata !147, null}
!147 = metadata !{i32 786443, metadata !140, i32 86, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 87, i32 2, metadata !149, null}
!149 = metadata !{i32 786443, metadata !147, i32 87, i32 2, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 88, i32 27, metadata !151, null}
!151 = metadata !{i32 786443, metadata !149, i32 88, i32 23, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 89, i32 4, metadata !153, null}
!153 = metadata !{i32 786443, metadata !151, i32 89, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 90, i32 1, metadata !153, null}
!155 = metadata !{i32 90, i32 4, metadata !153, null}
!156 = metadata !{i32 91, i32 3, metadata !153, null}
!157 = metadata !{i32 88, i32 35, metadata !151, null}
!158 = metadata !{i32 92, i32 2, metadata !149, null}
!159 = metadata !{i32 86, i32 14, metadata !147, null}
!160 = metadata !{i32 93, i32 1, metadata !140, null}
!161 = metadata !{i32 786689, metadata !26, metadata !"state", metadata !6, i32 16777313, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 97, i32 20, metadata !26, null}
!163 = metadata !{i32 786689, metadata !26, metadata !"round", metadata !6, i32 33554529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 97, i32 36, metadata !26, null}
!165 = metadata !{i32 786689, metadata !26, metadata !"RoundKey", metadata !6, i32 50331745, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 97, i32 47, metadata !26, null}
!167 = metadata !{i32 98, i32 2, metadata !168, null}
!168 = metadata !{i32 786443, metadata !26, i32 98, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 98, i32 39, metadata !168, null}
!170 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !6, i32 99, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 99, i32 6, metadata !168, null}
!172 = metadata !{i32 786688, metadata !168, metadata !"a", metadata !6, i32 99, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 99, i32 8, metadata !168, null}
!174 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !6, i32 99, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 99, i32 10, metadata !168, null}
!176 = metadata !{i32 100, i32 6, metadata !177, null}
!177 = metadata !{i32 786443, metadata !168, i32 100, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 102, i32 7, metadata !179, null}
!179 = metadata !{i32 786443, metadata !180, i32 102, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !177, i32 101, i32 2, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 104, i32 18, metadata !182, null}
!182 = metadata !{i32 786443, metadata !179, i32 103, i32 3, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 106, i32 3, metadata !182, null}
!184 = metadata !{i32 102, i32 15, metadata !179, null}
!185 = metadata !{i32 107, i32 2, metadata !180, null}
!186 = metadata !{i32 100, i32 14, metadata !177, null}
!187 = metadata !{i32 786688, metadata !168, metadata !"temp", metadata !6, i32 108, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 108, i32 16, metadata !168, null}
!189 = metadata !{i32 110, i32 3, metadata !168, null}
!190 = metadata !{i32 111, i32 3, metadata !168, null}
!191 = metadata !{i32 112, i32 3, metadata !168, null}
!192 = metadata !{i32 113, i32 3, metadata !168, null}
!193 = metadata !{i32 114, i32 3, metadata !168, null}
!194 = metadata !{i32 116, i32 3, metadata !168, null}
!195 = metadata !{i32 117, i32 3, metadata !168, null}
!196 = metadata !{i32 118, i32 3, metadata !168, null}
!197 = metadata !{i32 120, i32 3, metadata !168, null}
!198 = metadata !{i32 121, i32 3, metadata !168, null}
!199 = metadata !{i32 122, i32 3, metadata !168, null}
!200 = metadata !{i32 124, i32 3, metadata !168, null}
!201 = metadata !{i32 125, i32 3, metadata !168, null}
!202 = metadata !{i32 126, i32 3, metadata !168, null}
!203 = metadata !{i32 127, i32 3, metadata !168, null}
!204 = metadata !{i32 128, i32 3, metadata !168, null}
!205 = metadata !{i32 130, i32 3, metadata !168, null}
!206 = metadata !{i32 786688, metadata !207, metadata !"Tmp", metadata !6, i32 134, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 786443, metadata !168, i32 130, i32 17, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 134, i32 16, metadata !207, null}
!209 = metadata !{i32 786688, metadata !207, metadata !"Tm", metadata !6, i32 134, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 134, i32 20, metadata !207, null}
!211 = metadata !{i32 786688, metadata !207, metadata !"t", metadata !6, i32 134, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 134, i32 23, metadata !207, null}
!213 = metadata !{i32 136, i32 6, metadata !214, null}
!214 = metadata !{i32 786443, metadata !207, i32 136, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 138, i32 3, metadata !216, null}
!216 = metadata !{i32 786443, metadata !214, i32 137, i32 2, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 139, i32 3, metadata !216, null}
!218 = metadata !{i32 140, i32 3, metadata !216, null}
!219 = metadata !{i32 140, i32 36, metadata !216, null}
!220 = metadata !{i32 140, i32 77, metadata !216, null}
!221 = metadata !{i32 141, i32 3, metadata !216, null}
!222 = metadata !{i32 141, i32 36, metadata !216, null}
!223 = metadata !{i32 141, i32 77, metadata !216, null}
!224 = metadata !{i32 142, i32 3, metadata !216, null}
!225 = metadata !{i32 142, i32 36, metadata !216, null}
!226 = metadata !{i32 142, i32 77, metadata !216, null}
!227 = metadata !{i32 143, i32 3, metadata !216, null}
!228 = metadata !{i32 143, i32 26, metadata !216, null}
!229 = metadata !{i32 143, i32 67, metadata !216, null}
!230 = metadata !{i32 144, i32 2, metadata !216, null}
!231 = metadata !{i32 136, i32 14, metadata !214, null}
!232 = metadata !{i32 146, i32 6, metadata !233, null}
!233 = metadata !{i32 786443, metadata !207, i32 146, i32 2, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 148, i32 8, metadata !235, null}
!235 = metadata !{i32 786443, metadata !236, i32 148, i32 4, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 786443, metadata !233, i32 147, i32 3, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 150, i32 5, metadata !238, null}
!238 = metadata !{i32 786443, metadata !235, i32 149, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 151, i32 4, metadata !238, null}
!240 = metadata !{i32 148, i32 16, metadata !235, null}
!241 = metadata !{i32 152, i32 3, metadata !236, null}
!242 = metadata !{i32 146, i32 14, metadata !233, null}
!243 = metadata !{i32 153, i32 2, metadata !207, null}
!244 = metadata !{i32 155, i32 3, metadata !207, null}
!245 = metadata !{i32 156, i32 8, metadata !246, null}
!246 = metadata !{i32 786443, metadata !168, i32 156, i32 4, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 158, i32 9, metadata !248, null}
!248 = metadata !{i32 786443, metadata !249, i32 158, i32 5, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 786443, metadata !246, i32 157, i32 4, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 160, i32 6, metadata !251, null}
!251 = metadata !{i32 786443, metadata !248, i32 159, i32 5, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 161, i32 5, metadata !251, null}
!253 = metadata !{i32 158, i32 17, metadata !248, null}
!254 = metadata !{i32 162, i32 4, metadata !249, null}
!255 = metadata !{i32 156, i32 16, metadata !246, null}
!256 = metadata !{i32 168, i32 1, metadata !168, null}
!257 = metadata !{i32 786689, metadata !29, metadata !"state", metadata !6, i32 16777397, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!258 = metadata !{i32 181, i32 18, metadata !29, null}
!259 = metadata !{i32 786689, metadata !29, metadata !"Key", metadata !6, i32 33554613, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 181, i32 35, metadata !29, null}
!261 = metadata !{i32 183, i32 2, metadata !262, null}
!262 = metadata !{i32 786443, metadata !29, i32 183, i32 1, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 183, i32 34, metadata !262, null}
!264 = metadata !{i32 184, i32 1, metadata !262, null}
!265 = metadata !{i32 786688, metadata !262, metadata !"Rcon", metadata !6, i32 186, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8160, i64 32, i32 0, i32 0, metadata !9, metadata !267, i32 0, i32 0} ; [ DW_TAG_array_type ]
!267 = metadata !{metadata !268}
!268 = metadata !{i32 786465, i64 0, i64 254}     ; [ DW_TAG_subrange_type ]
!269 = metadata !{i32 186, i32 6, metadata !262, null}
!270 = metadata !{i32 202, i32 93, metadata !262, null}
!271 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !6, i32 203, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 203, i32 6, metadata !262, null}
!273 = metadata !{i32 786688, metadata !262, metadata !"j", metadata !6, i32 203, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 203, i32 8, metadata !262, null}
!275 = metadata !{i32 786688, metadata !262, metadata !"round", metadata !6, i32 203, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 203, i32 10, metadata !262, null}
!277 = metadata !{i32 203, i32 17, metadata !262, null}
!278 = metadata !{i32 786688, metadata !262, metadata !"RoundKey", metadata !6, i32 204, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !16, metadata !280, i32 0, i32 0} ; [ DW_TAG_array_type ]
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!282 = metadata !{i32 204, i32 7, metadata !262, null}
!283 = metadata !{i32 206, i32 2, metadata !262, null}
!284 = metadata !{i32 208, i32 2, metadata !262, null}
!285 = metadata !{i32 210, i32 21, metadata !286, null}
!286 = metadata !{i32 786443, metadata !262, i32 210, i32 17, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 211, i32 3, metadata !288, null}
!288 = metadata !{i32 786443, metadata !286, i32 211, i32 2, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 212, i32 1, metadata !288, null}
!290 = metadata !{i32 212, i32 3, metadata !288, null}
!291 = metadata !{i32 215, i32 2, metadata !288, null}
!292 = metadata !{i32 210, i32 38, metadata !286, null}
!293 = metadata !{i32 218, i32 2, metadata !262, null}
!294 = metadata !{i32 219, i32 1, metadata !262, null}
