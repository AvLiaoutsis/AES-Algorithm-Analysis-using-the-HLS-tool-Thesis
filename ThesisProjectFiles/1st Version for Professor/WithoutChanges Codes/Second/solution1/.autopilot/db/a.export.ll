; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB"
@Cipher_str = internal unnamed_addr constant [7 x i8] c"Cipher\00"

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_5 = trunc i6 %empty to i4
  ret i4 %empty_5
}

declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_6 = shl i8 1, %empty
  %empty_7 = and i8 %0, %empty_6
  %empty_8 = icmp ne i8 %empty_7, 0
  ret i1 %empty_8
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_9 = zext i2 %1 to i8
  %empty_10 = shl i8 %empty, 2
  %empty_11 = or i8 %empty_10, %empty_9
  ret i8 %empty_11
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4, i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %1 to i4
  %empty_12 = zext i3 %2 to i4
  %empty_13 = shl i4 %empty, 3
  %empty_14 = or i4 %empty_13, %empty_12
  %empty_15 = zext i4 %0 to i8
  %empty_16 = zext i4 %empty_14 to i8
  %empty_17 = shl i8 %empty_15, 4
  %empty_18 = or i8 %empty_17, %empty_16
  ret i8 %empty_18
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_19 = zext i2 %1 to i5
  %empty_20 = shl i5 %empty, 2
  %empty_21 = or i5 %empty_20, %empty_19
  ret i5 %empty_21
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_22 = zext i2 %1 to i4
  %empty_23 = shl i4 %empty, 2
  %empty_24 = or i4 %empty_23, %empty_22
  ret i4 %empty_24
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32
  %empty_25 = zext i3 %1 to i32
  %empty_26 = shl i32 %empty, 3
  %empty_27 = or i32 %empty_26, %empty_25
  ret i32 %empty_27
}

define internal fastcc void @SubBytes([16 x i32]* nocapture %state) {
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ]
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i, i2 0)
  %tmp_1_cast = zext i5 %tmp to i6
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_1 = add i3 %i, 1
  br i1 %exitcond1, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %1
  %j = phi i3 [ %j_1, %1 ], [ 0, %.preheader.preheader ]
  %j_cast1_cast = zext i3 %j to i6
  %tmp_2 = add i6 %tmp_1_cast, %j_cast1_cast
  %tmp_2_cast = zext i6 %tmp_2 to i32
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_2_cast
  %exitcond = icmp eq i3 %j, -4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %state_load = load i32* %state_addr, align 4
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load
  %sbox_load = load i8* %sbox_addr, align 1
  %sbox_load_cast = zext i8 %sbox_load to i32
  store i32 %sbox_load_cast, i32* %state_addr, align 4
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @KeyExpansion([240 x i32]* nocapture %RoundKey, [32 x i32]* nocapture %Key) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %tmp_3, %2 ]
  %exitcond2 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_3 = add i3 %i, 1
  br i1 %exitcond2, label %.preheader3.preheader, label %2

.preheader3.preheader:                            ; preds = %1
  br label %.preheader3

; <label>:2                                       ; preds = %1
  %tmp_14 = trunc i3 %i to i2
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_14, i2 0)
  %tmp_cast = zext i4 %tmp to i32
  %Key_addr = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp_cast
  %Key_load = load i32* %Key_addr, align 4
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_cast
  store i32 %Key_load, i32* %RoundKey_addr, align 4
  %tmp_s = or i4 %tmp, 1
  %tmp_cast_29 = zext i4 %tmp_s to i32
  %Key_addr_1 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp_cast_29
  %Key_load_1 = load i32* %Key_addr_1, align 4
  %RoundKey_addr_1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_cast_29
  store i32 %Key_load_1, i32* %RoundKey_addr_1, align 4
  %tmp_1 = or i4 %tmp, 2
  %tmp_1_cast = zext i4 %tmp_1 to i32
  %Key_addr_2 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp_1_cast
  %Key_load_2 = load i32* %Key_addr_2, align 4
  %RoundKey_addr_2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_1_cast
  store i32 %Key_load_2, i32* %RoundKey_addr_2, align 4
  %tmp_2 = or i4 %tmp, 3
  %tmp_2_cast = zext i4 %tmp_2 to i32
  %Key_addr_3 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp_2_cast
  %Key_load_3 = load i32* %Key_addr_3, align 4
  %RoundKey_addr_3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_2_cast
  store i32 %Key_load_3, i32* %RoundKey_addr_3, align 4
  br label %1

