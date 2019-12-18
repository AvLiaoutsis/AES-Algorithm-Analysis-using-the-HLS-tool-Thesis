; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisRaw/trito/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@worda = common global [480 x i32] zeroinitializer
@invSbox = constant [256 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251, i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203, i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78, i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37, i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146, i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132, i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6, i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107, i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115, i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110, i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27, i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244, i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95, i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239, i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97, i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125]
@aes_main_str = internal unnamed_addr constant [9 x i8] c"aes_main\00"
@Sbox_old = constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22]
@Sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@Rcon0_old = constant [30 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145], align 4
@Rcon0 = constant [30 x i8] c"\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\91"

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @aes_main([32 x i32]* %statemt, [32 x i32]* %key, [32 x i32]* %out_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %statemt) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %key) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %out_r) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @aes_main_str) nounwind
  call fastcc void @KeySchedule([32 x i32]* %key) nounwind
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 0) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 1, %0 ], [ %tmp_i, %2 ]
  %exitcond3_i = icmp eq i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  br i1 %exitcond3_i, label %3, label %2

; <label>:2                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind
  call fastcc void @MixColumn_AddRoundKe([32 x i32]* %statemt, i4 %i_i) nounwind
  %tmp_i = add i4 %i_i, 1
  br label %1

; <label>:3                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 10) nounwind
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1_i = phi i5 [ 0, %3 ], [ %i, %5 ]
  %i_1_i_cast1 = zext i5 %i_1_i to i32
  %exitcond2_i = icmp eq i5 %i_1_i, -16
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i = add i5 %i_1_i, 1
  br i1 %exitcond2_i, label %encrypt.exit, label %5

; <label>:5                                       ; preds = %4
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %i_1_i_cast1
  %statemt_load = load i32* %statemt_addr, align 4
  %out_addr = getelementptr [32 x i32]* %out_r, i32 0, i32 %i_1_i_cast1
  store i32 %statemt_load, i32* %out_addr, align 4
  br label %4

encrypt.exit:                                     ; preds = %4
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_10 = trunc i11 %empty to i8
  ret i8 %empty_10
}

define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i6
  ret i6 %empty_11
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_12 = trunc i6 %empty to i4
  ret i4 %empty_12
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i28
  ret i28 %empty_13
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i24
  ret i24 %empty_14
}

declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_15 = and i32 %0, %empty
  %empty_16 = icmp ne i32 %empty_15, 0
  ret i1 %empty_16
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_17 = zext i2 %1 to i6
  %empty_18 = shl i6 %empty, 2
  %empty_19 = or i6 %empty_18, %empty_17
  ret i6 %empty_19
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_20 = zext i3 %1 to i6
  %empty_21 = shl i6 %empty, 3
  %empty_22 = or i6 %empty_21, %empty_20
  ret i6 %empty_22
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_23 = zext i2 %1 to i4
  %empty_24 = shl i4 %empty, 2
  %empty_25 = or i4 %empty_24, %empty_23
  ret i4 %empty_25
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone {
entry:
  %empty = zext i28 %0 to i32
  %empty_26 = zext i4 %1 to i32
  %empty_27 = shl i32 %empty, 4
  %empty_28 = or i32 %empty_27, %empty_26
  ret i32 %empty_28
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_29 = zext i8 %1 to i32
  %empty_30 = shl i32 %empty, 8
  %empty_31 = or i32 %empty_30, %empty_29
  ret i32 %empty_31
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_32 = zext i3 %1 to i11
  %empty_33 = shl i11 %empty, 3
  %empty_34 = or i11 %empty_33, %empty_32
  ret i11 %empty_34
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10
  %empty_35 = zext i4 %1 to i10
  %empty_36 = shl i10 %empty, 4
  %empty_37 = or i10 %empty_36, %empty_35
  ret i10 %empty_37
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3, i7) nounwind readnone {
entry:
  %empty = zext i3 %0 to i10
  %empty_38 = zext i7 %1 to i10
  %empty_39 = shl i10 %empty, 7
  %empty_40 = or i10 %empty_39, %empty_38
  ret i10 %empty_40
}

define internal fastcc void @MixColumn_AddRoundKe([32 x i32]* nocapture %statemt, i4 %n) {
  %n_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %n)
  %ret = alloca [32 x i32], align 4
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %n_read, i2 0)
  br label %1

