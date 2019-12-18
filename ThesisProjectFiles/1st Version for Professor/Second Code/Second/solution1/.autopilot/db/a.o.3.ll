; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/Second/Second/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16" ; [#uses=20 type=[256 x i8]*]
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB" ; [#uses=1 type=[255 x i8]*]
@Cipher_str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"Cipher_label34\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [20 x i8] c"KeyExpansion_label4\00", align 1 ; [#uses=3 type=[20 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=49]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_5 = trunc i6 %empty to i4                ; [#uses=1 type=i4]
  ret i4 %empty_5
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=16]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_6 = shl i8 1, %empty                     ; [#uses=1 type=i8]
  %empty_7 = and i8 %0, %empty_6                  ; [#uses=1 type=i8]
  %empty_8 = icmp ne i8 %empty_7, 0               ; [#uses=1 type=i1]
  ret i1 %empty_8
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8                       ; [#uses=1 type=i8]
  %empty_9 = zext i2 %1 to i8                     ; [#uses=1 type=i8]
  %empty_10 = shl i8 %empty, 2                    ; [#uses=1 type=i8]
  %empty_11 = or i8 %empty_10, %empty_9           ; [#uses=1 type=i8]
  ret i8 %empty_11
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8                       ; [#uses=1 type=i8]
  %empty_12 = zext i4 %1 to i8                    ; [#uses=1 type=i8]
  %empty_13 = shl i8 %empty, 4                    ; [#uses=1 type=i8]
  %empty_14 = or i8 %empty_13, %empty_12          ; [#uses=1 type=i8]
  ret i8 %empty_14
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_15 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_16 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_17 = or i4 %empty_16, %empty_15          ; [#uses=1 type=i4]
  ret i4 %empty_17
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone {
entry:
  %empty = zext i29 %0 to i32                     ; [#uses=1 type=i32]
  %empty_18 = zext i3 %1 to i32                   ; [#uses=1 type=i32]
  %empty_19 = shl i32 %empty, 3                   ; [#uses=1 type=i32]
  %empty_20 = or i32 %empty_19, %empty_18         ; [#uses=1 type=i32]
  ret i32 %empty_20
}

; [#uses=2]
define internal fastcc void @SubBytes([16 x i32]* nocapture %state, i6 %round, [240 x i32]* %RoundKey) {
.preheader12.preheader.0:
  %round_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %round) ; [#uses=2 type=i6]
  call void @llvm.dbg.value(metadata !{i6 %round_read}, i64 0, metadata !27), !dbg !42 ; [debug line = 97:36] [debug variable = round]
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 0, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_1 = getelementptr [16 x i32]* %state, i32 0, i32 1, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_2 = getelementptr [16 x i32]* %state, i32 0, i32 2, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_3 = getelementptr [16 x i32]* %state, i32 0, i32 3, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_4 = getelementptr [16 x i32]* %state, i32 0, i32 4, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_5 = getelementptr [16 x i32]* %state, i32 0, i32 5, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_6 = getelementptr [16 x i32]* %state, i32 0, i32 6, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_7 = getelementptr [16 x i32]* %state, i32 0, i32 7, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_8 = getelementptr [16 x i32]* %state, i32 0, i32 8, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_9 = getelementptr [16 x i32]* %state, i32 0, i32 9, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_10 = getelementptr [16 x i32]* %state, i32 0, i32 10, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_11 = getelementptr [16 x i32]* %state, i32 0, i32 11, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_12 = getelementptr [16 x i32]* %state, i32 0, i32 12, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_13 = getelementptr [16 x i32]* %state, i32 0, i32 13, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_14 = getelementptr [16 x i32]* %state, i32 0, i32 14, !dbg !43 ; [#uses=4 type=i32*] [debug line = 104:18]
  %state_addr_15 = getelementptr [16 x i32]* %state, i32 0, i32 15, !dbg !43 ; [#uses=2 type=i32*] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{[16 x i32]* %state}, i64 0, metadata !49), !dbg !52 ; [debug line = 97:20] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i6 %round}, i64 0, metadata !27), !dbg !42 ; [debug line = 97:36] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !53), !dbg !57 ; [debug line = 97:47] [debug variable = RoundKey]
  %state_load = load i32* %state_addr, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_cast = zext i8 %sbox_load to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox_load_cast, i32* %state_addr, align 4, !dbg !43 ; [debug line = 104:18]
  %state_load_1 = load i32* %state_addr_1, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_1}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_1, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_1_cast = zext i8 %sbox_load_1 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox_load_1_cast, i32* %state_addr_1, align 4, !dbg !43 ; [debug line = 104:18]
  %state_load_2 = load i32* %state_addr_2, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_2}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_2, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_2_cast = zext i8 %sbox_load_2 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox_load_2_cast, i32* %state_addr_2, align 4, !dbg !43 ; [debug line = 104:18]
  %state_load_3 = load i32* %state_addr_3, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_3}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_3, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_3_cast = zext i8 %sbox_load_3 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox_load_3_cast, i32* %state_addr_3, align 4, !dbg !43 ; [debug line = 104:18]
  %state_load_4 = load i32* %state_addr_4, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_4}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_4 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_4, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp = load i8* %sbox_addr_4, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %state_load_5 = load i32* %state_addr_5, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_5}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_5 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_5, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_5_cast = zext i8 %sbox_load_5 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_6 = load i32* %state_addr_6, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_6}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_6 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_6, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_6_cast = zext i8 %sbox_load_6 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_7 = load i32* %state_addr_7, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_7}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_7 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_7, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !63 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox_load_7_cast = zext i8 %sbox_load_7 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_8 = load i32* %state_addr_8, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_8}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_8 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_8, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp_1 = load i8* %sbox_addr_8, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state_load_9 = load i32* %state_addr_9, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_9}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_9 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_9, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp_2 = load i8* %sbox_addr_9, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state_load_10 = load i32* %state_addr_10, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_10}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_10 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_10, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_10 = load i8* %sbox_addr_10, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox_load_10_cast = zext i8 %sbox_load_10 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_11 = load i32* %state_addr_11, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_11}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_11 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_11, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_11 = load i8* %sbox_addr_11, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox_load_11_cast = zext i8 %sbox_load_11 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_12 = load i32* %state_addr_12, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_12}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_12 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_12, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp_3 = load i8* %sbox_addr_12, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state_load_13 = load i32* %state_addr_13, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_13}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_13 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_13, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_13 = load i8* %sbox_addr_13, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox_load_13_cast = zext i8 %sbox_load_13 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state_load_14 = load i32* %state_addr_14, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_14}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_14 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_14, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_14 = load i8* %sbox_addr_14, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox_load_14_cast = zext i8 %sbox_load_14 to i32, !dbg !63 ; [#uses=1 type=i32] [debug line = 23:2@104:18]
  %state_load_15 = load i32* %state_addr_15, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %state_load_15}, i64 0, metadata !58) nounwind, !dbg !62 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox_addr_15 = getelementptr [256 x i8]* @sbox, i32 0, i32 %state_load_15, !dbg !63 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox_load_15 = load i8* %sbox_addr_15, align 1, !dbg !63 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox_load_15_cast = zext i8 %sbox_load_15 to i32, !dbg !63 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !65), !dbg !67 ; [debug line = 110:3] [debug variable = temp]
  store i32 %sbox_load_5_cast, i32* %state_addr_4, align 4, !dbg !68 ; [debug line = 111:3]
  store i32 %sbox_load_6_cast, i32* %state_addr_5, align 4, !dbg !69 ; [debug line = 112:3]
  store i32 %sbox_load_7_cast, i32* %state_addr_6, align 4, !dbg !70 ; [debug line = 113:3]
  %tmp = zext i8 %temp to i32, !dbg !71           ; [#uses=2 type=i32] [debug line = 114:3]
  store i32 %tmp, i32* %state_addr_7, align 4, !dbg !71 ; [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i8 %temp_1}, i64 0, metadata !65), !dbg !72 ; [debug line = 116:3] [debug variable = temp]
  store i32 %sbox_load_10_cast, i32* %state_addr_8, align 4, !dbg !73 ; [debug line = 117:3]
  %tmp_1 = zext i8 %temp_1 to i32, !dbg !74       ; [#uses=2 type=i32] [debug line = 118:3]
  store i32 %tmp_1, i32* %state_addr_10, align 4, !dbg !74 ; [debug line = 118:3]
  call void @llvm.dbg.value(metadata !{i8 %temp_2}, i64 0, metadata !65), !dbg !75 ; [debug line = 120:3] [debug variable = temp]
  store i32 %sbox_load_11_cast, i32* %state_addr_9, align 4, !dbg !76 ; [debug line = 121:3]
  %tmp_2 = zext i8 %temp_2 to i32, !dbg !77       ; [#uses=2 type=i32] [debug line = 122:3]
  store i32 %tmp_2, i32* %state_addr_11, align 4, !dbg !77 ; [debug line = 122:3]
  call void @llvm.dbg.value(metadata !{i8 %temp_3}, i64 0, metadata !65), !dbg !78 ; [debug line = 124:3] [debug variable = temp]
  store i32 %sbox_load_15_cast, i32* %state_addr_12, align 4, !dbg !79 ; [debug line = 125:3]
  store i32 %sbox_load_13_cast, i32* %state_addr_14, align 4, !dbg !80 ; [debug line = 127:3]
  %tmp_3 = zext i8 %temp_3 to i32, !dbg !81       ; [#uses=2 type=i32] [debug line = 128:3]
  store i32 %tmp_3, i32* %state_addr_13, align 4, !dbg !81 ; [debug line = 128:3]
  %tmp_5 = trunc i6 %round_read to i5, !dbg !82   ; [#uses=1 type=i5] [debug line = 130:3]
  %tmp_4 = icmp slt i5 %tmp_5, 10, !dbg !82       ; [#uses=1 type=i1] [debug line = 130:3]
  br i1 %tmp_4, label %.preheader11.0, label %.preheader.preheader.0, !dbg !82 ; [debug line = 130:3]

.preheader11.0:                                   ; preds = %.preheader12.preheader.0
  %tmp_7 = xor i8 %sbox_load_5, %sbox_load        ; [#uses=3 type=i8]
  %tmp1 = xor i8 %tmp_7, %sbox_load_15, !dbg !83  ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp = xor i8 %tmp1, %sbox_load_10, !dbg !83    ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp_6 = shl i8 %tmp_7, 1, !dbg !87             ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_7, i32 7), !dbg !87 ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp_71_cast_cast = select i1 %tmp_10, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp2 = xor i8 %tmp_6, %Tmp, !dbg !88           ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp_9 = xor i8 %tmp2, %tmp_71_cast_cast, !dbg !88 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm_2 = xor i8 %sbox_load_10, %sbox_load_5, !dbg !89 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp_11 = shl i8 %Tm_2, 1, !dbg !90             ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2, i32 7), !dbg !90 ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp_18_cast_cast = select i1 %tmp_12, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp3 = xor i8 %tmp_11, %Tmp, !dbg !91          ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp_s = xor i8 %tmp3, %tmp_18_cast_cast, !dbg !91 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm_4 = xor i8 %sbox_load_15, %sbox_load_10, !dbg !92 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp_13 = shl i8 %Tm_4, 1, !dbg !93             ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4, i32 7), !dbg !93 ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp_25_cast_cast = select i1 %tmp_14, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp4 = xor i8 %Tmp, %tmp_25_cast_cast, !dbg !94 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_15 = xor i8 %tmp4, %tmp_13, !dbg !94       ; [#uses=1 type=i8] [debug line = 142:77]
  %Tm_6 = xor i8 %sbox_load_15, %sbox_load, !dbg !95 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp_16 = shl i8 %Tm_6, 1, !dbg !96             ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6, i32 7), !dbg !96 ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp_32_cast_cast = select i1 %tmp_17, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp5 = xor i8 %Tmp, %tmp_32_cast_cast, !dbg !97 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_18 = xor i8 %tmp5, %tmp_16, !dbg !97       ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_19 = xor i8 %sbox_load_6, %sbox_load_1     ; [#uses=3 type=i8]
  %tmp6 = xor i8 %tmp_19, %temp_3, !dbg !83       ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp_1 = xor i8 %tmp6, %sbox_load_11, !dbg !83  ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp_20 = shl i8 %tmp_19, 1, !dbg !87           ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_19, i32 7), !dbg !87 ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp_11_1_cast_cast = select i1 %tmp_21, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp7 = xor i8 %tmp_20, %Tmp_1, !dbg !88        ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp_12_1 = xor i8 %tmp7, %tmp_11_1_cast_cast, !dbg !88 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm_2_1 = xor i8 %sbox_load_11, %sbox_load_6, !dbg !89 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp_22 = shl i8 %Tm_2_1, 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_1, i32 7), !dbg !90 ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp_18_1_cast_cast = select i1 %tmp_23, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp8 = xor i8 %tmp_22, %Tmp_1, !dbg !91        ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp_19_1 = xor i8 %tmp8, %tmp_18_1_cast_cast, !dbg !91 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm_4_1 = xor i8 %temp_3, %sbox_load_11, !dbg !92 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp_24 = shl i8 %Tm_4_1, 1, !dbg !93           ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_1, i32 7), !dbg !93 ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp_25_1_cast_cast = select i1 %tmp_25, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp9 = xor i8 %Tmp_1, %tmp_25_1_cast_cast, !dbg !94 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_26_1 = xor i8 %tmp9, %tmp_24, !dbg !94     ; [#uses=1 type=i8] [debug line = 142:77]
  %Tm_6_1 = xor i8 %temp_3, %sbox_load_1, !dbg !95 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp_26 = shl i8 %Tm_6_1, 1, !dbg !96           ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_1, i32 7), !dbg !96 ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp_32_1_cast_cast = select i1 %tmp_27, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp10 = xor i8 %tmp_26, %Tmp_1, !dbg !97       ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp11 = xor i8 %tmp_32_1_cast_cast, %temp_3, !dbg !97 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_35_s = xor i8 %tmp11, %tmp10, !dbg !97     ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_35_1 = zext i8 %tmp_35_s to i32, !dbg !97  ; [#uses=1 type=i32] [debug line = 143:67]
  %tmp_28 = xor i8 %sbox_load_7, %sbox_load_2     ; [#uses=3 type=i8]
  %tmp12 = xor i8 %tmp_28, %sbox_load_13, !dbg !83 ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp_2 = xor i8 %tmp12, %temp_1, !dbg !83       ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp_29 = shl i8 %tmp_28, 1, !dbg !87           ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_28, i32 7), !dbg !87 ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp_11_2_cast_cast = select i1 %tmp_30, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp13 = xor i8 %tmp_29, %Tmp_2, !dbg !88       ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp_12_2 = xor i8 %tmp13, %tmp_11_2_cast_cast, !dbg !88 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm_2_2 = xor i8 %temp_1, %sbox_load_7, !dbg !89 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp_31 = shl i8 %Tm_2_2, 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_2, i32 7), !dbg !90 ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp_18_2_cast_cast = select i1 %tmp_32, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp14 = xor i8 %tmp_31, %Tmp_2, !dbg !91       ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp_19_2 = xor i8 %tmp14, %tmp_18_2_cast_cast, !dbg !91 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm_4_2 = xor i8 %sbox_load_13, %temp_1, !dbg !92 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp_33 = shl i8 %Tm_4_2, 1, !dbg !93           ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_2, i32 7), !dbg !93 ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp_25_2_cast_cast = select i1 %tmp_34, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp15 = xor i8 %tmp_33, %Tmp_2, !dbg !94       ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp16 = xor i8 %tmp_25_2_cast_cast, %temp_1, !dbg !94 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_28_s = xor i8 %tmp16, %tmp15, !dbg !94     ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_28_2 = zext i8 %tmp_28_s to i32, !dbg !94  ; [#uses=1 type=i32] [debug line = 142:77]
  %Tm_6_2 = xor i8 %sbox_load_13, %sbox_load_2, !dbg !95 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp_35 = shl i8 %Tm_6_2, 1, !dbg !96           ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_2, i32 7), !dbg !96 ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp_32_2_cast_cast = select i1 %tmp_36, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp17 = xor i8 %Tmp_2, %tmp_32_2_cast_cast, !dbg !97 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_33_2 = xor i8 %tmp17, %tmp_35, !dbg !97    ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_37 = xor i8 %temp, %sbox_load_3            ; [#uses=3 type=i8]
  %tmp18 = xor i8 %tmp_37, %sbox_load_14, !dbg !83 ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp_3 = xor i8 %tmp18, %temp_2, !dbg !83       ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp_38 = shl i8 %tmp_37, 1, !dbg !87           ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_37, i32 7), !dbg !87 ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp_11_3_cast_cast = select i1 %tmp_39, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp19 = xor i8 %tmp_38, %Tmp_3, !dbg !88       ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp_12_3 = xor i8 %tmp19, %tmp_11_3_cast_cast, !dbg !88 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm_2_3 = xor i8 %temp_2, %temp, !dbg !89       ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp_40 = shl i8 %Tm_2_3, 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_3, i32 7), !dbg !90 ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp_18_3_cast_cast = select i1 %tmp_41, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp20 = xor i8 %tmp_18_3_cast_cast, %tmp_40, !dbg !91 ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp21 = xor i8 %Tmp_3, %temp, !dbg !91         ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp_21_s = xor i8 %tmp21, %tmp20, !dbg !91     ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp_21_3 = zext i8 %tmp_21_s to i32, !dbg !91  ; [#uses=1 type=i32] [debug line = 141:77]
  %Tm_4_3 = xor i8 %sbox_load_14, %temp_2, !dbg !92 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp_42 = shl i8 %Tm_4_3, 1, !dbg !93           ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp_43 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_3, i32 7), !dbg !93 ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp_25_3_cast_cast = select i1 %tmp_43, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp22 = xor i8 %tmp_42, %Tmp_3, !dbg !94       ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp23 = xor i8 %tmp_25_3_cast_cast, %temp_2, !dbg !94 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_28_4 = xor i8 %tmp23, %tmp22, !dbg !94     ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp_28_3 = zext i8 %tmp_28_4 to i32, !dbg !94  ; [#uses=1 type=i32] [debug line = 142:77]
  %Tm_6_3 = xor i8 %sbox_load_14, %sbox_load_3, !dbg !95 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp_44 = shl i8 %Tm_6_3, 1, !dbg !96           ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_3, i32 7), !dbg !96 ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp_32_3_cast_cast = select i1 %tmp_45, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp24 = xor i8 %Tmp_3, %tmp_32_3_cast_cast, !dbg !97 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_33_3 = xor i8 %tmp24, %tmp_44, !dbg !97    ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp_46 = trunc i6 %round_read to i4            ; [#uses=1 type=i4]
  %tmp_8 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_46, i4 0), !dbg !98 ; [#uses=16 type=i8] [debug line = 150:5]
  %tmp_8_cast = zext i8 %tmp_8 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_8_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load = load i32* %RoundKey_addr, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp25 = xor i8 %sbox_load, %tmp_9, !dbg !98    ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp25_cast = zext i8 %tmp25 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_47 = xor i32 %tmp25_cast, %RoundKey_load, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_47, i32* %state_addr, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_0_s = or i8 %tmp_8, 1                    ; [#uses=1 type=i8]
  %sum29_0_cast = zext i8 %sum29_0_s to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_1 = load i32* %RoundKey_addr_1, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp26 = xor i8 %sbox_load_5, %tmp_s, !dbg !98  ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp26_cast = zext i8 %tmp26 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_0_1 = xor i32 %tmp26_cast, %RoundKey_load_1, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_0_1, i32* %state_addr_4, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_0_1 = or i8 %tmp_8, 2                    ; [#uses=1 type=i8]
  %sum29_0_1_cast = zext i8 %sum29_0_1 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_2 = load i32* %RoundKey_addr_2, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp27 = xor i8 %sbox_load_10, %tmp_15, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp27_cast = zext i8 %tmp27 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_0_2 = xor i32 %tmp27_cast, %RoundKey_load_2, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_0_2, i32* %state_addr_8, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_0_2 = or i8 %tmp_8, 3                    ; [#uses=1 type=i8]
  %sum29_0_2_cast = zext i8 %sum29_0_2 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_3 = load i32* %RoundKey_addr_3, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp28 = xor i8 %sbox_load_15, %tmp_18, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp28_cast = zext i8 %tmp28 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_0_3 = xor i32 %tmp28_cast, %RoundKey_load_3, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_0_3, i32* %state_addr_12, align 4, !dbg !98 ; [debug line = 150:5]
  %tmp_41_1_s = or i8 %tmp_8, 4, !dbg !98         ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp_41_1_cast = zext i8 %tmp_41_1_s to i32, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey_addr_4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_4 = load i32* %RoundKey_addr_4, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp29 = xor i8 %sbox_load_1, %tmp_12_1, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp29_cast = zext i8 %tmp29 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_1 = xor i32 %tmp29_cast, %RoundKey_load_4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_1, i32* %state_addr_1, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_1_s = or i8 %tmp_8, 5                    ; [#uses=1 type=i8]
  %sum29_1_cast = zext i8 %sum29_1_s to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_5 = load i32* %RoundKey_addr_5, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp30 = xor i8 %sbox_load_6, %tmp_19_1, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp30_cast = zext i8 %tmp30 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_1_1 = xor i32 %tmp30_cast, %RoundKey_load_5, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_1_1, i32* %state_addr_5, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_1_1 = or i8 %tmp_8, 6                    ; [#uses=1 type=i8]
  %sum29_1_1_cast = zext i8 %sum29_1_1 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_6 = load i32* %RoundKey_addr_6, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp31 = xor i8 %sbox_load_11, %tmp_26_1, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp31_cast = zext i8 %tmp31 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_1_2 = xor i32 %tmp31_cast, %RoundKey_load_6, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_1_2, i32* %state_addr_9, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_1_2 = or i8 %tmp_8, 7                    ; [#uses=1 type=i8]
  %sum29_1_2_cast = zext i8 %sum29_1_2 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_7 = load i32* %RoundKey_addr_7, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_1_3 = xor i32 %RoundKey_load_7, %tmp_35_1, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_1_3, i32* %state_addr_13, align 4, !dbg !98 ; [debug line = 150:5]
  %tmp_41_2_s = or i8 %tmp_8, 8, !dbg !98         ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp_41_2_cast = zext i8 %tmp_41_2_s to i32, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey_addr_8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_8 = load i32* %RoundKey_addr_8, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp32 = xor i8 %sbox_load_2, %tmp_12_2, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp32_cast = zext i8 %tmp32 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_2 = xor i32 %tmp32_cast, %RoundKey_load_8, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_2, i32* %state_addr_2, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_2_s = or i8 %tmp_8, 9                    ; [#uses=1 type=i8]
  %sum29_2_cast = zext i8 %sum29_2_s to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_9 = load i32* %RoundKey_addr_9, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp33 = xor i8 %sbox_load_7, %tmp_19_2, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp33_cast = zext i8 %tmp33 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_2_1 = xor i32 %tmp33_cast, %RoundKey_load_9, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_2_1, i32* %state_addr_6, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_2_1 = or i8 %tmp_8, 10                   ; [#uses=1 type=i8]
  %sum29_2_1_cast = zext i8 %sum29_2_1 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_10 = load i32* %RoundKey_addr_10, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_2_2 = xor i32 %RoundKey_load_10, %tmp_28_2, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_2_2, i32* %state_addr_10, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_2_2 = or i8 %tmp_8, 11                   ; [#uses=1 type=i8]
  %sum29_2_2_cast = zext i8 %sum29_2_2 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_11 = load i32* %RoundKey_addr_11, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp34 = xor i8 %sbox_load_13, %tmp_33_2, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp34_cast = zext i8 %tmp34 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_2_3 = xor i32 %tmp34_cast, %RoundKey_load_11, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_2_3, i32* %state_addr_14, align 4, !dbg !98 ; [debug line = 150:5]
  %tmp_41_3_s = or i8 %tmp_8, 12, !dbg !98        ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp_41_3_cast = zext i8 %tmp_41_3_s to i32, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey_addr_12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_3_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_12 = load i32* %RoundKey_addr_12, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp35 = xor i8 %sbox_load_3, %tmp_12_3, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp35_cast = zext i8 %tmp35 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_3 = xor i32 %tmp35_cast, %RoundKey_load_12, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_3, i32* %state_addr_3, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_3_s = or i8 %tmp_8, 13                   ; [#uses=1 type=i8]
  %sum29_3_cast = zext i8 %sum29_3_s to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_13 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_13 = load i32* %RoundKey_addr_13, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_3_1 = xor i32 %RoundKey_load_13, %tmp_21_3, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_3_1, i32* %state_addr_7, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_3_1 = or i8 %tmp_8, 14                   ; [#uses=1 type=i8]
  %sum29_3_1_cast = zext i8 %sum29_3_1 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_14 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_1_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_14 = load i32* %RoundKey_addr_14, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_3_2 = xor i32 %RoundKey_load_14, %tmp_28_3, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp_43_3_2, i32* %state_addr_11, align 4, !dbg !98 ; [debug line = 150:5]
  %sum29_3_2 = or i8 %tmp_8, 15                   ; [#uses=1 type=i8]
  %sum29_3_2_cast = zext i8 %sum29_3_2 to i32     ; [#uses=1 type=i32]
  %RoundKey_addr_15 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey_load_15 = load i32* %RoundKey_addr_15, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp36 = xor i8 %sbox_load_14, %tmp_33_3, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp36_cast = zext i8 %tmp36 to i32, !dbg !98   ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp_43_3_3 = xor i32 %tmp36_cast, %RoundKey_load_15, !dbg !98 ; [#uses=1 type=i32] [debug line = 150:5]
  br label %.loopexit

.preheader.preheader.0:                           ; preds = %.preheader12.preheader.0
  %RoundKey_addr_16 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 160, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_16 = load i32* %RoundKey_addr_16, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_48 = xor i32 %sbox_load_cast, %RoundKey_load_16, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_48, i32* %state_addr, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_17 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 161, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_17 = load i32* %RoundKey_addr_17, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_0_1 = xor i32 %sbox_load_5_cast, %RoundKey_load_17, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_0_1, i32* %state_addr_4, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_18 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 162, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_18 = load i32* %RoundKey_addr_18, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_0_2 = xor i32 %sbox_load_10_cast, %RoundKey_load_18, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_0_2, i32* %state_addr_8, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_19 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 163, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_19 = load i32* %RoundKey_addr_19, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_0_3 = xor i32 %sbox_load_15_cast, %RoundKey_load_19, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_0_3, i32* %state_addr_12, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_20 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 164, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_20 = load i32* %RoundKey_addr_20, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_1 = xor i32 %sbox_load_1_cast, %RoundKey_load_20, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_1, i32* %state_addr_1, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_21 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 165, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_21 = load i32* %RoundKey_addr_21, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_1_1 = xor i32 %sbox_load_6_cast, %RoundKey_load_21, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_1_1, i32* %state_addr_5, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_22 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 166, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_22 = load i32* %RoundKey_addr_22, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_1_2 = xor i32 %sbox_load_11_cast, %RoundKey_load_22, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_1_2, i32* %state_addr_9, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_23 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 167, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_23 = load i32* %RoundKey_addr_23, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_1_3 = xor i32 %RoundKey_load_23, %tmp_3, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_1_3, i32* %state_addr_13, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_24 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 168, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_24 = load i32* %RoundKey_addr_24, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_2 = xor i32 %sbox_load_2_cast, %RoundKey_load_24, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_2, i32* %state_addr_2, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_25 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 169, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_25 = load i32* %RoundKey_addr_25, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_2_1 = xor i32 %sbox_load_7_cast, %RoundKey_load_25, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_2_1, i32* %state_addr_6, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_26 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 170, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_26 = load i32* %RoundKey_addr_26, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_2_2 = xor i32 %RoundKey_load_26, %tmp_1, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_2_2, i32* %state_addr_10, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_27 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 171, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_27 = load i32* %RoundKey_addr_27, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_2_3 = xor i32 %sbox_load_13_cast, %RoundKey_load_27, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_2_3, i32* %state_addr_14, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_28 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 172, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_28 = load i32* %RoundKey_addr_28, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_3 = xor i32 %sbox_load_3_cast, %RoundKey_load_28, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_3, i32* %state_addr_3, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_29 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 173, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_29 = load i32* %RoundKey_addr_29, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_3_1 = xor i32 %RoundKey_load_29, %tmp, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_3_1, i32* %state_addr_7, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_30 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 174, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_30 = load i32* %RoundKey_addr_30, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_3_2 = xor i32 %RoundKey_load_30, %tmp_2, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp_40_3_2, i32* %state_addr_11, align 4, !dbg !103 ; [debug line = 160:6]
  %RoundKey_addr_31 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 175, !dbg !103 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey_load_31 = load i32* %RoundKey_addr_31, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp_40_3_3 = xor i32 %sbox_load_14_cast, %RoundKey_load_31, !dbg !103 ; [#uses=1 type=i32] [debug line = 160:6]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader.0, %.preheader11.0
  %storemerge = phi i32 [ %tmp_40_3_3, %.preheader.preheader.0 ], [ %tmp_43_3_3, %.preheader11.0 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %state_addr_15, align 4, !dbg !98 ; [debug line = 150:5]
  ret void, !dbg !108                             ; [debug line = 168:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* nocapture %Key) {
.preheader.preheader:
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !109), !dbg !114 ; [debug line = 32:24] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !115), !dbg !119 ; [debug line = 32:43] [debug variable = Key]
  %Key_addr = getelementptr [32 x i32]* %Key, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key_load = load i32* %Key_addr, align 4, !dbg !120 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key_load, i32* %RoundKey_addr, align 4, !dbg !120 ; [debug line = 40:3]
  %Key_addr_1 = getelementptr [32 x i32]* %Key, i32 0, i32 1, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key_load_1 = load i32* %Key_addr_1, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey_addr_32 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 1, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key_load_1, i32* %RoundKey_addr_32, align 4, !dbg !124 ; [debug line = 41:3]
  %Key_addr_2 = getelementptr [32 x i32]* %Key, i32 0, i32 2, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key_load_2 = load i32* %Key_addr_2, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey_addr_33 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 2, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key_load_2, i32* %RoundKey_addr_33, align 4, !dbg !125 ; [debug line = 42:3]
  %Key_addr_3 = getelementptr [32 x i32]* %Key, i32 0, i32 3, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key_load_3 = load i32* %Key_addr_3, align 4, !dbg !126 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey_addr_34 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 3, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key_load_3, i32* %RoundKey_addr_34, align 4, !dbg !126 ; [debug line = 43:3]
  %Key_addr_4 = getelementptr [32 x i32]* %Key, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key_load_4 = load i32* %Key_addr_4, align 4, !dbg !120 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey_addr_35 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key_load_4, i32* %RoundKey_addr_35, align 4, !dbg !120 ; [debug line = 40:3]
  %Key_addr_5 = getelementptr [32 x i32]* %Key, i32 0, i32 5, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key_load_5 = load i32* %Key_addr_5, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey_addr_36 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 5, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key_load_5, i32* %RoundKey_addr_36, align 4, !dbg !124 ; [debug line = 41:3]
  %Key_addr_6 = getelementptr [32 x i32]* %Key, i32 0, i32 6, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key_load_6 = load i32* %Key_addr_6, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey_addr_37 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 6, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key_load_6, i32* %RoundKey_addr_37, align 4, !dbg !125 ; [debug line = 42:3]
  %Key_addr_7 = getelementptr [32 x i32]* %Key, i32 0, i32 7, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key_load_7 = load i32* %Key_addr_7, align 4, !dbg !126 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey_addr_38 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 7, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key_load_7, i32* %RoundKey_addr_38, align 4, !dbg !126 ; [debug line = 43:3]
  %Key_addr_8 = getelementptr [32 x i32]* %Key, i32 0, i32 8, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key_load_8 = load i32* %Key_addr_8, align 4, !dbg !120 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey_addr_39 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 8, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key_load_8, i32* %RoundKey_addr_39, align 4, !dbg !120 ; [debug line = 40:3]
  %Key_addr_9 = getelementptr [32 x i32]* %Key, i32 0, i32 9, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key_load_9 = load i32* %Key_addr_9, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey_addr_40 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 9, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key_load_9, i32* %RoundKey_addr_40, align 4, !dbg !124 ; [debug line = 41:3]
  %Key_addr_10 = getelementptr [32 x i32]* %Key, i32 0, i32 10, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key_load_10 = load i32* %Key_addr_10, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey_addr_41 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 10, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key_load_10, i32* %RoundKey_addr_41, align 4, !dbg !125 ; [debug line = 42:3]
  %Key_addr_11 = getelementptr [32 x i32]* %Key, i32 0, i32 11, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key_load_11 = load i32* %Key_addr_11, align 4, !dbg !126 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey_addr_42 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 11, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key_load_11, i32* %RoundKey_addr_42, align 4, !dbg !126 ; [debug line = 43:3]
  %Key_addr_12 = getelementptr [32 x i32]* %Key, i32 0, i32 12, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key_load_12 = load i32* %Key_addr_12, align 4, !dbg !120 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey_addr_43 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 12, !dbg !120 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key_load_12, i32* %RoundKey_addr_43, align 4, !dbg !120 ; [debug line = 40:3]
  %Key_addr_13 = getelementptr [32 x i32]* %Key, i32 0, i32 13, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key_load_13 = load i32* %Key_addr_13, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey_addr_44 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 13, !dbg !124 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key_load_13, i32* %RoundKey_addr_44, align 4, !dbg !124 ; [debug line = 41:3]
  %Key_addr_14 = getelementptr [32 x i32]* %Key, i32 0, i32 14, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key_load_14 = load i32* %Key_addr_14, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey_addr_45 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 14, !dbg !125 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key_load_14, i32* %RoundKey_addr_45, align 4, !dbg !125 ; [debug line = 42:3]
  %Key_addr_15 = getelementptr [32 x i32]* %Key, i32 0, i32 15, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key_load_15 = load i32* %Key_addr_15, align 4, !dbg !126 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey_addr_46 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 15, !dbg !126 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key_load_15, i32* %RoundKey_addr_46, align 4, !dbg !126 ; [debug line = 43:3]
  br label %.preheader, !dbg !127                 ; [debug line = 47:22]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i_1 = phi i6 [ %i, %_ifconv ], [ 4, %.preheader.preheader ] ; [#uses=5 type=i6]
  %exitcond1 = icmp eq i6 %i_1, -20, !dbg !127    ; [#uses=1 type=i1] [debug line = 47:22]
  br i1 %exitcond1, label %0, label %_ifconv, !dbg !127 ; [debug line = 47:22]

_ifconv:                                          ; preds = %.preheader
  %tmp_47 = trunc i6 %i_1 to i2, !dbg !127        ; [#uses=1 type=i2] [debug line = 47:22]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str2) nounwind, !dbg !128 ; [debug line = 48:3]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str2), !dbg !128 ; [#uses=1 type=i32] [debug line = 48:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !130 ; [debug line = 49:1]
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0), !dbg !131 ; [#uses=12 type=i8] [debug line = 51:7]
  %tmp_cast = zext i8 %tmp_s to i32, !dbg !131    ; [#uses=1 type=i32] [debug line = 51:7]
  %sum8 = add i8 -4, %tmp_s                       ; [#uses=1 type=i8]
  %sum8_cast = zext i8 %sum8 to i32               ; [#uses=1 type=i32]
  %RoundKey_addr_47 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_cast, !dbg !131 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey_load = load i32* %RoundKey_addr_47, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 51:7]
  %temp_0_3 = trunc i32 %RoundKey_load to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_0_3}, i64 0, metadata !134), !dbg !131 ; [debug line = 51:7] [debug variable = temp[0]]
  %sum8_1 = add i8 -3, %tmp_s                     ; [#uses=1 type=i8]
  %sum8_1_cast = zext i8 %sum8_1 to i32           ; [#uses=1 type=i32]
  %RoundKey_addr_48 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_1_cast, !dbg !131 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey_load_1 = load i32* %RoundKey_addr_48, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 51:7]
  %temp_1 = trunc i32 %RoundKey_load_1 to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_1}, i64 0, metadata !135), !dbg !131 ; [debug line = 51:7] [debug variable = temp[1]]
  %sum8_2 = add i8 -2, %tmp_s                     ; [#uses=1 type=i8]
  %sum8_2_cast = zext i8 %sum8_2 to i32           ; [#uses=1 type=i32]
  %RoundKey_addr_49 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_2_cast, !dbg !131 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey_load_32 = load i32* %RoundKey_addr_49, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 51:7]
  %temp_2 = trunc i32 %RoundKey_load_32 to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_2}, i64 0, metadata !136), !dbg !131 ; [debug line = 51:7] [debug variable = temp[2]]
  %sum8_3 = add i8 -1, %tmp_s                     ; [#uses=1 type=i8]
  %sum8_3_cast = zext i8 %sum8_3 to i32           ; [#uses=1 type=i32]
  %RoundKey_addr_50 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8_3_cast, !dbg !131 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey_load_33 = load i32* %RoundKey_addr_50, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 51:7]
  %temp_3 = trunc i32 %RoundKey_load_33 to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_3}, i64 0, metadata !137), !dbg !131 ; [debug line = 51:7] [debug variable = temp[3]]
  %tmp_2 = icmp eq i2 %tmp_47, 0, !dbg !138       ; [#uses=4 type=i1] [debug line = 53:6]
  call void @llvm.dbg.value(metadata !{i8 %temp_0_3}, i64 0, metadata !139), !dbg !140 ; [debug line = 55:8] [debug variable = k]
  %num_assign = zext i8 %temp_1 to i32, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:16]
  call void @llvm.dbg.value(metadata !{i32 %num_assign}, i64 0, metadata !143) nounwind, !dbg !144 ; [debug line = 3:22@60:16] [debug variable = num]
  %sbox_addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign, !dbg !145 ; [#uses=1 type=i8*] [debug line = 23:2@60:16]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 23:2@60:16]
  %num_assign_s = zext i8 %temp_2 to i32, !dbg !146 ; [#uses=1 type=i32] [debug line = 61:16]
  call void @llvm.dbg.value(metadata !{i32 %num_assign_s}, i64 0, metadata !147) nounwind, !dbg !148 ; [debug line = 3:22@61:16] [debug variable = num]
  %sbox_addr_16 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_s, !dbg !149 ; [#uses=1 type=i8*] [debug line = 23:2@61:16]
  %temp_1_1 = load i8* %sbox_addr_16, align 1, !dbg !149 ; [#uses=1 type=i8] [debug line = 23:2@61:16]
  call void @llvm.dbg.value(metadata !{i8 %temp_1_1}, i64 0, metadata !135), !dbg !146 ; [debug line = 61:16] [debug variable = temp[1]]
  %num_assign_1 = zext i8 %temp_3 to i32, !dbg !150 ; [#uses=1 type=i32] [debug line = 62:16]
  call void @llvm.dbg.value(metadata !{i32 %num_assign_1}, i64 0, metadata !151) nounwind, !dbg !152 ; [debug line = 3:22@62:16] [debug variable = num]
  %sbox_addr_17 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_1, !dbg !153 ; [#uses=1 type=i8*] [debug line = 23:2@62:16]
  %temp_2_1 = load i8* %sbox_addr_17, align 1, !dbg !153 ; [#uses=1 type=i8] [debug line = 23:2@62:16]
  call void @llvm.dbg.value(metadata !{i8 %temp_2_1}, i64 0, metadata !136), !dbg !150 ; [debug line = 62:16] [debug variable = temp[2]]
  %num_assign_2 = zext i8 %temp_0_3 to i32, !dbg !154 ; [#uses=1 type=i32] [debug line = 63:16]
  call void @llvm.dbg.value(metadata !{i32 %num_assign_2}, i64 0, metadata !155) nounwind, !dbg !156 ; [debug line = 3:22@63:16] [debug variable = num]
  %sbox_addr_18 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num_assign_2, !dbg !157 ; [#uses=1 type=i8*] [debug line = 23:2@63:16]
  %temp_3_1 = load i8* %sbox_addr_18, align 1, !dbg !157 ; [#uses=1 type=i8] [debug line = 23:2@63:16]
  call void @llvm.dbg.value(metadata !{i8 %temp_3_1}, i64 0, metadata !137), !dbg !154 ; [debug line = 63:16] [debug variable = temp[3]]
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5), !dbg !158 ; [#uses=1 type=i4] [debug line = 64:7]
  %tmp_15 = zext i4 %p_lshr_f_cast to i32, !dbg !158 ; [#uses=1 type=i32] [debug line = 64:7]
  %Rcon_addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp_15, !dbg !158 ; [#uses=1 type=i8*] [debug line = 64:7]
  %Rcon_load = load i8* %Rcon_addr, align 1, !dbg !158 ; [#uses=1 type=i8] [debug line = 64:7]
  %temp_0 = xor i8 %Rcon_load, %sbox_load, !dbg !158 ; [#uses=1 type=i8] [debug line = 64:7]
  call void @llvm.dbg.value(metadata !{i8 %temp_0}, i64 0, metadata !134), !dbg !158 ; [debug line = 64:7] [debug variable = temp[0]]
  %temp_3_2 = select i1 %tmp_2, i8 %temp_3_1, i8 %temp_3 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %temp_3_2}, i64 0, metadata !137), !dbg !131 ; [debug line = 51:7] [debug variable = temp[3]]
  %temp_2_2 = select i1 %tmp_2, i8 %temp_2_1, i8 %temp_2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %temp_2_2}, i64 0, metadata !136), !dbg !131 ; [debug line = 51:7] [debug variable = temp[2]]
  %temp_1_2 = select i1 %tmp_2, i8 %temp_1_1, i8 %temp_1 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %temp_1_2}, i64 0, metadata !135), !dbg !131 ; [debug line = 51:7] [debug variable = temp[1]]
  %temp_0_2 = select i1 %tmp_2, i8 %temp_0, i8 %temp_0_3 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %temp_0_2}, i64 0, metadata !134), !dbg !131 ; [debug line = 51:7] [debug variable = temp[0]]
  %sum = add i8 -16, %tmp_s                       ; [#uses=1 type=i8]
  %sum_cast = zext i8 %sum to i32                 ; [#uses=1 type=i32]
  %RoundKey_addr_51 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum_cast, !dbg !159 ; [#uses=1 type=i32*] [debug line = 73:6]
  %RoundKey_load_2 = load i32* %RoundKey_addr_51, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 73:6]
  %tmp_18 = zext i8 %temp_0_2 to i32, !dbg !159   ; [#uses=1 type=i32] [debug line = 73:6]
  %tmp_19 = xor i32 %RoundKey_load_2, %tmp_18, !dbg !159 ; [#uses=1 type=i32] [debug line = 73:6]
  %RoundKey_addr_52 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_cast, !dbg !159 ; [#uses=1 type=i32*] [debug line = 73:6]
  store i32 %tmp_19, i32* %RoundKey_addr_52, align 4, !dbg !159 ; [debug line = 73:6]
  %sum1 = add i8 -15, %tmp_s                      ; [#uses=1 type=i8]
  %sum1_cast = zext i8 %sum1 to i32               ; [#uses=1 type=i32]
  %RoundKey_addr_53 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum1_cast, !dbg !160 ; [#uses=1 type=i32*] [debug line = 74:6]
  %RoundKey_load_3 = load i32* %RoundKey_addr_53, align 4, !dbg !160 ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp_20 = zext i8 %temp_1_2 to i32, !dbg !160   ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp_21 = xor i32 %RoundKey_load_3, %tmp_20, !dbg !160 ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp_22 = or i8 %tmp_s, 1, !dbg !160            ; [#uses=1 type=i8] [debug line = 74:6]
  %tmp_22_cast = zext i8 %tmp_22 to i32, !dbg !160 ; [#uses=1 type=i32] [debug line = 74:6]
  %RoundKey_addr_54 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_22_cast, !dbg !160 ; [#uses=1 type=i32*] [debug line = 74:6]
  store i32 %tmp_21, i32* %RoundKey_addr_54, align 4, !dbg !160 ; [debug line = 74:6]
  %sum2 = add i8 -14, %tmp_s                      ; [#uses=1 type=i8]
  %sum2_cast = zext i8 %sum2 to i32               ; [#uses=1 type=i32]
  %RoundKey_addr_55 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum2_cast, !dbg !161 ; [#uses=1 type=i32*] [debug line = 75:6]
  %RoundKey_load_4 = load i32* %RoundKey_addr_55, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp_23 = zext i8 %temp_2_2 to i32, !dbg !161   ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp_24 = xor i32 %RoundKey_load_4, %tmp_23, !dbg !161 ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp_25 = or i8 %tmp_s, 2, !dbg !161            ; [#uses=1 type=i8] [debug line = 75:6]
  %tmp_25_cast = zext i8 %tmp_25 to i32, !dbg !161 ; [#uses=1 type=i32] [debug line = 75:6]
  %RoundKey_addr_56 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_25_cast, !dbg !161 ; [#uses=1 type=i32*] [debug line = 75:6]
  store i32 %tmp_24, i32* %RoundKey_addr_56, align 4, !dbg !161 ; [debug line = 75:6]
  %sum3 = add i8 -13, %tmp_s                      ; [#uses=1 type=i8]
  %sum3_cast = zext i8 %sum3 to i32               ; [#uses=1 type=i32]
  %RoundKey_addr_57 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_cast, !dbg !162 ; [#uses=1 type=i32*] [debug line = 76:6]
  %RoundKey_load_5 = load i32* %RoundKey_addr_57, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp_26 = zext i8 %temp_3_2 to i32, !dbg !162   ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp_27 = xor i32 %RoundKey_load_5, %tmp_26, !dbg !162 ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp_28 = or i8 %tmp_s, 3, !dbg !162            ; [#uses=1 type=i8] [debug line = 76:6]
  %tmp_28_cast = zext i8 %tmp_28 to i32, !dbg !162 ; [#uses=1 type=i32] [debug line = 76:6]
  %RoundKey_addr_58 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_28_cast, !dbg !162 ; [#uses=1 type=i32*] [debug line = 76:6]
  store i32 %tmp_27, i32* %RoundKey_addr_58, align 4, !dbg !162 ; [debug line = 76:6]
  %i = add i6 1, %i_1, !dbg !163                  ; [#uses=1 type=i6] [debug line = 77:6]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !164), !dbg !163 ; [debug line = 77:6] [debug variable = i]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str2, i32 %tmp), !dbg !165 ; [#uses=0 type=i32] [debug line = 78:2]
  br label %.preheader, !dbg !165                 ; [debug line = 78:2]

; <label>:0                                       ; preds = %.preheader
  ret void, !dbg !166                             ; [debug line = 79:1]
}

; [#uses=0]
define void @Cipher([16 x i32]* %state, [32 x i32]* %Key) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i32]* %state) nounwind, !map !167
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !173
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher_str) nounwind
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=7 type=[240 x i32]*]
  call void @llvm.dbg.value(metadata !{[16 x i32]* %state}, i64 0, metadata !179), !dbg !183 ; [debug line = 181:18] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !184), !dbg !185 ; [debug line = 181:35] [debug variable = Key]
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !186), !dbg !189 ; [debug line = 204:7] [debug variable = RoundKey]
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind, !dbg !190 ; [debug line = 206:2]
  call void @llvm.dbg.value(metadata !{[16 x i32]* %state}, i64 0, metadata !191) nounwind, !dbg !196 ; [debug line = 83:33@208:2] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !197) nounwind, !dbg !198 ; [debug line = 83:50@208:2] [debug variable = RoundKey]
  br label %1, !dbg !199                          ; [debug line = 86:6@208:2]

; <label>:1                                       ; preds = %.preheader.preheader.i, %0
  %i_i = phi i3 [ 0, %0 ], [ %i, %.preheader.preheader.i ] ; [#uses=7 type=i3]
  %i_i_cast2 = zext i3 %i_i to i32, !dbg !199     ; [#uses=1 type=i32] [debug line = 86:6@208:2]
  %i_i_cast2_cast1 = zext i3 %i_i to i5, !dbg !202 ; [#uses=1 type=i5] [debug line = 90:4@208:2]
  %i_i_cast2_cast = zext i3 %i_i to i4, !dbg !202 ; [#uses=1 type=i4] [debug line = 90:4@208:2]
  %state_addr = getelementptr [16 x i32]* %state, i32 0, i32 %i_i_cast2, !dbg !202 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %tmp_49 = add i4 %i_i_cast2_cast, 4, !dbg !202  ; [#uses=1 type=i4] [debug line = 90:4@208:2]
  %tmp_52_cast = zext i4 %tmp_49 to i32, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_addr_16 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_52_cast, !dbg !202 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %tmp_50 = call i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29 1, i3 %i_i), !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_addr_17 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_50, !dbg !202 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %tmp_51 = add i5 %i_i_cast2_cast1, 12, !dbg !202 ; [#uses=1 type=i5] [debug line = 90:4@208:2]
  %tmp_54_cast = zext i5 %tmp_51 to i32, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_addr_18 = getelementptr [16 x i32]* %state, i32 0, i32 %tmp_54_cast, !dbg !202 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %exitcond1_i = icmp eq i3 %i_i, -4, !dbg !199   ; [#uses=1 type=i1] [debug line = 86:6@208:2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i = add i3 %i_i, 1, !dbg !206                  ; [#uses=1 type=i3] [debug line = 86:14@208:2]
  br i1 %exitcond1_i, label %AddRoundKey.exit.preheader, label %.preheader.preheader.i, !dbg !199 ; [debug line = 86:6@208:2]

AddRoundKey.exit.preheader:                       ; preds = %1
  br label %AddRoundKey.exit, !dbg !207           ; [debug line = 210:21]

.preheader.preheader.i:                           ; preds = %1
  %tmp_52 = trunc i3 %i_i to i2                   ; [#uses=1 type=i2]
  %tmp_i = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_52, i2 0), !dbg !202 ; [#uses=4 type=i4] [debug line = 90:4@208:2]
  %tmp_i_cast = zext i4 %tmp_i to i32, !dbg !202  ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_i_cast, !dbg !202 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey_load = load i32* %RoundKey_addr, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_load = load i32* %state_addr, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp_84_i = xor i32 %state_load, %RoundKey_load, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp_84_i, i32* %state_addr, align 4, !dbg !202 ; [debug line = 90:4@208:2]
  %sum3_i = or i4 %tmp_i, 1                       ; [#uses=1 type=i4]
  %sum3_i_cast = zext i4 %sum3_i to i32           ; [#uses=1 type=i32]
  %RoundKey_addr_59 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_i_cast, !dbg !202 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey_load_34 = load i32* %RoundKey_addr_59, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_load_1 = load i32* %state_addr_16, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp_84_1_i = xor i32 %state_load_1, %RoundKey_load_34, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp_84_1_i, i32* %state_addr_16, align 4, !dbg !202 ; [debug line = 90:4@208:2]
  %sum3_1_i = or i4 %tmp_i, 2                     ; [#uses=1 type=i4]
  %sum3_1_i_cast = zext i4 %sum3_1_i to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_60 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_1_i_cast, !dbg !202 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey_load_35 = load i32* %RoundKey_addr_60, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_load_2 = load i32* %state_addr_17, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp_84_2_i = xor i32 %state_load_2, %RoundKey_load_35, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp_84_2_i, i32* %state_addr_17, align 4, !dbg !202 ; [debug line = 90:4@208:2]
  %sum3_2_i = or i4 %tmp_i, 3                     ; [#uses=1 type=i4]
  %sum3_2_i_cast = zext i4 %sum3_2_i to i32       ; [#uses=1 type=i32]
  %RoundKey_addr_61 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_2_i_cast, !dbg !202 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey_load_36 = load i32* %RoundKey_addr_61, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state_load_3 = load i32* %state_addr_18, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp_84_3_i = xor i32 %state_load_3, %RoundKey_load_36, !dbg !202 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp_84_3_i, i32* %state_addr_18, align 4, !dbg !202 ; [debug line = 90:4@208:2]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !209) nounwind, !dbg !206 ; [debug line = 86:14@208:2] [debug variable = i]
  br label %1, !dbg !206                          ; [debug line = 86:14@208:2]

AddRoundKey.exit:                                 ; preds = %2, %AddRoundKey.exit.preheader
  %round = phi i4 [ %tmp, %2 ], [ 1, %AddRoundKey.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %round, -6, !dbg !207    ; [#uses=1 type=i1] [debug line = 210:21]
  br i1 %exitcond, label %3, label %2, !dbg !207  ; [debug line = 210:21]

; <label>:2                                       ; preds = %AddRoundKey.exit
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !210 ; [debug line = 211:3]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4) nounwind, !dbg !210 ; [#uses=1 type=i32] [debug line = 211:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !212 ; [debug line = 212:1]
  %round_cast1_cast = zext i4 %round to i6, !dbg !213 ; [#uses=1 type=i6] [debug line = 212:3]
  call fastcc void @SubBytes([16 x i32]* %state, i6 %round_cast1_cast, [240 x i32]* %RoundKey) nounwind, !dbg !213 ; [debug line = 212:3]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_s) nounwind, !dbg !214 ; [#uses=0 type=i32] [debug line = 215:2]
  %tmp = add i4 %round, 1, !dbg !215              ; [#uses=1 type=i4] [debug line = 210:38]
  br label %AddRoundKey.exit, !dbg !215           ; [debug line = 210:38]

; <label>:3                                       ; preds = %AddRoundKey.exit
  call fastcc void @SubBytes([16 x i32]* %state, i6 10, [240 x i32]* %RoundKey) nounwind, !dbg !216 ; [debug line = 218:2]
  ret void, !dbg !217                             ; [debug line = 219:1]
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
!27 = metadata !{i32 786689, metadata !28, metadata !"round", metadata !29, i32 33554529, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !29, i32 97, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 98} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5CSecond", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !38, metadata !39}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !34, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786454, null, metadata !"word", metadata !29, i32 2, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!42 = metadata !{i32 97, i32 36, metadata !28, null}
!43 = metadata !{i32 104, i32 18, metadata !44, null}
!44 = metadata !{i32 786443, metadata !45, i32 103, i32 3, metadata !29, i32 17} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786443, metadata !46, i32 102, i32 3, metadata !29, i32 16} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !47, i32 101, i32 2, metadata !29, i32 15} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !48, i32 100, i32 2, metadata !29, i32 14} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !28, i32 98, i32 1, metadata !29, i32 13} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786689, metadata !28, metadata !"state", null, i32 97, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !34, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !37, metadata !37}
!52 = metadata !{i32 97, i32 20, metadata !28, null}
!53 = metadata !{i32 786689, metadata !28, metadata !"RoundKey", null, i32 97, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !34, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 239}      ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 97, i32 47, metadata !28, null}
!58 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !29, i32 16777219, metadata !38, i32 0, metadata !43} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 786478, i32 0, metadata !29, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !29, i32 3, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 4} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !38, metadata !38}
!62 = metadata !{i32 3, i32 22, metadata !59, metadata !43}
!63 = metadata !{i32 23, i32 2, metadata !64, metadata !43}
!64 = metadata !{i32 786443, metadata !59, i32 4, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786688, metadata !48, metadata !"temp", metadata !29, i32 108, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 110, i32 3, metadata !48, null}
!68 = metadata !{i32 111, i32 3, metadata !48, null}
!69 = metadata !{i32 112, i32 3, metadata !48, null}
!70 = metadata !{i32 113, i32 3, metadata !48, null}
!71 = metadata !{i32 114, i32 3, metadata !48, null}
!72 = metadata !{i32 116, i32 3, metadata !48, null}
!73 = metadata !{i32 117, i32 3, metadata !48, null}
!74 = metadata !{i32 118, i32 3, metadata !48, null}
!75 = metadata !{i32 120, i32 3, metadata !48, null}
!76 = metadata !{i32 121, i32 3, metadata !48, null}
!77 = metadata !{i32 122, i32 3, metadata !48, null}
!78 = metadata !{i32 124, i32 3, metadata !48, null}
!79 = metadata !{i32 125, i32 3, metadata !48, null}
!80 = metadata !{i32 127, i32 3, metadata !48, null}
!81 = metadata !{i32 128, i32 3, metadata !48, null}
!82 = metadata !{i32 130, i32 3, metadata !48, null}
!83 = metadata !{i32 139, i32 3, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 137, i32 2, metadata !29, i32 20} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 136, i32 2, metadata !29, i32 19} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !48, i32 130, i32 17, metadata !29, i32 18} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 140, i32 36, metadata !84, null}
!88 = metadata !{i32 140, i32 77, metadata !84, null}
!89 = metadata !{i32 141, i32 3, metadata !84, null}
!90 = metadata !{i32 141, i32 36, metadata !84, null}
!91 = metadata !{i32 141, i32 77, metadata !84, null}
!92 = metadata !{i32 142, i32 3, metadata !84, null}
!93 = metadata !{i32 142, i32 36, metadata !84, null}
!94 = metadata !{i32 142, i32 77, metadata !84, null}
!95 = metadata !{i32 143, i32 3, metadata !84, null}
!96 = metadata !{i32 143, i32 26, metadata !84, null}
!97 = metadata !{i32 143, i32 67, metadata !84, null}
!98 = metadata !{i32 150, i32 5, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 149, i32 4, metadata !29, i32 24} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !101, i32 148, i32 4, metadata !29, i32 23} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !102, i32 147, i32 3, metadata !29, i32 22} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !86, i32 146, i32 2, metadata !29, i32 21} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 160, i32 6, metadata !104, null}
!104 = metadata !{i32 786443, metadata !105, i32 159, i32 5, metadata !29, i32 28} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 158, i32 5, metadata !29, i32 27} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !107, i32 157, i32 4, metadata !29, i32 26} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !48, i32 156, i32 4, metadata !29, i32 25} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 168, i32 1, metadata !48, null}
!109 = metadata !{i32 786689, metadata !110, metadata !"RoundKey", null, i32 32, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 786478, i32 0, metadata !29, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !29, i32 32, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 33} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !39, metadata !39, metadata !113}
!113 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!114 = metadata !{i32 32, i32 24, metadata !110, null}
!115 = metadata !{i32 786689, metadata !110, metadata !"Key", null, i32 32, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !34, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!119 = metadata !{i32 32, i32 43, metadata !110, null}
!120 = metadata !{i32 40, i32 3, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 39, i32 2, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 38, i32 23, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !110, i32 33, i32 1, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 41, i32 3, metadata !121, null}
!125 = metadata !{i32 42, i32 3, metadata !121, null}
!126 = metadata !{i32 43, i32 3, metadata !121, null}
!127 = metadata !{i32 47, i32 22, metadata !123, null}
!128 = metadata !{i32 48, i32 3, metadata !129, null}
!129 = metadata !{i32 786443, metadata !123, i32 48, i32 2, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 49, i32 1, metadata !129, null}
!131 = metadata !{i32 51, i32 7, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 50, i32 6, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !129, i32 49, i32 6, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786688, metadata !123, metadata !"temp[0]", null, i32 35, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786688, metadata !123, metadata !"temp[1]", null, i32 35, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 786688, metadata !123, metadata !"temp[2]", null, i32 35, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 786688, metadata !123, metadata !"temp[3]", null, i32 35, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 53, i32 6, metadata !129, null}
!139 = metadata !{i32 786688, metadata !123, metadata !"k", metadata !29, i32 35, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 55, i32 8, metadata !141, null}
!141 = metadata !{i32 786443, metadata !129, i32 54, i32 6, metadata !29, i32 7} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 60, i32 16, metadata !141, null}
!143 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !29, i32 16777219, metadata !38, i32 0, metadata !142} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 3, i32 22, metadata !59, metadata !142}
!145 = metadata !{i32 23, i32 2, metadata !64, metadata !142}
!146 = metadata !{i32 61, i32 16, metadata !141, null}
!147 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !29, i32 16777219, metadata !38, i32 0, metadata !146} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 3, i32 22, metadata !59, metadata !146}
!149 = metadata !{i32 23, i32 2, metadata !64, metadata !146}
!150 = metadata !{i32 62, i32 16, metadata !141, null}
!151 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !29, i32 16777219, metadata !38, i32 0, metadata !150} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 3, i32 22, metadata !59, metadata !150}
!153 = metadata !{i32 23, i32 2, metadata !64, metadata !150}
!154 = metadata !{i32 63, i32 16, metadata !141, null}
!155 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !29, i32 16777219, metadata !38, i32 0, metadata !154} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 3, i32 22, metadata !59, metadata !154}
!157 = metadata !{i32 23, i32 2, metadata !64, metadata !154}
!158 = metadata !{i32 64, i32 7, metadata !141, null}
!159 = metadata !{i32 73, i32 6, metadata !129, null}
!160 = metadata !{i32 74, i32 6, metadata !129, null}
!161 = metadata !{i32 75, i32 6, metadata !129, null}
!162 = metadata !{i32 76, i32 6, metadata !129, null}
!163 = metadata !{i32 77, i32 6, metadata !129, null}
!164 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !29, i32 34, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 78, i32 2, metadata !129, null}
!166 = metadata !{i32 79, i32 1, metadata !123, null}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 31, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"state", metadata !171, metadata !"unsigned int", i32 0, i32 31}
!171 = metadata !{metadata !172, metadata !172}
!172 = metadata !{i32 0, i32 3, i32 1}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 31, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"Key", metadata !177, metadata !"unsigned int", i32 0, i32 31}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 31, i32 1}
!179 = metadata !{i32 786689, metadata !180, metadata !"state", null, i32 181, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 786478, i32 0, metadata !29, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !29, i32 181, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 183} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{null, metadata !32, metadata !39}
!183 = metadata !{i32 181, i32 18, metadata !180, null}
!184 = metadata !{i32 786689, metadata !180, metadata !"Key", null, i32 181, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 181, i32 35, metadata !180, null}
!186 = metadata !{i32 786688, metadata !187, metadata !"RoundKey", metadata !29, i32 204, metadata !188, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 786443, metadata !180, i32 183, i32 1, metadata !29, i32 29} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !34, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!189 = metadata !{i32 204, i32 7, metadata !187, null}
!190 = metadata !{i32 206, i32 2, metadata !187, null}
!191 = metadata !{i32 786689, metadata !192, metadata !"state", null, i32 83, metadata !50, i32 0, metadata !195} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 786478, i32 0, metadata !29, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !29, i32 83, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 84} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{null, metadata !38, metadata !32, metadata !39}
!195 = metadata !{i32 208, i32 2, metadata !187, null}
!196 = metadata !{i32 83, i32 33, metadata !192, metadata !195}
!197 = metadata !{i32 786689, metadata !192, metadata !"RoundKey", null, i32 83, metadata !54, i32 0, metadata !195} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 83, i32 50, metadata !192, metadata !195}
!199 = metadata !{i32 86, i32 6, metadata !200, metadata !195}
!200 = metadata !{i32 786443, metadata !201, i32 86, i32 2, metadata !29, i32 9} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 786443, metadata !192, i32 84, i32 1, metadata !29, i32 8} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 90, i32 4, metadata !203, metadata !195}
!203 = metadata !{i32 786443, metadata !204, i32 89, i32 3, metadata !29, i32 12} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 786443, metadata !205, i32 88, i32 23, metadata !29, i32 11} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 786443, metadata !200, i32 87, i32 2, metadata !29, i32 10} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 86, i32 14, metadata !200, metadata !195}
!207 = metadata !{i32 210, i32 21, metadata !208, null}
!208 = metadata !{i32 786443, metadata !187, i32 210, i32 17, metadata !29, i32 30} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 786688, metadata !201, metadata !"i", metadata !29, i32 85, metadata !38, i32 0, metadata !195} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 211, i32 3, metadata !211, null}
!211 = metadata !{i32 786443, metadata !208, i32 211, i32 2, metadata !29, i32 31} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 212, i32 1, metadata !211, null}
!213 = metadata !{i32 212, i32 3, metadata !211, null}
!214 = metadata !{i32 215, i32 2, metadata !211, null}
!215 = metadata !{i32 210, i32 38, metadata !208, null}
!216 = metadata !{i32 218, i32 2, metadata !187, null}
!217 = metadata !{i32 219, i32 1, metadata !187, null}