.preheader3:                                      ; preds = %.preheader3.preheader, %_ifconv24
  %temp_3 = phi i32 [ %temp_3_1, %_ifconv24 ], [ undef, %.preheader3.preheader ]
  %temp_2 = phi i32 [ %temp_2_1, %_ifconv24 ], [ undef, %.preheader3.preheader ]
  %temp_1 = phi i32 [ %temp_1_1, %_ifconv24 ], [ undef, %.preheader3.preheader ]
  %temp = phi i32 [ %temp_0_2, %_ifconv24 ], [ undef, %.preheader3.preheader ]
  %i_1 = phi i6 [ %i_2, %_ifconv24 ], [ 4, %.preheader3.preheader ]
  %exitcond1 = icmp eq i6 %i_1, -20
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  br i1 %exitcond1, label %3, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader3
  %tmp_4 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0)
  %tmp_4_cast = zext i8 %tmp_4 to i32
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %num_assign_2 = phi i32 [ %temp_3, %.preheader.preheader ], [ %temp_3_3, %_ifconv ]
  %num_assign_1 = phi i32 [ %temp_2, %.preheader.preheader ], [ %temp_3_4, %_ifconv ]
  %temp_3_5 = phi i32 [ %temp_1, %.preheader.preheader ], [ %temp_3_7, %_ifconv ]
  %temp_3_8 = phi i32 [ %temp, %.preheader.preheader ], [ %temp_3_9, %_ifconv ]
  %j = phi i3 [ 0, %.preheader.preheader ], [ %j_2, %_ifconv ]
  %exitcond = icmp eq i3 %j, -4
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_2 = add i3 %j, 1
  br i1 %exitcond, label %_ifconv24, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp1 = xor i3 %j, -4
  %tmp29_cast = sext i3 %tmp1 to i8
  %sum8 = add i8 %tmp29_cast, %tmp_4
  %sum8_cast = zext i8 %sum8 to i32
  %RoundKey_addr_4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_cast
  %temp_0 = load i32* %RoundKey_addr_4, align 4
  %tmp_16 = trunc i3 %j to i2
  %sel_tmp = icmp eq i2 %tmp_16, -2
  %sel_tmp2 = icmp eq i2 %tmp_16, 1
  %sel_tmp4 = icmp eq i2 %tmp_16, 0
  %or_cond = or i1 %sel_tmp4, %sel_tmp2
  %newSel = select i1 %sel_tmp, i32 %num_assign_2, i32 %temp_0
  %temp_3_3 = select i1 %or_cond, i32 %num_assign_2, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 %temp_0, i32 %num_assign_1
  %temp_3_4 = select i1 %or_cond, i32 %num_assign_1, i32 %newSel2
  %temp_3_6 = select i1 %sel_tmp2, i32 %temp_0, i32 %temp_3_5
  %temp_3_7 = select i1 %sel_tmp4, i32 %temp_3_5, i32 %temp_3_6
  %temp_3_9 = select i1 %sel_tmp4, i32 %temp_0, i32 %temp_3_8
  br label %.preheader