; <label>:1                                       ; preds = %._crit_edge_ifconv, %0
  %j = phi i3 [ 0, %0 ], [ %j_3, %._crit_edge_ifconv ]
  %j_cast1 = zext i3 %j to i6
  %exitcond1 = icmp eq i3 %j, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_3 = add i3 %j, 1
  br i1 %exitcond1, label %.preheader.preheader, label %._crit_edge_ifconv

.preheader.preheader:                             ; preds = %1
  br label %.preheader

._crit_edge_ifconv:                               ; preds = %1
  %tmp_6 = trunc i3 %j to i2
  %tmp_5 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_6, i2 0)
  %tmp_5_cast = zext i4 %tmp_5 to i32
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_5_cast
  %x_6 = load i32* %statemt_addr, align 4
  %tmp_18 = shl i32 %x_6, 1
  %ret_addr = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_5_cast
  %tmp_s = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_6, i32 7, i32 30)
  %p_mask = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_s, i8 0)
  %tmp_7 = icmp eq i32 %p_mask, 256
  %tmp_8 = xor i32 %tmp_18, 283
  %ret_load_1 = select i1 %tmp_7, i32 %tmp_8, i32 %tmp_18
  %tmp_9 = or i4 %tmp_5, 1
  %tmp_9_cast = zext i4 %tmp_9 to i32
  %statemt_addr_1 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_9_cast
  %x = load i32* %statemt_addr_1, align 4
  %tmp_24 = shl i32 %x, 1
  %x_1 = xor i32 %x, %tmp_24
  %tmp_33 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_1, i32 8, i32 31)
  %p_mask1 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_33, i8 0)
  %tmp_1 = icmp eq i32 %p_mask1, 256
  %tmp_3 = xor i32 %x_1, 283
  %storemerge_v = select i1 %tmp_1, i32 %tmp_3, i32 %x_1
  %tmp_10 = or i4 %tmp_5, 2
  %tmp_14_cast = zext i4 %tmp_10 to i32
  %statemt_addr_6 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_14_cast
  %x_2 = load i32* %statemt_addr_6, align 4
  %tmp_11 = or i4 %tmp_5, 3
  %tmp_15_cast = zext i4 %tmp_11 to i32
  %statemt_addr_7 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_15_cast
  %x_4 = load i32* %statemt_addr_7, align 4
  %tmp_14 = add i6 %tmp, %j_cast1
  %tmp_16_cast = zext i6 %tmp_14 to i32
  %tmp_16_cast_cast1 = zext i6 %tmp_14 to i9
  %tmp_16_cast_cast = zext i6 %tmp_14 to i8
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_16_cast
  %tmp_34 = add i8 120, %tmp_16_cast_cast
  %tmp_38_cast = zext i8 %tmp_34 to i32
  %worda_addr_1 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_38_cast
  %tmp_35 = add i9 240, %tmp_16_cast_cast1
  %tmp_39_cast = zext i9 %tmp_35 to i32
  %worda_addr_2 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_39_cast
  %tmp_36 = add i9 -152, %tmp_16_cast_cast1
  %tmp_40_cast = zext i9 %tmp_36 to i32
  %worda_addr_3 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_40_cast
  %worda_load = load i32* %worda_addr, align 4
  %tmp1 = xor i32 %x_2, %x_4
  %tmp3 = xor i32 %ret_load_1, %storemerge_v
  %tmp2 = xor i32 %tmp3, %worda_load
  %tmp_15 = xor i32 %tmp2, %tmp1
  store i32 %tmp_15, i32* %ret_addr, align 4
  %ret_addr_5 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_9_cast
  %tmp_37 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x, i32 7, i32 30)
  %p_mask2 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_37, i8 0)
  %tmp_16 = icmp eq i32 %p_mask2, 256
  %tmp_17 = xor i32 %tmp_24, 283
  %tmp_23_tmp_s = select i1 %tmp_16, i32 %tmp_17, i32 %tmp_24
  %tmp_38 = shl i32 %x_2, 1
  %x_3 = xor i32 %x_2, %tmp_38
  %tmp_39 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_3, i32 8, i32 31)
  %p_mask3 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_39, i8 0)
  %tmp_19 = icmp eq i32 %p_mask3, 256
  %tmp_20 = xor i32 %x_3, 283
  %storemerge8_v = select i1 %tmp_19, i32 %tmp_20, i32 %x_3
  %worda_load_1 = load i32* %worda_addr_1, align 4
  %tmp4 = xor i32 %x_4, %x_6
  %tmp6 = xor i32 %storemerge8_v, %tmp_23_tmp_s
  %tmp5 = xor i32 %tmp6, %worda_load_1
  %tmp_21 = xor i32 %tmp5, %tmp4
  store i32 %tmp_21, i32* %ret_addr_5, align 4
  %ret_addr_6 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_14_cast
  %tmp_40 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_2, i32 7, i32 30)
  %p_mask4 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_40, i8 0)
  %tmp_22 = icmp eq i32 %p_mask4, 256
  %tmp_23 = xor i32 %tmp_38, 283
  %tmp_33_tmp_s = select i1 %tmp_22, i32 %tmp_23, i32 %tmp_38
  %tmp_41 = shl i32 %x_4, 1
  %x_5 = xor i32 %x_4, %tmp_41
  %tmp_42 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_5, i32 8, i32 31)
  %p_mask5 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_42, i8 0)
  %tmp_25 = icmp eq i32 %p_mask5, 256
  %tmp_26 = xor i32 %x_5, 283
  %storemerge9_v = select i1 %tmp_25, i32 %tmp_26, i32 %x_5
  %worda_load_2 = load i32* %worda_addr_2, align 4
  %tmp7 = xor i32 %x, %x_6
  %tmp9 = xor i32 %storemerge9_v, %tmp_33_tmp_s
  %tmp8 = xor i32 %tmp9, %worda_load_2
  %tmp_27 = xor i32 %tmp8, %tmp7
  store i32 %tmp_27, i32* %ret_addr_6, align 4
  %ret_addr_7 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_15_cast
  %tmp_43 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_4, i32 7, i32 30)
  %p_mask6 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_43, i8 0)
  %tmp_28 = icmp eq i32 %p_mask6, 256
  %tmp_29 = xor i32 %tmp_41, 283
  %tmp_43_tmp_s = select i1 %tmp_28, i32 %tmp_29, i32 %tmp_41
  %x_7 = xor i32 %x_6, %tmp_18
  %tmp_44 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %x_7, i32 8, i32 31)
  %p_mask7 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_44, i8 0)
  %tmp_30 = icmp eq i32 %p_mask7, 256
  %tmp_31 = xor i32 %x_7, 283
  %storemerge1_v = select i1 %tmp_30, i32 %tmp_31, i32 %x_7
  %worda_load_3 = load i32* %worda_addr_3, align 4
  %tmp10 = xor i32 %x_2, %x
  %tmp12 = xor i32 %storemerge1_v, %tmp_43_tmp_s
  %tmp11 = xor i32 %tmp12, %worda_load_3
  %tmp_32 = xor i32 %tmp11, %tmp10
  store i32 %tmp_32, i32* %ret_addr_7, align 4
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %2
  %j_1 = phi i3 [ %j_2, %2 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %j_1, -4
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_2 = add i3 %j_1, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_45 = trunc i3 %j_1 to i2
  %tmp_2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_45, i2 0)
  %tmp_2_cast = zext i4 %tmp_2 to i32
  %ret_addr_1 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_2_cast
  %ret_load = load i32* %ret_addr_1, align 4
  %statemt_addr_2 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_2_cast
  store i32 %ret_load, i32* %statemt_addr_2, align 4
  %tmp_4 = or i4 %tmp_2, 1
  %tmp_4_cast = zext i4 %tmp_4 to i32
  %ret_addr_2 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_4_cast
  %ret_load_2 = load i32* %ret_addr_2, align 4
  %statemt_addr_3 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_4_cast
  store i32 %ret_load_2, i32* %statemt_addr_3, align 4
  %tmp_12 = or i4 %tmp_2, 2
  %tmp_12_cast = zext i4 %tmp_12 to i32
  %ret_addr_3 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_12_cast
  %ret_load_3 = load i32* %ret_addr_3, align 4
  %statemt_addr_4 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_12_cast
  store i32 %ret_load_3, i32* %statemt_addr_4, align 4
  %tmp_13 = or i4 %tmp_2, 3
  %tmp_13_cast = zext i4 %tmp_13 to i32
  %ret_addr_4 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp_13_cast
  %ret_load_4 = load i32* %ret_addr_4, align 4
  %statemt_addr_5 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_13_cast
  store i32 %ret_load_4, i32* %statemt_addr_5, align 4
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @KeySchedule([32 x i32]* nocapture %key) {
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %j = phi i3 [ 0, %0 ], [ %j_4, %.loopexit.loopexit ]
  %exitcond3 = icmp eq i3 %j, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_4 = add i3 %j, 1
  br i1 %exitcond3, label %.preheader.preheader, label %.preheader4.preheader

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader

.preheader4.preheader:                            ; preds = %.loopexit
  %tmp_46 = trunc i3 %j to i2
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_46, i2 0)
  br label %.preheader4

