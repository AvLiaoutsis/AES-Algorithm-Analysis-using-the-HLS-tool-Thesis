; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/Second/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB"
@Cipher_str = internal unnamed_addr constant [7 x i8] c"Cipher\00"
@p_str4 = private unnamed_addr constant [15 x i8] c"Cipher_label34\00", align 1
@p_str2 = private unnamed_addr constant [20 x i8] c"KeyExpansion_label4\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
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

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

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

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_12 = zext i4 %1 to i8
  %empty_13 = shl i8 %empty, 4
  %empty_14 = or i8 %empty_13, %empty_12
  ret i8 %empty_14
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_15 = zext i2 %1 to i4
  %empty_16 = shl i4 %empty, 2
  %empty_17 = or i4 %empty_16, %empty_15
  ret i4 %empty_17
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32
  %empty_18 = zext i3 %1 to i32
  %empty_19 = shl i32 %empty, 3
  %empty_20 = or i32 %empty_19, %empty_18
  ret i32 %empty_20
}

define internal fastcc void @SubBytes([16 x i32]* nocapture %state, i6 %round, [240 x i32]* %RoundKey) {
.preheader12.preheader.0:
  %round_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %round)
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 0
  %state_addr_1 = getelementptr [16 x i32]* %state, i32 0, i32 1
  %state_addr_2 = getelementptr [16 x i32]* %state, i32 0, i32 2
  %state_addr_3 = getelementptr [16 x i32]* %state, i32 0, i32 3
  %state_addr_4 = getelementptr [16 x i32]* %state, i32 0, i32 4
  %state_addr_5 = getelementptr [16 x i32]* %state, i32 0, i32 5
  %state_addr_6 = getelementptr [16 x i32]* %state, i32 0, i32 6
  %state_addr_7 = getelementptr [16 x i32]* %state, i32 0, i32 7
  %state_addr_8 = getelementptr [16 x i32]* %state, i32 0, i32 8
  %state_addr_9 = getelementptr [16 x i32]* %state, i32 0, i32 9
  %state_addr_10 = getelementptr [16 x i32]* %state, i32 0, i32 10
  %state_addr_11 = getelementptr [16 x i32]* %state, i32 0, i32 11
  %state_addr_12 = getelementptr [16 x i32]* %state, i32 0, i32 12
  %state_addr_13 = getelementptr [16 x i32]* %state, i32 0, i32 13
  %state_addr_14 = getelementptr [16 x i32]* %state, i32 0, i32 14
  %state_addr_15 = getelementptr [16 x i32]* %state, i32 0, i32 15
  %state_load = load i32* %state_addr, align 4
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load
  %sbox_load = load i8* %sbox_addr, align 1
  %sbox_load_cast = zext i8 %sbox_load to i32
  store i32 %sbox_load_cast, i32* %state_addr, align 4
  %state_load_1 = load i32* %state_addr_1, align 4
  %sbox_addr_1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_1
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %sbox_load_1_cast = zext i8 %sbox_load_1 to i32
  store i32 %sbox_load_1_cast, i32* %state_addr_1, align 4
  %state_load_2 = load i32* %state_addr_2, align 4
  %sbox_addr_2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_2
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %sbox_load_2_cast = zext i8 %sbox_load_2 to i32
  store i32 %sbox_load_2_cast, i32* %state_addr_2, align 4
  %state_load_3 = load i32* %state_addr_3, align 4
  %sbox_addr_3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_3
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %sbox_load_3_cast = zext i8 %sbox_load_3 to i32
  store i32 %sbox_load_3_cast, i32* %state_addr_3, align 4
  %state_load_4 = load i32* %state_addr_4, align 4
  %sbox_addr_4 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_4
  %temp = load i8* %sbox_addr_4, align 1
  %state_load_5 = load i32* %state_addr_5, align 4
  %sbox_addr_5 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_5
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %sbox_load_5_cast = zext i8 %sbox_load_5 to i32
  %state_load_6 = load i32* %state_addr_6, align 4
  %sbox_addr_6 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_6
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %sbox_load_6_cast = zext i8 %sbox_load_6 to i32
  %state_load_7 = load i32* %state_addr_7, align 4
  %sbox_addr_7 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_7
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %sbox_load_7_cast = zext i8 %sbox_load_7 to i32
  %state_load_8 = load i32* %state_addr_8, align 4
  %sbox_addr_8 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_8
  %temp_1 = load i8* %sbox_addr_8, align 1
  %state_load_9 = load i32* %state_addr_9, align 4
  %sbox_addr_9 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_9
  %temp_2 = load i8* %sbox_addr_9, align 1
  %state_load_10 = load i32* %state_addr_10, align 4
  %sbox_addr_10 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_10
  %sbox_load_10 = load i8* %sbox_addr_10, align 1
  %sbox_load_10_cast = zext i8 %sbox_load_10 to i32
  %state_load_11 = load i32* %state_addr_11, align 4
  %sbox_addr_11 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_11
  %sbox_load_11 = load i8* %sbox_addr_11, align 1
  %sbox_load_11_cast = zext i8 %sbox_load_11 to i32
  %state_load_12 = load i32* %state_addr_12, align 4
  %sbox_addr_12 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_12
  %temp_3 = load i8* %sbox_addr_12, align 1
  %state_load_13 = load i32* %state_addr_13, align 4
  %sbox_addr_13 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_13
  %sbox_load_13 = load i8* %sbox_addr_13, align 1
  %sbox_load_13_cast = zext i8 %sbox_load_13 to i32
  %state_load_14 = load i32* %state_addr_14, align 4
  %sbox_addr_14 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_14
  %sbox_load_14 = load i8* %sbox_addr_14, align 1
  %sbox_load_14_cast = zext i8 %sbox_load_14 to i32
  %state_load_15 = load i32* %state_addr_15, align 4
  %sbox_addr_15 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_15
  %sbox_load_15 = load i8* %sbox_addr_15, align 1
  %sbox_load_15_cast = zext i8 %sbox_load_15 to i32
  store i32 %sbox_load_5_cast, i32* %state_addr_4, align 4
  store i32 %sbox_load_6_cast, i32* %state_addr_5, align 4
  store i32 %sbox_load_7_cast, i32* %state_addr_6, align 4
  %tmp = zext i8 %temp to i32
  store i32 %tmp, i32* %state_addr_7, align 4
  store i32 %sbox_load_10_cast, i32* %state_addr_8, align 4
  %tmp_1 = zext i8 %temp_1 to i32
  store i32 %tmp_1, i32* %state_addr_10, align 4
  store i32 %sbox_load_11_cast, i32* %state_addr_9, align 4
  %tmp_2 = zext i8 %temp_2 to i32
  store i32 %tmp_2, i32* %state_addr_11, align 4
  store i32 %sbox_load_15_cast, i32* %state_addr_12, align 4
  store i32 %sbox_load_13_cast, i32* %state_addr_14, align 4
  %tmp_3 = zext i8 %temp_3 to i32
  store i32 %tmp_3, i32* %state_addr_13, align 4
  %tmp_5 = trunc i6 %round_read to i5
  %tmp_4 = icmp slt i5 %tmp_5, 10
  br i1 %tmp_4, label %.preheader11.0, label %.preheader.preheader.0