_ifconv24:                                        ; preds = %.preheader
  %tmp_15 = trunc i6 %i_1 to i2
  %tmp_7 = icmp eq i2 %tmp_15, 0
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %temp_3_5
  %sbox_load = load i8* %sbox_addr, align 1
  %sbox_addr_1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_1
  %temp_1_32 = load i8* %sbox_addr_1, align 1
  %temp_1_cast = zext i8 %temp_1_32 to i32
  %sbox_addr_2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_2
  %temp_2_33 = load i8* %sbox_addr_2, align 1
  %temp_2_cast = zext i8 %temp_2_33 to i32
  %sbox_addr_3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %temp_3_8
  %temp_3_34 = load i8* %sbox_addr_3, align 1
  %temp_3_cast = zext i8 %temp_3_34 to i32
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %tmp_9 = zext i4 %p_lshr_f_cast to i32
  %Rcon_addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp_9
  %Rcon_load = load i8* %Rcon_addr, align 1
  %temp_0_1 = xor i8 %Rcon_load, %sbox_load
  %temp_0_1_cast = zext i8 %temp_0_1 to i32
  %temp_3_1 = select i1 %tmp_7, i32 %temp_3_cast, i32 %num_assign_2
  %temp_2_1 = select i1 %tmp_7, i32 %temp_2_cast, i32 %num_assign_1
  %temp_1_1 = select i1 %tmp_7, i32 %temp_1_cast, i32 %temp_3_5
  %temp_0_2 = select i1 %tmp_7, i32 %temp_0_1_cast, i32 %temp_3_8
  %sum = add i8 -16, %tmp_4
  %sum_cast = zext i8 %sum to i32
  %RoundKey_addr_5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum_cast
  %RoundKey_load = load i32* %RoundKey_addr_5, align 4
  %tmp_5 = xor i32 %RoundKey_load, %temp_0_2
  %RoundKey_addr_6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_4_cast
  store i32 %tmp_5, i32* %RoundKey_addr_6, align 4
  %sum1 = add i8 -15, %tmp_4
  %sum1_cast = zext i8 %sum1 to i32
  %RoundKey_addr_7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum1_cast
  %RoundKey_load_1 = load i32* %RoundKey_addr_7, align 4
  %tmp_6 = xor i32 %RoundKey_load_1, %temp_1_1
  %tmp_8 = or i8 %tmp_4, 1
  %tmp_12_cast = zext i8 %tmp_8 to i32
  %RoundKey_addr_8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_12_cast
  store i32 %tmp_6, i32* %RoundKey_addr_8, align 4
  %sum2 = add i8 -14, %tmp_4
  %sum2_cast = zext i8 %sum2 to i32
  %RoundKey_addr_9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum2_cast
  %RoundKey_load_2 = load i32* %RoundKey_addr_9, align 4
  %tmp_10 = xor i32 %RoundKey_load_2, %temp_2_1
  %tmp_11 = or i8 %tmp_4, 2
  %tmp_14_cast = zext i8 %tmp_11 to i32
  %RoundKey_addr_10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_14_cast
  store i32 %tmp_10, i32* %RoundKey_addr_10, align 4
  %sum3 = add i8 -13, %tmp_4
  %sum3_cast = zext i8 %sum3 to i32
  %RoundKey_addr_11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_cast
  %RoundKey_load_3 = load i32* %RoundKey_addr_11, align 4
  %tmp_12 = xor i32 %RoundKey_load_3, %temp_3_1
  %tmp_13 = or i8 %tmp_4, 3
  %tmp_16_cast = zext i8 %tmp_13 to i32
  %RoundKey_addr_12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_16_cast
  store i32 %tmp_12, i32* %RoundKey_addr_12, align 4
  %i_2 = add i6 1, %i_1
  br label %.preheader3

; <label>:3                                       ; preds = %.preheader3
  ret void
}

