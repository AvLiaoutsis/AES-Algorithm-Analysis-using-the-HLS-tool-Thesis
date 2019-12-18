; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@temp22 = internal unnamed_addr constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF"
@temp1 = internal unnamed_addr constant [16 x i4] [i4 0, i4 1, i4 2, i4 3, i4 4, i4 5, i4 6, i4 7, i4 -8, i4 -7, i4 -6, i4 -5, i4 -4, i4 -3, i4 -2, i4 -1]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB"
@Cipher_str = internal unnamed_addr constant [7 x i8] c"Cipher\00"

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

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i31.i32.i32(i31, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_3 = shl i8 1, %empty
  %empty_4 = and i8 %0, %empty_3
  %empty_5 = icmp ne i8 %empty_4, 0
  ret i1 %empty_5
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7, i2) nounwind readnone {
entry:
  %empty = zext i7 %0 to i9
  %empty_6 = zext i2 %1 to i9
  %empty_7 = shl i9 %empty, 2
  %empty_8 = or i9 %empty_7, %empty_6
  ret i9 %empty_8
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i5.i1.i3(i5, i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %1 to i4
  %empty_9 = zext i3 %2 to i4
  %empty_10 = shl i4 %empty, 3
  %empty_11 = or i4 %empty_10, %empty_9
  %empty_12 = zext i5 %0 to i9
  %empty_13 = zext i4 %empty_11 to i9
  %empty_14 = shl i9 %empty_12, 4
  %empty_15 = or i9 %empty_14, %empty_13
  ret i9 %empty_15
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_16 = zext i2 %1 to i8
  %empty_17 = shl i8 %empty, 2
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

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32
  %empty_25 = zext i3 %1 to i32
  %empty_26 = shl i32 %empty, 3
  %empty_27 = or i32 %empty_26, %empty_25
  ret i32 %empty_27
}

define internal fastcc void @SubBytes([16 x i8]* nocapture %state) {
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
  %state_addr = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_2_cast
  %exitcond = icmp eq i3 %j, -4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %state_load = load i8* %state_addr, align 1
  %num_assign = zext i8 %state_load to i32
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign
  %sbox_load = load i8* %sbox_addr, align 1
  store i8 %sbox_load, i8* %state_addr, align 1
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @KeyExpansion([240 x i8]* nocapture %RoundKey, [32 x i4]* %Key, i32 %Nk, i32 %Nr) {
  %Nr_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Nr)
  %Nk_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Nk)
  %tmp = icmp sgt i32 %Nk_read, 0
  %tmp_6 = trunc i32 %Nk_read to i31
  %i = select i1 %tmp, i31 %tmp_6, i31 0
  %i_cast = zext i31 %i to i32
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i3 = phi i31 [ 0, %0 ], [ %tmp_5, %2 ]
  %i3_cast = zext i31 %i3 to i32
  %tmp_s = icmp slt i32 %i3_cast, %Nk_read
  %tmp_5 = add i31 %i3, 1
  br i1 %tmp_s, label %2, label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %1
  %tmp_28 = shl i32 %Nr_read, 2
  %tmp_7 = add i32 4, %tmp_28
  %tmp_8 = icmp sgt i32 %Nk_read, 6
  br label %.preheader1

; <label>:2                                       ; preds = %1
  %tmp_27 = trunc i31 %i3 to i7
  %tmp_1 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %tmp_27, i2 0)
  %tmp_1_cast = zext i9 %tmp_1 to i32
  %Key_addr = getelementptr [32 x i4]* %Key, i32 0, i32 %tmp_1_cast
  %Key_load = load i4* %Key_addr, align 1
  %extLd1 = zext i4 %Key_load to i8
  %RoundKey_addr = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_1_cast
  store i8 %extLd1, i8* %RoundKey_addr, align 1
  %tmp_2 = or i9 %tmp_1, 1
  %tmp_2_cast = zext i9 %tmp_2 to i32
  %Key_addr_1 = getelementptr [32 x i4]* %Key, i32 0, i32 %tmp_2_cast
  %Key_load_1 = load i4* %Key_addr_1, align 1
  %extLd2 = zext i4 %Key_load_1 to i8
  %RoundKey_addr_1 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_2_cast
  store i8 %extLd2, i8* %RoundKey_addr_1, align 1
  %tmp_3 = or i9 %tmp_1, 2
  %tmp_3_cast = zext i9 %tmp_3 to i32
  %Key_addr_2 = getelementptr [32 x i4]* %Key, i32 0, i32 %tmp_3_cast
  %Key_load_2 = load i4* %Key_addr_2, align 1
  %extLd3 = zext i4 %Key_load_2 to i8
  %RoundKey_addr_2 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_3_cast
  store i8 %extLd3, i8* %RoundKey_addr_2, align 1
  %tmp_4 = or i9 %tmp_1, 3
  %tmp_4_cast = zext i9 %tmp_4 to i32
  %Key_addr_3 = getelementptr [32 x i4]* %Key, i32 0, i32 %tmp_4_cast
  %Key_load_3 = load i4* %Key_addr_3, align 1
  %extLd = zext i4 %Key_load_3 to i8
  %RoundKey_addr_3 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_4_cast
  store i8 %extLd, i8* %RoundKey_addr_3, align 1
  br label %1

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.preheader
  %temp_3 = phi i8 [ undef, %.preheader1.preheader ], [ %temp_3_4_34, %._crit_edge ]
  %temp_2 = phi i8 [ undef, %.preheader1.preheader ], [ %temp_2_4, %._crit_edge ]
  %temp_1 = phi i8 [ undef, %.preheader1.preheader ], [ %temp_1_4, %._crit_edge ]
  %temp = phi i8 [ undef, %.preheader1.preheader ], [ %temp_0_4, %._crit_edge ]
  %i_1 = phi i32 [ %i_cast, %.preheader1.preheader ], [ %i_2, %._crit_edge ]
  %tmp_9 = icmp slt i32 %i_1, %tmp_7
  br i1 %tmp_9, label %.preheader.preheader, label %7