.preheader4:                                      ; preds = %1, %.preheader4.preheader
  %i = phi i3 [ %i_1, %1 ], [ 0, %.preheader4.preheader ]
  %tmp_45 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 %i, i7 0)
  %p_shl_cast = zext i10 %tmp_45 to i11
  %tmp_47 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 0)
  %p_shl5_cast = zext i6 %tmp_47 to i11
  %tmp_48 = sub i11 %p_shl_cast, %p_shl5_cast
  %tmp_49 = trunc i11 %tmp_48 to i3
  %tmp_50 = or i3 %tmp_49, %j
  %tmp_51 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %tmp_48, i32 3, i32 10)
  %tmp_52 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_51, i3 %tmp_50)
  %tmp_53 = sext i11 %tmp_52 to i32
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_53
  %i_cast = zext i3 %i to i4
  %exitcond2 = icmp eq i3 %i, -4
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_1 = add i3 1, %i
  br i1 %exitcond2, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader4
  %sum = add i4 %i_cast, %tmp
  %sum_cast = zext i4 %sum to i32
  %key_addr = getelementptr [32 x i32]* %key, i32 0, i32 %sum_cast
  %key_load = load i32* %key_addr, align 4
  store i32 %key_load, i32* %worda_addr, align 4
  br label %.preheader4