define void @Cipher([32 x i32]* %Key, [16 x i32]* %state) nounwind {
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 4
  %state_addr_1 = getelementptr [16 x i32]* %state, i32 0, i32 5
  %state_addr_2 = getelementptr [16 x i32]* %state, i32 0, i32 6
  %state_addr_3 = getelementptr [16 x i32]* %state, i32 0, i32 7
  %state_addr_4 = getelementptr [16 x i32]* %state, i32 0, i32 8
  %state_addr_5 = getelementptr [16 x i32]* %state, i32 0, i32 10
  %state_addr_6 = getelementptr [16 x i32]* %state, i32 0, i32 9
  %state_addr_7 = getelementptr [16 x i32]* %state, i32 0, i32 11
  %state_addr_8 = getelementptr [16 x i32]* %state, i32 0, i32 12
  %state_addr_9 = getelementptr [16 x i32]* %state, i32 0, i32 15
  %state_addr_10 = getelementptr [16 x i32]* %state, i32 0, i32 14
  %state_addr_11 = getelementptr [16 x i32]* %state, i32 0, i32 13
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i32]* %state) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher_str) nounwind
  %RoundKey = alloca [240 x i32], align 4
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind
  call fastcc void @AddRoundKey(i6 0, [16 x i32]* %state, [240 x i32]* %RoundKey) nounwind
  br label %1

; <label>:1                                       ; preds = %MixColumns.exit, %0
  %round = phi i4 [ 1, %0 ], [ %round_1, %MixColumns.exit ]
  %exitcond = icmp eq i4 %round, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  br i1 %exitcond, label %5, label %2

; <label>:2                                       ; preds = %1
  call fastcc void @SubBytes([16 x i32]* %state) nounwind
  %state_load_12 = load i32* %state_addr, align 4
  %temp_4 = trunc i32 %state_load_12 to i8
  %state_load_13 = load i32* %state_addr_1, align 4
  store i32 %state_load_13, i32* %state_addr, align 4
  %state_load_14 = load i32* %state_addr_2, align 4
  store i32 %state_load_14, i32* %state_addr_1, align 4
  %state_load_15 = load i32* %state_addr_3, align 4
  store i32 %state_load_15, i32* %state_addr_2, align 4
  %tmp_i = zext i8 %temp_4 to i32
  store i32 %tmp_i, i32* %state_addr_3, align 4
  %state_load_16 = load i32* %state_addr_4, align 4
  %temp_5 = trunc i32 %state_load_16 to i8
  %state_load_17 = load i32* %state_addr_5, align 4
  store i32 %state_load_17, i32* %state_addr_4, align 4
  %tmp_2_i = zext i8 %temp_5 to i32
  store i32 %tmp_2_i, i32* %state_addr_5, align 4
  %state_load_18 = load i32* %state_addr_6, align 4
  %temp_6 = trunc i32 %state_load_18 to i8
  %state_load_19 = load i32* %state_addr_7, align 4
  store i32 %state_load_19, i32* %state_addr_6, align 4
  %tmp_3_i = zext i8 %temp_6 to i32
  store i32 %tmp_3_i, i32* %state_addr_7, align 4
  %state_load_20 = load i32* %state_addr_8, align 4
  %temp_7 = trunc i32 %state_load_20 to i8
  %state_load_21 = load i32* %state_addr_9, align 4
  store i32 %state_load_21, i32* %state_addr_8, align 4
  %state_load_22 = load i32* %state_addr_10, align 4
  store i32 %state_load_22, i32* %state_addr_9, align 4
  %state_load_23 = load i32* %state_addr_11, align 4
  store i32 %state_load_23, i32* %state_addr_10, align 4
  %tmp_4_i = zext i8 %temp_7 to i32
  store i32 %tmp_4_i, i32* %state_addr_11, align 4
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i_i = phi i3 [ 0, %2 ], [ %i, %4 ]
  %i_i_cast5 = zext i3 %i_i to i32
  %i_i_cast5_cast1 = zext i3 %i_i to i5
  %i_i_cast5_cast = zext i3 %i_i to i4
  %state_addr_12 = getelementptr [16 x i32]* %state, i32 0, i32 %i_i_cast5
  %tmp_s = add i4 %i_i_cast5_cast, 4
  %tmp_15_cast = zext i4 %tmp_s to i32
  %state_addr_13 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_15_cast
  %tmp_14 = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 1, i3 %i_i)
  %state_addr_14 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_14
  %tmp_15 = add i5 %i_i_cast5_cast1, 12
  %tmp_17_cast = zext i5 %tmp_15 to i32
  %state_addr_15 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_17_cast
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i = add i3 %i_i, 1
  br i1 %exitcond_i, label %MixColumns.exit, label %4