.preheader.preheader:                             ; preds = %.preheader1
  %tmp_29 = trunc i32 %i_1 to i7
  %tmp_10 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %tmp_29, i2 0)
  %tmp_30 = trunc i32 %i_1 to i6
  %tmp_10_cast1 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_30, i2 0)
  %tmp_10_cast = zext i9 %tmp_10 to i32
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %temp_3_1 = phi i8 [ %temp_3, %.preheader.preheader ], [ %temp_3_29, %_ifconv ]
  %temp_2_1 = phi i8 [ %temp_2, %.preheader.preheader ], [ %temp_3_1_30, %_ifconv ]
  %temp_3_2 = phi i8 [ %temp_1, %.preheader.preheader ], [ %temp_3_4, %_ifconv ]
  %temp_3_10 = phi i8 [ %temp, %.preheader.preheader ], [ %temp_3_6, %_ifconv ]
  %j = phi i3 [ 0, %.preheader.preheader ], [ %j_2, %_ifconv ]
  %exitcond = icmp eq i3 %j, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_2 = add i3 %j, 1
  br i1 %exitcond, label %3, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp1 = xor i3 %j, -4
  %tmp24_cast = sext i3 %tmp1 to i9
  %sum8 = add i9 %tmp24_cast, %tmp_10
  %sum8_cast = zext i9 %sum8 to i32
  %RoundKey_addr_4 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %sum8_cast
  %temp_0_3 = load i8* %RoundKey_addr_4, align 1
  %tmp_31 = trunc i3 %j to i2
  %sel_tmp = icmp eq i2 %tmp_31, -2
  %sel_tmp2 = icmp eq i2 %tmp_31, 1
  %sel_tmp4 = icmp eq i2 %tmp_31, 0
  %or_cond = or i1 %sel_tmp4, %sel_tmp2
  %newSel = select i1 %sel_tmp, i8 %temp_3_1, i8 %temp_0_3
  %temp_3_29 = select i1 %or_cond, i8 %temp_3_1, i8 %newSel
  %newSel2 = select i1 %sel_tmp, i8 %temp_0_3, i8 %temp_2_1
  %temp_3_1_30 = select i1 %or_cond, i8 %temp_2_1, i8 %newSel2
  %temp_3_3 = select i1 %sel_tmp2, i8 %temp_0_3, i8 %temp_3_2
  %temp_3_4 = select i1 %sel_tmp4, i8 %temp_3_2, i8 %temp_3_3
  %temp_3_6 = select i1 %sel_tmp4, i8 %temp_0_3, i8 %temp_3_10
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %tmp_11 = srem i32 %i_1, %Nk_read
  %tmp_12 = icmp eq i32 %tmp_11, 0
  br i1 %tmp_12, label %4, label %5