.preheader11.0:                                   ; preds = %.preheader12.preheader.0
  %tmp_7 = xor i8 %sbox_load_5, %sbox_load
  %tmp1 = xor i8 %tmp_7, %sbox_load_15
  %Tmp = xor i8 %tmp1, %sbox_load_10
  %tmp_6 = shl i8 %tmp_7, 1
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_7, i32 7)
  %tmp_71_cast_cast = select i1 %tmp_10, i8 27, i8 0
  %tmp2 = xor i8 %tmp_6, %Tmp
  %tmp_9 = xor i8 %tmp2, %tmp_71_cast_cast
  %Tm_2 = xor i8 %sbox_load_10, %sbox_load_5
  %tmp_11 = shl i8 %Tm_2, 1
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2, i32 7)
  %tmp_18_cast_cast = select i1 %tmp_12, i8 27, i8 0
  %tmp3 = xor i8 %tmp_11, %Tmp
  %tmp_s = xor i8 %tmp3, %tmp_18_cast_cast
  %Tm_4 = xor i8 %sbox_load_15, %sbox_load_10
  %tmp_13 = shl i8 %Tm_4, 1
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4, i32 7)
  %tmp_25_cast_cast = select i1 %tmp_14, i8 27, i8 0
  %tmp4 = xor i8 %Tmp, %tmp_25_cast_cast
  %tmp_15 = xor i8 %tmp4, %tmp_13
  %Tm_6 = xor i8 %sbox_load_15, %sbox_load
  %tmp_16 = shl i8 %Tm_6, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6, i32 7)
  %tmp_32_cast_cast = select i1 %tmp_17, i8 27, i8 0
  %tmp5 = xor i8 %Tmp, %tmp_32_cast_cast
  %tmp_18 = xor i8 %tmp5, %tmp_16
  %tmp_19 = xor i8 %sbox_load_6, %sbox_load_1
  %tmp6 = xor i8 %tmp_19, %temp_3
  %Tmp_1 = xor i8 %tmp6, %sbox_load_11
  %tmp_20 = shl i8 %tmp_19, 1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_19, i32 7)
  %tmp_11_1_cast_cast = select i1 %tmp_21, i8 27, i8 0
  %tmp7 = xor i8 %tmp_20, %Tmp_1
  %tmp_12_1 = xor i8 %tmp7, %tmp_11_1_cast_cast
  %Tm_2_1 = xor i8 %sbox_load_11, %sbox_load_6
  %tmp_22 = shl i8 %Tm_2_1, 1
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_1, i32 7)
  %tmp_18_1_cast_cast = select i1 %tmp_23, i8 27, i8 0
  %tmp8 = xor i8 %tmp_22, %Tmp_1
  %tmp_19_1 = xor i8 %tmp8, %tmp_18_1_cast_cast
  %Tm_4_1 = xor i8 %temp_3, %sbox_load_11
  %tmp_24 = shl i8 %Tm_4_1, 1
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_1, i32 7)
  %tmp_25_1_cast_cast = select i1 %tmp_25, i8 27, i8 0
  %tmp9 = xor i8 %Tmp_1, %tmp_25_1_cast_cast
  %tmp_26_1 = xor i8 %tmp9, %tmp_24
  %Tm_6_1 = xor i8 %temp_3, %sbox_load_1
  %tmp_26 = shl i8 %Tm_6_1, 1
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_1, i32 7)
  %tmp_32_1_cast_cast = select i1 %tmp_27, i8 27, i8 0
  %tmp10 = xor i8 %tmp_26, %Tmp_1
  %tmp11 = xor i8 %tmp_32_1_cast_cast, %temp_3
  %tmp_35_s = xor i8 %tmp11, %tmp10
  %tmp_35_1 = zext i8 %tmp_35_s to i32
  %tmp_28 = xor i8 %sbox_load_7, %sbox_load_2
  %tmp12 = xor i8 %tmp_28, %sbox_load_13
  %Tmp_2 = xor i8 %tmp12, %temp_1
  %tmp_29 = shl i8 %tmp_28, 1
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_28, i32 7)
  %tmp_11_2_cast_cast = select i1 %tmp_30, i8 27, i8 0
  %tmp13 = xor i8 %tmp_29, %Tmp_2
  %tmp_12_2 = xor i8 %tmp13, %tmp_11_2_cast_cast
  %Tm_2_2 = xor i8 %temp_1, %sbox_load_7
  %tmp_31 = shl i8 %Tm_2_2, 1
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_2, i32 7)
  %tmp_18_2_cast_cast = select i1 %tmp_32, i8 27, i8 0
  %tmp14 = xor i8 %tmp_31, %Tmp_2
  %tmp_19_2 = xor i8 %tmp14, %tmp_18_2_cast_cast
  %Tm_4_2 = xor i8 %sbox_load_13, %temp_1
  %tmp_33 = shl i8 %Tm_4_2, 1
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_2, i32 7)
  %tmp_25_2_cast_cast = select i1 %tmp_34, i8 27, i8 0
  %tmp15 = xor i8 %tmp_33, %Tmp_2
  %tmp16 = xor i8 %tmp_25_2_cast_cast, %temp_1
  %tmp_28_s = xor i8 %tmp16, %tmp15
  %tmp_28_2 = zext i8 %tmp_28_s to i32
  %Tm_6_2 = xor i8 %sbox_load_13, %sbox_load_2
  %tmp_35 = shl i8 %Tm_6_2, 1
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_2, i32 7)
  %tmp_32_2_cast_cast = select i1 %tmp_36, i8 27, i8 0
  %tmp17 = xor i8 %Tmp_2, %tmp_32_2_cast_cast
  %tmp_33_2 = xor i8 %tmp17, %tmp_35
  %tmp_37 = xor i8 %temp, %sbox_load_3
  %tmp18 = xor i8 %tmp_37, %sbox_load_14
  %Tmp_3 = xor i8 %tmp18, %temp_2
  %tmp_38 = shl i8 %tmp_37, 1
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_37, i32 7)
  %tmp_11_3_cast_cast = select i1 %tmp_39, i8 27, i8 0
  %tmp19 = xor i8 %tmp_38, %Tmp_3
  %tmp_12_3 = xor i8 %tmp19, %tmp_11_3_cast_cast
  %Tm_2_3 = xor i8 %temp_2, %temp
  %tmp_40 = shl i8 %Tm_2_3, 1
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_3, i32 7)
  %tmp_18_3_cast_cast = select i1 %tmp_41, i8 27, i8 0
  %tmp20 = xor i8 %tmp_18_3_cast_cast, %tmp_40
  %tmp21 = xor i8 %Tmp_3, %temp
  %tmp_21_s = xor i8 %tmp21, %tmp20
  %tmp_21_3 = zext i8 %tmp_21_s to i32
  %Tm_4_3 = xor i8 %sbox_load_14, %temp_2
  %tmp_42 = shl i8 %Tm_4_3, 1
  %tmp_43 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_3, i32 7)
  %tmp_25_3_cast_cast = select i1 %tmp_43, i8 27, i8 0
  %tmp22 = xor i8 %tmp_42, %Tmp_3
  %tmp23 = xor i8 %tmp_25_3_cast_cast, %temp_2
  %tmp_28_4 = xor i8 %tmp23, %tmp22
  %tmp_28_3 = zext i8 %tmp_28_4 to i32
  %Tm_6_3 = xor i8 %sbox_load_14, %sbox_load_3
  %tmp_44 = shl i8 %Tm_6_3, 1
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_3, i32 7)
  %tmp_32_3_cast_cast = select i1 %tmp_45, i8 27, i8 0
  %tmp24 = xor i8 %Tmp_3, %tmp_32_3_cast_cast
  %tmp_33_3 = xor i8 %tmp24, %tmp_44
  %tmp_46 = trunc i6 %round_read to i4
  %tmp_8 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_46, i4 0)
  %tmp_8_cast = zext i8 %tmp_8 to i32
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_8_cast
  %RoundKey_load = load i32* %RoundKey_addr, align 4
  %tmp25 = xor i8 %sbox_load, %tmp_9
  %tmp25_cast = zext i8 %tmp25 to i32
  %tmp_47 = xor i32 %tmp25_cast, %RoundKey_load
  store i32 %tmp_47, i32* %state_addr, align 4
  %sum29_0_s = or i8 %tmp_8, 1
  %sum29_0_cast = zext i8 %sum29_0_s to i32
  %RoundKey_addr_1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_cast
  %RoundKey_load_1 = load i32* %RoundKey_addr_1, align 4
  %tmp26 = xor i8 %sbox_load_5, %tmp_s
  %tmp26_cast = zext i8 %tmp26 to i32
  %tmp_43_0_1 = xor i32 %tmp26_cast, %RoundKey_load_1
  store i32 %tmp_43_0_1, i32* %state_addr_4, align 4
  %sum29_0_1 = or i8 %tmp_8, 2
  %sum29_0_1_cast = zext i8 %sum29_0_1 to i32
  %RoundKey_addr_2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_1_cast
  %RoundKey_load_2 = load i32* %RoundKey_addr_2, align 4
  %tmp27 = xor i8 %sbox_load_10, %tmp_15
  %tmp27_cast = zext i8 %tmp27 to i32
  %tmp_43_0_2 = xor i32 %tmp27_cast, %RoundKey_load_2
  store i32 %tmp_43_0_2, i32* %state_addr_8, align 4
  %sum29_0_2 = or i8 %tmp_8, 3
  %sum29_0_2_cast = zext i8 %sum29_0_2 to i32
  %RoundKey_addr_3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_2_cast
  %RoundKey_load_3 = load i32* %RoundKey_addr_3, align 4
  %tmp28 = xor i8 %sbox_load_15, %tmp_18
  %tmp28_cast = zext i8 %tmp28 to i32
  %tmp_43_0_3 = xor i32 %tmp28_cast, %RoundKey_load_3
  store i32 %tmp_43_0_3, i32* %state_addr_12, align 4
  %tmp_41_1_s = or i8 %tmp_8, 4
  %tmp_41_1_cast = zext i8 %tmp_41_1_s to i32
  %RoundKey_addr_4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_1_cast
  %RoundKey_load_4 = load i32* %RoundKey_addr_4, align 4
  %tmp29 = xor i8 %sbox_load_1, %tmp_12_1
  %tmp29_cast = zext i8 %tmp29 to i32
  %tmp_43_1 = xor i32 %tmp29_cast, %RoundKey_load_4
  store i32 %tmp_43_1, i32* %state_addr_1, align 4
  %sum29_1_s = or i8 %tmp_8, 5
  %sum29_1_cast = zext i8 %sum29_1_s to i32
  %RoundKey_addr_5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_cast
  %RoundKey_load_5 = load i32* %RoundKey_addr_5, align 4
  %tmp30 = xor i8 %sbox_load_6, %tmp_19_1
  %tmp30_cast = zext i8 %tmp30 to i32
  %tmp_43_1_1 = xor i32 %tmp30_cast, %RoundKey_load_5
  store i32 %tmp_43_1_1, i32* %state_addr_5, align 4
  %sum29_1_1 = or i8 %tmp_8, 6
  %sum29_1_1_cast = zext i8 %sum29_1_1 to i32
  %RoundKey_addr_6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_1_cast
  %RoundKey_load_6 = load i32* %RoundKey_addr_6, align 4
  %tmp31 = xor i8 %sbox_load_11, %tmp_26_1
  %tmp31_cast = zext i8 %tmp31 to i32
  %tmp_43_1_2 = xor i32 %tmp31_cast, %RoundKey_load_6
  store i32 %tmp_43_1_2, i32* %state_addr_9, align 4
  %sum29_1_2 = or i8 %tmp_8, 7
  %sum29_1_2_cast = zext i8 %sum29_1_2 to i32
  %RoundKey_addr_7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_2_cast
  %RoundKey_load_7 = load i32* %RoundKey_addr_7, align 4
  %tmp_43_1_3 = xor i32 %RoundKey_load_7, %tmp_35_1
  store i32 %tmp_43_1_3, i32* %state_addr_13, align 4
  %tmp_41_2_s = or i8 %tmp_8, 8
  %tmp_41_2_cast = zext i8 %tmp_41_2_s to i32
  %RoundKey_addr_8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_2_cast
  %RoundKey_load_8 = load i32* %RoundKey_addr_8, align 4
  %tmp32 = xor i8 %sbox_load_2, %tmp_12_2
  %tmp32_cast = zext i8 %tmp32 to i32
  %tmp_43_2 = xor i32 %tmp32_cast, %RoundKey_load_8
  store i32 %tmp_43_2, i32* %state_addr_2, align 4
  %sum29_2_s = or i8 %tmp_8, 9
  %sum29_2_cast = zext i8 %sum29_2_s to i32
  %RoundKey_addr_9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_cast
  %RoundKey_load_9 = load i32* %RoundKey_addr_9, align 4
  %tmp33 = xor i8 %sbox_load_7, %tmp_19_2
  %tmp33_cast = zext i8 %tmp33 to i32
  %tmp_43_2_1 = xor i32 %tmp33_cast, %RoundKey_load_9
  store i32 %tmp_43_2_1, i32* %state_addr_6, align 4
  %sum29_2_1 = or i8 %tmp_8, 10
  %sum29_2_1_cast = zext i8 %sum29_2_1 to i32
  %RoundKey_addr_10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_1_cast
  %RoundKey_load_10 = load i32* %RoundKey_addr_10, align 4
  %tmp_43_2_2 = xor i32 %RoundKey_load_10, %tmp_28_2
  store i32 %tmp_43_2_2, i32* %state_addr_10, align 4
  %sum29_2_2 = or i8 %tmp_8, 11
  %sum29_2_2_cast = zext i8 %sum29_2_2 to i32
  %RoundKey_addr_11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_2_cast
  %RoundKey_load_11 = load i32* %RoundKey_addr_11, align 4
  %tmp34 = xor i8 %sbox_load_13, %tmp_33_2
  %tmp34_cast = zext i8 %tmp34 to i32
  %tmp_43_2_3 = xor i32 %tmp34_cast, %RoundKey_load_11
  store i32 %tmp_43_2_3, i32* %state_addr_14, align 4
  %tmp_41_3_s = or i8 %tmp_8, 12
  %tmp_41_3_cast = zext i8 %tmp_41_3_s to i32
  %RoundKey_addr_12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_3_cast
  %RoundKey_load_12 = load i32* %RoundKey_addr_12, align 4
  %tmp35 = xor i8 %sbox_load_3, %tmp_12_3
  %tmp35_cast = zext i8 %tmp35 to i32
  %tmp_43_3 = xor i32 %tmp35_cast, %RoundKey_load_12
  store i32 %tmp_43_3, i32* %state_addr_3, align 4
  %sum29_3_s = or i8 %tmp_8, 13
  %sum29_3_cast = zext i8 %sum29_3_s to i32
  %RoundKey_addr_13 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_cast
  %RoundKey_load_13 = load i32* %RoundKey_addr_13, align 4
  %tmp_43_3_1 = xor i32 %RoundKey_load_13, %tmp_21_3
  store i32 %tmp_43_3_1, i32* %state_addr_7, align 4
  %sum29_3_1 = or i8 %tmp_8, 14
  %sum29_3_1_cast = zext i8 %sum29_3_1 to i32
  %RoundKey_addr_14 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_1_cast
  %RoundKey_load_14 = load i32* %RoundKey_addr_14, align 4
  %tmp_43_3_2 = xor i32 %RoundKey_load_14, %tmp_28_3
  store i32 %tmp_43_3_2, i32* %state_addr_11, align 4
  %sum29_3_2 = or i8 %tmp_8, 15
  %sum29_3_2_cast = zext i8 %sum29_3_2 to i32
  %RoundKey_addr_15 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_2_cast
  %RoundKey_load_15 = load i32* %RoundKey_addr_15, align 4
  %tmp36 = xor i8 %sbox_load_14, %tmp_33_3
  %tmp36_cast = zext i8 %tmp36 to i32
  %tmp_43_3_3 = xor i32 %tmp36_cast, %RoundKey_load_15
  br label %.loopexit