; <label>:4                                       ; preds = %3
  %state_load_24 = load i32* %state_addr_12, align 4
  %t = trunc i32 %state_load_24 to i8
  %state_load_25 = load i32* %state_addr_13, align 4
  %state_load_26 = load i32* %state_addr_14, align 4
  %state_load_27 = load i32* %state_addr_15, align 4
  %tmp_27 = trunc i32 %state_load_25 to i8
  %tmp_28 = trunc i32 %state_load_26 to i8
  %Tm = xor i8 %tmp_27, %t
  %tmp_29 = trunc i32 %state_load_27 to i8
  %tmp = xor i8 %Tm, %tmp_29
  %Tmp = xor i8 %tmp, %tmp_28
  %tmp_30 = shl i8 %Tm, 1
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm, i32 7)
  %tmp_9_i_cast_cast = select i1 %tmp_31, i8 27, i8 0
  %tmp1 = xor i8 %tmp_30, %Tmp
  %tmp_i_36 = xor i8 %tmp1, %tmp_9_i_cast_cast
  %tmp_1_i = zext i8 %tmp_i_36 to i32
  %tmp_2_i6 = xor i32 %state_load_24, %tmp_1_i
  store i32 %tmp_2_i6, i32* %state_addr_12, align 4
  %Tm_1 = xor i8 %tmp_28, %tmp_27
  %tmp_32 = shl i8 %Tm_1, 1
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_1, i32 7)
  %tmp_5_i_cast_cast = select i1 %tmp_33, i8 27, i8 0
  %tmp2 = xor i8 %tmp_32, %Tmp
  %tmp_11_i = xor i8 %tmp2, %tmp_5_i_cast_cast
  %tmp_12_i = zext i8 %tmp_11_i to i32
  %tmp_13_i = xor i32 %state_load_25, %tmp_12_i
  store i32 %tmp_13_i, i32* %state_addr_13, align 4
  %Tm_2 = xor i8 %tmp_29, %tmp_28
  %tmp_34 = shl i8 %Tm_2, 1
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2, i32 7)
  %tmp_16_i_cast_cast = select i1 %tmp_35, i8 27, i8 0
  %tmp3 = xor i8 %Tmp, %tmp_16_i_cast_cast
  %tmp_18_i = xor i8 %tmp3, %tmp_34
  %tmp_19_i = zext i8 %tmp_18_i to i32
  %tmp_20_i = xor i32 %state_load_26, %tmp_19_i
  store i32 %tmp_20_i, i32* %state_addr_14, align 4
  %Tm_3 = xor i8 %tmp_29, %t
  %tmp_36 = shl i8 %Tm_3, 1
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_3, i32 7)
  %tmp_23_i_cast_cast = select i1 %tmp_37, i8 27, i8 0
  %tmp4 = xor i8 %Tmp, %tmp_23_i_cast_cast
  %tmp_25_i = xor i8 %tmp4, %tmp_36
  %tmp_26_i = zext i8 %tmp_25_i to i32
  %tmp_27_i = xor i32 %state_load_27, %tmp_26_i
  store i32 %tmp_27_i, i32* %state_addr_15, align 4
  br label %3

MixColumns.exit:                                  ; preds = %3
  %round_cast6_cast = zext i4 %round to i6
  call fastcc void @AddRoundKey(i6 %round_cast6_cast, [16 x i32]* %state, [240 x i32]* %RoundKey) nounwind
  %round_1 = add i4 %round, 1
  br label %1