.preheader:                                       ; preds = %.preheader.preheader, %5
  %j_1 = phi i6 [ %j_5, %5 ], [ 4, %.preheader.preheader ]
  %j_1_cast2_cast = zext i6 %j_1 to i10
  %exitcond1 = icmp eq i6 %j_1, -20
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_54 = trunc i6 %j_1 to i2
  %tmp_s = icmp eq i2 %tmp_54, 0
  %tmp_33 = add i6 -1, %j_1
  %tmp_50_cast = zext i6 %tmp_33 to i32
  %tmp_50_cast_cast1 = zext i6 %tmp_33 to i9
  %tmp_50_cast_cast = zext i6 %tmp_33 to i8
  %tmp_55 = add i8 120, %tmp_50_cast_cast
  %tmp_58_cast = zext i8 %tmp_55 to i32
  %worda_addr_4 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_58_cast
  %tmp_56 = add i9 240, %tmp_50_cast_cast1
  %tmp_59_cast = zext i9 %tmp_56 to i32
  %worda_addr_5 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_59_cast
  %tmp_57 = add i9 -152, %tmp_50_cast_cast1
  %tmp_60_cast = zext i9 %tmp_57 to i32
  %worda_addr_6 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_60_cast
  %worda_addr_7 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_50_cast
  br i1 %tmp_s, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %2
  %worda_load_5 = load i32* %worda_addr_4, align 4
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_5, i32 31)
  %tmp_59 = trunc i32 %worda_load_5 to i4
  %p_neg1 = sub i32 0, %worda_load_5
  %tmp_60 = trunc i32 %p_neg1 to i4
  %tmp_61 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_60)
  %tmp_62 = sub i10 0, %tmp_61
  %tmp_63 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_59)
  %tmp_64 = select i1 %tmp_58, i10 %tmp_62, i10 %tmp_63
  %p_lshr_i_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg1, i32 4, i32 9)
  %p_neg_t_i = sub i6 0, %p_lshr_i_cast
  %tmp_65 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_5, i32 4, i32 9)
  %tmp_66 = select i1 %tmp_58, i6 %p_neg_t_i, i6 %tmp_65
  %tmp_67_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_66, i4 0)
  %tmp_67 = add i10 %tmp_67_cast, %tmp_64
  %tmp_68_cast = zext i10 %tmp_67 to i32
  %Sbox_addr = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_68_cast
  %Sbox_load = load i8* %Sbox_addr, align 1
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %j_1, i32 2, i32 5)
  %addconv = add i4 -1, %p_lshr_f_cast
  %tmp_34 = zext i4 %addconv to i32
  %Rcon0_addr = getelementptr [30 x i8]* @Rcon0, i32 0, i32 %tmp_34
  %Rcon0_load = load i8* %Rcon0_addr, align 1
  %temp_0 = xor i8 %Rcon0_load, %Sbox_load
  %temp_0_1_cast = zext i8 %temp_0 to i32
  %worda_load_6 = load i32* %worda_addr_5, align 4
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_6, i32 31)
  %tmp_69 = trunc i32 %worda_load_6 to i4
  %p_neg2 = sub i32 0, %worda_load_6
  %tmp_70 = trunc i32 %p_neg2 to i4
  %tmp_71 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_70)
  %tmp_72 = sub i10 0, %tmp_71
  %tmp_73 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_69)
  %tmp_74 = select i1 %tmp_68, i10 %tmp_72, i10 %tmp_73
  %p_lshr_i1_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg2, i32 4, i32 9)
  %p_neg_t_i1 = sub i6 0, %p_lshr_i1_cast
  %tmp_75 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_6, i32 4, i32 9)
  %tmp_77 = select i1 %tmp_68, i6 %p_neg_t_i1, i6 %tmp_75
  %tmp_75_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_77, i4 0)
  %tmp_76 = add i10 %tmp_75_cast, %tmp_74
  %tmp_76_cast = zext i10 %tmp_76 to i32
  %Sbox_addr_1 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_76_cast
  %temp_1 = load i8* %Sbox_addr_1, align 1
  %temp_1_cast = zext i8 %temp_1 to i32
  %worda_load_7 = load i32* %worda_addr_6, align 4
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_7, i32 31)
  %tmp_79 = trunc i32 %worda_load_7 to i4
  %p_neg9 = sub i32 0, %worda_load_7
  %tmp_80 = trunc i32 %p_neg9 to i4
  %tmp_81 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_80)
  %tmp_82 = sub i10 0, %tmp_81
  %tmp_83 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_79)
  %tmp_85 = select i1 %tmp_78, i10 %tmp_82, i10 %tmp_83
  %p_lshr_i2_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg9, i32 4, i32 9)
  %p_neg_t_i2 = sub i6 0, %p_lshr_i2_cast
  %tmp_86 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_7, i32 4, i32 9)
  %tmp_87 = select i1 %tmp_78, i6 %p_neg_t_i2, i6 %tmp_86
  %tmp_83_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_87, i4 0)
  %tmp_84 = add i10 %tmp_83_cast, %tmp_85
  %tmp_84_cast = zext i10 %tmp_84 to i32
  %Sbox_addr_2 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_84_cast
  %temp_2 = load i8* %Sbox_addr_2, align 1
  %temp_2_cast = zext i8 %temp_2 to i32
  %worda_load_8 = load i32* %worda_addr_7, align 4
  %tmp_88 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %worda_load_8, i32 31)
  %tmp_89 = trunc i32 %worda_load_8 to i4
  %p_neg = sub i32 0, %worda_load_8
  %tmp_90 = trunc i32 %p_neg to i4
  %tmp_91 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_90)
  %tmp_98 = sub i10 0, %tmp_91
  %tmp_99 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 0, i4 %tmp_89)
  %tmp_100 = select i1 %tmp_88, i10 %tmp_98, i10 %tmp_99
  %p_lshr_i3_cast = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %p_neg, i32 4, i32 9)
  %p_neg_t_i3 = sub i6 0, %p_lshr_i3_cast
  %tmp_101 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %worda_load_8, i32 4, i32 9)
  %tmp_102 = select i1 %tmp_88, i6 %p_neg_t_i3, i6 %tmp_101
  %tmp_91_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_102, i4 0)
  %tmp_92 = add i10 %tmp_91_cast, %tmp_100
  %tmp_92_cast = zext i10 %tmp_92 to i32
  %Sbox_addr_3 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %tmp_92_cast
  %Sbox_load_3 = load i8* %Sbox_addr_3, align 1
  %Sbox_load_3_cast = zext i8 %Sbox_load_3 to i32
  br label %._crit_edge5