.preheader.preheader.0:                           ; preds = %.preheader12.preheader.0
  %RoundKey_addr_16 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 160
  %RoundKey_load_16 = load i32* %RoundKey_addr_16, align 4
  %tmp_48 = xor i32 %sbox_load_cast, %RoundKey_load_16
  store i32 %tmp_48, i32* %state_addr, align 4
  %RoundKey_addr_17 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 161
  %RoundKey_load_17 = load i32* %RoundKey_addr_17, align 4
  %tmp_40_0_1 = xor i32 %sbox_load_5_cast, %RoundKey_load_17
  store i32 %tmp_40_0_1, i32* %state_addr_4, align 4
  %RoundKey_addr_18 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 162
  %RoundKey_load_18 = load i32* %RoundKey_addr_18, align 4
  %tmp_40_0_2 = xor i32 %sbox_load_10_cast, %RoundKey_load_18
  store i32 %tmp_40_0_2, i32* %state_addr_8, align 4
  %RoundKey_addr_19 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 163
  %RoundKey_load_19 = load i32* %RoundKey_addr_19, align 4
  %tmp_40_0_3 = xor i32 %sbox_load_15_cast, %RoundKey_load_19
  store i32 %tmp_40_0_3, i32* %state_addr_12, align 4
  %RoundKey_addr_20 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 164
  %RoundKey_load_20 = load i32* %RoundKey_addr_20, align 4
  %tmp_40_1 = xor i32 %sbox_load_1_cast, %RoundKey_load_20
  store i32 %tmp_40_1, i32* %state_addr_1, align 4
  %RoundKey_addr_21 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 165
  %RoundKey_load_21 = load i32* %RoundKey_addr_21, align 4
  %tmp_40_1_1 = xor i32 %sbox_load_6_cast, %RoundKey_load_21
  store i32 %tmp_40_1_1, i32* %state_addr_5, align 4
  %RoundKey_addr_22 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 166
  %RoundKey_load_22 = load i32* %RoundKey_addr_22, align 4
  %tmp_40_1_2 = xor i32 %sbox_load_11_cast, %RoundKey_load_22
  store i32 %tmp_40_1_2, i32* %state_addr_9, align 4
  %RoundKey_addr_23 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 167
  %RoundKey_load_23 = load i32* %RoundKey_addr_23, align 4
  %tmp_40_1_3 = xor i32 %RoundKey_load_23, %tmp_3
  store i32 %tmp_40_1_3, i32* %state_addr_13, align 4
  %RoundKey_addr_24 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 168
  %RoundKey_load_24 = load i32* %RoundKey_addr_24, align 4
  %tmp_40_2 = xor i32 %sbox_load_2_cast, %RoundKey_load_24
  store i32 %tmp_40_2, i32* %state_addr_2, align 4
  %RoundKey_addr_25 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 169
  %RoundKey_load_25 = load i32* %RoundKey_addr_25, align 4
  %tmp_40_2_1 = xor i32 %sbox_load_7_cast, %RoundKey_load_25
  store i32 %tmp_40_2_1, i32* %state_addr_6, align 4
  %RoundKey_addr_26 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 170
  %RoundKey_load_26 = load i32* %RoundKey_addr_26, align 4
  %tmp_40_2_2 = xor i32 %RoundKey_load_26, %tmp_1
  store i32 %tmp_40_2_2, i32* %state_addr_10, align 4
  %RoundKey_addr_27 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 171
  %RoundKey_load_27 = load i32* %RoundKey_addr_27, align 4
  %tmp_40_2_3 = xor i32 %sbox_load_13_cast, %RoundKey_load_27
  store i32 %tmp_40_2_3, i32* %state_addr_14, align 4
  %RoundKey_addr_28 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 172
  %RoundKey_load_28 = load i32* %RoundKey_addr_28, align 4
  %tmp_40_3 = xor i32 %sbox_load_3_cast, %RoundKey_load_28
  store i32 %tmp_40_3, i32* %state_addr_3, align 4
  %RoundKey_addr_29 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 173
  %RoundKey_load_29 = load i32* %RoundKey_addr_29, align 4
  %tmp_40_3_1 = xor i32 %RoundKey_load_29, %tmp
  store i32 %tmp_40_3_1, i32* %state_addr_7, align 4
  %RoundKey_addr_30 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 174
  %RoundKey_load_30 = load i32* %RoundKey_addr_30, align 4
  %tmp_40_3_2 = xor i32 %RoundKey_load_30, %tmp_2
  store i32 %tmp_40_3_2, i32* %state_addr_11, align 4
  %RoundKey_addr_31 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 175
  %RoundKey_load_31 = load i32* %RoundKey_addr_31, align 4
  %tmp_40_3_3 = xor i32 %sbox_load_14_cast, %RoundKey_load_31
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader.0, %.preheader11.0
  %storemerge = phi i32 [ %tmp_40_3_3, %.preheader.preheader.0 ], [ %tmp_43_3_3, %.preheader11.0 ]
  store i32 %storemerge, i32* %state_addr_15, align 4
  ret void
}