; <label>:4                                       ; preds = %3
  %num_assign = zext i8 %temp_3_2 to i32
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign
  %sbox_load = load i8* %sbox_addr, align 1
  %num_assign_1 = zext i8 %temp_2_1 to i32
  %sbox_addr_1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_1
  %temp_1_31 = load i8* %sbox_addr_1, align 1
  %num_assign_2 = zext i8 %temp_3_1 to i32
  %sbox_addr_2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_2
  %temp_2_1_32 = load i8* %sbox_addr_2, align 1
  %num_assign_3 = zext i8 %temp_3_10 to i32
  %sbox_addr_3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_3
  %temp_3_8 = load i8* %sbox_addr_3, align 1
  %tmp_13 = sdiv i32 %i_1, %Nk_read
  %Rcon_addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp_13
  %Rcon_load = load i8* %Rcon_addr, align 1
  %temp_0 = xor i8 %Rcon_load, %sbox_load
  br label %._crit_edge

; <label>:5                                       ; preds = %3
  %tmp_14 = icmp eq i32 %tmp_11, 4
  %or_cond_33 = and i1 %tmp_8, %tmp_14
  br i1 %or_cond_33, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %num_assign_4 = zext i8 %temp_3_10 to i32
  %sbox_addr_4 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_4
  %temp_0_2 = load i8* %sbox_addr_4, align 1
  %num_assign_5 = zext i8 %temp_3_2 to i32
  %sbox_addr_5 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_5
  %temp_1_2 = load i8* %sbox_addr_5, align 1
  %num_assign_6 = zext i8 %temp_2_1 to i32
  %sbox_addr_6 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_6
  %temp_2_2 = load i8* %sbox_addr_6, align 1
  %num_assign_7 = zext i8 %temp_3_1 to i32
  %sbox_addr_7 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_7
  %temp_3_9 = load i8* %sbox_addr_7, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5, %4
  %temp_3_4_34 = phi i8 [ %temp_3_8, %4 ], [ %temp_3_9, %6 ], [ %temp_3_1, %5 ]
  %temp_2_4 = phi i8 [ %temp_2_1_32, %4 ], [ %temp_2_2, %6 ], [ %temp_2_1, %5 ]
  %temp_1_4 = phi i8 [ %temp_1_31, %4 ], [ %temp_1_2, %6 ], [ %temp_3_2, %5 ]
  %temp_0_4 = phi i8 [ %temp_0, %4 ], [ %temp_0_2, %6 ], [ %temp_3_10, %5 ]
  %tmp_15 = sub nsw i32 %i_1, %Nk_read
  %tmp_32 = trunc i32 %tmp_15 to i7
  %tmp_16 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %tmp_32, i2 0)
  %tmp_29_cast = zext i9 %tmp_16 to i32
  %RoundKey_addr_5 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_29_cast
  %RoundKey_load = load i8* %RoundKey_addr_5, align 1
  %tmp_17 = xor i8 %RoundKey_load, %temp_0_4
  %RoundKey_addr_6 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_10_cast
  store i8 %tmp_17, i8* %RoundKey_addr_6, align 1
  %tmp_18 = or i9 %tmp_16, 1
  %tmp_31_cast = zext i9 %tmp_18 to i32
  %RoundKey_addr_7 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_31_cast
  %RoundKey_load_1 = load i8* %RoundKey_addr_7, align 1
  %tmp_19 = xor i8 %RoundKey_load_1, %temp_1_4
  %tmp_20 = or i8 %tmp_10_cast1, 1
  %tmp_33_cast = zext i8 %tmp_20 to i32
  %RoundKey_addr_8 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_33_cast
  store i8 %tmp_19, i8* %RoundKey_addr_8, align 1
  %tmp_21 = or i9 %tmp_16, 2
  %tmp_34_cast = zext i9 %tmp_21 to i32
  %RoundKey_addr_9 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_34_cast
  %RoundKey_load_2 = load i8* %RoundKey_addr_9, align 1
  %tmp_22 = xor i8 %RoundKey_load_2, %temp_2_4
  %tmp_23 = or i8 %tmp_10_cast1, 2
  %tmp_36_cast = zext i8 %tmp_23 to i32
  %RoundKey_addr_10 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_36_cast
  store i8 %tmp_22, i8* %RoundKey_addr_10, align 1
  %tmp_24 = or i9 %tmp_16, 3
  %tmp_37_cast = zext i9 %tmp_24 to i32
  %RoundKey_addr_11 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_37_cast
  %RoundKey_load_3 = load i8* %RoundKey_addr_11, align 1
  %tmp_25 = xor i8 %RoundKey_load_3, %temp_3_4_34
  %tmp_26 = or i8 %tmp_10_cast1, 3
  %tmp_39_cast = zext i8 %tmp_26 to i32
  %RoundKey_addr_12 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp_39_cast
  store i8 %tmp_25, i8* %RoundKey_addr_12, align 1
  %i_2 = add nsw i32 1, %i_1
  br label %.preheader1