; <label>:5                                       ; preds = %1
  call fastcc void @SubBytes([16 x i32]* %state) nounwind
  %state_load = load i32* %state_addr, align 4
  %temp = trunc i32 %state_load to i8
  %state_load_1 = load i32* %state_addr_1, align 4
  store i32 %state_load_1, i32* %state_addr, align 4
  %state_load_2 = load i32* %state_addr_2, align 4
  store i32 %state_load_2, i32* %state_addr_1, align 4
  %state_load_3 = load i32* %state_addr_3, align 4
  store i32 %state_load_3, i32* %state_addr_2, align 4
  %tmp_i1 = zext i8 %temp to i32
  store i32 %tmp_i1, i32* %state_addr_3, align 4
  %state_load_4 = load i32* %state_addr_4, align 4
  %temp_1 = trunc i32 %state_load_4 to i8
  %state_load_5 = load i32* %state_addr_5, align 4
  store i32 %state_load_5, i32* %state_addr_4, align 4
  %tmp_2_i1 = zext i8 %temp_1 to i32
  store i32 %tmp_2_i1, i32* %state_addr_5, align 4
  %state_load_6 = load i32* %state_addr_6, align 4
  %temp_2 = trunc i32 %state_load_6 to i8
  %state_load_7 = load i32* %state_addr_7, align 4
  store i32 %state_load_7, i32* %state_addr_6, align 4
  %tmp_3_i1 = zext i8 %temp_2 to i32
  store i32 %tmp_3_i1, i32* %state_addr_7, align 4
  %state_load_8 = load i32* %state_addr_8, align 4
  %temp_3 = trunc i32 %state_load_8 to i8
  %state_load_9 = load i32* %state_addr_9, align 4
  store i32 %state_load_9, i32* %state_addr_8, align 4
  %state_load_10 = load i32* %state_addr_10, align 4
  store i32 %state_load_10, i32* %state_addr_9, align 4
  %state_load_11 = load i32* %state_addr_11, align 4
  store i32 %state_load_11, i32* %state_addr_10, align 4
  %tmp_4_i1 = zext i8 %temp_3 to i32
  store i32 %tmp_4_i1, i32* %state_addr_11, align 4
  call fastcc void @AddRoundKey(i6 10, [16 x i32]* %state, [240 x i32]* %RoundKey) nounwind
  ret void
}

define internal fastcc void @AddRoundKey(i6 %round, [16 x i32]* nocapture %state, [240 x i32]* nocapture %RoundKey) {
  %round_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %round)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i3 [ 0, %0 ], [ %i_3, %.loopexit.loopexit ]
  %i_cast4_cast = zext i3 %i to i6
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_3 = add i3 %i, 1
  br i1 %exitcond1, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0)
  %tmp_cast = zext i4 %tmp_s to i8
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %j = phi i3 [ %j_3, %1 ], [ 0, %.preheader.preheader ]
  %tmp_16 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j, i2 0)
  %tmp_24_cast = zext i5 %tmp_16 to i6
  %tmp_17 = add i6 %i_cast4_cast, %tmp_24_cast
  %tmp_25_cast = zext i6 %tmp_17 to i32
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_25_cast
  %exitcond = icmp eq i3 %j, -4
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_3 = add i3 %j, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_38 = trunc i6 %round_read to i4
  %tmp1 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4 %tmp_38, i1 false, i3 %j)
  %sum3 = add i8 %tmp1, %tmp_cast
  %sum3_cast = zext i8 %sum3 to i32
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_cast
  %RoundKey_load = load i32* %RoundKey_addr, align 4
  %state_load = load i32* %state_addr, align 4
  %tmp_14 = xor i32 %state_load, %RoundKey_load
  store i32 %tmp_14, i32* %state_addr, align 4
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

!opencl.kernels = !{!0, !7, !13, !17, !17, !17, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"int*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!17 = metadata !{null, metadata !18, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word [4]*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"Key", metadata !"state"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"Key", metadata !31, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"state", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!37 = metadata !{metadata !38, metadata !38}
!38 = metadata !{i32 0, i32 3, i32 1}