define internal fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* nocapture %Key) {
.preheader.preheader:
  %Key_addr = getelementptr [32 x i32]* %Key, i32 0, i32 0
  %Key_load = load i32* %Key_addr, align 4
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 0
  store i32 %Key_load, i32* %RoundKey_addr, align 4
  %Key_addr_1 = getelementptr [32 x i32]* %Key, i32 0, i32 1
  %Key_load_1 = load i32* %Key_addr_1, align 4
  %RoundKey_addr_32 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 1
  store i32 %Key_load_1, i32* %RoundKey_addr_32, align 4
  %Key_addr_2 = getelementptr [32 x i32]* %Key, i32 0, i32 2
  %Key_load_2 = load i32* %Key_addr_2, align 4
  %RoundKey_addr_33 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 2
  store i32 %Key_load_2, i32* %RoundKey_addr_33, align 4
  %Key_addr_3 = getelementptr [32 x i32]* %Key, i32 0, i32 3
  %Key_load_3 = load i32* %Key_addr_3, align 4
  %RoundKey_addr_34 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 3
  store i32 %Key_load_3, i32* %RoundKey_addr_34, align 4
  %Key_addr_4 = getelementptr [32 x i32]* %Key, i32 0, i32 4
  %Key_load_4 = load i32* %Key_addr_4, align 4
  %RoundKey_addr_35 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 4
  store i32 %Key_load_4, i32* %RoundKey_addr_35, align 4
  %Key_addr_5 = getelementptr [32 x i32]* %Key, i32 0, i32 5
  %Key_load_5 = load i32* %Key_addr_5, align 4
  %RoundKey_addr_36 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 5
  store i32 %Key_load_5, i32* %RoundKey_addr_36, align 4
  %Key_addr_6 = getelementptr [32 x i32]* %Key, i32 0, i32 6
  %Key_load_6 = load i32* %Key_addr_6, align 4
  %RoundKey_addr_37 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 6
  store i32 %Key_load_6, i32* %RoundKey_addr_37, align 4
  %Key_addr_7 = getelementptr [32 x i32]* %Key, i32 0, i32 7
  %Key_load_7 = load i32* %Key_addr_7, align 4
  %RoundKey_addr_38 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 7
  store i32 %Key_load_7, i32* %RoundKey_addr_38, align 4
  %Key_addr_8 = getelementptr [32 x i32]* %Key, i32 0, i32 8
  %Key_load_8 = load i32* %Key_addr_8, align 4
  %RoundKey_addr_39 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 8
  store i32 %Key_load_8, i32* %RoundKey_addr_39, align 4
  %Key_addr_9 = getelementptr [32 x i32]* %Key, i32 0, i32 9
  %Key_load_9 = load i32* %Key_addr_9, align 4
  %RoundKey_addr_40 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 9
  store i32 %Key_load_9, i32* %RoundKey_addr_40, align 4
  %Key_addr_10 = getelementptr [32 x i32]* %Key, i32 0, i32 10
  %Key_load_10 = load i32* %Key_addr_10, align 4
  %RoundKey_addr_41 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 10
  store i32 %Key_load_10, i32* %RoundKey_addr_41, align 4
  %Key_addr_11 = getelementptr [32 x i32]* %Key, i32 0, i32 11
  %Key_load_11 = load i32* %Key_addr_11, align 4
  %RoundKey_addr_42 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 11
  store i32 %Key_load_11, i32* %RoundKey_addr_42, align 4
  %Key_addr_12 = getelementptr [32 x i32]* %Key, i32 0, i32 12
  %Key_load_12 = load i32* %Key_addr_12, align 4
  %RoundKey_addr_43 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 12
  store i32 %Key_load_12, i32* %RoundKey_addr_43, align 4
  %Key_addr_13 = getelementptr [32 x i32]* %Key, i32 0, i32 13
  %Key_load_13 = load i32* %Key_addr_13, align 4
  %RoundKey_addr_44 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 13
  store i32 %Key_load_13, i32* %RoundKey_addr_44, align 4
  %Key_addr_14 = getelementptr [32 x i32]* %Key, i32 0, i32 14
  %Key_load_14 = load i32* %Key_addr_14, align 4
  %RoundKey_addr_45 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 14
  store i32 %Key_load_14, i32* %RoundKey_addr_45, align 4
  %Key_addr_15 = getelementptr [32 x i32]* %Key, i32 0, i32 15
  %Key_load_15 = load i32* %Key_addr_15, align 4
  %RoundKey_addr_46 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 15
  store i32 %Key_load_15, i32* %RoundKey_addr_46, align 4
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i_1 = phi i6 [ %i, %_ifconv ], [ 4, %.preheader.preheader ]
  %exitcond1 = icmp eq i6 %i_1, -20
  br i1 %exitcond1, label %0, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_47 = trunc i6 %i_1 to i2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str2) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0)
  %tmp_cast = zext i8 %tmp_s to i32
  %sum8 = add i8 -4, %tmp_s
  %sum8_cast = zext i8 %sum8 to i32
  %RoundKey_addr_47 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_cast
  %RoundKey_load = load i32* %RoundKey_addr_47, align 4
  %temp_0_3 = trunc i32 %RoundKey_load to i8
  %sum8_1 = add i8 -3, %tmp_s
  %sum8_1_cast = zext i8 %sum8_1 to i32
  %RoundKey_addr_48 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_1_cast
  %RoundKey_load_1 = load i32* %RoundKey_addr_48, align 4
  %temp_1 = trunc i32 %RoundKey_load_1 to i8
  %sum8_2 = add i8 -2, %tmp_s
  %sum8_2_cast = zext i8 %sum8_2 to i32
  %RoundKey_addr_49 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_2_cast
  %RoundKey_load_32 = load i32* %RoundKey_addr_49, align 4
  %temp_2 = trunc i32 %RoundKey_load_32 to i8
  %sum8_3 = add i8 -1, %tmp_s
  %sum8_3_cast = zext i8 %sum8_3 to i32
  %RoundKey_addr_50 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_3_cast
  %RoundKey_load_33 = load i32* %RoundKey_addr_50, align 4
  %temp_3 = trunc i32 %RoundKey_load_33 to i8
  %tmp_2 = icmp eq i2 %tmp_47, 0
  %num_assign = zext i8 %temp_1 to i32
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign
  %sbox_load = load i8* %sbox_addr, align 1
  %num_assign_s = zext i8 %temp_2 to i32
  %sbox_addr_16 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_s
  %temp_1_1 = load i8* %sbox_addr_16, align 1
  %num_assign_1 = zext i8 %temp_3 to i32
  %sbox_addr_17 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_1
  %temp_2_1 = load i8* %sbox_addr_17, align 1
  %num_assign_2 = zext i8 %temp_0_3 to i32
  %sbox_addr_18 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_2
  %temp_3_1 = load i8* %sbox_addr_18, align 1
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %tmp_15 = zext i4 %p_lshr_f_cast to i32
  %Rcon_addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp_15
  %Rcon_load = load i8* %Rcon_addr, align 1
  %temp_0 = xor i8 %Rcon_load, %sbox_load
  %temp_3_2 = select i1 %tmp_2, i8 %temp_3_1, i8 %temp_3
  %temp_2_2 = select i1 %tmp_2, i8 %temp_2_1, i8 %temp_2
  %temp_1_2 = select i1 %tmp_2, i8 %temp_1_1, i8 %temp_1
  %temp_0_2 = select i1 %tmp_2, i8 %temp_0, i8 %temp_0_3
  %sum = add i8 -16, %tmp_s
  %sum_cast = zext i8 %sum to i32
  %RoundKey_addr_51 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum_cast
  %RoundKey_load_2 = load i32* %RoundKey_addr_51, align 4
  %tmp_18 = zext i8 %temp_0_2 to i32
  %tmp_19 = xor i32 %RoundKey_load_2, %tmp_18
  %RoundKey_addr_52 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_cast
  store i32 %tmp_19, i32* %RoundKey_addr_52, align 4
  %sum1 = add i8 -15, %tmp_s
  %sum1_cast = zext i8 %sum1 to i32
  %RoundKey_addr_53 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum1_cast
  %RoundKey_load_3 = load i32* %RoundKey_addr_53, align 4
  %tmp_20 = zext i8 %temp_1_2 to i32
  %tmp_21 = xor i32 %RoundKey_load_3, %tmp_20
  %tmp_22 = or i8 %tmp_s, 1
  %tmp_22_cast = zext i8 %tmp_22 to i32
  %RoundKey_addr_54 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_22_cast
  store i32 %tmp_21, i32* %RoundKey_addr_54, align 4
  %sum2 = add i8 -14, %tmp_s
  %sum2_cast = zext i8 %sum2 to i32
  %RoundKey_addr_55 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum2_cast
  %RoundKey_load_4 = load i32* %RoundKey_addr_55, align 4
  %tmp_23 = zext i8 %temp_2_2 to i32
  %tmp_24 = xor i32 %RoundKey_load_4, %tmp_23
  %tmp_25 = or i8 %tmp_s, 2
  %tmp_25_cast = zext i8 %tmp_25 to i32
  %RoundKey_addr_56 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_25_cast
  store i32 %tmp_24, i32* %RoundKey_addr_56, align 4
  %sum3 = add i8 -13, %tmp_s
  %sum3_cast = zext i8 %sum3 to i32
  %RoundKey_addr_57 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_cast
  %RoundKey_load_5 = load i32* %RoundKey_addr_57, align 4
  %tmp_26 = zext i8 %temp_3_2 to i32
  %tmp_27 = xor i32 %RoundKey_load_5, %tmp_26
  %tmp_28 = or i8 %tmp_s, 3
  %tmp_28_cast = zext i8 %tmp_28 to i32
  %RoundKey_addr_58 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_28_cast
  store i32 %tmp_27, i32* %RoundKey_addr_58, align 4
  %i = add i6 1, %i_1
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str2, i32 %tmp)
  br label %.preheader