; <label>:7                                       ; preds = %.preheader1
  ret void
}

define void @Cipher(i32 %Nr, i32 %Nk, [16 x i8]* %out_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Nr) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Nk) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %out_r) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher_str) nounwind
  %Nk_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Nk) nounwind
  %Nr_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Nr) nounwind
  %state = alloca [16 x i8], align 1
  %state_addr = getelementptr [16 x i8]* %state, i32 0, i32 4
  %state_addr_1 = getelementptr [16 x i8]* %state, i32 0, i32 5
  %state_addr_2 = getelementptr [16 x i8]* %state, i32 0, i32 6
  %state_addr_3 = getelementptr [16 x i8]* %state, i32 0, i32 7
  %state_addr_4 = getelementptr [16 x i8]* %state, i32 0, i32 8
  %state_addr_5 = getelementptr [16 x i8]* %state, i32 0, i32 10
  %state_addr_6 = getelementptr [16 x i8]* %state, i32 0, i32 9
  %state_addr_7 = getelementptr [16 x i8]* %state, i32 0, i32 11
  %state_addr_8 = getelementptr [16 x i8]* %state, i32 0, i32 12
  %state_addr_9 = getelementptr [16 x i8]* %state, i32 0, i32 15
  %state_addr_10 = getelementptr [16 x i8]* %state, i32 0, i32 14
  %state_addr_11 = getelementptr [16 x i8]* %state, i32 0, i32 13
  %RoundKey = alloca [240 x i8], align 1
  %Key = alloca [32 x i4], align 1
  %in = alloca [16 x i8], align 1
  %tmp = shl i32 %Nk_read, 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i_3, %2 ]
  %i_cast = zext i31 %i to i32
  %tmp_s = icmp slt i32 %i_cast, %tmp
  %i_3 = add i31 %i, 1
  br i1 %tmp_s, label %2, label %3

; <label>:2                                       ; preds = %1
  %temp1_addr = getelementptr [16 x i4]* @temp1, i32 0, i32 %i_cast
  %temp1_load = load i4* %temp1_addr, align 1
  %Key_addr = getelementptr [32 x i4]* %Key, i32 0, i32 %i_cast
  store i4 %temp1_load, i4* %Key_addr, align 1
  %temp22_addr = getelementptr inbounds [16 x i8]* @temp22, i32 0, i32 %i_cast
  %temp22_load = load i8* %temp22_addr, align 1
  %in_addr = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %i_cast
  store i8 %temp22_load, i8* %in_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  call fastcc void @KeyExpansion([240 x i8]* %RoundKey, [32 x i4]* %Key, i32 %Nk_read, i32 %Nr_read) nounwind
  br label %.loopexit9

.loopexit9.loopexit:                              ; preds = %.preheader4
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %3
  %i_1 = phi i3 [ 0, %3 ], [ %i_4, %.loopexit9.loopexit ]
  %i_1_cast1_cast = zext i3 %i_1 to i6
  %exitcond3 = icmp eq i3 %i_1, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_4 = add i3 %i_1, 1
  br i1 %exitcond3, label %5, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.loopexit9
  %tmp_33 = trunc i3 %i_1 to i2
  %tmp_27 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_33, i2 0)
  br label %.preheader4

