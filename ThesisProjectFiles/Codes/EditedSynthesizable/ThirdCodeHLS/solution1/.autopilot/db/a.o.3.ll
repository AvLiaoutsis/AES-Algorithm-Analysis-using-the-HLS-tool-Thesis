; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisRaw/trito/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@worda = common global [480 x i32] zeroinitializer ; [#uses=15 type=[480 x i32]*]
@invSbox = constant [256 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251, i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203, i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78, i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37, i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146, i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132, i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6, i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107, i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115, i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110, i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27, i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244, i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95, i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239, i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97, i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125] ; [#uses=0 type=[256 x i32]*]
@aes_main_str = internal unnamed_addr constant [9 x i8] c"aes_main\00" ; [#uses=1 type=[9 x i8]*]
@Sbox_old = constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22] ; [#uses=0 type=[256 x i32]*]
@Sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16" ; [#uses=20 type=[256 x i8]*]
@Rcon0_old = constant [30 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145], align 4 ; [#uses=0 type=[30 x i32]*]
@Rcon0 = constant [30 x i8] c"\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\91" ; [#uses=1 type=[30 x i8]*]

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=3]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aes_main([32 x i32]* %statemt, [32 x i32]* %key, [32 x i32]* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %statemt) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %key) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %out) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @aes_main_str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !58), !dbg !71 ; [debug line = 624:21] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !72), !dbg !73 ; [debug line = 624:39] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !74), !dbg !75 ; [debug line = 624:52] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !76) nounwind, !dbg !85 ; [debug line = 95:18@629:3] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !86) nounwind, !dbg !87 ; [debug line = 95:35@629:3] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !88) nounwind, !dbg !89 ; [debug line = 95:57@629:3] [debug variable = out]
  call fastcc void @KeySchedule([32 x i32]* %key) nounwind, !dbg !90 ; [debug line = 106:3@629:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 0) nounwind, !dbg !92 ; [debug line = 110:3@629:3]
  br label %1, !dbg !93                           ; [debug line = 112:8@629:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 1, %0 ], [ %tmp_i, %2 ]         ; [#uses=3 type=i4]
  %exitcond3_i = icmp eq i4 %i_i, -6, !dbg !93    ; [#uses=1 type=i1] [debug line = 112:8@629:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3_i, label %3, label %2, !dbg !93 ; [debug line = 112:8@629:3]

; <label>:2                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !95 ; [debug line = 114:7@629:3]
  call fastcc void @MixColumn_AddRoundKe([32 x i32]* %statemt, i4 %i_i) nounwind, !dbg !97 ; [debug line = 115:7@629:3]
  %tmp_i = add i4 %i_i, 1, !dbg !98               ; [#uses=1 type=i4] [debug line = 112:35@629:3]
  br label %1, !dbg !98                           ; [debug line = 112:35@629:3]

; <label>:3                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !99 ; [debug line = 117:3@629:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 10) nounwind, !dbg !100 ; [debug line = 118:3@629:3]
  br label %4, !dbg !101                          ; [debug line = 121:8@629:3]

; <label>:4                                       ; preds = %5, %3
  %i_1_i = phi i5 [ 0, %3 ], [ %i, %5 ]           ; [#uses=3 type=i5]
  %i_1_i_cast1 = zext i5 %i_1_i to i32, !dbg !101 ; [#uses=2 type=i32] [debug line = 121:8@629:3]
  %exitcond2_i = icmp eq i5 %i_1_i, -16, !dbg !101 ; [#uses=1 type=i1] [debug line = 121:8@629:3]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i = add i5 %i_1_i, 1, !dbg !103                ; [#uses=1 type=i5] [debug line = 121:27@629:3]
  br i1 %exitcond2_i, label %encrypt.exit, label %5, !dbg !101 ; [debug line = 121:8@629:3]

; <label>:5                                       ; preds = %4
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %i_1_i_cast1, !dbg !104 ; [#uses=1 type=i32*] [debug line = 123:4@629:3]
  %statemt_load = load i32* %statemt_addr, align 4, !dbg !104 ; [#uses=1 type=i32] [debug line = 123:4@629:3]
  %out_addr = getelementptr [32 x i32]* %out, i32 0, i32 %i_1_i_cast1, !dbg !104 ; [#uses=1 type=i32*] [debug line = 123:4@629:3]
  store i32 %statemt_load, i32* %out_addr, align 4, !dbg !104 ; [debug line = 123:4@629:3]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !106) nounwind, !dbg !103 ; [debug line = 121:27@629:3] [debug variable = i]
  br label %4, !dbg !103                          ; [debug line = 121:27@629:3]

encrypt.exit:                                     ; preds = %4
  ret void, !dbg !107                             ; [debug line = 632:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=9]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=1]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_10 = trunc i11 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_10
}

; [#uses=8]
define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_11 = trunc i32 %empty to i6              ; [#uses=1 type=i6]
  ret i6 %empty_11
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_12 = trunc i6 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_12
}

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=0]
define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_13 = trunc i32 %empty to i28             ; [#uses=1 type=i28]
  ret i28 %empty_13
}

; [#uses=8]
define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_14 = trunc i32 %empty to i24             ; [#uses=1 type=i24]
  ret i24 %empty_14
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=i32]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=4]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_15 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_16 = icmp ne i32 %empty_15, 0            ; [#uses=1 type=i1]
  ret i1 %empty_16
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6                       ; [#uses=1 type=i6]
  %empty_17 = zext i2 %1 to i6                    ; [#uses=1 type=i6]
  %empty_18 = shl i6 %empty, 2                    ; [#uses=1 type=i6]
  %empty_19 = or i6 %empty_18, %empty_17          ; [#uses=1 type=i6]
  ret i6 %empty_19
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_20 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_21 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_22 = or i6 %empty_21, %empty_20          ; [#uses=1 type=i6]
  ret i6 %empty_22
}

; [#uses=4]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_23 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_24 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_25 = or i4 %empty_24, %empty_23          ; [#uses=1 type=i4]
  ret i4 %empty_25
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
define weak i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone {
entry:
  %empty = zext i28 %0 to i32                     ; [#uses=1 type=i32]
  %empty_26 = zext i4 %1 to i32                   ; [#uses=1 type=i32]
  %empty_27 = shl i32 %empty, 4                   ; [#uses=1 type=i32]
  %empty_28 = or i32 %empty_27, %empty_26         ; [#uses=1 type=i32]
  ret i32 %empty_28
}

; [#uses=8]
define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32                     ; [#uses=1 type=i32]
  %empty_29 = zext i8 %1 to i32                   ; [#uses=1 type=i32]
  %empty_30 = shl i32 %empty, 8                   ; [#uses=1 type=i32]
  %empty_31 = or i32 %empty_30, %empty_29         ; [#uses=1 type=i32]
  ret i32 %empty_31
}

; [#uses=1]
define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11                      ; [#uses=1 type=i11]
  %empty_32 = zext i3 %1 to i11                   ; [#uses=1 type=i11]
  %empty_33 = shl i11 %empty, 3                   ; [#uses=1 type=i11]
  %empty_34 = or i11 %empty_33, %empty_32         ; [#uses=1 type=i11]
  ret i11 %empty_34
}

; [#uses=12]
define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10                      ; [#uses=1 type=i10]
  %empty_35 = zext i4 %1 to i10                   ; [#uses=1 type=i10]
  %empty_36 = shl i10 %empty, 4                   ; [#uses=1 type=i10]
  %empty_37 = or i10 %empty_36, %empty_35         ; [#uses=1 type=i10]
  ret i10 %empty_37
}

; [#uses=2]
define weak i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3, i7) nounwind readnone {
entry:
  %empty = zext i3 %0 to i10                      ; [#uses=1 type=i10]
  %empty_38 = zext i7 %1 to i10                   ; [#uses=1 type=i10]
  %empty_39 = shl i10 %empty, 7                   ; [#uses=1 type=i10]
  %empty_40 = or i10 %empty_39, %empty_38         ; [#uses=1 type=i10]
  ret i10 %empty_40
}

; [#uses=1]
define internal fastcc void @MixColumn_AddRoundKe([32 x i32]* nocapture %statemt, i4 %n) {
  %n_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %n) ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %n_read}, i64 0, metadata !108), !dbg !112 ; [debug line = 457:57] [debug variable = n]
  %ret = alloca [32 x i32], align 4               ; [#uses=8 type=[32 x i32]*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !113), !dbg !114 ; [debug line = 457:32] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i4 %n}, i64 0, metadata !108), !dbg !112 ; [debug line = 457:57] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %ret}, metadata !115), !dbg !117 ; [debug line = 459:7] [debug variable = ret]
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %n_read, i2 0), !dbg !118 ; [#uses=1 type=i6] [debug line = 473:7]
  br label %1, !dbg !121                          ; [debug line = 462:8]

; <label>:1                                       ; preds = %._crit_edge_ifconv, %0
  %j = phi i3 [ 0, %0 ], [ %j_3, %._crit_edge_ifconv ] ; [#uses=4 type=i3]
  %j_cast1 = zext i3 %j to i6, !dbg !121          ; [#uses=1 type=i6] [debug line = 462:8]
  %exitcond1 = icmp eq i3 %j, -4, !dbg !121       ; [#uses=1 type=i1] [debug line = 462:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_3 = add i3 %j, 1, !dbg !122                  ; [#uses=1 type=i3] [debug line = 462:23]
  br i1 %exitcond1, label %.preheader.preheader, label %._crit_edge_ifconv, !dbg !121 ; [debug line = 462:8]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !123                 ; [debug line = 512:8]

._crit_edge_ifconv:                               ; preds = %1
  %tmp_6 = trunc i3 %j to i2                      ; [#uses=1 type=i2]
  %tmp_5 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_6, i2 0), !dbg !125 ; [#uses=4 type=i4] [debug line = 464:7]
  %tmp_5_cast = zext i4 %tmp_5 to i32, !dbg !125  ; [#uses=2 type=i32] [debug line = 464:7]
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_5_cast, !dbg !125 ; [#uses=1 type=i32*] [debug line = 464:7]
  %x_6 = load i32* %statemt_addr, align 4, !dbg !125 ; [#uses=5 type=i32] [debug line = 464:7]
  %tmp_18 = shl i32 %x_6, 1, !dbg !125            ; [#uses=3 type=i32] [debug line = 464:7]
  %ret_addr = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_5_cast, !dbg !125 ; [#uses=1 type=i32*] [debug line = 464:7]
  %tmp_s = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_6, i32 7, i32 30) ; [#uses=1 type=i24]
  %p_mask = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_s, i8 0), !dbg !126 ; [#uses=1 type=i32] [debug line = 465:7]
  %tmp_7 = icmp eq i32 %p_mask, 256, !dbg !126    ; [#uses=1 type=i1] [debug line = 465:7]
  %tmp_8 = xor i32 %tmp_18, 283, !dbg !127        ; [#uses=1 type=i32] [debug line = 466:2]
  %ret_load_1 = select i1 %tmp_7, i32 %tmp_8, i32 %tmp_18, !dbg !126 ; [#uses=1 type=i32] [debug line = 465:7]
  %tmp_9 = or i4 %tmp_5, 1, !dbg !128             ; [#uses=1 type=i4] [debug line = 467:7]
  %tmp_9_cast = zext i4 %tmp_9 to i32, !dbg !128  ; [#uses=2 type=i32] [debug line = 467:7]
  %statemt_addr_1 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_9_cast, !dbg !128 ; [#uses=1 type=i32*] [debug line = 467:7]
  %x = load i32* %statemt_addr_1, align 4, !dbg !128 ; [#uses=5 type=i32] [debug line = 467:7]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !129), !dbg !128 ; [debug line = 467:7] [debug variable = x]
  %tmp_24 = shl i32 %x, 1, !dbg !130              ; [#uses=3 type=i32] [debug line = 468:7]
  %x_1 = xor i32 %x, %tmp_24, !dbg !130           ; [#uses=3 type=i32] [debug line = 468:7]
  call void @llvm.dbg.value(metadata !{i32 %x_1}, i64 0, metadata !129), !dbg !130 ; [debug line = 468:7] [debug variable = x]
  %tmp_33 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_1, i32 8, i32 31) ; [#uses=1 type=i24]
  %p_mask1 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_33, i8 0), !dbg !131 ; [#uses=1 type=i32] [debug line = 469:7]
  %tmp_1 = icmp eq i32 %p_mask1, 256, !dbg !131   ; [#uses=1 type=i1] [debug line = 469:7]
  %tmp_3 = xor i32 %x_1, 283, !dbg !132           ; [#uses=1 type=i32] [debug line = 470:2]
  %storemerge_v = select i1 %tmp_1, i32 %tmp_3, i32 %x_1 ; [#uses=1 type=i32]
  %tmp_10 = or i4 %tmp_5, 2, !dbg !118            ; [#uses=1 type=i4] [debug line = 473:7]
  %tmp_14_cast = zext i4 %tmp_10 to i32, !dbg !118 ; [#uses=2 type=i32] [debug line = 473:7]
  %statemt_addr_6 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_14_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 473:7]
  %x_2 = load i32* %statemt_addr_6, align 4, !dbg !118 ; [#uses=5 type=i32] [debug line = 473:7]
  %tmp_11 = or i4 %tmp_5, 3, !dbg !118            ; [#uses=1 type=i4] [debug line = 473:7]
  %tmp_15_cast = zext i4 %tmp_11 to i32, !dbg !118 ; [#uses=2 type=i32] [debug line = 473:7]
  %statemt_addr_7 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_15_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 473:7]
  %x_4 = load i32* %statemt_addr_7, align 4, !dbg !118 ; [#uses=5 type=i32] [debug line = 473:7]
  %tmp_14 = add i6 %tmp, %j_cast1, !dbg !118      ; [#uses=3 type=i6] [debug line = 473:7]
  %tmp_16_cast = zext i6 %tmp_14 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp_16_cast_cast1 = zext i6 %tmp_14 to i9, !dbg !118 ; [#uses=2 type=i9] [debug line = 473:7]
  %tmp_16_cast_cast = zext i6 %tmp_14 to i8, !dbg !118 ; [#uses=1 type=i8] [debug line = 473:7]
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_16_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 473:7]
  %tmp_34 = add i8 120, %tmp_16_cast_cast, !dbg !133 ; [#uses=1 type=i8] [debug line = 485:7]
  %tmp_38_cast = zext i8 %tmp_34 to i32, !dbg !133 ; [#uses=1 type=i32] [debug line = 485:7]
  %worda_addr_1 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_38_cast, !dbg !133 ; [#uses=1 type=i32*] [debug line = 485:7]
  %tmp_35 = add i9 240, %tmp_16_cast_cast1, !dbg !134 ; [#uses=1 type=i9] [debug line = 497:7]
  %tmp_39_cast = zext i9 %tmp_35 to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 497:7]
  %worda_addr_2 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_39_cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 497:7]
  %tmp_36 = add i9 -152, %tmp_16_cast_cast1, !dbg !135 ; [#uses=1 type=i9] [debug line = 509:7]
  %tmp_40_cast = zext i9 %tmp_36 to i32, !dbg !135 ; [#uses=1 type=i32] [debug line = 509:7]
  %worda_addr_3 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_40_cast, !dbg !135 ; [#uses=1 type=i32*] [debug line = 509:7]
  %worda_load = load i32* %worda_addr, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp1 = xor i32 %x_2, %x_4, !dbg !118           ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp3 = xor i32 %ret_load_1, %storemerge_v, !dbg !118 ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp2 = xor i32 %tmp3, %worda_load, !dbg !118   ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp_15 = xor i32 %tmp2, %tmp1, !dbg !118       ; [#uses=1 type=i32] [debug line = 473:7]
  store i32 %tmp_15, i32* %ret_addr, align 4, !dbg !118 ; [debug line = 473:7]
  %ret_addr_5 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_9_cast, !dbg !136 ; [#uses=1 type=i32*] [debug line = 476:7]
  %tmp_37 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x, i32 7, i32 30) ; [#uses=1 type=i24]
  %p_mask2 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_37, i8 0), !dbg !137 ; [#uses=1 type=i32] [debug line = 477:7]
  %tmp_16 = icmp eq i32 %p_mask2, 256, !dbg !137  ; [#uses=1 type=i1] [debug line = 477:7]
  %tmp_17 = xor i32 %tmp_24, 283, !dbg !138       ; [#uses=1 type=i32] [debug line = 478:2]
  %tmp_23_tmp_s = select i1 %tmp_16, i32 %tmp_17, i32 %tmp_24, !dbg !137 ; [#uses=1 type=i32] [debug line = 477:7]
  call void @llvm.dbg.value(metadata !{i32 %x_2}, i64 0, metadata !129), !dbg !139 ; [debug line = 479:7] [debug variable = x]
  %tmp_38 = shl i32 %x_2, 1, !dbg !140            ; [#uses=3 type=i32] [debug line = 480:7]
  %x_3 = xor i32 %x_2, %tmp_38, !dbg !140         ; [#uses=3 type=i32] [debug line = 480:7]
  call void @llvm.dbg.value(metadata !{i32 %x_3}, i64 0, metadata !129), !dbg !140 ; [debug line = 480:7] [debug variable = x]
  %tmp_39 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_3, i32 8, i32 31) ; [#uses=1 type=i24]
  %p_mask3 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_39, i8 0), !dbg !141 ; [#uses=1 type=i32] [debug line = 481:7]
  %tmp_19 = icmp eq i32 %p_mask3, 256, !dbg !141  ; [#uses=1 type=i1] [debug line = 481:7]
  %tmp_20 = xor i32 %x_3, 283, !dbg !142          ; [#uses=1 type=i32] [debug line = 482:2]
  %storemerge8_v = select i1 %tmp_19, i32 %tmp_20, i32 %x_3 ; [#uses=1 type=i32]
  %worda_load_1 = load i32* %worda_addr_1, align 4, !dbg !133 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp4 = xor i32 %x_4, %x_6, !dbg !133           ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp6 = xor i32 %storemerge8_v, %tmp_23_tmp_s, !dbg !133 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp5 = xor i32 %tmp6, %worda_load_1, !dbg !133 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp_21 = xor i32 %tmp5, %tmp4, !dbg !133       ; [#uses=1 type=i32] [debug line = 485:7]
  store i32 %tmp_21, i32* %ret_addr_5, align 4, !dbg !133 ; [debug line = 485:7]
  %ret_addr_6 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_14_cast, !dbg !143 ; [#uses=1 type=i32*] [debug line = 488:7]
  %tmp_40 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_2, i32 7, i32 30) ; [#uses=1 type=i24]
  %p_mask4 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_40, i8 0), !dbg !144 ; [#uses=1 type=i32] [debug line = 489:7]
  %tmp_22 = icmp eq i32 %p_mask4, 256, !dbg !144  ; [#uses=1 type=i1] [debug line = 489:7]
  %tmp_23 = xor i32 %tmp_38, 283, !dbg !145       ; [#uses=1 type=i32] [debug line = 490:2]
  %tmp_33_tmp_s = select i1 %tmp_22, i32 %tmp_23, i32 %tmp_38, !dbg !144 ; [#uses=1 type=i32] [debug line = 489:7]
  call void @llvm.dbg.value(metadata !{i32 %x_4}, i64 0, metadata !129), !dbg !146 ; [debug line = 491:7] [debug variable = x]
  %tmp_41 = shl i32 %x_4, 1, !dbg !147            ; [#uses=3 type=i32] [debug line = 492:7]
  %x_5 = xor i32 %x_4, %tmp_41, !dbg !147         ; [#uses=3 type=i32] [debug line = 492:7]
  call void @llvm.dbg.value(metadata !{i32 %x_5}, i64 0, metadata !129), !dbg !147 ; [debug line = 492:7] [debug variable = x]
  %tmp_42 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_5, i32 8, i32 31) ; [#uses=1 type=i24]
  %p_mask5 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_42, i8 0), !dbg !148 ; [#uses=1 type=i32] [debug line = 493:7]
  %tmp_25 = icmp eq i32 %p_mask5, 256, !dbg !148  ; [#uses=1 type=i1] [debug line = 493:7]
  %tmp_26 = xor i32 %x_5, 283, !dbg !149          ; [#uses=1 type=i32] [debug line = 494:2]
  %storemerge9_v = select i1 %tmp_25, i32 %tmp_26, i32 %x_5 ; [#uses=1 type=i32]
  %worda_load_2 = load i32* %worda_addr_2, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp7 = xor i32 %x, %x_6, !dbg !134             ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp9 = xor i32 %storemerge9_v, %tmp_33_tmp_s, !dbg !134 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp8 = xor i32 %tmp9, %worda_load_2, !dbg !134 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp_27 = xor i32 %tmp8, %tmp7, !dbg !134       ; [#uses=1 type=i32] [debug line = 497:7]
  store i32 %tmp_27, i32* %ret_addr_6, align 4, !dbg !134 ; [debug line = 497:7]
  %ret_addr_7 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_15_cast, !dbg !150 ; [#uses=1 type=i32*] [debug line = 500:7]
  %tmp_43 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_4, i32 7, i32 30) ; [#uses=1 type=i24]
  %p_mask6 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_43, i8 0), !dbg !151 ; [#uses=1 type=i32] [debug line = 501:7]
  %tmp_28 = icmp eq i32 %p_mask6, 256, !dbg !151  ; [#uses=1 type=i1] [debug line = 501:7]
  %tmp_29 = xor i32 %tmp_41, 283, !dbg !152       ; [#uses=1 type=i32] [debug line = 502:2]
  %tmp_43_tmp_s = select i1 %tmp_28, i32 %tmp_29, i32 %tmp_41, !dbg !151 ; [#uses=1 type=i32] [debug line = 501:7]
  call void @llvm.dbg.value(metadata !{i32 %x_6}, i64 0, metadata !129), !dbg !153 ; [debug line = 503:7] [debug variable = x]
  %x_7 = xor i32 %x_6, %tmp_18, !dbg !154         ; [#uses=3 type=i32] [debug line = 504:7]
  call void @llvm.dbg.value(metadata !{i32 %x_7}, i64 0, metadata !129), !dbg !154 ; [debug line = 504:7] [debug variable = x]
  %tmp_44 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_7, i32 8, i32 31) ; [#uses=1 type=i24]
  %p_mask7 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_44, i8 0), !dbg !155 ; [#uses=1 type=i32] [debug line = 505:7]
  %tmp_30 = icmp eq i32 %p_mask7, 256, !dbg !155  ; [#uses=1 type=i1] [debug line = 505:7]
  %tmp_31 = xor i32 %x_7, 283, !dbg !156          ; [#uses=1 type=i32] [debug line = 506:2]
  %storemerge1_v = select i1 %tmp_30, i32 %tmp_31, i32 %x_7 ; [#uses=1 type=i32]
  %worda_load_3 = load i32* %worda_addr_3, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp10 = xor i32 %x_2, %x, !dbg !135            ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp12 = xor i32 %storemerge1_v, %tmp_43_tmp_s, !dbg !135 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp11 = xor i32 %tmp12, %worda_load_3, !dbg !135 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp_32 = xor i32 %tmp11, %tmp10, !dbg !135     ; [#uses=1 type=i32] [debug line = 509:7]
  store i32 %tmp_32, i32* %ret_addr_7, align 4, !dbg !135 ; [debug line = 509:7]
  call void @llvm.dbg.value(metadata !{i3 %j_3}, i64 0, metadata !157), !dbg !122 ; [debug line = 462:23] [debug variable = j]
  br label %1, !dbg !122                          ; [debug line = 462:23]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j_1 = phi i3 [ %j_2, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %j_1, -4, !dbg !123      ; [#uses=1 type=i1] [debug line = 512:8]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_2 = add i3 %j_1, 1, !dbg !158                ; [#uses=1 type=i3] [debug line = 512:23]
  br i1 %exitcond, label %3, label %2, !dbg !123  ; [debug line = 512:8]

; <label>:2                                       ; preds = %.preheader
  %tmp_45 = trunc i3 %j_1 to i2                   ; [#uses=1 type=i2]
  %tmp_2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_45, i2 0), !dbg !159 ; [#uses=4 type=i4] [debug line = 514:7]
  %tmp_2_cast = zext i4 %tmp_2 to i32, !dbg !159  ; [#uses=2 type=i32] [debug line = 514:7]
  %ret_addr_1 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_2_cast, !dbg !159 ; [#uses=1 type=i32*] [debug line = 514:7]
  %ret_load = load i32* %ret_addr_1, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 514:7]
  %statemt_addr_2 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_2_cast, !dbg !159 ; [#uses=1 type=i32*] [debug line = 514:7]
  store i32 %ret_load, i32* %statemt_addr_2, align 4, !dbg !159 ; [debug line = 514:7]
  %tmp_4 = or i4 %tmp_2, 1, !dbg !161             ; [#uses=1 type=i4] [debug line = 515:7]
  %tmp_4_cast = zext i4 %tmp_4 to i32, !dbg !161  ; [#uses=2 type=i32] [debug line = 515:7]
  %ret_addr_2 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_4_cast, !dbg !161 ; [#uses=1 type=i32*] [debug line = 515:7]
  %ret_load_2 = load i32* %ret_addr_2, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 515:7]
  %statemt_addr_3 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_4_cast, !dbg !161 ; [#uses=1 type=i32*] [debug line = 515:7]
  store i32 %ret_load_2, i32* %statemt_addr_3, align 4, !dbg !161 ; [debug line = 515:7]
  %tmp_12 = or i4 %tmp_2, 2, !dbg !162            ; [#uses=1 type=i4] [debug line = 516:7]
  %tmp_12_cast = zext i4 %tmp_12 to i32, !dbg !162 ; [#uses=2 type=i32] [debug line = 516:7]
  %ret_addr_3 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_12_cast, !dbg !162 ; [#uses=1 type=i32*] [debug line = 516:7]
  %ret_load_3 = load i32* %ret_addr_3, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 516:7]
  %statemt_addr_4 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_12_cast, !dbg !162 ; [#uses=1 type=i32*] [debug line = 516:7]
  store i32 %ret_load_3, i32* %statemt_addr_4, align 4, !dbg !162 ; [debug line = 516:7]
  %tmp_13 = or i4 %tmp_2, 3, !dbg !163            ; [#uses=1 type=i4] [debug line = 517:7]
  %tmp_13_cast = zext i4 %tmp_13 to i32, !dbg !163 ; [#uses=2 type=i32] [debug line = 517:7]
  %ret_addr_4 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_13_cast, !dbg !163 ; [#uses=1 type=i32*] [debug line = 517:7]
  %ret_load_4 = load i32* %ret_addr_4, align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 517:7]
  %statemt_addr_5 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_13_cast, !dbg !163 ; [#uses=1 type=i32*] [debug line = 517:7]
  store i32 %ret_load_4, i32* %statemt_addr_5, align 4, !dbg !163 ; [debug line = 517:7]
  call void @llvm.dbg.value(metadata !{i3 %j_2}, i64 0, metadata !157), !dbg !158 ; [debug line = 512:23] [debug variable = j]
  br label %.preheader, !dbg !158                 ; [debug line = 512:23]

; <label>:3                                       ; preds = %.preheader
  ret void
}

; [#uses=1]
define internal fastcc void @KeySchedule([32 x i32]* nocapture %key) {
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !164), !dbg !168 ; [debug line = 178:32] [debug variable = key]
  br label %.loopexit, !dbg !169                  ; [debug line = 192:8]

.loopexit.loopexit:                               ; preds = %.preheader4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %j = phi i3 [ 0, %0 ], [ %j_4, %.loopexit.loopexit ] ; [#uses=4 type=i3]
  %exitcond3 = icmp eq i3 %j, -4, !dbg !169       ; [#uses=1 type=i1] [debug line = 192:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_4 = add i3 %j, 1, !dbg !172                  ; [#uses=1 type=i3] [debug line = 192:23]
  call void @llvm.dbg.value(metadata !{i3 %j_4}, i64 0, metadata !173), !dbg !172 ; [debug line = 192:23] [debug variable = j]
  br i1 %exitcond3, label %.preheader.preheader, label %.preheader4.preheader, !dbg !169 ; [debug line = 192:8]

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader, !dbg !174                 ; [debug line = 198:8]

.preheader4.preheader:                            ; preds = %.loopexit
  %tmp_46 = trunc i3 %j to i2                     ; [#uses=1 type=i2]
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_46, i2 0), !dbg !176 ; [#uses=1 type=i4] [debug line = 195:7]
  br label %.preheader4, !dbg !178                ; [debug line = 193:10]

.preheader4:                                      ; preds = %1, %.preheader4.preheader
  %i = phi i3 [ %i_1, %1 ], [ 0, %.preheader4.preheader ] ; [#uses=5 type=i3]
  %tmp_45 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 %i, i7 0) ; [#uses=1 type=i10]
  %p_shl_cast = zext i10 %tmp_45 to i11           ; [#uses=1 type=i11]
  %tmp_47 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 0) ; [#uses=1 type=i6]
  %p_shl5_cast = zext i6 %tmp_47 to i11, !dbg !176 ; [#uses=1 type=i11] [debug line = 195:7]
  %tmp_48 = sub i11 %p_shl_cast, %p_shl5_cast, !dbg !176 ; [#uses=2 type=i11] [debug line = 195:7]
  %tmp_49 = trunc i11 %tmp_48 to i3               ; [#uses=1 type=i3]
  %tmp_50 = or i3 %tmp_49, %j                     ; [#uses=1 type=i3]
  %tmp_51 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %tmp_48, i32 3, i32 10) ; [#uses=1 type=i8]
  %tmp_52 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_51, i3 %tmp_50) ; [#uses=1 type=i11]
  %tmp_53 = sext i11 %tmp_52 to i32, !dbg !176    ; [#uses=1 type=i32] [debug line = 195:7]
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_53, !dbg !176 ; [#uses=1 type=i32*] [debug line = 195:7]
  %i_cast = zext i3 %i to i4, !dbg !178           ; [#uses=1 type=i4] [debug line = 193:10]
  %exitcond2 = icmp eq i3 %i, -4, !dbg !178       ; [#uses=1 type=i1] [debug line = 193:10]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_1 = add i3 1, %i, !dbg !179                  ; [#uses=1 type=i3] [debug line = 193:24]
  br i1 %exitcond2, label %.loopexit.loopexit, label %1, !dbg !178 ; [debug line = 193:10]

; <label>:1                                       ; preds = %.preheader4
  %sum = add i4 %i_cast, %tmp                     ; [#uses=1 type=i4]
  %sum_cast = zext i4 %sum to i32                 ; [#uses=1 type=i32]
  %key_addr = getelementptr [32 x i32]* %key, i32 0, i32 %sum_cast, !dbg !176 ; [#uses=1 type=i32*] [debug line = 195:7]
  %key_load = load i32* %key_addr, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 195:7]
  store i32 %key_load, i32* %worda_addr, align 4, !dbg !176 ; [debug line = 195:7]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !180), !dbg !179 ; [debug line = 193:24] [debug variable = i]
  br label %.preheader4, !dbg !179                ; [debug line = 193:24]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %j_1 = phi i6 [ %j_5, %5 ], [ 4, %.preheader.preheader ] ; [#uses=7 type=i6]
  %j_1_cast2_cast = zext i6 %j_1 to i10, !dbg !174 ; [#uses=1 type=i10] [debug line = 198:8]
  %exitcond1 = icmp eq i6 %j_1, -20, !dbg !174    ; [#uses=1 type=i1] [debug line = 198:8]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %2, !dbg !174 ; [debug line = 198:8]

; <label>:2                                       ; preds = %.preheader
  %tmp_54 = trunc i6 %j_1 to i2, !dbg !174        ; [#uses=1 type=i2] [debug line = 198:8]
  %tmp_s = icmp eq i2 %tmp_54, 0, !dbg !181       ; [#uses=1 type=i1] [debug line = 202:7]
  %tmp_33 = add i6 -1, %j_1, !dbg !183            ; [#uses=3 type=i6] [debug line = 204:14]
  %tmp_50_cast = zext i6 %tmp_33 to i32, !dbg !183 ; [#uses=1 type=i32] [debug line = 204:14]
  %tmp_50_cast_cast1 = zext i6 %tmp_33 to i9, !dbg !183 ; [#uses=2 type=i9] [debug line = 204:14]
  %tmp_50_cast_cast = zext i6 %tmp_33 to i8, !dbg !183 ; [#uses=1 type=i8] [debug line = 204:14]
  %tmp_55 = add i8 120, %tmp_50_cast_cast, !dbg !183 ; [#uses=1 type=i8] [debug line = 204:14]
  %tmp_58_cast = zext i8 %tmp_55 to i32, !dbg !183 ; [#uses=1 type=i32] [debug line = 204:14]
  %worda_addr_4 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_58_cast, !dbg !183 ; [#uses=2 type=i32*] [debug line = 204:14]
  %tmp_56 = add i9 240, %tmp_50_cast_cast1, !dbg !185 ; [#uses=1 type=i9] [debug line = 205:14]
  %tmp_59_cast = zext i9 %tmp_56 to i32, !dbg !185 ; [#uses=1 type=i32] [debug line = 205:14]
  %worda_addr_5 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_59_cast, !dbg !185 ; [#uses=2 type=i32*] [debug line = 205:14]
  %tmp_57 = add i9 -152, %tmp_50_cast_cast1, !dbg !186 ; [#uses=1 type=i9] [debug line = 206:14]
  %tmp_60_cast = zext i9 %tmp_57 to i32, !dbg !186 ; [#uses=1 type=i32] [debug line = 206:14]
  %worda_addr_6 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_60_cast, !dbg !186 ; [#uses=2 type=i32*] [debug line = 206:14]
  %worda_addr_7 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_50_cast, !dbg !187 ; [#uses=2 type=i32*] [debug line = 207:14]
  br i1 %tmp_s, label %._crit_edge, label %.critedge, !dbg !181 ; [debug line = 202:7]

._crit_edge:                                      ; preds = %2
  %worda_load_5 = load i32* %worda_addr_4, align 4, !dbg !183 ; [#uses=4 type=i32] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{i32 %worda_load_5}, i64 0, metadata !188) nounwind, !dbg !192 ; [debug line = 338:18@204:14] [debug variable = in]
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_5, i32 31), !dbg !193 ; [#uses=2 type=i1] [debug line = 340:3@204:14]
  %tmp_59 = trunc i32 %worda_load_5 to i4         ; [#uses=1 type=i4]
  %p_neg1 = sub i32 0, %worda_load_5, !dbg !193   ; [#uses=2 type=i32] [debug line = 340:3@204:14]
  %tmp_60 = trunc i32 %p_neg1 to i4               ; [#uses=1 type=i4]
  %tmp_61 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_60), !dbg !193 ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %tmp_62 = sub i10 0, %tmp_61, !dbg !193         ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %tmp_63 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_59), !dbg !193 ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %tmp_64 = select i1 %tmp_58, i10 %tmp_62, i10 %tmp_63, !dbg !193 ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %p_lshr_i_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg1, i32 4, i32 9), !dbg !193 ; [#uses=1 type=i6] [debug line = 340:3@204:14]
  %p_neg_t_i = sub i6 0, %p_lshr_i_cast, !dbg !193 ; [#uses=1 type=i6] [debug line = 340:3@204:14]
  %tmp_65 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_5, i32 4, i32 9), !dbg !193 ; [#uses=1 type=i6] [debug line = 340:3@204:14]
  %tmp_66 = select i1 %tmp_58, i6 %p_neg_t_i, i6 %tmp_65, !dbg !193 ; [#uses=1 type=i6] [debug line = 340:3@204:14]
  %tmp_67_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_66, i4 0), !dbg !193 ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %tmp_67 = add i10 %tmp_67_cast, %tmp_64, !dbg !193 ; [#uses=1 type=i10] [debug line = 340:3@204:14]
  %tmp_68_cast = zext i10 %tmp_67 to i32, !dbg !193 ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %Sbox_addr = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_68_cast, !dbg !193 ; [#uses=1 type=i8*] [debug line = 340:3@204:14]
  %Sbox_load = load i8* %Sbox_addr, align 1, !dbg !193 ; [#uses=1 type=i8] [debug line = 340:3@204:14]
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %j_1, i32 2, i32 5), !dbg !183 ; [#uses=1 type=i4] [debug line = 204:14]
  %addconv = add i4 -1, %p_lshr_f_cast, !dbg !183 ; [#uses=1 type=i4] [debug line = 204:14]
  %tmp_34 = zext i4 %addconv to i32, !dbg !183    ; [#uses=1 type=i32] [debug line = 204:14]
  %Rcon0_addr = getelementptr [30 x i8]* @Rcon0, i32 0, i32 %tmp_34, !dbg !183 ; [#uses=1 type=i8*] [debug line = 204:14]
  %Rcon0_load = load i8* %Rcon0_addr, align 1, !dbg !183 ; [#uses=1 type=i8] [debug line = 204:14]
  %temp_0 = xor i8 %Rcon0_load, %Sbox_load, !dbg !183 ; [#uses=1 type=i8] [debug line = 204:14]
  %temp_0_1_cast = zext i8 %temp_0 to i32, !dbg !183 ; [#uses=1 type=i32] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{i8 %temp_0}, i64 0, metadata !195), !dbg !183 ; [debug line = 204:14] [debug variable = temp[0]]
  %worda_load_6 = load i32* %worda_addr_5, align 4, !dbg !185 ; [#uses=4 type=i32] [debug line = 205:14]
  call void @llvm.dbg.value(metadata !{i32 %worda_load_6}, i64 0, metadata !200) nounwind, !dbg !201 ; [debug line = 338:18@205:14] [debug variable = in]
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_6, i32 31), !dbg !202 ; [#uses=2 type=i1] [debug line = 340:3@205:14]
  %tmp_69 = trunc i32 %worda_load_6 to i4         ; [#uses=1 type=i4]
  %p_neg2 = sub i32 0, %worda_load_6, !dbg !202   ; [#uses=2 type=i32] [debug line = 340:3@205:14]
  %tmp_70 = trunc i32 %p_neg2 to i4               ; [#uses=1 type=i4]
  %tmp_71 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_70), !dbg !202 ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %tmp_72 = sub i10 0, %tmp_71, !dbg !202         ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %tmp_73 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_69), !dbg !202 ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %tmp_74 = select i1 %tmp_68, i10 %tmp_72, i10 %tmp_73, !dbg !202 ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %p_lshr_i1_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg2, i32 4, i32 9), !dbg !202 ; [#uses=1 type=i6] [debug line = 340:3@205:14]
  %p_neg_t_i1 = sub i6 0, %p_lshr_i1_cast, !dbg !202 ; [#uses=1 type=i6] [debug line = 340:3@205:14]
  %tmp_75 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_6, i32 4, i32 9), !dbg !202 ; [#uses=1 type=i6] [debug line = 340:3@205:14]
  %tmp_77 = select i1 %tmp_68, i6 %p_neg_t_i1, i6 %tmp_75, !dbg !202 ; [#uses=1 type=i6] [debug line = 340:3@205:14]
  %tmp_75_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_77, i4 0), !dbg !202 ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %tmp_76 = add i10 %tmp_75_cast, %tmp_74, !dbg !202 ; [#uses=1 type=i10] [debug line = 340:3@205:14]
  %tmp_76_cast = zext i10 %tmp_76 to i32, !dbg !202 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %Sbox_addr_1 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_76_cast, !dbg !202 ; [#uses=1 type=i8*] [debug line = 340:3@205:14]
  %temp_1 = load i8* %Sbox_addr_1, align 1, !dbg !202 ; [#uses=1 type=i8] [debug line = 340:3@205:14]
  %temp_1_cast = zext i8 %temp_1 to i32, !dbg !202 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  call void @llvm.dbg.value(metadata !{i8 %temp_1}, i64 0, metadata !203), !dbg !185 ; [debug line = 205:14] [debug variable = temp[1]]
  %worda_load_7 = load i32* %worda_addr_6, align 4, !dbg !186 ; [#uses=4 type=i32] [debug line = 206:14]
  call void @llvm.dbg.value(metadata !{i32 %worda_load_7}, i64 0, metadata !204) nounwind, !dbg !205 ; [debug line = 338:18@206:14] [debug variable = in]
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_7, i32 31), !dbg !206 ; [#uses=2 type=i1] [debug line = 340:3@206:14]
  %tmp_79 = trunc i32 %worda_load_7 to i4         ; [#uses=1 type=i4]
  %p_neg9 = sub i32 0, %worda_load_7, !dbg !206   ; [#uses=2 type=i32] [debug line = 340:3@206:14]
  %tmp_80 = trunc i32 %p_neg9 to i4               ; [#uses=1 type=i4]
  %tmp_81 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_80), !dbg !206 ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %tmp_82 = sub i10 0, %tmp_81, !dbg !206         ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %tmp_83 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_79), !dbg !206 ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %tmp_85 = select i1 %tmp_78, i10 %tmp_82, i10 %tmp_83, !dbg !206 ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %p_lshr_i2_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg9, i32 4, i32 9), !dbg !206 ; [#uses=1 type=i6] [debug line = 340:3@206:14]
  %p_neg_t_i2 = sub i6 0, %p_lshr_i2_cast, !dbg !206 ; [#uses=1 type=i6] [debug line = 340:3@206:14]
  %tmp_86 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_7, i32 4, i32 9), !dbg !206 ; [#uses=1 type=i6] [debug line = 340:3@206:14]
  %tmp_87 = select i1 %tmp_78, i6 %p_neg_t_i2, i6 %tmp_86, !dbg !206 ; [#uses=1 type=i6] [debug line = 340:3@206:14]
  %tmp_83_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_87, i4 0), !dbg !206 ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %tmp_84 = add i10 %tmp_83_cast, %tmp_85, !dbg !206 ; [#uses=1 type=i10] [debug line = 340:3@206:14]
  %tmp_84_cast = zext i10 %tmp_84 to i32, !dbg !206 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %Sbox_addr_2 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_84_cast, !dbg !206 ; [#uses=1 type=i8*] [debug line = 340:3@206:14]
  %temp_2 = load i8* %Sbox_addr_2, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 340:3@206:14]
  %temp_2_cast = zext i8 %temp_2 to i32, !dbg !206 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  call void @llvm.dbg.value(metadata !{i8 %temp_2}, i64 0, metadata !207), !dbg !186 ; [debug line = 206:14] [debug variable = temp[2]]
  %worda_load_8 = load i32* %worda_addr_7, align 4, !dbg !187 ; [#uses=4 type=i32] [debug line = 207:14]
  call void @llvm.dbg.value(metadata !{i32 %worda_load_8}, i64 0, metadata !208) nounwind, !dbg !209 ; [debug line = 338:18@207:14] [debug variable = in]
  %tmp_88 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_8, i32 31), !dbg !210 ; [#uses=2 type=i1] [debug line = 340:3@207:14]
  %tmp_89 = trunc i32 %worda_load_8 to i4         ; [#uses=1 type=i4]
  %p_neg = sub i32 0, %worda_load_8, !dbg !210    ; [#uses=2 type=i32] [debug line = 340:3@207:14]
  %tmp_90 = trunc i32 %p_neg to i4                ; [#uses=1 type=i4]
  %tmp_91 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_90), !dbg !210 ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %tmp_98 = sub i10 0, %tmp_91, !dbg !210         ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %tmp_99 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_89), !dbg !210 ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %tmp_100 = select i1 %tmp_88, i10 %tmp_98, i10 %tmp_99, !dbg !210 ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %p_lshr_i3_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg, i32 4, i32 9), !dbg !210 ; [#uses=1 type=i6] [debug line = 340:3@207:14]
  %p_neg_t_i3 = sub i6 0, %p_lshr_i3_cast, !dbg !210 ; [#uses=1 type=i6] [debug line = 340:3@207:14]
  %tmp_101 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_8, i32 4, i32 9), !dbg !210 ; [#uses=1 type=i6] [debug line = 340:3@207:14]
  %tmp_102 = select i1 %tmp_88, i6 %p_neg_t_i3, i6 %tmp_101, !dbg !210 ; [#uses=1 type=i6] [debug line = 340:3@207:14]
  %tmp_91_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_102, i4 0), !dbg !210 ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %tmp_92 = add i10 %tmp_91_cast, %tmp_100, !dbg !210 ; [#uses=1 type=i10] [debug line = 340:3@207:14]
  %tmp_92_cast = zext i10 %tmp_92 to i32, !dbg !210 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %Sbox_addr_3 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_92_cast, !dbg !210 ; [#uses=1 type=i8*] [debug line = 340:3@207:14]
  %Sbox_load_3 = load i8* %Sbox_addr_3, align 1, !dbg !210 ; [#uses=1 type=i8] [debug line = 340:3@207:14]
  %Sbox_load_3_cast = zext i8 %Sbox_load_3 to i32, !dbg !210 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  br label %._crit_edge5, !dbg !211               ; [debug line = 209:7]

.critedge:                                        ; preds = %2
  %temp_0_1 = load i32* %worda_addr_7, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 211:4]
  call void @llvm.dbg.value(metadata !{i32 %temp_0_1}, i64 0, metadata !195), !dbg !212 ; [debug line = 211:4] [debug variable = temp[0]]
  %temp_1_1 = load i32* %worda_addr_4, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 212:4]
  call void @llvm.dbg.value(metadata !{i32 %temp_1_1}, i64 0, metadata !203), !dbg !214 ; [debug line = 212:4] [debug variable = temp[1]]
  %temp_2_1 = load i32* %worda_addr_5, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 213:4]
  call void @llvm.dbg.value(metadata !{i32 %temp_2_1}, i64 0, metadata !207), !dbg !215 ; [debug line = 213:4] [debug variable = temp[2]]
  %worda_load = load i32* %worda_addr_6, align 4, !dbg !216 ; [#uses=1 type=i32] [debug line = 214:4]
  br label %._crit_edge5, !dbg !217               ; [debug line = 215:2]

._crit_edge5:                                     ; preds = %.critedge, %._crit_edge
  %temp_22 = phi i32 [ %temp_2_cast, %._crit_edge ], [ %temp_2_1, %.critedge ] ; [#uses=1 type=i32]
  %temp_12 = phi i32 [ %temp_1_cast, %._crit_edge ], [ %temp_1_1, %.critedge ] ; [#uses=1 type=i32]
  %temp_02 = phi i32 [ %temp_0_1_cast, %._crit_edge ], [ %temp_0_1, %.critedge ] ; [#uses=1 type=i32]
  %temp_3 = phi i32 [ %Sbox_load_3_cast, %._crit_edge ], [ %worda_load, %.critedge ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %temp_3}, i64 0, metadata !218), !dbg !187 ; [debug line = 207:14] [debug variable = temp[3]]
  %tmp_35 = add i6 %j_1, -4, !dbg !219            ; [#uses=1 type=i6] [debug line = 220:2]
  %tmp_52_cast_cast = zext i6 %tmp_35 to i10, !dbg !221 ; [#uses=1 type=i10] [debug line = 219:12]
  br label %3, !dbg !221                          ; [debug line = 219:12]

; <label>:3                                       ; preds = %4, %._crit_edge5
  %i_2 = phi i3 [ 0, %._crit_edge5 ], [ %i_3, %4 ] ; [#uses=5 type=i3]
  %tmp_93 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 %i_2, i7 0) ; [#uses=1 type=i10]
  %tmp_94 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_2, i3 0) ; [#uses=1 type=i6]
  %p_shl2_cast = zext i6 %tmp_94 to i10, !dbg !219 ; [#uses=1 type=i10] [debug line = 220:2]
  %tmp_95 = sub i10 %tmp_93, %p_shl2_cast, !dbg !219 ; [#uses=2 type=i10] [debug line = 220:2]
  %tmp_96 = add i10 %tmp_95, %tmp_52_cast_cast, !dbg !219 ; [#uses=1 type=i10] [debug line = 220:2]
  %tmp_96_cast = sext i10 %tmp_96 to i32, !dbg !219 ; [#uses=1 type=i32] [debug line = 220:2]
  %worda_addr_8 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_96_cast, !dbg !219 ; [#uses=1 type=i32*] [debug line = 220:2]
  %tmp_97 = add i10 %tmp_95, %j_1_cast2_cast, !dbg !219 ; [#uses=1 type=i10] [debug line = 220:2]
  %tmp_97_cast = sext i10 %tmp_97 to i32, !dbg !219 ; [#uses=1 type=i32] [debug line = 220:2]
  %worda_addr_9 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_97_cast, !dbg !219 ; [#uses=1 type=i32*] [debug line = 220:2]
  %exitcond = icmp eq i3 %i_2, -4, !dbg !221      ; [#uses=1 type=i1] [debug line = 219:12]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_3 = add i3 %i_2, 1, !dbg !222                ; [#uses=1 type=i3] [debug line = 219:26]
  br i1 %exitcond, label %5, label %4, !dbg !221  ; [debug line = 219:12]

; <label>:4                                       ; preds = %3
  %worda_load_4 = load i32* %worda_addr_8, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 220:2]
  %tmp_103 = trunc i3 %i_2 to i2                  ; [#uses=1 type=i2]
  %tmp_13 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %temp_02, i32 %temp_12, i32 %temp_22, i32 %temp_3, i2 %tmp_103) ; [#uses=1 type=i32]
  %tmp_36 = xor i32 %worda_load_4, %tmp_13, !dbg !219 ; [#uses=1 type=i32] [debug line = 220:2]
  store i32 %tmp_36, i32* %worda_addr_9, align 4, !dbg !219 ; [debug line = 220:2]
  call void @llvm.dbg.value(metadata !{i3 %i_3}, i64 0, metadata !180), !dbg !222 ; [debug line = 219:26] [debug variable = i]
  br label %3, !dbg !222                          ; [debug line = 219:26]

; <label>:5                                       ; preds = %3
  %j_5 = add i6 %j_1, 1, !dbg !223                ; [#uses=1 type=i6] [debug line = 198:42]
  call void @llvm.dbg.value(metadata !{i6 %j_5}, i64 0, metadata !173), !dbg !223 ; [debug line = 198:42] [debug variable = j]
  br label %.preheader, !dbg !223                 ; [debug line = 198:42]

; <label>:6                                       ; preds = %.preheader
  ret void
}

; [#uses=2]
define internal fastcc void @ByteSub_ShiftRow([32 x i32]* nocapture %statemt) {
._crit_edge:
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 0 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !224), !dbg !228 ; [debug line = 226:28] [debug variable = statemt]
  %statemt_addr_8 = getelementptr [32 x i32]* %statemt, i32 0, i32 1, !dbg !229 ; [#uses=2 type=i32*] [debug line = 233:7]
  %statemt_load = load i32* %statemt_addr_8, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 233:7]
  %Sbox_addr = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load, !dbg !229 ; [#uses=1 type=i8*] [debug line = 233:7]
  %temp = load i8* %Sbox_addr, align 1, !dbg !229 ; [#uses=1 type=i8] [debug line = 233:7]
  %temp_cast = zext i8 %temp to i32, !dbg !229    ; [#uses=1 type=i32] [debug line = 233:7]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !232), !dbg !229 ; [debug line = 233:7] [debug variable = temp]
  %statemt_addr_9 = getelementptr [32 x i32]* %statemt, i32 0, i32 5, !dbg !233 ; [#uses=2 type=i32*] [debug line = 234:7]
  %statemt_load_4 = load i32* %statemt_addr_9, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 234:7]
  %Sbox_addr_1 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_4, !dbg !233 ; [#uses=1 type=i8*] [debug line = 234:7]
  %Sbox_load = load i8* %Sbox_addr_1, align 1, !dbg !233 ; [#uses=1 type=i8] [debug line = 234:7]
  %Sbox_load_cast = zext i8 %Sbox_load to i32, !dbg !233 ; [#uses=1 type=i32] [debug line = 234:7]
  store i32 %Sbox_load_cast, i32* %statemt_addr_8, align 4, !dbg !233 ; [debug line = 234:7]
  %statemt_addr_10 = getelementptr [32 x i32]* %statemt, i32 0, i32 9, !dbg !234 ; [#uses=2 type=i32*] [debug line = 235:7]
  %statemt_load_5 = load i32* %statemt_addr_10, align 4, !dbg !234 ; [#uses=1 type=i32] [debug line = 235:7]
  %Sbox_addr_2 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_5, !dbg !234 ; [#uses=1 type=i8*] [debug line = 235:7]
  %Sbox_load_1 = load i8* %Sbox_addr_2, align 1, !dbg !234 ; [#uses=1 type=i8] [debug line = 235:7]
  %Sbox_load_1_cast = zext i8 %Sbox_load_1 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 235:7]
  store i32 %Sbox_load_1_cast, i32* %statemt_addr_9, align 4, !dbg !234 ; [debug line = 235:7]
  %statemt_addr_11 = getelementptr [32 x i32]* %statemt, i32 0, i32 13, !dbg !235 ; [#uses=2 type=i32*] [debug line = 236:7]
  %statemt_load_6 = load i32* %statemt_addr_11, align 4, !dbg !235 ; [#uses=1 type=i32] [debug line = 236:7]
  %Sbox_addr_3 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_6, !dbg !235 ; [#uses=1 type=i8*] [debug line = 236:7]
  %Sbox_load_2 = load i8* %Sbox_addr_3, align 1, !dbg !235 ; [#uses=1 type=i8] [debug line = 236:7]
  %Sbox_load_2_cast = zext i8 %Sbox_load_2 to i32, !dbg !235 ; [#uses=1 type=i32] [debug line = 236:7]
  store i32 %Sbox_load_2_cast, i32* %statemt_addr_10, align 4, !dbg !235 ; [debug line = 236:7]
  store i32 %temp_cast, i32* %statemt_addr_11, align 4, !dbg !236 ; [debug line = 237:7]
  %statemt_addr_12 = getelementptr [32 x i32]* %statemt, i32 0, i32 2, !dbg !237 ; [#uses=2 type=i32*] [debug line = 239:7]
  %statemt_load_7 = load i32* %statemt_addr_12, align 4, !dbg !237 ; [#uses=1 type=i32] [debug line = 239:7]
  %Sbox_addr_4 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_7, !dbg !237 ; [#uses=1 type=i8*] [debug line = 239:7]
  %temp_1 = load i8* %Sbox_addr_4, align 1, !dbg !237 ; [#uses=1 type=i8] [debug line = 239:7]
  %temp_1_cast = zext i8 %temp_1 to i32, !dbg !237 ; [#uses=1 type=i32] [debug line = 239:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_1}, i64 0, metadata !232), !dbg !237 ; [debug line = 239:7] [debug variable = temp]
  %statemt_addr_13 = getelementptr [32 x i32]* %statemt, i32 0, i32 10, !dbg !238 ; [#uses=2 type=i32*] [debug line = 240:7]
  %statemt_load_8 = load i32* %statemt_addr_13, align 4, !dbg !238 ; [#uses=1 type=i32] [debug line = 240:7]
  %Sbox_addr_5 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_8, !dbg !238 ; [#uses=1 type=i8*] [debug line = 240:7]
  %Sbox_load_4 = load i8* %Sbox_addr_5, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 240:7]
  %Sbox_load_4_cast = zext i8 %Sbox_load_4 to i32, !dbg !238 ; [#uses=1 type=i32] [debug line = 240:7]
  store i32 %Sbox_load_4_cast, i32* %statemt_addr_12, align 4, !dbg !238 ; [debug line = 240:7]
  store i32 %temp_1_cast, i32* %statemt_addr_13, align 4, !dbg !239 ; [debug line = 241:7]
  %statemt_addr_14 = getelementptr [32 x i32]* %statemt, i32 0, i32 6, !dbg !240 ; [#uses=2 type=i32*] [debug line = 242:7]
  %statemt_load_9 = load i32* %statemt_addr_14, align 4, !dbg !240 ; [#uses=1 type=i32] [debug line = 242:7]
  %Sbox_addr_6 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_9, !dbg !240 ; [#uses=1 type=i8*] [debug line = 242:7]
  %temp_2 = load i8* %Sbox_addr_6, align 1, !dbg !240 ; [#uses=1 type=i8] [debug line = 242:7]
  %temp_2_cast = zext i8 %temp_2 to i32, !dbg !240 ; [#uses=1 type=i32] [debug line = 242:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_2}, i64 0, metadata !232), !dbg !240 ; [debug line = 242:7] [debug variable = temp]
  %statemt_addr_15 = getelementptr [32 x i32]* %statemt, i32 0, i32 14, !dbg !241 ; [#uses=2 type=i32*] [debug line = 243:7]
  %statemt_load_10 = load i32* %statemt_addr_15, align 4, !dbg !241 ; [#uses=1 type=i32] [debug line = 243:7]
  %Sbox_addr_7 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_10, !dbg !241 ; [#uses=1 type=i8*] [debug line = 243:7]
  %Sbox_load_6 = load i8* %Sbox_addr_7, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 243:7]
  %Sbox_load_6_cast = zext i8 %Sbox_load_6 to i32, !dbg !241 ; [#uses=1 type=i32] [debug line = 243:7]
  store i32 %Sbox_load_6_cast, i32* %statemt_addr_14, align 4, !dbg !241 ; [debug line = 243:7]
  store i32 %temp_2_cast, i32* %statemt_addr_15, align 4, !dbg !242 ; [debug line = 244:7]
  %statemt_addr_16 = getelementptr [32 x i32]* %statemt, i32 0, i32 3, !dbg !243 ; [#uses=2 type=i32*] [debug line = 246:7]
  %statemt_load_11 = load i32* %statemt_addr_16, align 4, !dbg !243 ; [#uses=1 type=i32] [debug line = 246:7]
  %Sbox_addr_8 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_11, !dbg !243 ; [#uses=1 type=i8*] [debug line = 246:7]
  %temp_3 = load i8* %Sbox_addr_8, align 1, !dbg !243 ; [#uses=1 type=i8] [debug line = 246:7]
  %temp_3_cast = zext i8 %temp_3 to i32, !dbg !243 ; [#uses=1 type=i32] [debug line = 246:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_3}, i64 0, metadata !232), !dbg !243 ; [debug line = 246:7] [debug variable = temp]
  %statemt_addr_17 = getelementptr [32 x i32]* %statemt, i32 0, i32 15, !dbg !244 ; [#uses=2 type=i32*] [debug line = 247:7]
  %statemt_load_12 = load i32* %statemt_addr_17, align 4, !dbg !244 ; [#uses=1 type=i32] [debug line = 247:7]
  %Sbox_addr_9 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_12, !dbg !244 ; [#uses=1 type=i8*] [debug line = 247:7]
  %Sbox_load_8 = load i8* %Sbox_addr_9, align 1, !dbg !244 ; [#uses=1 type=i8] [debug line = 247:7]
  %Sbox_load_8_cast = zext i8 %Sbox_load_8 to i32, !dbg !244 ; [#uses=1 type=i32] [debug line = 247:7]
  store i32 %Sbox_load_8_cast, i32* %statemt_addr_16, align 4, !dbg !244 ; [debug line = 247:7]
  %statemt_addr_18 = getelementptr [32 x i32]* %statemt, i32 0, i32 11, !dbg !245 ; [#uses=2 type=i32*] [debug line = 248:7]
  %statemt_load_13 = load i32* %statemt_addr_18, align 4, !dbg !245 ; [#uses=1 type=i32] [debug line = 248:7]
  %Sbox_addr_10 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_13, !dbg !245 ; [#uses=1 type=i8*] [debug line = 248:7]
  %Sbox_load_9 = load i8* %Sbox_addr_10, align 1, !dbg !245 ; [#uses=1 type=i8] [debug line = 248:7]
  %Sbox_load_9_cast = zext i8 %Sbox_load_9 to i32, !dbg !245 ; [#uses=1 type=i32] [debug line = 248:7]
  store i32 %Sbox_load_9_cast, i32* %statemt_addr_17, align 4, !dbg !245 ; [debug line = 248:7]
  %statemt_addr_19 = getelementptr [32 x i32]* %statemt, i32 0, i32 7, !dbg !246 ; [#uses=2 type=i32*] [debug line = 249:7]
  %statemt_load_14 = load i32* %statemt_addr_19, align 4, !dbg !246 ; [#uses=1 type=i32] [debug line = 249:7]
  %Sbox_addr_11 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_14, !dbg !246 ; [#uses=1 type=i8*] [debug line = 249:7]
  %Sbox_load_10 = load i8* %Sbox_addr_11, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 249:7]
  %Sbox_load_10_cast = zext i8 %Sbox_load_10 to i32, !dbg !246 ; [#uses=1 type=i32] [debug line = 249:7]
  store i32 %Sbox_load_10_cast, i32* %statemt_addr_18, align 4, !dbg !246 ; [debug line = 249:7]
  store i32 %temp_3_cast, i32* %statemt_addr_19, align 4, !dbg !247 ; [debug line = 250:7]
  %statemt_load_15 = load i32* %statemt_addr, align 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 252:7]
  %Sbox_addr_12 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_15, !dbg !248 ; [#uses=1 type=i8*] [debug line = 252:7]
  %Sbox_load_11 = load i8* %Sbox_addr_12, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 252:7]
  %Sbox_load_11_cast = zext i8 %Sbox_load_11 to i32, !dbg !248 ; [#uses=1 type=i32] [debug line = 252:7]
  store i32 %Sbox_load_11_cast, i32* %statemt_addr, align 4, !dbg !248 ; [debug line = 252:7]
  %statemt_addr_20 = getelementptr [32 x i32]* %statemt, i32 0, i32 4, !dbg !249 ; [#uses=2 type=i32*] [debug line = 253:7]
  %statemt_load_16 = load i32* %statemt_addr_20, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 253:7]
  %Sbox_addr_13 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_16, !dbg !249 ; [#uses=1 type=i8*] [debug line = 253:7]
  %Sbox_load_12 = load i8* %Sbox_addr_13, align 1, !dbg !249 ; [#uses=1 type=i8] [debug line = 253:7]
  %Sbox_load_12_cast = zext i8 %Sbox_load_12 to i32, !dbg !249 ; [#uses=1 type=i32] [debug line = 253:7]
  store i32 %Sbox_load_12_cast, i32* %statemt_addr_20, align 4, !dbg !249 ; [debug line = 253:7]
  %statemt_addr_21 = getelementptr [32 x i32]* %statemt, i32 0, i32 8, !dbg !250 ; [#uses=2 type=i32*] [debug line = 254:7]
  %statemt_load_17 = load i32* %statemt_addr_21, align 4, !dbg !250 ; [#uses=1 type=i32] [debug line = 254:7]
  %Sbox_addr_14 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_17, !dbg !250 ; [#uses=1 type=i8*] [debug line = 254:7]
  %Sbox_load_13 = load i8* %Sbox_addr_14, align 1, !dbg !250 ; [#uses=1 type=i8] [debug line = 254:7]
  %Sbox_load_13_cast = zext i8 %Sbox_load_13 to i32, !dbg !250 ; [#uses=1 type=i32] [debug line = 254:7]
  store i32 %Sbox_load_13_cast, i32* %statemt_addr_21, align 4, !dbg !250 ; [debug line = 254:7]
  %statemt_addr_22 = getelementptr [32 x i32]* %statemt, i32 0, i32 12, !dbg !251 ; [#uses=2 type=i32*] [debug line = 255:7]
  %statemt_load_18 = load i32* %statemt_addr_22, align 4, !dbg !251 ; [#uses=1 type=i32] [debug line = 255:7]
  %Sbox_addr_15 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_18, !dbg !251 ; [#uses=1 type=i8*] [debug line = 255:7]
  %Sbox_load_14 = load i8* %Sbox_addr_15, align 1, !dbg !251 ; [#uses=1 type=i8] [debug line = 255:7]
  %Sbox_load_14_cast = zext i8 %Sbox_load_14 to i32, !dbg !251 ; [#uses=1 type=i32] [debug line = 255:7]
  store i32 %Sbox_load_14_cast, i32* %statemt_addr_22, align 4, !dbg !251 ; [debug line = 255:7]
  ret void, !dbg !252                             ; [debug line = 336:1]
}

; [#uses=2]
define internal fastcc void @AddRoundKey([32 x i32]* nocapture %statemt, i6 %n) {
._crit_edge3:
  %n_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %n) ; [#uses=1 type=i6]
  call void @llvm.dbg.value(metadata !{i6 %n_read}, i64 0, metadata !253), !dbg !255 ; [debug line = 600:49] [debug variable = n]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !256), !dbg !257 ; [debug line = 600:22] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i6 %n}, i64 0, metadata !253), !dbg !255 ; [debug line = 600:49] [debug variable = n]
  %tmp = shl i6 %n_read, 2, !dbg !258             ; [#uses=1 type=i6] [debug line = 615:7]
  br label %0, !dbg !262                          ; [debug line = 613:8]

; <label>:0                                       ; preds = %1, %._crit_edge3
  %j = phi i3 [ 0, %._crit_edge3 ], [ %j_6, %1 ]  ; [#uses=4 type=i3]
  %j_cast1 = zext i3 %j to i6, !dbg !262          ; [#uses=1 type=i6] [debug line = 613:8]
  %exitcond = icmp eq i3 %j, -4, !dbg !262        ; [#uses=1 type=i1] [debug line = 613:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_6 = add i3 %j, 1, !dbg !263                  ; [#uses=1 type=i3] [debug line = 613:23]
  br i1 %exitcond, label %2, label %1, !dbg !262  ; [debug line = 613:8]

; <label>:1                                       ; preds = %0
  %tmp_s = add i6 %j_cast1, %tmp, !dbg !258       ; [#uses=3 type=i6] [debug line = 615:7]
  %tmp_cast = zext i6 %tmp_s to i32, !dbg !258    ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp_cast_cast1 = zext i6 %tmp_s to i9, !dbg !258 ; [#uses=2 type=i9] [debug line = 615:7]
  %tmp_cast_cast = zext i6 %tmp_s to i8, !dbg !258 ; [#uses=1 type=i8] [debug line = 615:7]
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_cast, !dbg !258 ; [#uses=1 type=i32*] [debug line = 615:7]
  %tmp_98 = add i8 120, %tmp_cast_cast, !dbg !264 ; [#uses=1 type=i8] [debug line = 616:7]
  %tmp_99_cast = zext i8 %tmp_98 to i32, !dbg !264 ; [#uses=1 type=i32] [debug line = 616:7]
  %worda_addr_10 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_99_cast, !dbg !264 ; [#uses=1 type=i32*] [debug line = 616:7]
  %tmp_99 = add i9 240, %tmp_cast_cast1, !dbg !265 ; [#uses=1 type=i9] [debug line = 617:7]
  %tmp_100_cast = zext i9 %tmp_99 to i32, !dbg !265 ; [#uses=1 type=i32] [debug line = 617:7]
  %worda_addr_11 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_100_cast, !dbg !265 ; [#uses=1 type=i32*] [debug line = 617:7]
  %tmp_100 = add i9 -152, %tmp_cast_cast1, !dbg !266 ; [#uses=1 type=i9] [debug line = 618:7]
  %tmp_101_cast = zext i9 %tmp_100 to i32, !dbg !266 ; [#uses=1 type=i32] [debug line = 618:7]
  %worda_addr_12 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_101_cast, !dbg !266 ; [#uses=1 type=i32*] [debug line = 618:7]
  %worda_load = load i32* %worda_addr, align 4, !dbg !258 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp_104 = trunc i3 %j to i2                    ; [#uses=1 type=i2]
  %tmp_37 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_104, i2 0), !dbg !258 ; [#uses=4 type=i4] [debug line = 615:7]
  %tmp_84_cast = zext i4 %tmp_37 to i32, !dbg !258 ; [#uses=1 type=i32] [debug line = 615:7]
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_84_cast, !dbg !258 ; [#uses=2 type=i32*] [debug line = 615:7]
  %statemt_load = load i32* %statemt_addr, align 4, !dbg !258 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp_38 = xor i32 %statemt_load, %worda_load, !dbg !258 ; [#uses=1 type=i32] [debug line = 615:7]
  store i32 %tmp_38, i32* %statemt_addr, align 4, !dbg !258 ; [debug line = 615:7]
  %worda_load_5 = load i32* %worda_addr_10, align 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp_39 = or i4 %tmp_37, 1, !dbg !264           ; [#uses=1 type=i4] [debug line = 616:7]
  %tmp_86_cast = zext i4 %tmp_39 to i32, !dbg !264 ; [#uses=1 type=i32] [debug line = 616:7]
  %statemt_addr_23 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_86_cast, !dbg !264 ; [#uses=2 type=i32*] [debug line = 616:7]
  %statemt_load_19 = load i32* %statemt_addr_23, align 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp_40 = xor i32 %statemt_load_19, %worda_load_5, !dbg !264 ; [#uses=1 type=i32] [debug line = 616:7]
  store i32 %tmp_40, i32* %statemt_addr_23, align 4, !dbg !264 ; [debug line = 616:7]
  %worda_load_6 = load i32* %worda_addr_11, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp_41 = or i4 %tmp_37, 2, !dbg !265           ; [#uses=1 type=i4] [debug line = 617:7]
  %tmp_88_cast = zext i4 %tmp_41 to i32, !dbg !265 ; [#uses=1 type=i32] [debug line = 617:7]
  %statemt_addr_24 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_88_cast, !dbg !265 ; [#uses=2 type=i32*] [debug line = 617:7]
  %statemt_load_20 = load i32* %statemt_addr_24, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp_42 = xor i32 %statemt_load_20, %worda_load_6, !dbg !265 ; [#uses=1 type=i32] [debug line = 617:7]
  store i32 %tmp_42, i32* %statemt_addr_24, align 4, !dbg !265 ; [debug line = 617:7]
  %worda_load_7 = load i32* %worda_addr_12, align 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 618:7]
  %tmp_43 = or i4 %tmp_37, 3, !dbg !266           ; [#uses=1 type=i4] [debug line = 618:7]
  %tmp_90_cast = zext i4 %tmp_43 to i32, !dbg !266 ; [#uses=1 type=i32] [debug line = 618:7]
  %statemt_addr_25 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_90_cast, !dbg !266 ; [#uses=2 type=i32*] [debug line = 618:7]
  %statemt_load_21 = load i32* %statemt_addr_25, align 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 618:7]
  %tmp_44 = xor i32 %statemt_load_21, %worda_load_7, !dbg !266 ; [#uses=1 type=i32] [debug line = 618:7]
  store i32 %tmp_44, i32* %statemt_addr_25, align 4, !dbg !266 ; [debug line = 618:7]
  call void @llvm.dbg.value(metadata !{i3 %j_6}, i64 0, metadata !267), !dbg !263 ; [debug line = 613:23] [debug variable = j]
  br label %0, !dbg !263                          ; [debug line = 613:23]

; <label>:2                                       ; preds = %0
  ret void
}

!opencl.kernels = !{!0, !7, !13, !17, !13, !23, !23, !29, !31}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!35, !43}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"key", metadata !"type", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"type", metadata !"key"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"nb"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"nb", metadata !"n"}
!29 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !30, metadata !6}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"type", metadata !"n"}
!31 = metadata !{null, metadata !32, metadata !25, metadata !33, metadata !27, metadata !34, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"word*"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"key", metadata !"out"}
!35 = metadata !{metadata !36, null}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"worda", metadata !40, metadata !"unsigned int", i32 0, i32 31}
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 0, i32 3, i32 1}
!42 = metadata !{i32 0, i32 119, i32 1}
!43 = metadata !{metadata !36, [480 x i32]* @worda}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"statemt", metadata !48, metadata !"unsigned int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, i32 1}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"key", metadata !48, metadata !"unsigned int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"out", metadata !48, metadata !"unsigned int", i32 0, i32 31}
!58 = metadata !{i32 786689, metadata !59, metadata !"statemt", null, i32 624, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_main", metadata !"aes_main", metadata !"", metadata !60, i32 624, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 625} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786473, metadata !"Edited/3rd/aes.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63, metadata !63, metadata !63}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786454, null, metadata !"word", metadata !60, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !64, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!71 = metadata !{i32 624, i32 21, metadata !59, null}
!72 = metadata !{i32 786689, metadata !59, metadata !"key", null, i32 624, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 624, i32 39, metadata !59, null}
!74 = metadata !{i32 786689, metadata !59, metadata !"out", null, i32 624, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 624, i32 52, metadata !59, null}
!76 = metadata !{i32 786689, metadata !77, metadata !"statemt", null, i32 95, metadata !82, i32 0, metadata !83} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 786478, i32 0, metadata !60, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !60, i32 95, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 96} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !80, metadata !81, metadata !81, metadata !80, metadata !81}
!80 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !80, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{i32 629, i32 3, metadata !84, null}
!84 = metadata !{i32 786443, metadata !59, i32 625, i32 1, metadata !60, i32 38} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 95, i32 18, metadata !77, metadata !83}
!86 = metadata !{i32 786689, metadata !77, metadata !"key", null, i32 95, metadata !82, i32 0, metadata !83} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 95, i32 35, metadata !77, metadata !83}
!88 = metadata !{i32 786689, metadata !77, metadata !"out", null, i32 95, metadata !82, i32 0, metadata !83} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 95, i32 57, metadata !77, metadata !83}
!90 = metadata !{i32 106, i32 3, metadata !91, metadata !83}
!91 = metadata !{i32 786443, metadata !77, i32 96, i32 1, metadata !60, i32 0} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 110, i32 3, metadata !91, metadata !83}
!93 = metadata !{i32 112, i32 8, metadata !94, metadata !83}
!94 = metadata !{i32 786443, metadata !91, i32 112, i32 3, metadata !60, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 114, i32 7, metadata !96, metadata !83}
!96 = metadata !{i32 786443, metadata !94, i32 113, i32 5, metadata !60, i32 2} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 115, i32 7, metadata !96, metadata !83}
!98 = metadata !{i32 112, i32 35, metadata !94, metadata !83}
!99 = metadata !{i32 117, i32 3, metadata !91, metadata !83}
!100 = metadata !{i32 118, i32 3, metadata !91, metadata !83}
!101 = metadata !{i32 121, i32 8, metadata !102, metadata !83}
!102 = metadata !{i32 786443, metadata !91, i32 121, i32 3, metadata !60, i32 3} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 121, i32 27, metadata !102, metadata !83}
!104 = metadata !{i32 123, i32 4, metadata !105, metadata !83}
!105 = metadata !{i32 786443, metadata !102, i32 122, i32 2, metadata !60, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !60, i32 100, metadata !80, i32 0, metadata !83} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 632, i32 1, metadata !84, null}
!108 = metadata !{i32 786689, metadata !109, metadata !"n", metadata !60, i32 50332105, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 786478, i32 0, metadata !60, metadata !"MixColumn_AddRoundKey", metadata !"MixColumn_AddRoundKey", metadata !"", metadata !60, i32 457, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 458} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !80, metadata !81, metadata !80, metadata !80}
!112 = metadata !{i32 457, i32 57, metadata !109, null}
!113 = metadata !{i32 786689, metadata !109, metadata !"statemt", null, i32 457, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 457, i32 32, metadata !109, null}
!115 = metadata !{i32 786688, metadata !116, metadata !"ret", metadata !60, i32 459, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 786443, metadata !109, i32 458, i32 1, metadata !60, i32 21} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 459, i32 7, metadata !116, null}
!118 = metadata !{i32 473, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !120, i32 463, i32 5, metadata !60, i32 23} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !116, i32 462, i32 3, metadata !60, i32 22} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 462, i32 8, metadata !120, null}
!122 = metadata !{i32 462, i32 23, metadata !120, null}
!123 = metadata !{i32 512, i32 8, metadata !124, null}
!124 = metadata !{i32 786443, metadata !116, i32 512, i32 3, metadata !60, i32 24} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 464, i32 7, metadata !119, null}
!126 = metadata !{i32 465, i32 7, metadata !119, null}
!127 = metadata !{i32 466, i32 2, metadata !119, null}
!128 = metadata !{i32 467, i32 7, metadata !119, null}
!129 = metadata !{i32 786688, metadata !116, metadata !"x", metadata !60, i32 460, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 468, i32 7, metadata !119, null}
!131 = metadata !{i32 469, i32 7, metadata !119, null}
!132 = metadata !{i32 470, i32 2, metadata !119, null}
!133 = metadata !{i32 485, i32 7, metadata !119, null}
!134 = metadata !{i32 497, i32 7, metadata !119, null}
!135 = metadata !{i32 509, i32 7, metadata !119, null}
!136 = metadata !{i32 476, i32 7, metadata !119, null}
!137 = metadata !{i32 477, i32 7, metadata !119, null}
!138 = metadata !{i32 478, i32 2, metadata !119, null}
!139 = metadata !{i32 479, i32 7, metadata !119, null}
!140 = metadata !{i32 480, i32 7, metadata !119, null}
!141 = metadata !{i32 481, i32 7, metadata !119, null}
!142 = metadata !{i32 482, i32 2, metadata !119, null}
!143 = metadata !{i32 488, i32 7, metadata !119, null}
!144 = metadata !{i32 489, i32 7, metadata !119, null}
!145 = metadata !{i32 490, i32 2, metadata !119, null}
!146 = metadata !{i32 491, i32 7, metadata !119, null}
!147 = metadata !{i32 492, i32 7, metadata !119, null}
!148 = metadata !{i32 493, i32 7, metadata !119, null}
!149 = metadata !{i32 494, i32 2, metadata !119, null}
!150 = metadata !{i32 500, i32 7, metadata !119, null}
!151 = metadata !{i32 501, i32 7, metadata !119, null}
!152 = metadata !{i32 502, i32 2, metadata !119, null}
!153 = metadata !{i32 503, i32 7, metadata !119, null}
!154 = metadata !{i32 504, i32 7, metadata !119, null}
!155 = metadata !{i32 505, i32 7, metadata !119, null}
!156 = metadata !{i32 506, i32 2, metadata !119, null}
!157 = metadata !{i32 786688, metadata !116, metadata !"j", metadata !60, i32 459, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 512, i32 23, metadata !124, null}
!159 = metadata !{i32 514, i32 7, metadata !160, null}
!160 = metadata !{i32 786443, metadata !124, i32 513, i32 5, metadata !60, i32 25} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 515, i32 7, metadata !160, null}
!162 = metadata !{i32 516, i32 7, metadata !160, null}
!163 = metadata !{i32 517, i32 7, metadata !160, null}
!164 = metadata !{i32 786689, metadata !165, metadata !"key", null, i32 178, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 786478, i32 0, metadata !60, metadata !"KeySchedule", metadata !"KeySchedule", metadata !"", metadata !60, i32 178, metadata !166, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 179} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{metadata !80, metadata !80, metadata !81}
!168 = metadata !{i32 178, i32 32, metadata !165, null}
!169 = metadata !{i32 192, i32 8, metadata !170, null}
!170 = metadata !{i32 786443, metadata !171, i32 192, i32 3, metadata !60, i32 8} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !165, i32 179, i32 1, metadata !60, i32 6} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 192, i32 23, metadata !170, null}
!173 = metadata !{i32 786688, metadata !171, metadata !"j", metadata !60, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 198, i32 8, metadata !175, null}
!175 = metadata !{i32 786443, metadata !171, i32 198, i32 3, metadata !60, i32 10} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 195, i32 7, metadata !177, null}
!177 = metadata !{i32 786443, metadata !170, i32 193, i32 5, metadata !60, i32 9} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 193, i32 10, metadata !177, null}
!179 = metadata !{i32 193, i32 24, metadata !177, null}
!180 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !60, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 202, i32 7, metadata !182, null}
!182 = metadata !{i32 786443, metadata !175, i32 199, i32 5, metadata !60, i32 11} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 204, i32 14, metadata !184, null}
!184 = metadata !{i32 786443, metadata !182, i32 203, i32 2, metadata !60, i32 12} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 205, i32 14, metadata !184, null}
!186 = metadata !{i32 206, i32 14, metadata !184, null}
!187 = metadata !{i32 207, i32 14, metadata !184, null}
!188 = metadata !{i32 786689, metadata !189, metadata !"in", metadata !60, i32 16777554, metadata !80, i32 0, metadata !183} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 786478, i32 0, metadata !60, metadata !"SubByte", metadata !"SubByte", metadata !"", metadata !60, i32 338, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 339} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !80, metadata !80}
!192 = metadata !{i32 338, i32 18, metadata !189, metadata !183}
!193 = metadata !{i32 340, i32 3, metadata !194, metadata !183}
!194 = metadata !{i32 786443, metadata !189, i32 339, i32 1, metadata !60, i32 18} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 790529, metadata !196, metadata !"temp[0]", null, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!196 = metadata !{i32 786688, metadata !171, metadata !"temp", metadata !60, i32 181, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !80, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!200 = metadata !{i32 786689, metadata !189, metadata !"in", metadata !60, i32 16777554, metadata !80, i32 0, metadata !185} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 338, i32 18, metadata !189, metadata !185}
!202 = metadata !{i32 340, i32 3, metadata !194, metadata !185}
!203 = metadata !{i32 790529, metadata !196, metadata !"temp[1]", null, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 786689, metadata !189, metadata !"in", metadata !60, i32 16777554, metadata !80, i32 0, metadata !186} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 338, i32 18, metadata !189, metadata !186}
!206 = metadata !{i32 340, i32 3, metadata !194, metadata !186}
!207 = metadata !{i32 790529, metadata !196, metadata !"temp[2]", null, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!208 = metadata !{i32 786689, metadata !189, metadata !"in", metadata !60, i32 16777554, metadata !80, i32 0, metadata !187} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 338, i32 18, metadata !189, metadata !187}
!210 = metadata !{i32 340, i32 3, metadata !194, metadata !187}
!211 = metadata !{i32 209, i32 7, metadata !182, null}
!212 = metadata !{i32 211, i32 4, metadata !213, null}
!213 = metadata !{i32 786443, metadata !182, i32 210, i32 2, metadata !60, i32 13} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 212, i32 4, metadata !213, null}
!215 = metadata !{i32 213, i32 4, metadata !213, null}
!216 = metadata !{i32 214, i32 4, metadata !213, null}
!217 = metadata !{i32 215, i32 2, metadata !213, null}
!218 = metadata !{i32 790529, metadata !196, metadata !"temp[3]", null, i32 181, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!219 = metadata !{i32 220, i32 2, metadata !220, null}
!220 = metadata !{i32 786443, metadata !182, i32 219, i32 7, metadata !60, i32 15} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 219, i32 12, metadata !220, null}
!222 = metadata !{i32 219, i32 26, metadata !220, null}
!223 = metadata !{i32 198, i32 42, metadata !175, null}
!224 = metadata !{i32 786689, metadata !225, metadata !"statemt", null, i32 226, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 786478, i32 0, metadata !60, metadata !"ByteSub_ShiftRow", metadata !"ByteSub_ShiftRow", metadata !"", metadata !60, i32 226, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 227} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{null, metadata !81, metadata !80}
!228 = metadata !{i32 226, i32 28, metadata !225, null}
!229 = metadata !{i32 233, i32 7, metadata !230, null}
!230 = metadata !{i32 786443, metadata !231, i32 231, i32 5, metadata !60, i32 17} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 786443, metadata !225, i32 227, i32 1, metadata !60, i32 16} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 786688, metadata !231, metadata !"temp", metadata !60, i32 228, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 234, i32 7, metadata !230, null}
!234 = metadata !{i32 235, i32 7, metadata !230, null}
!235 = metadata !{i32 236, i32 7, metadata !230, null}
!236 = metadata !{i32 237, i32 7, metadata !230, null}
!237 = metadata !{i32 239, i32 7, metadata !230, null}
!238 = metadata !{i32 240, i32 7, metadata !230, null}
!239 = metadata !{i32 241, i32 7, metadata !230, null}
!240 = metadata !{i32 242, i32 7, metadata !230, null}
!241 = metadata !{i32 243, i32 7, metadata !230, null}
!242 = metadata !{i32 244, i32 7, metadata !230, null}
!243 = metadata !{i32 246, i32 7, metadata !230, null}
!244 = metadata !{i32 247, i32 7, metadata !230, null}
!245 = metadata !{i32 248, i32 7, metadata !230, null}
!246 = metadata !{i32 249, i32 7, metadata !230, null}
!247 = metadata !{i32 250, i32 7, metadata !230, null}
!248 = metadata !{i32 252, i32 7, metadata !230, null}
!249 = metadata !{i32 253, i32 7, metadata !230, null}
!250 = metadata !{i32 254, i32 7, metadata !230, null}
!251 = metadata !{i32 255, i32 7, metadata !230, null}
!252 = metadata !{i32 336, i32 1, metadata !231, null}
!253 = metadata !{i32 786689, metadata !254, metadata !"n", metadata !60, i32 50332248, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 786478, i32 0, metadata !60, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !60, i32 600, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 601} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 600, i32 49, metadata !254, null}
!256 = metadata !{i32 786689, metadata !254, metadata !"statemt", null, i32 600, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 600, i32 22, metadata !254, null}
!258 = metadata !{i32 615, i32 7, metadata !259, null}
!259 = metadata !{i32 786443, metadata !260, i32 614, i32 5, metadata !60, i32 37} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 786443, metadata !261, i32 613, i32 3, metadata !60, i32 36} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 786443, metadata !254, i32 601, i32 1, metadata !60, i32 34} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 613, i32 8, metadata !260, null}
!263 = metadata !{i32 613, i32 23, metadata !260, null}
!264 = metadata !{i32 616, i32 7, metadata !259, null}
!265 = metadata !{i32 617, i32 7, metadata !259, null}
!266 = metadata !{i32 618, i32 7, metadata !259, null}
!267 = metadata !{i32 786688, metadata !261, metadata !"j", metadata !60, i32 602, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