.critedge:                                        ; preds = %2
  %temp_0_1 = load i32* %worda_addr_7, align 4
  %temp_1_1 = load i32* %worda_addr_4, align 4
  %temp_2_1 = load i32* %worda_addr_5, align 4
  %worda_load = load i32* %worda_addr_6, align 4
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %.critedge, %._crit_edge
  %temp_22 = phi i32 [ %temp_2_cast, %._crit_edge ], [ %temp_2_1, %.critedge ]
  %temp_12 = phi i32 [ %temp_1_cast, %._crit_edge ], [ %temp_1_1, %.critedge ]
  %temp_02 = phi i32 [ %temp_0_1_cast, %._crit_edge ], [ %temp_0_1, %.critedge ]
  %temp_3 = phi i32 [ %Sbox_load_3_cast, %._crit_edge ], [ %worda_load, %.critedge ]
  %tmp_35 = add i6 %j_1, -4
  %tmp_52_cast_cast = zext i6 %tmp_35 to i10
  br label %3

; <label>:3                                       ; preds = %4, %._crit_edge5
  %i_2 = phi i3 [ 0, %._crit_edge5 ], [ %i_3, %4 ]
  %tmp_93 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 %i_2, i7 0)
  %tmp_94 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_2, i3 0)
  %p_shl2_cast = zext i6 %tmp_94 to i10
  %tmp_95 = sub i10 %tmp_93, %p_shl2_cast
  %tmp_96 = add i10 %tmp_95, %tmp_52_cast_cast
  %tmp_96_cast = sext i10 %tmp_96 to i32
  %worda_addr_8 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_96_cast
  %tmp_97 = add i10 %tmp_95, %j_1_cast2_cast
  %tmp_97_cast = sext i10 %tmp_97 to i32
  %worda_addr_9 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_97_cast
  %exitcond = icmp eq i3 %i_2, -4
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_3 = add i3 %i_2, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %worda_load_4 = load i32* %worda_addr_8, align 4
  %tmp_103 = trunc i3 %i_2 to i2
  %tmp_13 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %temp_02, i32 %temp_12, i32 %temp_22, i32 %temp_3, i2 %tmp_103)
  %tmp_36 = xor i32 %worda_load_4, %tmp_13
  store i32 %tmp_36, i32* %worda_addr_9, align 4
  br label %3