.preheader4:                                      ; preds = %4, %.preheader4.preheader
  %j = phi i3 [ %j_3, %4 ], [ 0, %.preheader4.preheader ]
  %tmp_31 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j, i2 0)
  %tmp_35_cast = zext i5 %tmp_31 to i6
  %tmp_32 = add i6 %i_1_cast1_cast, %tmp_35_cast
  %tmp_36_cast = zext i6 %tmp_32 to i32
  %state_addr_12 = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_36_cast
  %j_cast = zext i3 %j to i4
  %exitcond2 = icmp eq i3 %j, -4
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %j_3 = add i3 %j, 1
  br i1 %exitcond2, label %.loopexit9.loopexit, label %4

; <label>:4                                       ; preds = %.preheader4
  %tmp_29 = add i4 %j_cast, %tmp_27
  %tmp_42_cast = zext i4 %tmp_29 to i32
  %in_addr_1 = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %tmp_42_cast
  %in_load = load i8* %in_addr_1, align 1
  store i8 %in_load, i8* %state_addr_12, align 1
  br label %.preheader4

; <label>:5                                       ; preds = %.loopexit9
  call fastcc void @AddRoundKey(i32 0, [16 x i8]* %state, [240 x i8]* %RoundKey) nounwind
  br label %6

; <label>:6                                       ; preds = %MixColumns.exit, %5
  %round = phi i31 [ 1, %5 ], [ %round_1, %MixColumns.exit ]
  %round_cast = zext i31 %round to i32
  %tmp_28 = icmp slt i32 %round_cast, %Nr_read
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind
  br i1 %tmp_28, label %7, label %10

; <label>:7                                       ; preds = %6
  call fastcc void @SubBytes([16 x i8]* %state) nounwind
  %temp = load i8* %state_addr, align 1
  %state_load = load i8* %state_addr_1, align 1
  store i8 %state_load, i8* %state_addr, align 1
  %state_load_1 = load i8* %state_addr_2, align 1
  store i8 %state_load_1, i8* %state_addr_1, align 1
  %state_load_2 = load i8* %state_addr_3, align 1
  store i8 %state_load_2, i8* %state_addr_2, align 1
  store i8 %temp, i8* %state_addr_3, align 1
  %temp_1 = load i8* %state_addr_4, align 1
  %state_load_4 = load i8* %state_addr_5, align 1
  store i8 %state_load_4, i8* %state_addr_4, align 1
  store i8 %temp_1, i8* %state_addr_5, align 1
  %temp_2 = load i8* %state_addr_6, align 1
  %state_load_6 = load i8* %state_addr_7, align 1
  store i8 %state_load_6, i8* %state_addr_6, align 1
  store i8 %temp_2, i8* %state_addr_7, align 1
  %temp_3 = load i8* %state_addr_8, align 1
  %state_load_8 = load i8* %state_addr_9, align 1
  store i8 %state_load_8, i8* %state_addr_8, align 1
  %state_load_9 = load i8* %state_addr_10, align 1
  store i8 %state_load_9, i8* %state_addr_9, align 1
  %state_load_10 = load i8* %state_addr_11, align 1
  store i8 %state_load_10, i8* %state_addr_10, align 1
  store i8 %temp_3, i8* %state_addr_11, align 1
  br label %8

; <label>:8                                       ; preds = %9, %7
  %i_i = phi i3 [ 0, %7 ], [ %i_5, %9 ]
  %i_i_cast = zext i3 %i_i to i32
  %i_i_cast_cast1 = zext i3 %i_i to i5
  %i_i_cast_cast = zext i3 %i_i to i4
  %state_addr_13 = getelementptr [16 x i8]* %state, i32 0, i32 %i_i_cast
  %tmp_34 = add i4 %i_i_cast_cast, 4
  %tmp_37_cast = zext i4 %tmp_34 to i32
  %state_addr_14 = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_37_cast
  %tmp_35 = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 1, i3 %i_i)
  %state_addr_15 = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_35
  %tmp_36 = add i5 %i_i_cast_cast1, 12
  %tmp_39_cast = zext i5 %tmp_36 to i32
  %state_addr_16 = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_39_cast
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_5 = add i3 %i_i, 1
  br i1 %exitcond_i, label %MixColumns.exit, label %9