; <label>:0                                       ; preds = %.preheader
  ret void
}

define void @Cipher([16 x i32]* %state, [32 x i32]* %Key) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i32]* %state) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher_str) nounwind
  %RoundKey = alloca [240 x i32], align 4
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind
  br label %1

; <label>:1                                       ; preds = %.preheader.preheader.i, %0
  %i_i = phi i3 [ 0, %0 ], [ %i, %.preheader.preheader.i ]
  %i_i_cast2 = zext i3 %i_i to i32
  %i_i_cast2_cast1 = zext i3 %i_i to i5
  %i_i_cast2_cast = zext i3 %i_i to i4
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 %i_i_cast2
  %tmp_49 = add i4 %i_i_cast2_cast, 4
  %tmp_52_cast = zext i4 %tmp_49 to i32
  %state_addr_16 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_52_cast
  %tmp_50 = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 1, i3 %i_i)
  %state_addr_17 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_50
  %tmp_51 = add i5 %i_i_cast2_cast1, 12
  %tmp_54_cast = zext i5 %tmp_51 to i32
  %state_addr_18 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_54_cast
  %exitcond1_i = icmp eq i3 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i = add i3 %i_i, 1
  br i1 %exitcond1_i, label %AddRoundKey.exit.preheader, label %.preheader.preheader.i

