; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/Second/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16" ; [#uses=20 type=[256 x i8]*]
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB" ; [#uses=1 type=[255 x i8]*]
@Cipher.str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"Cipher_label34\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [20 x i8] c"KeyExpansion_label4\00", align 1 ; [#uses=3 type=[20 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=48]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=2]
define internal fastcc void @SubBytes([4 x [4 x i32]]* nocapture %state, i6 %round, [240 x i32]* %RoundKey) {
.preheader12.preheader.0:
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !59), !dbg !62 ; [debug line = 97:20] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i6 %round}, i64 0, metadata !63), !dbg !64 ; [debug line = 97:36] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !65), !dbg !69 ; [debug line = 97:47] [debug variable = RoundKey]
  %state.addr = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 0, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign = load i32* %state.addr, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.cast = zext i8 %sbox.load to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox.load.cast, i32* %state.addr, align 4, !dbg !70 ; [debug line = 104:18]
  %state.addr.1 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 1, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.1 = load i32* %state.addr.1, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.1}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.1, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.1.cast = zext i8 %sbox.load.1 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox.load.1.cast, i32* %state.addr.1, align 4, !dbg !70 ; [debug line = 104:18]
  %state.addr.2 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 2, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.2 = load i32* %state.addr.2, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.2}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.2, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.2.cast = zext i8 %sbox.load.2 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox.load.2.cast, i32* %state.addr.2, align 4, !dbg !70 ; [debug line = 104:18]
  %state.addr.3 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 3, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.3 = load i32* %state.addr.3, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.3}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.3, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.3.cast = zext i8 %sbox.load.3 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  store i32 %sbox.load.3.cast, i32* %state.addr.3, align 4, !dbg !70 ; [debug line = 104:18]
  %state.addr.4 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 0, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.4 = load i32* %state.addr.4, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.4}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.4 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.4, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp = load i8* %sbox.addr.4, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %state.addr.5 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 1, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.5 = load i32* %state.addr.5, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.5}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.5 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.5, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.5.cast = zext i8 %sbox.load.5 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.6 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 2, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.6 = load i32* %state.addr.6, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.6}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.6 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.6, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.6.cast = zext i8 %sbox.load.6 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.7 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 3, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.7 = load i32* %state.addr.7, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.7}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.7 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.7, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 23:2@104:18]
  %sbox.load.7.cast = zext i8 %sbox.load.7 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.8 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 0, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.8 = load i32* %state.addr.8, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.8}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.8 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.8, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp.1 = load i8* %sbox.addr.8, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state.addr.9 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 1, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.9 = load i32* %state.addr.9, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.9}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.9 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.9, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp.2 = load i8* %sbox.addr.9, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state.addr.10 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 2, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.10 = load i32* %state.addr.10, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.10}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.10 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.10, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox.load.10.cast = zext i8 %sbox.load.10 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.11 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 3, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.11 = load i32* %state.addr.11, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.11}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.11 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.11, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox.load.11.cast = zext i8 %sbox.load.11 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.12 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 0, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.12 = load i32* %state.addr.12, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.12}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.12 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.12, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %temp.3 = load i8* %sbox.addr.12, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %state.addr.13 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 1, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.13 = load i32* %state.addr.13, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.13}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.13 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.13, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox.load.13.cast = zext i8 %sbox.load.13 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  %state.addr.14 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 2, !dbg !70 ; [#uses=4 type=i32*] [debug line = 104:18]
  %num.assign.14 = load i32* %state.addr.14, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.14}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.14 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.14, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox.load.14.cast = zext i8 %sbox.load.14 to i32, !dbg !78 ; [#uses=1 type=i32] [debug line = 23:2@104:18]
  %state.addr.15 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 3, !dbg !70 ; [#uses=2 type=i32*] [debug line = 104:18]
  %num.assign.15 = load i32* %state.addr.15, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 104:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.15}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 3:22@104:18] [debug variable = num]
  %sbox.addr.15 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.15, !dbg !78 ; [#uses=1 type=i8*] [debug line = 23:2@104:18]
  %sbox.load.15 = load i8* %sbox.addr.15, align 1, !dbg !78 ; [#uses=5 type=i8] [debug line = 23:2@104:18]
  %sbox.load.15.cast = zext i8 %sbox.load.15 to i32, !dbg !78 ; [#uses=2 type=i32] [debug line = 23:2@104:18]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !80), !dbg !82 ; [debug line = 110:3] [debug variable = temp]
  store i32 %sbox.load.5.cast, i32* %state.addr.4, align 4, !dbg !83 ; [debug line = 111:3]
  store i32 %sbox.load.6.cast, i32* %state.addr.5, align 4, !dbg !84 ; [debug line = 112:3]
  store i32 %sbox.load.7.cast, i32* %state.addr.6, align 4, !dbg !85 ; [debug line = 113:3]
  %tmp = zext i8 %temp to i32, !dbg !86           ; [#uses=2 type=i32] [debug line = 114:3]
  store i32 %tmp, i32* %state.addr.7, align 4, !dbg !86 ; [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !80), !dbg !87 ; [debug line = 116:3] [debug variable = temp]
  store i32 %sbox.load.10.cast, i32* %state.addr.8, align 4, !dbg !88 ; [debug line = 117:3]
  %tmp.1 = zext i8 %temp.1 to i32, !dbg !89       ; [#uses=2 type=i32] [debug line = 118:3]
  store i32 %tmp.1, i32* %state.addr.10, align 4, !dbg !89 ; [debug line = 118:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !80), !dbg !90 ; [debug line = 120:3] [debug variable = temp]
  store i32 %sbox.load.11.cast, i32* %state.addr.9, align 4, !dbg !91 ; [debug line = 121:3]
  %tmp.2 = zext i8 %temp.2 to i32, !dbg !92       ; [#uses=2 type=i32] [debug line = 122:3]
  store i32 %tmp.2, i32* %state.addr.11, align 4, !dbg !92 ; [debug line = 122:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.3}, i64 0, metadata !80), !dbg !93 ; [debug line = 124:3] [debug variable = temp]
  store i32 %sbox.load.15.cast, i32* %state.addr.12, align 4, !dbg !94 ; [debug line = 125:3]
  store i32 %sbox.load.13.cast, i32* %state.addr.14, align 4, !dbg !95 ; [debug line = 127:3]
  %tmp.3 = zext i8 %temp.3 to i32, !dbg !96       ; [#uses=2 type=i32] [debug line = 128:3]
  store i32 %tmp.3, i32* %state.addr.13, align 4, !dbg !96 ; [debug line = 128:3]
  %round.cast = trunc i6 %round to i5, !dbg !97   ; [#uses=1 type=i5] [debug line = 130:3]
  %tmp.4 = icmp slt i5 %round.cast, 10, !dbg !97  ; [#uses=1 type=i1] [debug line = 130:3]
  br i1 %tmp.4, label %.preheader11.0, label %.preheader.preheader.0, !dbg !97 ; [debug line = 130:3]

.preheader11.0:                                   ; preds = %.preheader12.preheader.0
  %tmp.7 = xor i8 %sbox.load.5, %sbox.load        ; [#uses=3 type=i8]
  %tmp1 = xor i8 %tmp.7, %sbox.load.15, !dbg !98  ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp = xor i8 %tmp1, %sbox.load.10, !dbg !98    ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp. = shl i8 %tmp.7, 1, !dbg !102             ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.5 = lshr i8 %tmp.7, 7, !dbg !102           ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.6 = trunc i8 %tmp.5 to i1, !dbg !102       ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp.71.cast = select i1 %tmp.6, i8 27, i8 0    ; [#uses=1 type=i8]
  %tmp2 = xor i8 %tmp., %Tmp, !dbg !103           ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp.9 = xor i8 %tmp2, %tmp.71.cast, !dbg !103  ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm.2 = xor i8 %sbox.load.10, %sbox.load.5, !dbg !104 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp.10 = shl i8 %Tm.2, 1, !dbg !105            ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.11 = lshr i8 %Tm.2, 7, !dbg !105           ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.12 = trunc i8 %tmp.11 to i1, !dbg !105     ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp.18.cast = select i1 %tmp.12, i8 27, i8 0   ; [#uses=1 type=i8]
  %tmp3 = xor i8 %tmp.10, %Tmp, !dbg !106         ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp.13 = xor i8 %tmp3, %tmp.18.cast, !dbg !106 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm.4 = xor i8 %sbox.load.15, %sbox.load.10, !dbg !107 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp.14 = shl i8 %Tm.4, 1, !dbg !108            ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.15 = lshr i8 %Tm.4, 7, !dbg !108           ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.16 = trunc i8 %tmp.15 to i1, !dbg !108     ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp.25.cast = select i1 %tmp.16, i8 27, i8 0   ; [#uses=1 type=i8]
  %tmp4 = xor i8 %Tmp, %tmp.25.cast, !dbg !109    ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.17 = xor i8 %tmp4, %tmp.14, !dbg !109      ; [#uses=1 type=i8] [debug line = 142:77]
  %Tm.6 = xor i8 %sbox.load.15, %sbox.load, !dbg !110 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp.18 = shl i8 %Tm.6, 1, !dbg !111            ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.19 = lshr i8 %Tm.6, 7, !dbg !111           ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.20 = trunc i8 %tmp.19 to i1, !dbg !111     ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp.32.cast = select i1 %tmp.20, i8 27, i8 0   ; [#uses=1 type=i8]
  %tmp5 = xor i8 %Tmp, %tmp.32.cast, !dbg !112    ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.21 = xor i8 %tmp5, %tmp.18, !dbg !112      ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.22 = xor i8 %sbox.load.6, %sbox.load.1     ; [#uses=3 type=i8]
  %tmp6 = xor i8 %tmp.22, %temp.3, !dbg !98       ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp.1 = xor i8 %tmp6, %sbox.load.11, !dbg !98  ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp.7.1 = shl i8 %tmp.22, 1, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.23 = lshr i8 %tmp.22, 7, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.24 = trunc i8 %tmp.23 to i1, !dbg !102     ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp.11.1.cast = select i1 %tmp.24, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp7 = xor i8 %tmp.7.1, %Tmp.1, !dbg !103      ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp.12.1 = xor i8 %tmp7, %tmp.11.1.cast, !dbg !103 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm.2.1 = xor i8 %sbox.load.11, %sbox.load.6, !dbg !104 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp.16.1 = shl i8 %Tm.2.1, 1, !dbg !105        ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.25 = lshr i8 %Tm.2.1, 7, !dbg !105         ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.26 = trunc i8 %tmp.25 to i1, !dbg !105     ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp.18.1.cast = select i1 %tmp.26, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp8 = xor i8 %tmp.16.1, %Tmp.1, !dbg !106     ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp.19.1 = xor i8 %tmp8, %tmp.18.1.cast, !dbg !106 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm.4.1 = xor i8 %temp.3, %sbox.load.11, !dbg !107 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp.23.1 = shl i8 %Tm.4.1, 1, !dbg !108        ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.27 = lshr i8 %Tm.4.1, 7, !dbg !108         ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.28 = trunc i8 %tmp.27 to i1, !dbg !108     ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp.25.1.cast = select i1 %tmp.28, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp9 = xor i8 %Tmp.1, %tmp.25.1.cast, !dbg !109 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.26.1 = xor i8 %tmp9, %tmp.23.1, !dbg !109  ; [#uses=1 type=i8] [debug line = 142:77]
  %Tm.6.1 = xor i8 %temp.3, %sbox.load.1, !dbg !110 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp.30.1 = shl i8 %Tm.6.1, 1, !dbg !111        ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.29 = lshr i8 %Tm.6.1, 7, !dbg !111         ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.30 = trunc i8 %tmp.29 to i1, !dbg !111     ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp.32.1.cast = select i1 %tmp.30, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp10 = xor i8 %tmp.30.1, %Tmp.1, !dbg !112    ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp11 = xor i8 %tmp.32.1.cast, %temp.3, !dbg !112 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.35. = xor i8 %tmp11, %tmp10, !dbg !112     ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.35.1 = zext i8 %tmp.35. to i32, !dbg !112  ; [#uses=1 type=i32] [debug line = 143:67]
  %tmp.31 = xor i8 %sbox.load.7, %sbox.load.2     ; [#uses=3 type=i8]
  %tmp12 = xor i8 %tmp.31, %sbox.load.13, !dbg !98 ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp.2 = xor i8 %tmp12, %temp.1, !dbg !98       ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp.7.2 = shl i8 %tmp.31, 1, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.32 = lshr i8 %tmp.31, 7, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.33 = trunc i8 %tmp.32 to i1, !dbg !102     ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp.11.2.cast = select i1 %tmp.33, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp13 = xor i8 %tmp.7.2, %Tmp.2, !dbg !103     ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp.12.2 = xor i8 %tmp13, %tmp.11.2.cast, !dbg !103 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm.2.2 = xor i8 %temp.1, %sbox.load.7, !dbg !104 ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp.16.2 = shl i8 %Tm.2.2, 1, !dbg !105        ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.34 = lshr i8 %Tm.2.2, 7, !dbg !105         ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.35 = trunc i8 %tmp.34 to i1, !dbg !105     ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp.18.2.cast = select i1 %tmp.35, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp14 = xor i8 %tmp.16.2, %Tmp.2, !dbg !106    ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp.19.2 = xor i8 %tmp14, %tmp.18.2.cast, !dbg !106 ; [#uses=1 type=i8] [debug line = 141:77]
  %Tm.4.2 = xor i8 %sbox.load.13, %temp.1, !dbg !107 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp.23.2 = shl i8 %Tm.4.2, 1, !dbg !108        ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.36 = lshr i8 %Tm.4.2, 7, !dbg !108         ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.37 = trunc i8 %tmp.36 to i1, !dbg !108     ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp.25.2.cast = select i1 %tmp.37, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp15 = xor i8 %tmp.23.2, %Tmp.2, !dbg !109    ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp16 = xor i8 %tmp.25.2.cast, %temp.1, !dbg !109 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.28. = xor i8 %tmp16, %tmp15, !dbg !109     ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.28.2 = zext i8 %tmp.28. to i32, !dbg !109  ; [#uses=1 type=i32] [debug line = 142:77]
  %Tm.6.2 = xor i8 %sbox.load.13, %sbox.load.2, !dbg !110 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp.30.2 = shl i8 %Tm.6.2, 1, !dbg !111        ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.38 = lshr i8 %Tm.6.2, 7, !dbg !111         ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.39 = trunc i8 %tmp.38 to i1, !dbg !111     ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp.32.2.cast = select i1 %tmp.39, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp17 = xor i8 %Tmp.2, %tmp.32.2.cast, !dbg !112 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.33.2 = xor i8 %tmp17, %tmp.30.2, !dbg !112 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.40 = xor i8 %temp, %sbox.load.3            ; [#uses=3 type=i8]
  %tmp18 = xor i8 %tmp.40, %sbox.load.14, !dbg !98 ; [#uses=1 type=i8] [debug line = 139:3]
  %Tmp.3 = xor i8 %tmp18, %temp.2, !dbg !98       ; [#uses=4 type=i8] [debug line = 139:3]
  %tmp.7.3 = shl i8 %tmp.40, 1, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.41 = lshr i8 %tmp.40, 7, !dbg !102         ; [#uses=1 type=i8] [debug line = 140:36]
  %tmp.42 = trunc i8 %tmp.41 to i1, !dbg !102     ; [#uses=1 type=i1] [debug line = 140:36]
  %tmp.11.3.cast = select i1 %tmp.42, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp19 = xor i8 %tmp.7.3, %Tmp.3, !dbg !103     ; [#uses=1 type=i8] [debug line = 140:77]
  %tmp.12.3 = xor i8 %tmp19, %tmp.11.3.cast, !dbg !103 ; [#uses=1 type=i8] [debug line = 140:77]
  %Tm.2.3 = xor i8 %temp.2, %temp, !dbg !104      ; [#uses=2 type=i8] [debug line = 141:3]
  %tmp.16.3 = shl i8 %Tm.2.3, 1, !dbg !105        ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.43 = lshr i8 %Tm.2.3, 7, !dbg !105         ; [#uses=1 type=i8] [debug line = 141:36]
  %tmp.44 = trunc i8 %tmp.43 to i1, !dbg !105     ; [#uses=1 type=i1] [debug line = 141:36]
  %tmp.18.3.cast = select i1 %tmp.44, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp20 = xor i8 %tmp.18.3.cast, %tmp.16.3, !dbg !106 ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp21 = xor i8 %Tmp.3, %temp, !dbg !106        ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp.21. = xor i8 %tmp21, %tmp20, !dbg !106     ; [#uses=1 type=i8] [debug line = 141:77]
  %tmp.21.3 = zext i8 %tmp.21. to i32, !dbg !106  ; [#uses=1 type=i32] [debug line = 141:77]
  %Tm.4.3 = xor i8 %sbox.load.14, %temp.2, !dbg !107 ; [#uses=2 type=i8] [debug line = 142:3]
  %tmp.23.3 = shl i8 %Tm.4.3, 1, !dbg !108        ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.45 = lshr i8 %Tm.4.3, 7, !dbg !108         ; [#uses=1 type=i8] [debug line = 142:36]
  %tmp.46 = trunc i8 %tmp.45 to i1, !dbg !108     ; [#uses=1 type=i1] [debug line = 142:36]
  %tmp.25.3.cast = select i1 %tmp.46, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp22 = xor i8 %tmp.23.3, %Tmp.3, !dbg !109    ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp23 = xor i8 %tmp.25.3.cast, %temp.2, !dbg !109 ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.28.4 = xor i8 %tmp23, %tmp22, !dbg !109    ; [#uses=1 type=i8] [debug line = 142:77]
  %tmp.28.3 = zext i8 %tmp.28.4 to i32, !dbg !109 ; [#uses=1 type=i32] [debug line = 142:77]
  %Tm.6.3 = xor i8 %sbox.load.14, %sbox.load.3, !dbg !110 ; [#uses=2 type=i8] [debug line = 143:3]
  %tmp.30.3 = shl i8 %Tm.6.3, 1, !dbg !111        ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.47 = lshr i8 %Tm.6.3, 7, !dbg !111         ; [#uses=1 type=i8] [debug line = 143:26]
  %tmp.48 = trunc i8 %tmp.47 to i1, !dbg !111     ; [#uses=1 type=i1] [debug line = 143:26]
  %tmp.32.3.cast = select i1 %tmp.48, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp24 = xor i8 %Tmp.3, %tmp.32.3.cast, !dbg !112 ; [#uses=1 type=i8] [debug line = 143:67]
  %tmp.33.3 = xor i8 %tmp24, %tmp.30.3, !dbg !112 ; [#uses=1 type=i8] [debug line = 143:67]
  %round.cast2 = zext i6 %round to i8, !dbg !113  ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp.8 = shl i8 %round.cast2, 4, !dbg !113      ; [#uses=16 type=i8] [debug line = 150:5]
  %tmp.8.cast = zext i8 %tmp.8 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey.addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.8.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load = load i32* %RoundKey.addr, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp25 = xor i8 %sbox.load, %tmp.9, !dbg !113   ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp25.cast = zext i8 %tmp25 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.49 = xor i32 %tmp25.cast, %RoundKey.load, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.49, i32* %state.addr, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.0. = or i8 %tmp.8, 1                     ; [#uses=1 type=i8]
  %sum29.0..cast = zext i8 %sum29.0. to i32       ; [#uses=1 type=i32]
  %RoundKey.addr.1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.0..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.1 = load i32* %RoundKey.addr.1, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp26 = xor i8 %sbox.load.5, %tmp.13, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp26.cast = zext i8 %tmp26 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.0.1 = xor i32 %tmp26.cast, %RoundKey.load.1, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.0.1, i32* %state.addr.4, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.0.1 = or i8 %tmp.8, 2                    ; [#uses=1 type=i8]
  %sum29.0.1.cast = zext i8 %sum29.0.1 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.0.1.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.2 = load i32* %RoundKey.addr.2, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp27 = xor i8 %sbox.load.10, %tmp.17, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp27.cast = zext i8 %tmp27 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.0.2 = xor i32 %tmp27.cast, %RoundKey.load.2, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.0.2, i32* %state.addr.8, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.0.2 = or i8 %tmp.8, 3                    ; [#uses=1 type=i8]
  %sum29.0.2.cast = zext i8 %sum29.0.2 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.0.2.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.3 = load i32* %RoundKey.addr.3, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp28 = xor i8 %sbox.load.15, %tmp.21, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp28.cast = zext i8 %tmp28 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.0.3 = xor i32 %tmp28.cast, %RoundKey.load.3, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.0.3, i32* %state.addr.12, align 4, !dbg !113 ; [debug line = 150:5]
  %tmp.41.1. = or i8 %tmp.8, 4, !dbg !113         ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp.41.1..cast = zext i8 %tmp.41.1. to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey.addr.4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.41.1..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.4 = load i32* %RoundKey.addr.4, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp29 = xor i8 %sbox.load.1, %tmp.12.1, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp29.cast = zext i8 %tmp29 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.1 = xor i32 %tmp29.cast, %RoundKey.load.4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.1, i32* %state.addr.1, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.1. = or i8 %tmp.8, 5                     ; [#uses=1 type=i8]
  %sum29.1..cast = zext i8 %sum29.1. to i32       ; [#uses=1 type=i32]
  %RoundKey.addr.5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.1..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.5 = load i32* %RoundKey.addr.5, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp30 = xor i8 %sbox.load.6, %tmp.19.1, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp30.cast = zext i8 %tmp30 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.1.1 = xor i32 %tmp30.cast, %RoundKey.load.5, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.1.1, i32* %state.addr.5, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.1.1 = or i8 %tmp.8, 6                    ; [#uses=1 type=i8]
  %sum29.1.1.cast = zext i8 %sum29.1.1 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.1.1.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.6 = load i32* %RoundKey.addr.6, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp31 = xor i8 %sbox.load.11, %tmp.26.1, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp31.cast = zext i8 %tmp31 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.1.2 = xor i32 %tmp31.cast, %RoundKey.load.6, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.1.2, i32* %state.addr.9, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.1.2 = or i8 %tmp.8, 7                    ; [#uses=1 type=i8]
  %sum29.1.2.cast = zext i8 %sum29.1.2 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.1.2.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.7 = load i32* %RoundKey.addr.7, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.1.3 = xor i32 %RoundKey.load.7, %tmp.35.1, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.1.3, i32* %state.addr.13, align 4, !dbg !113 ; [debug line = 150:5]
  %tmp.41.2. = or i8 %tmp.8, 8, !dbg !113         ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp.41.2..cast = zext i8 %tmp.41.2. to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey.addr.8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.41.2..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.8 = load i32* %RoundKey.addr.8, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp32 = xor i8 %sbox.load.2, %tmp.12.2, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp32.cast = zext i8 %tmp32 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.2 = xor i32 %tmp32.cast, %RoundKey.load.8, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.2, i32* %state.addr.2, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.2. = or i8 %tmp.8, 9                     ; [#uses=1 type=i8]
  %sum29.2..cast = zext i8 %sum29.2. to i32       ; [#uses=1 type=i32]
  %RoundKey.addr.9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.2..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.9 = load i32* %RoundKey.addr.9, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp33 = xor i8 %sbox.load.7, %tmp.19.2, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp33.cast = zext i8 %tmp33 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.2.1 = xor i32 %tmp33.cast, %RoundKey.load.9, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.2.1, i32* %state.addr.6, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.2.1 = or i8 %tmp.8, 10                   ; [#uses=1 type=i8]
  %sum29.2.1.cast = zext i8 %sum29.2.1 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.2.1.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.10 = load i32* %RoundKey.addr.10, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.2.2 = xor i32 %RoundKey.load.10, %tmp.28.2, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.2.2, i32* %state.addr.10, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.2.2 = or i8 %tmp.8, 11                   ; [#uses=1 type=i8]
  %sum29.2.2.cast = zext i8 %sum29.2.2 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.2.2.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.11 = load i32* %RoundKey.addr.11, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp34 = xor i8 %sbox.load.13, %tmp.33.2, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp34.cast = zext i8 %tmp34 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.2.3 = xor i32 %tmp34.cast, %RoundKey.load.11, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.2.3, i32* %state.addr.14, align 4, !dbg !113 ; [debug line = 150:5]
  %tmp.41.3. = or i8 %tmp.8, 12, !dbg !113        ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp.41.3..cast = zext i8 %tmp.41.3. to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %RoundKey.addr.12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.41.3..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.12 = load i32* %RoundKey.addr.12, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp35 = xor i8 %sbox.load.3, %tmp.12.3, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp35.cast = zext i8 %tmp35 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.3 = xor i32 %tmp35.cast, %RoundKey.load.12, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.3, i32* %state.addr.3, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.3. = or i8 %tmp.8, 13                    ; [#uses=1 type=i8]
  %sum29.3..cast = zext i8 %sum29.3. to i32       ; [#uses=1 type=i32]
  %RoundKey.addr.13 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.3..cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.13 = load i32* %RoundKey.addr.13, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.3.1 = xor i32 %RoundKey.load.13, %tmp.21.3, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.3.1, i32* %state.addr.7, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.3.1 = or i8 %tmp.8, 14                   ; [#uses=1 type=i8]
  %sum29.3.1.cast = zext i8 %sum29.3.1 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.14 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.3.1.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.14 = load i32* %RoundKey.addr.14, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.3.2 = xor i32 %RoundKey.load.14, %tmp.28.3, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  store i32 %tmp.43.3.2, i32* %state.addr.11, align 4, !dbg !113 ; [debug line = 150:5]
  %sum29.3.2 = or i8 %tmp.8, 15                   ; [#uses=1 type=i8]
  %sum29.3.2.cast = zext i8 %sum29.3.2 to i32     ; [#uses=1 type=i32]
  %RoundKey.addr.15 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29.3.2.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 150:5]
  %RoundKey.load.15 = load i32* %RoundKey.addr.15, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp36 = xor i8 %sbox.load.14, %tmp.33.3, !dbg !113 ; [#uses=1 type=i8] [debug line = 150:5]
  %tmp36.cast = zext i8 %tmp36 to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 150:5]
  %tmp.43.3.3 = xor i32 %tmp36.cast, %RoundKey.load.15, !dbg !113 ; [#uses=1 type=i32] [debug line = 150:5]
  br label %.loopexit

.preheader.preheader.0:                           ; preds = %.preheader12.preheader.0
  %RoundKey.addr.16 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 160, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.16 = load i32* %RoundKey.addr.16, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.50 = xor i32 %sbox.load.cast, %RoundKey.load.16, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.50, i32* %state.addr, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.17 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 161, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.17 = load i32* %RoundKey.addr.17, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.0.1 = xor i32 %sbox.load.5.cast, %RoundKey.load.17, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.0.1, i32* %state.addr.4, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.18 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 162, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.18 = load i32* %RoundKey.addr.18, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.0.2 = xor i32 %sbox.load.10.cast, %RoundKey.load.18, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.0.2, i32* %state.addr.8, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.19 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 163, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.19 = load i32* %RoundKey.addr.19, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.0.3 = xor i32 %sbox.load.15.cast, %RoundKey.load.19, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.0.3, i32* %state.addr.12, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.20 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 164, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.20 = load i32* %RoundKey.addr.20, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.1 = xor i32 %sbox.load.1.cast, %RoundKey.load.20, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.1, i32* %state.addr.1, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.21 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 165, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.21 = load i32* %RoundKey.addr.21, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.1.1 = xor i32 %sbox.load.6.cast, %RoundKey.load.21, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.1.1, i32* %state.addr.5, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.22 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 166, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.22 = load i32* %RoundKey.addr.22, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.1.2 = xor i32 %sbox.load.11.cast, %RoundKey.load.22, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.1.2, i32* %state.addr.9, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.23 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 167, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.23 = load i32* %RoundKey.addr.23, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.1.3 = xor i32 %RoundKey.load.23, %tmp.3, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.1.3, i32* %state.addr.13, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.24 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 168, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.24 = load i32* %RoundKey.addr.24, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.2 = xor i32 %sbox.load.2.cast, %RoundKey.load.24, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.2, i32* %state.addr.2, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.25 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 169, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.25 = load i32* %RoundKey.addr.25, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.2.1 = xor i32 %sbox.load.7.cast, %RoundKey.load.25, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.2.1, i32* %state.addr.6, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.26 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 170, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.26 = load i32* %RoundKey.addr.26, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.2.2 = xor i32 %RoundKey.load.26, %tmp.1, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.2.2, i32* %state.addr.10, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.27 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 171, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.27 = load i32* %RoundKey.addr.27, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.2.3 = xor i32 %sbox.load.13.cast, %RoundKey.load.27, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.2.3, i32* %state.addr.14, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.28 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 172, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.28 = load i32* %RoundKey.addr.28, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.3 = xor i32 %sbox.load.3.cast, %RoundKey.load.28, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.3, i32* %state.addr.3, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.29 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 173, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.29 = load i32* %RoundKey.addr.29, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.3.1 = xor i32 %RoundKey.load.29, %tmp, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.3.1, i32* %state.addr.7, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.30 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 174, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.30 = load i32* %RoundKey.addr.30, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.3.2 = xor i32 %RoundKey.load.30, %tmp.2, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  store i32 %tmp.40.3.2, i32* %state.addr.11, align 4, !dbg !118 ; [debug line = 160:6]
  %RoundKey.addr.31 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 175, !dbg !118 ; [#uses=1 type=i32*] [debug line = 160:6]
  %RoundKey.load.31 = load i32* %RoundKey.addr.31, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  %tmp.40.3.3 = xor i32 %sbox.load.14.cast, %RoundKey.load.31, !dbg !118 ; [#uses=1 type=i32] [debug line = 160:6]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader.0, %.preheader11.0
  %storemerge = phi i32 [ %tmp.40.3.3, %.preheader.preheader.0 ], [ %tmp.43.3.3, %.preheader11.0 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %state.addr.15, align 4, !dbg !113 ; [debug line = 150:5]
  ret void, !dbg !123                             ; [debug line = 168:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* nocapture %Key) {
.preheader.preheader:
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !124), !dbg !125 ; [debug line = 32:24] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !126), !dbg !130 ; [debug line = 32:43] [debug variable = Key]
  %Key.addr = getelementptr [32 x i32]* %Key, i32 0, i32 0, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key.load = load i32* %Key.addr, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey.addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key.load, i32* %RoundKey.addr, align 4, !dbg !131 ; [debug line = 40:3]
  %Key.addr.1 = getelementptr [32 x i32]* %Key, i32 0, i32 1, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key.load.1 = load i32* %Key.addr.1, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey.addr.32 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 1, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key.load.1, i32* %RoundKey.addr.32, align 4, !dbg !135 ; [debug line = 41:3]
  %Key.addr.2 = getelementptr [32 x i32]* %Key, i32 0, i32 2, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key.load.2 = load i32* %Key.addr.2, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey.addr.33 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 2, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key.load.2, i32* %RoundKey.addr.33, align 4, !dbg !136 ; [debug line = 42:3]
  %Key.addr.3 = getelementptr [32 x i32]* %Key, i32 0, i32 3, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load.3 = load i32* %Key.addr.3, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey.addr.34 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 3, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load.3, i32* %RoundKey.addr.34, align 4, !dbg !137 ; [debug line = 43:3]
  %Key.addr.4 = getelementptr [32 x i32]* %Key, i32 0, i32 4, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key.load.4 = load i32* %Key.addr.4, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey.addr.35 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 4, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key.load.4, i32* %RoundKey.addr.35, align 4, !dbg !131 ; [debug line = 40:3]
  %Key.addr.5 = getelementptr [32 x i32]* %Key, i32 0, i32 5, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key.load.5 = load i32* %Key.addr.5, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey.addr.36 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 5, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key.load.5, i32* %RoundKey.addr.36, align 4, !dbg !135 ; [debug line = 41:3]
  %Key.addr.6 = getelementptr [32 x i32]* %Key, i32 0, i32 6, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key.load.6 = load i32* %Key.addr.6, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey.addr.37 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 6, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key.load.6, i32* %RoundKey.addr.37, align 4, !dbg !136 ; [debug line = 42:3]
  %Key.addr.7 = getelementptr [32 x i32]* %Key, i32 0, i32 7, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load.7 = load i32* %Key.addr.7, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey.addr.38 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 7, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load.7, i32* %RoundKey.addr.38, align 4, !dbg !137 ; [debug line = 43:3]
  %Key.addr.8 = getelementptr [32 x i32]* %Key, i32 0, i32 8, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key.load.8 = load i32* %Key.addr.8, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey.addr.39 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 8, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key.load.8, i32* %RoundKey.addr.39, align 4, !dbg !131 ; [debug line = 40:3]
  %Key.addr.9 = getelementptr [32 x i32]* %Key, i32 0, i32 9, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key.load.9 = load i32* %Key.addr.9, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey.addr.40 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 9, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key.load.9, i32* %RoundKey.addr.40, align 4, !dbg !135 ; [debug line = 41:3]
  %Key.addr.10 = getelementptr [32 x i32]* %Key, i32 0, i32 10, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key.load.10 = load i32* %Key.addr.10, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey.addr.41 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 10, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key.load.10, i32* %RoundKey.addr.41, align 4, !dbg !136 ; [debug line = 42:3]
  %Key.addr.11 = getelementptr [32 x i32]* %Key, i32 0, i32 11, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load.11 = load i32* %Key.addr.11, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey.addr.42 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 11, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load.11, i32* %RoundKey.addr.42, align 4, !dbg !137 ; [debug line = 43:3]
  %Key.addr.12 = getelementptr [32 x i32]* %Key, i32 0, i32 12, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  %Key.load.12 = load i32* %Key.addr.12, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 40:3]
  %RoundKey.addr.43 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 12, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:3]
  store i32 %Key.load.12, i32* %RoundKey.addr.43, align 4, !dbg !131 ; [debug line = 40:3]
  %Key.addr.13 = getelementptr [32 x i32]* %Key, i32 0, i32 13, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  %Key.load.13 = load i32* %Key.addr.13, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 41:3]
  %RoundKey.addr.44 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 13, !dbg !135 ; [#uses=1 type=i32*] [debug line = 41:3]
  store i32 %Key.load.13, i32* %RoundKey.addr.44, align 4, !dbg !135 ; [debug line = 41:3]
  %Key.addr.14 = getelementptr [32 x i32]* %Key, i32 0, i32 14, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  %Key.load.14 = load i32* %Key.addr.14, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 42:3]
  %RoundKey.addr.45 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 14, !dbg !136 ; [#uses=1 type=i32*] [debug line = 42:3]
  store i32 %Key.load.14, i32* %RoundKey.addr.45, align 4, !dbg !136 ; [debug line = 42:3]
  %Key.addr.15 = getelementptr [32 x i32]* %Key, i32 0, i32 15, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load.15 = load i32* %Key.addr.15, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey.addr.46 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 15, !dbg !137 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load.15, i32* %RoundKey.addr.46, align 4, !dbg !137 ; [debug line = 43:3]
  br label %.preheader, !dbg !138                 ; [debug line = 47:22]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i.1 = phi i6 [ %i, %_ifconv ], [ 4, %.preheader.preheader ] ; [#uses=5 type=i6]
  %i.1.cast3 = trunc i6 %i.1 to i2, !dbg !138     ; [#uses=1 type=i2] [debug line = 47:22]
  %i.1.cast1 = zext i6 %i.1 to i8, !dbg !138      ; [#uses=1 type=i8] [debug line = 47:22]
  %exitcond1 = icmp eq i6 %i.1, -20, !dbg !138    ; [#uses=1 type=i1] [debug line = 47:22]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %2, label %_ifconv, !dbg !138 ; [debug line = 47:22]

_ifconv:                                          ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @.str2) nounwind, !dbg !139 ; [debug line = 48:3]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @.str2), !dbg !139 ; [#uses=1 type=i32] [debug line = 48:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !141 ; [debug line = 49:1]
  %tmp. = shl nuw i8 %i.1.cast1, 2, !dbg !142     ; [#uses=12 type=i8] [debug line = 51:7]
  %tmp..cast = zext i8 %tmp. to i32, !dbg !142    ; [#uses=1 type=i32] [debug line = 51:7]
  %sum8 = add i8 %tmp., -4                        ; [#uses=1 type=i8]
  %sum8.cast = zext i8 %sum8 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.47 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8.cast, !dbg !142 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey.load = load i32* %RoundKey.addr.47, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 51:7]
  %"temp[0].3" = trunc i32 %RoundKey.load to i8, !dbg !142 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].3"}, i64 0, metadata !145), !dbg !142 ; [debug line = 51:7] [debug variable = temp[0]]
  %sum8.1 = add i8 %tmp., -3                      ; [#uses=1 type=i8]
  %sum8.1.cast = zext i8 %sum8.1 to i32           ; [#uses=1 type=i32]
  %RoundKey.addr.48 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8.1.cast, !dbg !142 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey.load.1 = load i32* %RoundKey.addr.48, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 51:7]
  %"temp[1]" = trunc i32 %RoundKey.load.1 to i8, !dbg !142 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1]"}, i64 0, metadata !146), !dbg !142 ; [debug line = 51:7] [debug variable = temp[1]]
  %sum8.2 = add i8 %tmp., -2                      ; [#uses=1 type=i8]
  %sum8.2.cast = zext i8 %sum8.2 to i32           ; [#uses=1 type=i32]
  %RoundKey.addr.49 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8.2.cast, !dbg !142 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey.load.32 = load i32* %RoundKey.addr.49, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 51:7]
  %"temp[2]" = trunc i32 %RoundKey.load.32 to i8, !dbg !142 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2]"}, i64 0, metadata !147), !dbg !142 ; [debug line = 51:7] [debug variable = temp[2]]
  %sum8.3 = add i8 %tmp., -1                      ; [#uses=1 type=i8]
  %sum8.3.cast = zext i8 %sum8.3 to i32           ; [#uses=1 type=i32]
  %RoundKey.addr.50 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8.3.cast, !dbg !142 ; [#uses=1 type=i32*] [debug line = 51:7]
  %RoundKey.load.33 = load i32* %RoundKey.addr.50, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 51:7]
  %"temp[3]" = trunc i32 %RoundKey.load.33 to i8, !dbg !142 ; [#uses=2 type=i8] [debug line = 51:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3]"}, i64 0, metadata !148), !dbg !142 ; [debug line = 51:7] [debug variable = temp[3]]
  %tmp.2 = icmp eq i2 %i.1.cast3, 0, !dbg !149    ; [#uses=4 type=i1] [debug line = 53:6]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].3"}, i64 0, metadata !150), !dbg !151 ; [debug line = 55:8] [debug variable = k]
  %num.assign = zext i8 %"temp[1]" to i32, !dbg !153 ; [#uses=1 type=i32] [debug line = 60:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign}, i64 0, metadata !154) nounwind, !dbg !155 ; [debug line = 3:22@60:16] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign, !dbg !156 ; [#uses=1 type=i8*] [debug line = 23:2@60:16]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !156 ; [#uses=1 type=i8] [debug line = 23:2@60:16]
  %num.assign.16 = zext i8 %"temp[2]" to i32, !dbg !157 ; [#uses=1 type=i32] [debug line = 61:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.16}, i64 0, metadata !158) nounwind, !dbg !159 ; [debug line = 3:22@61:16] [debug variable = num]
  %sbox.addr.16 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.16, !dbg !160 ; [#uses=1 type=i8*] [debug line = 23:2@61:16]
  %"temp[1].1" = load i8* %sbox.addr.16, align 1, !dbg !160 ; [#uses=1 type=i8] [debug line = 23:2@61:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1].1"}, i64 0, metadata !146), !dbg !157 ; [debug line = 61:16] [debug variable = temp[1]]
  %num.assign.17 = zext i8 %"temp[3]" to i32, !dbg !161 ; [#uses=1 type=i32] [debug line = 62:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.17}, i64 0, metadata !162) nounwind, !dbg !163 ; [debug line = 3:22@62:16] [debug variable = num]
  %sbox.addr.17 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.17, !dbg !164 ; [#uses=1 type=i8*] [debug line = 23:2@62:16]
  %"temp[2].1" = load i8* %sbox.addr.17, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 23:2@62:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2].1"}, i64 0, metadata !147), !dbg !161 ; [debug line = 62:16] [debug variable = temp[2]]
  %num.assign.18 = zext i8 %"temp[0].3" to i32, !dbg !165 ; [#uses=1 type=i32] [debug line = 63:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.18}, i64 0, metadata !166) nounwind, !dbg !167 ; [debug line = 3:22@63:16] [debug variable = num]
  %sbox.addr.18 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.18, !dbg !168 ; [#uses=1 type=i8*] [debug line = 23:2@63:16]
  %"temp[3].1" = load i8* %sbox.addr.18, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 23:2@63:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].1"}, i64 0, metadata !148), !dbg !165 ; [debug line = 63:16] [debug variable = temp[3]]
  %_lshr.f = lshr i6 %i.1, 2, !dbg !169           ; [#uses=1 type=i6] [debug line = 64:7]
  %_lshr.f.cast = trunc i6 %_lshr.f to i4, !dbg !169 ; [#uses=1 type=i4] [debug line = 64:7]
  %tmp.15 = zext i4 %_lshr.f.cast to i32, !dbg !169 ; [#uses=1 type=i32] [debug line = 64:7]
  %Rcon.addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp.15, !dbg !169 ; [#uses=1 type=i8*] [debug line = 64:7]
  %Rcon.load = load i8* %Rcon.addr, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 64:7]
  %"temp[0]" = xor i8 %Rcon.load, %sbox.load, !dbg !169 ; [#uses=1 type=i8] [debug line = 64:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0]"}, i64 0, metadata !145), !dbg !169 ; [debug line = 64:7] [debug variable = temp[0]]
  %"temp[3].2" = select i1 %tmp.2, i8 %"temp[3].1", i8 %"temp[3]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].2"}, i64 0, metadata !148), !dbg !142 ; [debug line = 51:7] [debug variable = temp[3]]
  %"temp[2].2" = select i1 %tmp.2, i8 %"temp[2].1", i8 %"temp[2]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2].2"}, i64 0, metadata !147), !dbg !142 ; [debug line = 51:7] [debug variable = temp[2]]
  %"temp[1].2" = select i1 %tmp.2, i8 %"temp[1].1", i8 %"temp[1]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1].2"}, i64 0, metadata !146), !dbg !142 ; [debug line = 51:7] [debug variable = temp[1]]
  %"temp[0].2" = select i1 %tmp.2, i8 %"temp[0]", i8 %"temp[0].3" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].2"}, i64 0, metadata !145), !dbg !142 ; [debug line = 51:7] [debug variable = temp[0]]
  %sum = add i8 %tmp., -16                        ; [#uses=1 type=i8]
  %sum.cast = zext i8 %sum to i32                 ; [#uses=1 type=i32]
  %RoundKey.addr.51 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum.cast, !dbg !170 ; [#uses=1 type=i32*] [debug line = 73:6]
  %RoundKey.load.2 = load i32* %RoundKey.addr.51, align 4, !dbg !170 ; [#uses=1 type=i32] [debug line = 73:6]
  %tmp.18 = zext i8 %"temp[0].2" to i32, !dbg !170 ; [#uses=1 type=i32] [debug line = 73:6]
  %tmp.19 = xor i32 %RoundKey.load.2, %tmp.18, !dbg !170 ; [#uses=1 type=i32] [debug line = 73:6]
  %RoundKey.addr.52 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp..cast, !dbg !170 ; [#uses=1 type=i32*] [debug line = 73:6]
  store i32 %tmp.19, i32* %RoundKey.addr.52, align 4, !dbg !170 ; [debug line = 73:6]
  %sum1 = add i8 %tmp., -15                       ; [#uses=1 type=i8]
  %sum1.cast = zext i8 %sum1 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.53 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum1.cast, !dbg !171 ; [#uses=1 type=i32*] [debug line = 74:6]
  %RoundKey.load.3 = load i32* %RoundKey.addr.53, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp.20 = zext i8 %"temp[1].2" to i32, !dbg !171 ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp.21 = xor i32 %RoundKey.load.3, %tmp.20, !dbg !171 ; [#uses=1 type=i32] [debug line = 74:6]
  %tmp.22 = or i8 %tmp., 1, !dbg !171             ; [#uses=1 type=i8] [debug line = 74:6]
  %tmp.22.cast = zext i8 %tmp.22 to i32, !dbg !171 ; [#uses=1 type=i32] [debug line = 74:6]
  %RoundKey.addr.54 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.22.cast, !dbg !171 ; [#uses=1 type=i32*] [debug line = 74:6]
  store i32 %tmp.21, i32* %RoundKey.addr.54, align 4, !dbg !171 ; [debug line = 74:6]
  %sum2 = add i8 %tmp., -14                       ; [#uses=1 type=i8]
  %sum2.cast = zext i8 %sum2 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.55 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum2.cast, !dbg !172 ; [#uses=1 type=i32*] [debug line = 75:6]
  %RoundKey.load.4 = load i32* %RoundKey.addr.55, align 4, !dbg !172 ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp.23 = zext i8 %"temp[2].2" to i32, !dbg !172 ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp.24 = xor i32 %RoundKey.load.4, %tmp.23, !dbg !172 ; [#uses=1 type=i32] [debug line = 75:6]
  %tmp.25 = or i8 %tmp., 2, !dbg !172             ; [#uses=1 type=i8] [debug line = 75:6]
  %tmp.25.cast = zext i8 %tmp.25 to i32, !dbg !172 ; [#uses=1 type=i32] [debug line = 75:6]
  %RoundKey.addr.56 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.25.cast, !dbg !172 ; [#uses=1 type=i32*] [debug line = 75:6]
  store i32 %tmp.24, i32* %RoundKey.addr.56, align 4, !dbg !172 ; [debug line = 75:6]
  %sum3 = add i8 %tmp., -13                       ; [#uses=1 type=i8]
  %sum3.cast = zext i8 %sum3 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.57 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3.cast, !dbg !173 ; [#uses=1 type=i32*] [debug line = 76:6]
  %RoundKey.load.5 = load i32* %RoundKey.addr.57, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp.26 = zext i8 %"temp[3].2" to i32, !dbg !173 ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp.27 = xor i32 %RoundKey.load.5, %tmp.26, !dbg !173 ; [#uses=1 type=i32] [debug line = 76:6]
  %tmp.28 = or i8 %tmp., 3, !dbg !173             ; [#uses=1 type=i8] [debug line = 76:6]
  %tmp.28.cast = zext i8 %tmp.28 to i32, !dbg !173 ; [#uses=1 type=i32] [debug line = 76:6]
  %RoundKey.addr.58 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.28.cast, !dbg !173 ; [#uses=1 type=i32*] [debug line = 76:6]
  store i32 %tmp.27, i32* %RoundKey.addr.58, align 4, !dbg !173 ; [debug line = 76:6]
  %i = add i6 %i.1, 1, !dbg !174                  ; [#uses=1 type=i6] [debug line = 77:6]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !175), !dbg !174 ; [debug line = 77:6] [debug variable = i]
  %1 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @.str2, i32 %tmp), !dbg !176 ; [#uses=0 type=i32] [debug line = 78:2]
  br label %.preheader, !dbg !176                 ; [debug line = 78:2]

; <label>:2                                       ; preds = %.preheader
  ret void, !dbg !177                             ; [debug line = 79:1]
}

; [#uses=0]
define void @Cipher([4 x [4 x i32]]* %state, [32 x i32]* %Key) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [4 x i32]]* %state) nounwind, !map !178
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !184
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=7 type=[240 x i32]*]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !190), !dbg !191 ; [debug line = 181:18] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !192), !dbg !193 ; [debug line = 181:35] [debug variable = Key]
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !194), !dbg !197 ; [debug line = 204:7] [debug variable = RoundKey]
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind, !dbg !198 ; [debug line = 206:2]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !199) nounwind, !dbg !201 ; [debug line = 83:33@208:2] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !202) nounwind, !dbg !203 ; [debug line = 83:50@208:2] [debug variable = RoundKey]
  br label %1, !dbg !204                          ; [debug line = 86:6@208:2]

; <label>:1                                       ; preds = %.preheader.preheader.i, %0
  %i.i = phi i3 [ 0, %0 ], [ %i, %.preheader.preheader.i ] ; [#uses=4 type=i3]
  %i.i.cast2 = zext i3 %i.i to i32, !dbg !204     ; [#uses=4 type=i32] [debug line = 86:6@208:2]
  %i.i.cast = zext i3 %i.i to i4, !dbg !204       ; [#uses=1 type=i4] [debug line = 86:6@208:2]
  %exitcond1.i = icmp eq i3 %i.i, -4, !dbg !204   ; [#uses=1 type=i1] [debug line = 86:6@208:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %AddRoundKey.exit.preheader, label %.preheader.preheader.i, !dbg !204 ; [debug line = 86:6@208:2]

AddRoundKey.exit.preheader:                       ; preds = %1
  br label %AddRoundKey.exit, !dbg !207           ; [debug line = 210:21]

.preheader.preheader.i:                           ; preds = %1
  %tmp.i = shl i4 %i.i.cast, 2, !dbg !209         ; [#uses=4 type=i4] [debug line = 90:4@208:2]
  %tmp.i.cast = zext i4 %tmp.i to i32, !dbg !209  ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %RoundKey.assign.addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.i.cast, !dbg !209 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey.assign.load = load i32* %RoundKey.assign.addr, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state.addr = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 %i.i.cast2, !dbg !209 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %state.load = load i32* %state.addr, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp.84.i = xor i32 %state.load, %RoundKey.assign.load, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp.84.i, i32* %state.addr, align 4, !dbg !209 ; [debug line = 90:4@208:2]
  %sum3..i = or i4 %tmp.i, 1                      ; [#uses=1 type=i4]
  %sum3..i.cast = zext i4 %sum3..i to i32         ; [#uses=1 type=i32]
  %RoundKey.assign.addr.1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3..i.cast, !dbg !209 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey.assign.load.1 = load i32* %RoundKey.assign.addr.1, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state.addr.16 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 %i.i.cast2, !dbg !209 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %state.load.1 = load i32* %state.addr.16, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp.84.1.i = xor i32 %state.load.1, %RoundKey.assign.load.1, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp.84.1.i, i32* %state.addr.16, align 4, !dbg !209 ; [debug line = 90:4@208:2]
  %sum3.1.i = or i4 %tmp.i, 2                     ; [#uses=1 type=i4]
  %sum3.1.i.cast = zext i4 %sum3.1.i to i32       ; [#uses=1 type=i32]
  %RoundKey.assign.addr.2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3.1.i.cast, !dbg !209 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey.assign.load.2 = load i32* %RoundKey.assign.addr.2, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state.addr.17 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 %i.i.cast2, !dbg !209 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %state.load.2 = load i32* %state.addr.17, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp.84.2.i = xor i32 %state.load.2, %RoundKey.assign.load.2, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp.84.2.i, i32* %state.addr.17, align 4, !dbg !209 ; [debug line = 90:4@208:2]
  %sum3.2.i = or i4 %tmp.i, 3                     ; [#uses=1 type=i4]
  %sum3.2.i.cast = zext i4 %sum3.2.i to i32       ; [#uses=1 type=i32]
  %RoundKey.assign.addr.3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3.2.i.cast, !dbg !209 ; [#uses=1 type=i32*] [debug line = 90:4@208:2]
  %RoundKey.assign.load.3 = load i32* %RoundKey.assign.addr.3, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %state.addr.18 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 %i.i.cast2, !dbg !209 ; [#uses=2 type=i32*] [debug line = 90:4@208:2]
  %state.load.3 = load i32* %state.addr.18, align 4, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  %tmp.84.3.i = xor i32 %state.load.3, %RoundKey.assign.load.3, !dbg !209 ; [#uses=1 type=i32] [debug line = 90:4@208:2]
  store i32 %tmp.84.3.i, i32* %state.addr.18, align 4, !dbg !209 ; [debug line = 90:4@208:2]
  %i = add i3 %i.i, 1, !dbg !213                  ; [#uses=1 type=i3] [debug line = 86:14@208:2]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !214) nounwind, !dbg !213 ; [debug line = 86:14@208:2] [debug variable = i]
  br label %1, !dbg !213                          ; [debug line = 86:14@208:2]

AddRoundKey.exit:                                 ; preds = %4, %AddRoundKey.exit.preheader
  %round = phi i4 [ %tmp, %4 ], [ 1, %AddRoundKey.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %round, -6, !dbg !207    ; [#uses=1 type=i1] [debug line = 210:21]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %4, !dbg !207  ; [debug line = 210:21]

; <label>:4                                       ; preds = %AddRoundKey.exit
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !215 ; [debug line = 211:3]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str4) nounwind, !dbg !215 ; [#uses=1 type=i32] [debug line = 211:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !217 ; [debug line = 212:1]
  %round.cast1.cast = zext i4 %round to i6, !dbg !218 ; [#uses=1 type=i6] [debug line = 212:3]
  call fastcc void @SubBytes([4 x [4 x i32]]* %state, i6 %round.cast1.cast, [240 x i32]* %RoundKey) nounwind, !dbg !218 ; [debug line = 212:3]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str4, i32 %tmp.) nounwind, !dbg !219 ; [#uses=0 type=i32] [debug line = 215:2]
  %tmp = add i4 %round, 1, !dbg !220              ; [#uses=1 type=i4] [debug line = 210:38]
  br label %AddRoundKey.exit, !dbg !220           ; [debug line = 210:38]

; <label>:6                                       ; preds = %AddRoundKey.exit
  call fastcc void @SubBytes([4 x [4 x i32]]* %state, i6 10, [240 x i32]* %RoundKey) nounwind, !dbg !221 ; [debug line = 218:2]
  ret void, !dbg !222                             ; [debug line = 219:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!32, !39, !45, !49, !53}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/Professor/Second/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5CSecond", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !19, metadata !26, metadata !29}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5CSecond", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 32, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 33} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !18}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 2, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 83, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 84} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9, metadata !22, metadata !15}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 97, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 98} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !22, metadata !9, metadata !15}
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 181, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 183} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !22, metadata !15}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!38 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!39 = metadata !{null, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !38}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"int*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!45 = metadata !{null, metadata !46, metadata !41, metadata !47, metadata !43, metadata !48, metadata !38}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!49 = metadata !{null, metadata !50, metadata !41, metadata !51, metadata !43, metadata !52, metadata !38}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"int", metadata !"word*"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"round", metadata !"RoundKey"}
!53 = metadata !{null, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !38}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!55 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"word*"}
!57 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"Key"}
!59 = metadata !{i32 786689, metadata !26, metadata !"state", null, i32 97, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !16, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !25, metadata !25}
!62 = metadata !{i32 97, i32 20, metadata !26, null}
!63 = metadata !{i32 786689, metadata !26, metadata !"round", metadata !6, i32 33554529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 97, i32 36, metadata !26, null}
!65 = metadata !{i32 786689, metadata !26, metadata !"RoundKey", null, i32 97, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 239}      ; [ DW_TAG_subrange_type ]
!69 = metadata !{i32 97, i32 47, metadata !26, null}
!70 = metadata !{i32 104, i32 18, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 103, i32 3, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !73, i32 102, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !74, i32 101, i32 2, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !75, i32 100, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !26, i32 98, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, metadata !70} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 3, i32 22, metadata !5, metadata !70}
!78 = metadata !{i32 23, i32 2, metadata !79, metadata !70}
!79 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786688, metadata !75, metadata !"temp", metadata !6, i32 108, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 110, i32 3, metadata !75, null}
!83 = metadata !{i32 111, i32 3, metadata !75, null}
!84 = metadata !{i32 112, i32 3, metadata !75, null}
!85 = metadata !{i32 113, i32 3, metadata !75, null}
!86 = metadata !{i32 114, i32 3, metadata !75, null}
!87 = metadata !{i32 116, i32 3, metadata !75, null}
!88 = metadata !{i32 117, i32 3, metadata !75, null}
!89 = metadata !{i32 118, i32 3, metadata !75, null}
!90 = metadata !{i32 120, i32 3, metadata !75, null}
!91 = metadata !{i32 121, i32 3, metadata !75, null}
!92 = metadata !{i32 122, i32 3, metadata !75, null}
!93 = metadata !{i32 124, i32 3, metadata !75, null}
!94 = metadata !{i32 125, i32 3, metadata !75, null}
!95 = metadata !{i32 127, i32 3, metadata !75, null}
!96 = metadata !{i32 128, i32 3, metadata !75, null}
!97 = metadata !{i32 130, i32 3, metadata !75, null}
!98 = metadata !{i32 139, i32 3, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 137, i32 2, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !101, i32 136, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !75, i32 130, i32 17, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 140, i32 36, metadata !99, null}
!103 = metadata !{i32 140, i32 77, metadata !99, null}
!104 = metadata !{i32 141, i32 3, metadata !99, null}
!105 = metadata !{i32 141, i32 36, metadata !99, null}
!106 = metadata !{i32 141, i32 77, metadata !99, null}
!107 = metadata !{i32 142, i32 3, metadata !99, null}
!108 = metadata !{i32 142, i32 36, metadata !99, null}
!109 = metadata !{i32 142, i32 77, metadata !99, null}
!110 = metadata !{i32 143, i32 3, metadata !99, null}
!111 = metadata !{i32 143, i32 26, metadata !99, null}
!112 = metadata !{i32 143, i32 67, metadata !99, null}
!113 = metadata !{i32 150, i32 5, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 149, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !116, i32 148, i32 4, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !117, i32 147, i32 3, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !101, i32 146, i32 2, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 160, i32 6, metadata !119, null}
!119 = metadata !{i32 786443, metadata !120, i32 159, i32 5, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 158, i32 5, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !122, i32 157, i32 4, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !75, i32 156, i32 4, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 168, i32 1, metadata !75, null}
!124 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", null, i32 32, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 32, i32 24, metadata !12, null}
!126 = metadata !{i32 786689, metadata !12, metadata !"Key", null, i32 32, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!130 = metadata !{i32 32, i32 43, metadata !12, null}
!131 = metadata !{i32 40, i32 3, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 39, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !134, i32 38, i32 23, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786443, metadata !12, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 41, i32 3, metadata !132, null}
!136 = metadata !{i32 42, i32 3, metadata !132, null}
!137 = metadata !{i32 43, i32 3, metadata !132, null}
!138 = metadata !{i32 47, i32 22, metadata !134, null}
!139 = metadata !{i32 48, i32 3, metadata !140, null}
!140 = metadata !{i32 786443, metadata !134, i32 48, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 49, i32 1, metadata !140, null}
!142 = metadata !{i32 51, i32 7, metadata !143, null}
!143 = metadata !{i32 786443, metadata !144, i32 50, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !140, i32 49, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786688, metadata !134, metadata !"temp[0]", null, i32 35, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786688, metadata !134, metadata !"temp[1]", null, i32 35, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786688, metadata !134, metadata !"temp[2]", null, i32 35, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786688, metadata !134, metadata !"temp[3]", null, i32 35, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 53, i32 6, metadata !140, null}
!150 = metadata !{i32 786688, metadata !134, metadata !"k", metadata !6, i32 35, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 55, i32 8, metadata !152, null}
!152 = metadata !{i32 786443, metadata !140, i32 54, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 60, i32 16, metadata !152, null}
!154 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, metadata !153} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 3, i32 22, metadata !5, metadata !153}
!156 = metadata !{i32 23, i32 2, metadata !79, metadata !153}
!157 = metadata !{i32 61, i32 16, metadata !152, null}
!158 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, metadata !157} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 3, i32 22, metadata !5, metadata !157}
!160 = metadata !{i32 23, i32 2, metadata !79, metadata !157}
!161 = metadata !{i32 62, i32 16, metadata !152, null}
!162 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, metadata !161} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 3, i32 22, metadata !5, metadata !161}
!164 = metadata !{i32 23, i32 2, metadata !79, metadata !161}
!165 = metadata !{i32 63, i32 16, metadata !152, null}
!166 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777219, metadata !9, i32 0, metadata !165} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 3, i32 22, metadata !5, metadata !165}
!168 = metadata !{i32 23, i32 2, metadata !79, metadata !165}
!169 = metadata !{i32 64, i32 7, metadata !152, null}
!170 = metadata !{i32 73, i32 6, metadata !140, null}
!171 = metadata !{i32 74, i32 6, metadata !140, null}
!172 = metadata !{i32 75, i32 6, metadata !140, null}
!173 = metadata !{i32 76, i32 6, metadata !140, null}
!174 = metadata !{i32 77, i32 6, metadata !140, null}
!175 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 78, i32 2, metadata !140, null}
!177 = metadata !{i32 79, i32 1, metadata !134, null}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 0, i32 31, metadata !180}
!180 = metadata !{metadata !181}
!181 = metadata !{metadata !"state", metadata !182, metadata !"unsigned int", i32 0, i32 31}
!182 = metadata !{metadata !183, metadata !183}
!183 = metadata !{i32 0, i32 3, i32 1}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 31, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"Key", metadata !188, metadata !"unsigned int", i32 0, i32 31}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 31, i32 1}
!190 = metadata !{i32 786689, metadata !29, metadata !"state", null, i32 181, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 181, i32 18, metadata !29, null}
!192 = metadata !{i32 786689, metadata !29, metadata !"Key", null, i32 181, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 181, i32 35, metadata !29, null}
!194 = metadata !{i32 786688, metadata !195, metadata !"RoundKey", metadata !6, i32 204, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 786443, metadata !29, i32 183, i32 1, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !16, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ]
!197 = metadata !{i32 204, i32 7, metadata !195, null}
!198 = metadata !{i32 206, i32 2, metadata !195, null}
!199 = metadata !{i32 786689, metadata !19, metadata !"state", null, i32 83, metadata !60, i32 0, metadata !200} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 208, i32 2, metadata !195, null}
!201 = metadata !{i32 83, i32 33, metadata !19, metadata !200}
!202 = metadata !{i32 786689, metadata !19, metadata !"RoundKey", null, i32 83, metadata !66, i32 0, metadata !200} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 83, i32 50, metadata !19, metadata !200}
!204 = metadata !{i32 86, i32 6, metadata !205, metadata !200}
!205 = metadata !{i32 786443, metadata !206, i32 86, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 786443, metadata !19, i32 84, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 210, i32 21, metadata !208, null}
!208 = metadata !{i32 786443, metadata !195, i32 210, i32 17, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 90, i32 4, metadata !210, metadata !200}
!210 = metadata !{i32 786443, metadata !211, i32 89, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 786443, metadata !212, i32 88, i32 23, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786443, metadata !205, i32 87, i32 2, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 86, i32 14, metadata !205, metadata !200}
!214 = metadata !{i32 786688, metadata !206, metadata !"i", metadata !6, i32 85, metadata !9, i32 0, metadata !200} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 211, i32 3, metadata !216, null}
!216 = metadata !{i32 786443, metadata !208, i32 211, i32 2, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 212, i32 1, metadata !216, null}
!218 = metadata !{i32 212, i32 3, metadata !216, null}
!219 = metadata !{i32 215, i32 2, metadata !216, null}
!220 = metadata !{i32 210, i32 38, metadata !208, null}
!221 = metadata !{i32 218, i32 2, metadata !195, null}
!222 = metadata !{i32 219, i32 1, metadata !195, null}