; <label>:9                                       ; preds = %8
  %t = load i8* %state_addr_13, align 1
  %state_load_25 = load i8* %state_addr_14, align 1
  %state_load_26 = load i8* %state_addr_15, align 1
  %state_load_27 = load i8* %state_addr_16, align 1
  %Tm = xor i8 %state_load_25, %t
  %Tm_4 = xor i8 %state_load_26, %Tm
  %Tmp = xor i8 %state_load_27, %Tm_4
  %tmp_37 = shl i8 %Tm, 1
  %tmp_38 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm, i32 7)
  %tmp_7_i_cast_cast = select i1 %tmp_38, i8 27, i8 0
  %tmp1 = xor i8 %t, %tmp_37
  %tmp2 = xor i8 %tmp_7_i_cast_cast, %Tmp
  %tmp_9_i = xor i8 %tmp2, %tmp1
  store i8 %tmp_9_i, i8* %state_addr_13, align 1
  %Tm_1 = xor i8 %state_load_26, %state_load_25
  %tmp_39 = shl i8 %Tm_1, 1
  %tmp_40 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_1, i32 7)
  %tmp_2_i_cast_cast = select i1 %tmp_40, i8 27, i8 0
  %tmp3 = xor i8 %state_load_25, %tmp_39
  %tmp4 = xor i8 %tmp_2_i_cast_cast, %Tmp
  %tmp_4_i = xor i8 %tmp4, %tmp3
  store i8 %tmp_4_i, i8* %state_addr_14, align 1
  %Tm_2 = xor i8 %state_load_27, %state_load_26
  %tmp_41 = shl i8 %Tm_2, 1
  %tmp_42 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2, i32 7)
  %tmp_11_i_cast_cast = select i1 %tmp_42, i8 27, i8 0
  %tmp5 = xor i8 %state_load_27, %Tm
  %tmp6 = xor i8 %tmp_41, %tmp_11_i_cast_cast
  %tmp_13_i = xor i8 %tmp6, %tmp5
  store i8 %tmp_13_i, i8* %state_addr_15, align 1
  %Tm_3 = xor i8 %state_load_27, %t
  %tmp_43 = shl i8 %Tm_3, 1
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_3, i32 7)
  %tmp_16_i_cast_cast = select i1 %tmp_44, i8 27, i8 0
  %tmp7 = xor i8 %Tm_4, %tmp_16_i_cast_cast
  %tmp_18_i = xor i8 %tmp7, %tmp_43
  store i8 %tmp_18_i, i8* %state_addr_16, align 1
  br label %8

MixColumns.exit:                                  ; preds = %8
  call fastcc void @AddRoundKey(i32 %round_cast, [16 x i8]* %state, [240 x i8]* %RoundKey) nounwind
  %round_1 = add i31 %round, 1
  br label %6

; <label>:10                                      ; preds = %6
  call fastcc void @SubBytes([16 x i8]* %state) nounwind
  %temp_4 = load i8* %state_addr, align 1
  %state_load_12 = load i8* %state_addr_1, align 1
  store i8 %state_load_12, i8* %state_addr, align 1
  %state_load_13 = load i8* %state_addr_2, align 1
  store i8 %state_load_13, i8* %state_addr_1, align 1
  %state_load_14 = load i8* %state_addr_3, align 1
  store i8 %state_load_14, i8* %state_addr_2, align 1
  store i8 %temp_4, i8* %state_addr_3, align 1
  %temp_5 = load i8* %state_addr_4, align 1
  %state_load_16 = load i8* %state_addr_5, align 1
  store i8 %state_load_16, i8* %state_addr_4, align 1
  store i8 %temp_5, i8* %state_addr_5, align 1
  %temp_6 = load i8* %state_addr_6, align 1
  %state_load_18 = load i8* %state_addr_7, align 1
  store i8 %state_load_18, i8* %state_addr_6, align 1
  store i8 %temp_6, i8* %state_addr_7, align 1
  %temp_7 = load i8* %state_addr_8, align 1
  %state_load_20 = load i8* %state_addr_9, align 1
  store i8 %state_load_20, i8* %state_addr_8, align 1
  %state_load_21 = load i8* %state_addr_10, align 1
  store i8 %state_load_21, i8* %state_addr_9, align 1
  %state_load_22 = load i8* %state_addr_11, align 1
  store i8 %state_load_22, i8* %state_addr_10, align 1
  store i8 %temp_7, i8* %state_addr_11, align 1
  call fastcc void @AddRoundKey(i32 %Nr_read, [16 x i8]* %state, [240 x i8]* %RoundKey) nounwind
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %10
  %i_2 = phi i3 [ 0, %10 ], [ %i_6, %.loopexit.loopexit ]
  %i_2_cast9_cast = zext i3 %i_2 to i6
  %exitcond1 = icmp eq i3 %i_2, -4
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_6 = add i3 %i_2, 1
  br i1 %exitcond1, label %12, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_46 = trunc i3 %i_2 to i2
  %tmp_30 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_46, i2 0)
  br label %.preheader