; <label>:5                                       ; preds = %3
  %j_5 = add i6 %j_1, 1
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @ByteSub_ShiftRow([32 x i32]* nocapture %statemt) {
._crit_edge:
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 0
  %statemt_addr_8 = getelementptr [32 x i32]* %statemt, i32 0, i32 1
  %statemt_load = load i32* %statemt_addr_8, align 4
  %Sbox_addr = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load
  %temp = load i8* %Sbox_addr, align 1
  %temp_cast = zext i8 %temp to i32
  %statemt_addr_9 = getelementptr [32 x i32]* %statemt, i32 0, i32 5
  %statemt_load_4 = load i32* %statemt_addr_9, align 4
  %Sbox_addr_1 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_4
  %Sbox_load = load i8* %Sbox_addr_1, align 1
  %Sbox_load_cast = zext i8 %Sbox_load to i32
  store i32 %Sbox_load_cast, i32* %statemt_addr_8, align 4
  %statemt_addr_10 = getelementptr [32 x i32]* %statemt, i32 0, i32 9
  %statemt_load_5 = load i32* %statemt_addr_10, align 4
  %Sbox_addr_2 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_5
  %Sbox_load_1 = load i8* %Sbox_addr_2, align 1
  %Sbox_load_1_cast = zext i8 %Sbox_load_1 to i32
  store i32 %Sbox_load_1_cast, i32* %statemt_addr_9, align 4
  %statemt_addr_11 = getelementptr [32 x i32]* %statemt, i32 0, i32 13
  %statemt_load_6 = load i32* %statemt_addr_11, align 4
  %Sbox_addr_3 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_6
  %Sbox_load_2 = load i8* %Sbox_addr_3, align 1
  %Sbox_load_2_cast = zext i8 %Sbox_load_2 to i32
  store i32 %Sbox_load_2_cast, i32* %statemt_addr_10, align 4
  store i32 %temp_cast, i32* %statemt_addr_11, align 4
  %statemt_addr_12 = getelementptr [32 x i32]* %statemt, i32 0, i32 2
  %statemt_load_7 = load i32* %statemt_addr_12, align 4
  %Sbox_addr_4 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_7
  %temp_1 = load i8* %Sbox_addr_4, align 1
  %temp_1_cast = zext i8 %temp_1 to i32
  %statemt_addr_13 = getelementptr [32 x i32]* %statemt, i32 0, i32 10
  %statemt_load_8 = load i32* %statemt_addr_13, align 4
  %Sbox_addr_5 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_8
  %Sbox_load_4 = load i8* %Sbox_addr_5, align 1
  %Sbox_load_4_cast = zext i8 %Sbox_load_4 to i32
  store i32 %Sbox_load_4_cast, i32* %statemt_addr_12, align 4
  store i32 %temp_1_cast, i32* %statemt_addr_13, align 4
  %statemt_addr_14 = getelementptr [32 x i32]* %statemt, i32 0, i32 6
  %statemt_load_9 = load i32* %statemt_addr_14, align 4
  %Sbox_addr_6 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_9
  %temp_2 = load i8* %Sbox_addr_6, align 1
  %temp_2_cast = zext i8 %temp_2 to i32
  %statemt_addr_15 = getelementptr [32 x i32]* %statemt, i32 0, i32 14
  %statemt_load_10 = load i32* %statemt_addr_15, align 4
  %Sbox_addr_7 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_10
  %Sbox_load_6 = load i8* %Sbox_addr_7, align 1
  %Sbox_load_6_cast = zext i8 %Sbox_load_6 to i32
  store i32 %Sbox_load_6_cast, i32* %statemt_addr_14, align 4
  store i32 %temp_2_cast, i32* %statemt_addr_15, align 4
  %statemt_addr_16 = getelementptr [32 x i32]* %statemt, i32 0, i32 3
  %statemt_load_11 = load i32* %statemt_addr_16, align 4
  %Sbox_addr_8 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_11
  %temp_3 = load i8* %Sbox_addr_8, align 1
  %temp_3_cast = zext i8 %temp_3 to i32
  %statemt_addr_17 = getelementptr [32 x i32]* %statemt, i32 0, i32 15
  %statemt_load_12 = load i32* %statemt_addr_17, align 4
  %Sbox_addr_9 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_12
  %Sbox_load_8 = load i8* %Sbox_addr_9, align 1
  %Sbox_load_8_cast = zext i8 %Sbox_load_8 to i32
  store i32 %Sbox_load_8_cast, i32* %statemt_addr_16, align 4
  %statemt_addr_18 = getelementptr [32 x i32]* %statemt, i32 0, i32 11
  %statemt_load_13 = load i32* %statemt_addr_18, align 4
  %Sbox_addr_10 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_13
  %Sbox_load_9 = load i8* %Sbox_addr_10, align 1
  %Sbox_load_9_cast = zext i8 %Sbox_load_9 to i32
  store i32 %Sbox_load_9_cast, i32* %statemt_addr_17, align 4
  %statemt_addr_19 = getelementptr [32 x i32]* %statemt, i32 0, i32 7
  %statemt_load_14 = load i32* %statemt_addr_19, align 4
  %Sbox_addr_11 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_14
  %Sbox_load_10 = load i8* %Sbox_addr_11, align 1
  %Sbox_load_10_cast = zext i8 %Sbox_load_10 to i32
  store i32 %Sbox_load_10_cast, i32* %statemt_addr_18, align 4
  store i32 %temp_3_cast, i32* %statemt_addr_19, align 4
  %statemt_load_15 = load i32* %statemt_addr, align 4
  %Sbox_addr_12 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_15
  %Sbox_load_11 = load i8* %Sbox_addr_12, align 1
  %Sbox_load_11_cast = zext i8 %Sbox_load_11 to i32
  store i32 %Sbox_load_11_cast, i32* %statemt_addr, align 4
  %statemt_addr_20 = getelementptr [32 x i32]* %statemt, i32 0, i32 4
  %statemt_load_16 = load i32* %statemt_addr_20, align 4
  %Sbox_addr_13 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_16
  %Sbox_load_12 = load i8* %Sbox_addr_13, align 1
  %Sbox_load_12_cast = zext i8 %Sbox_load_12 to i32
  store i32 %Sbox_load_12_cast, i32* %statemt_addr_20, align 4
  %statemt_addr_21 = getelementptr [32 x i32]* %statemt, i32 0, i32 8
  %statemt_load_17 = load i32* %statemt_addr_21, align 4
  %Sbox_addr_14 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_17
  %Sbox_load_13 = load i8* %Sbox_addr_14, align 1
  %Sbox_load_13_cast = zext i8 %Sbox_load_13 to i32
  store i32 %Sbox_load_13_cast, i32* %statemt_addr_21, align 4
  %statemt_addr_22 = getelementptr [32 x i32]* %statemt, i32 0, i32 12
  %statemt_load_18 = load i32* %statemt_addr_22, align 4
  %Sbox_addr_15 = getelementptr [256 x i8]* @Sbox, i32 0, i32 %statemt_load_18
  %Sbox_load_14 = load i8* %Sbox_addr_15, align 1
  %Sbox_load_14_cast = zext i8 %Sbox_load_14 to i32
  store i32 %Sbox_load_14_cast, i32* %statemt_addr_22, align 4
  ret void
}