AddRoundKey.exit.preheader:                       ; preds = %1
  br label %AddRoundKey.exit

.preheader.preheader.i:                           ; preds = %1
  %tmp_52 = trunc i3 %i_i to i2
  %tmp_i = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_52, i2 0)
  %tmp_i_cast = zext i4 %tmp_i to i32
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_i_cast
  %RoundKey_load = load i32* %RoundKey_addr, align 4
  %state_load = load i32* %state_addr, align 4
  %tmp_84_i = xor i32 %state_load, %RoundKey_load
  store i32 %tmp_84_i, i32* %state_addr, align 4
  %sum3_i = or i4 %tmp_i, 1
  %sum3_i_cast = zext i4 %sum3_i to i32
  %RoundKey_addr_59 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_i_cast
  %RoundKey_load_34 = load i32* %RoundKey_addr_59, align 4
  %state_load_1 = load i32* %state_addr_16, align 4
  %tmp_84_1_i = xor i32 %state_load_1, %RoundKey_load_34
  store i32 %tmp_84_1_i, i32* %state_addr_16, align 4
  %sum3_1_i = or i4 %tmp_i, 2
  %sum3_1_i_cast = zext i4 %sum3_1_i to i32
  %RoundKey_addr_60 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_1_i_cast
  %RoundKey_load_35 = load i32* %RoundKey_addr_60, align 4
  %state_load_2 = load i32* %state_addr_17, align 4
  %tmp_84_2_i = xor i32 %state_load_2, %RoundKey_load_35
  store i32 %tmp_84_2_i, i32* %state_addr_17, align 4
  %sum3_2_i = or i4 %tmp_i, 3
  %sum3_2_i_cast = zext i4 %sum3_2_i to i32
  %RoundKey_addr_61 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_2_i_cast
  %RoundKey_load_36 = load i32* %RoundKey_addr_61, align 4
  %state_load_3 = load i32* %state_addr_18, align 4
  %tmp_84_3_i = xor i32 %state_load_3, %RoundKey_load_36
  store i32 %tmp_84_3_i, i32* %state_addr_18, align 4
  br label %1

AddRoundKey.exit:                                 ; preds = %AddRoundKey.exit.preheader, %2
  %round = phi i4 [ %tmp, %2 ], [ 1, %AddRoundKey.exit.preheader ]
  %exitcond = icmp eq i4 %round, -6
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %AddRoundKey.exit
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %round_cast1_cast = zext i4 %round to i6
  call fastcc void @SubBytes([16 x i32]* %state, i6 %round_cast1_cast, [240 x i32]* %RoundKey) nounwind
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_s) nounwind
  %tmp = add i4 %round, 1
  br label %AddRoundKey.exit

; <label>:3                                       ; preds = %AddRoundKey.exit
  call fastcc void @SubBytes([16 x i32]* %state, i6 10, [240 x i32]* %RoundKey) nounwind
  ret void
}

!opencl.kernels = !{!0, !7, !13, !17, !21}
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
!17 = metadata !{null, metadata !18, metadata !9, metadata !19, metadata !11, metadata !20, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"int", metadata !"word*"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"round", metadata !"RoundKey"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"word*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"Key"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"state", metadata !31, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 0, i32 3, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"Key", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, i32 1}