.preheader:                                       ; preds = %11, %.preheader.preheader
  %j_1 = phi i3 [ %j_4, %11 ], [ 0, %.preheader.preheader ]
  %tmp_45 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j_1, i2 0)
  %tmp_46_cast = zext i5 %tmp_45 to i6
  %tmp_47 = add i6 %i_2_cast9_cast, %tmp_46_cast
  %tmp_47_cast = zext i6 %tmp_47 to i32
  %state_addr_17 = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_47_cast
  %j_1_cast = zext i3 %j_1 to i4
  %exitcond = icmp eq i3 %j_1, -4
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %j_4 = add i3 %j_1, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %11

; <label>:11                                      ; preds = %.preheader
  %state_load_28 = load i8* %state_addr_17, align 1
  %sum = add i4 %j_1_cast, %tmp_30
  %sum_cast = zext i4 %sum to i32
  %out_addr = getelementptr [16 x i8]* %out_r, i32 0, i32 %sum_cast
  store i8 %state_load_28, i8* %out_addr, align 1
  br label %.preheader

; <label>:12                                      ; preds = %.loopexit
  ret void
}

define internal fastcc void @AddRoundKey(i32 %round, [16 x i8]* nocapture %state, [240 x i8]* nocapture %RoundKey) {
  %round_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %round)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i3 [ 0, %0 ], [ %i_7, %.loopexit.loopexit ]
  %i_cast4_cast = zext i3 %i to i6
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_7 = add i3 %i, 1
  br i1 %exitcond1, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0)
  %tmp_cast = zext i4 %tmp_s to i9
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %j = phi i3 [ %j_5, %1 ], [ 0, %.preheader.preheader ]
  %tmp_48 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j, i2 0)
  %tmp_50_cast = zext i5 %tmp_48 to i6
  %tmp_49 = add i6 %i_cast4_cast, %tmp_50_cast
  %tmp_51_cast = zext i6 %tmp_49 to i32
  %state_addr = getelementptr [16 x i8]* %state, i32 0, i32 %tmp_51_cast
  %exitcond = icmp eq i3 %j, -4
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_5 = add i3 %j, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_47 = trunc i32 %round_read to i5
  %tmp1 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i1.i3(i5 %tmp_47, i1 false, i3 %j)
  %sum3 = add i9 %tmp1, %tmp_cast
  %sum3_cast = zext i9 %sum3 to i32
  %RoundKey_addr = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %sum3_cast
  %RoundKey_load = load i8* %RoundKey_addr, align 1
  %state_load = load i8* %state_addr, align 1
  %tmp_31 = xor i8 %state_load, %RoundKey_load
  store i8 %tmp_31, i8* %state_addr, align 1
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !19, !19, !23}
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
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int*", metadata !"int", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon", metadata !"Nk", metadata !"Nr"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar [4]*", metadata !"uchar*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!19 = metadata !{null, metadata !20, metadata !2, metadata !21, metadata !4, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"uchar [4]*"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!23 = metadata !{null, metadata !24, metadata !15, metadata !25, metadata !17, metadata !26, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uchar*"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"Nr", metadata !"Nk", metadata !"out"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"Nr", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"Nk", metadata !31, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"out", metadata !41, metadata !"unsigned char", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 15, i32 1}