define internal fastcc void @AddRoundKey([32 x i32]* nocapture %statemt, i6 %n) {
._crit_edge3:
  %n_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %n)
  %tmp = shl i6 %n_read, 2
  br label %0

; <label>:0                                       ; preds = %1, %._crit_edge3
  %j = phi i3 [ 0, %._crit_edge3 ], [ %j_6, %1 ]
  %j_cast1 = zext i3 %j to i6
  %exitcond = icmp eq i3 %j, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_6 = add i3 %j, 1
  br i1 %exitcond, label %2, label %1

; <label>:1                                       ; preds = %0
  %tmp_s = add i6 %j_cast1, %tmp
  %tmp_cast = zext i6 %tmp_s to i32
  %tmp_cast_cast1 = zext i6 %tmp_s to i9
  %tmp_cast_cast = zext i6 %tmp_s to i8
  %worda_addr = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_cast
  %tmp_98 = add i8 120, %tmp_cast_cast
  %tmp_99_cast = zext i8 %tmp_98 to i32
  %worda_addr_10 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_99_cast
  %tmp_99 = add i9 240, %tmp_cast_cast1
  %tmp_100_cast = zext i9 %tmp_99 to i32
  %worda_addr_11 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_100_cast
  %tmp_100 = add i9 -152, %tmp_cast_cast1
  %tmp_101_cast = zext i9 %tmp_100 to i32
  %worda_addr_12 = getelementptr [480 x i32]* @worda, i32 0, i32 %tmp_101_cast
  %worda_load = load i32* %worda_addr, align 4
  %tmp_104 = trunc i3 %j to i2
  %tmp_37 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_104, i2 0)
  %tmp_84_cast = zext i4 %tmp_37 to i32
  %statemt_addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_84_cast
  %statemt_load = load i32* %statemt_addr, align 4
  %tmp_38 = xor i32 %statemt_load, %worda_load
  store i32 %tmp_38, i32* %statemt_addr, align 4
  %worda_load_5 = load i32* %worda_addr_10, align 4
  %tmp_39 = or i4 %tmp_37, 1
  %tmp_86_cast = zext i4 %tmp_39 to i32
  %statemt_addr_23 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_86_cast
  %statemt_load_19 = load i32* %statemt_addr_23, align 4
  %tmp_40 = xor i32 %statemt_load_19, %worda_load_5
  store i32 %tmp_40, i32* %statemt_addr_23, align 4
  %worda_load_6 = load i32* %worda_addr_11, align 4
  %tmp_41 = or i4 %tmp_37, 2
  %tmp_88_cast = zext i4 %tmp_41 to i32
  %statemt_addr_24 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_88_cast
  %statemt_load_20 = load i32* %statemt_addr_24, align 4
  %tmp_42 = xor i32 %statemt_load_20, %worda_load_6
  store i32 %tmp_42, i32* %statemt_addr_24, align 4
  %worda_load_7 = load i32* %worda_addr_12, align 4
  %tmp_43 = or i4 %tmp_37, 3
  %tmp_90_cast = zext i4 %tmp_43 to i32
  %statemt_addr_25 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp_90_cast
  %statemt_load_21 = load i32* %statemt_addr_25, align 4
  %tmp_44 = xor i32 %statemt_load_21, %worda_load_7
  store i32 %tmp_44, i32* %statemt_addr_25, align 4
  br label %0

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
