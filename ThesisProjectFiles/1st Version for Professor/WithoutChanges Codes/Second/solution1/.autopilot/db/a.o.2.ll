; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16" ; [#uses=5 type=[256 x i8]*]
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB" ; [#uses=1 type=[255 x i8]*]
@Cipher.str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=58]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
declare i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone

; [#uses=1]
declare i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4, i1, i3) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=2]
define internal fastcc void @SubBytes([4 x [4 x i32]]* nocapture %state) {
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !61), !dbg !64 ; [debug line = 117:20] [debug variable = state]
  br label %1, !dbg !65                           ; [debug line = 120:6]

; <label>:1                                       ; preds = %5, %0
  %i = phi i3 [ 0, %0 ], [ %i.1, %5 ]             ; [#uses=3 type=i3]
  %i.cast2 = zext i3 %i to i32, !dbg !65          ; [#uses=1 type=i32] [debug line = 120:6]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !65        ; [#uses=1 type=i1] [debug line = 120:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !65 ; [debug line = 120:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !68                  ; [debug line = 122:7]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i3 [ %j.1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %j.cast1 = zext i3 %j to i32, !dbg !68          ; [#uses=1 type=i32] [debug line = 122:7]
  %exitcond = icmp eq i3 %j, -4, !dbg !68         ; [#uses=1 type=i1] [debug line = 122:7]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !68   ; [debug line = 122:7]

; <label>:4                                       ; preds = %.preheader
  %state.addr = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 %i.cast2, i32 %j.cast1, !dbg !71 ; [#uses=2 type=i32*] [debug line = 124:18]
  %num.assign = load i32* %state.addr, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 124:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign}, i64 0, metadata !73) nounwind, !dbg !74 ; [debug line = 4:22@124:18] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign, !dbg !75 ; [#uses=1 type=i8*] [debug line = 24:2@124:18]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !75 ; [#uses=1 type=i8] [debug line = 24:2@124:18]
  %sbox.load.cast = zext i8 %sbox.load to i32, !dbg !75 ; [#uses=1 type=i32] [debug line = 24:2@124:18]
  store i32 %sbox.load.cast, i32* %state.addr, align 4, !dbg !71 ; [debug line = 124:18]
  %j.1 = add i3 %j, 1, !dbg !77                   ; [#uses=1 type=i3] [debug line = 122:15]
  call void @llvm.dbg.value(metadata !{i3 %j.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 122:15] [debug variable = j]
  br label %.preheader, !dbg !77                  ; [debug line = 122:15]

; <label>:5                                       ; preds = %.preheader
  %i.1 = add i3 %i, 1, !dbg !79                   ; [#uses=1 type=i3] [debug line = 120:14]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !80), !dbg !79 ; [debug line = 120:14] [debug variable = i]
  br label %1, !dbg !79                           ; [debug line = 120:14]

; <label>:6                                       ; preds = %1
  ret void, !dbg !81                              ; [debug line = 128:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion([240 x i32]* nocapture %RoundKey, [32 x i32]* nocapture %Key) {
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !82), !dbg !86 ; [debug line = 33:24] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !87), !dbg !91 ; [debug line = 33:43] [debug variable = Key]
  br label %1, !dbg !92                           ; [debug line = 41:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i3 [ 0, %0 ], [ %tmp.3, %3 ]           ; [#uses=3 type=i3]
  %i.cast = zext i3 %i to i4, !dbg !92            ; [#uses=1 type=i4] [debug line = 41:6]
  %exitcond2 = icmp eq i3 %i, -4, !dbg !92        ; [#uses=1 type=i1] [debug line = 41:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader3.preheader, label %3, !dbg !92 ; [debug line = 41:6]

.preheader3.preheader:                            ; preds = %1
  br label %.preheader3, !dbg !95                 ; [debug line = 50:2]

; <label>:3                                       ; preds = %1
  %tmp = shl i4 %i.cast, 2, !dbg !96              ; [#uses=4 type=i4] [debug line = 43:3]
  %tmp.cast = zext i4 %tmp to i32, !dbg !96       ; [#uses=2 type=i32] [debug line = 43:3]
  %Key.addr = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp.cast, !dbg !96 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load = load i32* %Key.addr, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 43:3]
  %RoundKey.addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.cast, !dbg !96 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load, i32* %RoundKey.addr, align 4, !dbg !96 ; [debug line = 43:3]
  %tmp. = or i4 %tmp, 1, !dbg !98                 ; [#uses=1 type=i4] [debug line = 44:3]
  %tmp..cast = zext i4 %tmp. to i32, !dbg !98     ; [#uses=2 type=i32] [debug line = 44:3]
  %Key.addr.1 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp..cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 44:3]
  %Key.load.1 = load i32* %Key.addr.1, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 44:3]
  %RoundKey.addr.1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp..cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 44:3]
  store i32 %Key.load.1, i32* %RoundKey.addr.1, align 4, !dbg !98 ; [debug line = 44:3]
  %tmp.1 = or i4 %tmp, 2, !dbg !99                ; [#uses=1 type=i4] [debug line = 45:3]
  %tmp.1.cast = zext i4 %tmp.1 to i32, !dbg !99   ; [#uses=2 type=i32] [debug line = 45:3]
  %Key.addr.2 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp.1.cast, !dbg !99 ; [#uses=1 type=i32*] [debug line = 45:3]
  %Key.load.2 = load i32* %Key.addr.2, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 45:3]
  %RoundKey.addr.2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.1.cast, !dbg !99 ; [#uses=1 type=i32*] [debug line = 45:3]
  store i32 %Key.load.2, i32* %RoundKey.addr.2, align 4, !dbg !99 ; [debug line = 45:3]
  %tmp.2 = or i4 %tmp, 3, !dbg !100               ; [#uses=1 type=i4] [debug line = 46:3]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !100  ; [#uses=2 type=i32] [debug line = 46:3]
  %Key.addr.3 = getelementptr [32 x i32]* %Key, i32 0, i32 %tmp.2.cast, !dbg !100 ; [#uses=1 type=i32*] [debug line = 46:3]
  %Key.load.3 = load i32* %Key.addr.3, align 4, !dbg !100 ; [#uses=1 type=i32] [debug line = 46:3]
  %RoundKey.addr.3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.2.cast, !dbg !100 ; [#uses=1 type=i32*] [debug line = 46:3]
  store i32 %Key.load.3, i32* %RoundKey.addr.3, align 4, !dbg !100 ; [debug line = 46:3]
  %tmp.3 = add i3 %i, 1, !dbg !101                ; [#uses=1 type=i3] [debug line = 41:15]
  br label %1, !dbg !101                          ; [debug line = 41:15]

.preheader3:                                      ; preds = %_ifconv24, %.preheader3.preheader
  %temp.3 = phi i32 [ %"temp[3].1", %_ifconv24 ], [ undef, %.preheader3.preheader ] ; [#uses=1 type=i32]
  %temp.2 = phi i32 [ %"temp[2].1", %_ifconv24 ], [ undef, %.preheader3.preheader ] ; [#uses=1 type=i32]
  %temp.1 = phi i32 [ %"temp[1].1", %_ifconv24 ], [ undef, %.preheader3.preheader ] ; [#uses=1 type=i32]
  %temp = phi i32 [ %"temp[0].2", %_ifconv24 ], [ undef, %.preheader3.preheader ] ; [#uses=1 type=i32]
  %i.1 = phi i6 [ %i.2, %_ifconv24 ], [ 4, %.preheader3.preheader ] ; [#uses=5 type=i6]
  %i.1.cast = trunc i6 %i.1 to i2, !dbg !95       ; [#uses=1 type=i2] [debug line = 50:2]
  %i.1.cast1 = zext i6 %i.1 to i8, !dbg !95       ; [#uses=1 type=i8] [debug line = 50:2]
  %exitcond1 = icmp eq i6 %i.1, -20, !dbg !95     ; [#uses=1 type=i1] [debug line = 50:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !95 ; [debug line = 50:2]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp.4 = shl nuw i8 %i.1.cast1, 2, !dbg !102    ; [#uses=9 type=i8] [debug line = 54:7]
  %tmp.4.cast = zext i8 %tmp.4 to i32, !dbg !102  ; [#uses=1 type=i32] [debug line = 54:7]
  br label %.preheader, !dbg !106                 ; [debug line = 52:10]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %num.assign.2 = phi i32 [ %temp.3, %.preheader.preheader ], [ %"temp[3].3", %_ifconv ] ; [#uses=3 type=i32]
  %num.assign.1 = phi i32 [ %temp.2, %.preheader.preheader ], [ %"temp[3].4", %_ifconv ] ; [#uses=3 type=i32]
  %"temp[3].5" = phi i32 [ %temp.1, %.preheader.preheader ], [ %"temp[3].7", %_ifconv ] ; [#uses=3 type=i32]
  %"temp[3].8" = phi i32 [ %temp, %.preheader.preheader ], [ %"temp[3].9", %_ifconv ] ; [#uses=2 type=i32]
  %j = phi i3 [ 0, %.preheader.preheader ], [ %j.2, %_ifconv ] ; [#uses=4 type=i3]
  %exitcond = icmp eq i3 %j, -4, !dbg !106        ; [#uses=1 type=i1] [debug line = 52:10]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %_ifconv24, label %_ifconv, !dbg !106 ; [debug line = 52:10]

_ifconv:                                          ; preds = %.preheader
  %tmp1 = xor i3 %j, -4                           ; [#uses=1 type=i3]
  %tmp29.cast = sext i3 %tmp1 to i8               ; [#uses=1 type=i8]
  %sum8 = add i8 %tmp.4, %tmp29.cast              ; [#uses=1 type=i8]
  %sum8.cast = zext i8 %sum8 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum8.cast, !dbg !102 ; [#uses=1 type=i32*] [debug line = 54:7]
  %"temp[0]" = load i32* %RoundKey.addr.4, align 4, !dbg !102 ; [#uses=4 type=i32] [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0]"}, i64 0, metadata !107), !dbg !102 ; [debug line = 54:7] [debug variable = temp[0]]
  %j.t = trunc i3 %j to i2                        ; [#uses=3 type=i2]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0]"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0]"}, i64 0, metadata !111), !dbg !102 ; [debug line = 54:7] [debug variable = temp[1]]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0]"}, i64 0, metadata !112), !dbg !102 ; [debug line = 54:7] [debug variable = temp[2]]
  %sel_tmp = icmp eq i2 %j.t, -2                  ; [#uses=2 type=i1]
  %sel_tmp2 = icmp eq i2 %j.t, 1                  ; [#uses=3 type=i1]
  %sel_tmp4 = icmp eq i2 %j.t, 0                  ; [#uses=4 type=i1]
  %or_cond = or i1 %sel_tmp4, %sel_tmp2           ; [#uses=1 type=i1]
  %newSel = select i1 %sel_tmp, i32 %num.assign.2, i32 %"temp[0]" ; [#uses=1 type=i32]
  %"temp[3].3" = select i1 %or_cond, i32 %num.assign.2, i32 %newSel ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].3"}, i64 0, metadata !110), !dbg !113 ; [debug line = 78:16] [debug variable = temp[3]]
  %or_cond1 = or i1 %sel_tmp4, %sel_tmp2          ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp, i32 %"temp[0]", i32 %num.assign.1 ; [#uses=1 type=i32]
  %"temp[3].4" = select i1 %or_cond1, i32 %num.assign.1, i32 %newSel2 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].4"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].5"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  %"temp[3].6" = select i1 %sel_tmp2, i32 %"temp[0]", i32 %"temp[3].5" ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].6"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  %"temp[3].7" = select i1 %sel_tmp4, i32 %"temp[3].5", i32 %"temp[3].6" ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].7"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].8"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  %"temp[3].9" = select i1 %sel_tmp4, i32 %"temp[0]", i32 %"temp[3].8" ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].9"}, i64 0, metadata !110), !dbg !102 ; [debug line = 54:7] [debug variable = temp[3]]
  %j.2 = add i3 %j, 1, !dbg !116                  ; [#uses=1 type=i3] [debug line = 52:18]
  call void @llvm.dbg.value(metadata !{i3 %j.2}, i64 0, metadata !117), !dbg !116 ; [debug line = 52:18] [debug variable = j]
  br label %.preheader, !dbg !116                 ; [debug line = 52:18]

_ifconv24:                                        ; preds = %.preheader
  %k.lcssa = phi i32 [ %"temp[3].8", %.preheader ] ; [#uses=2 type=i32]
  %num.assign.lcssa = phi i32 [ %"temp[3].5", %.preheader ] ; [#uses=2 type=i32]
  %num.assign.1.lcssa = phi i32 [ %num.assign.1, %.preheader ] ; [#uses=2 type=i32]
  %num.assign.2.lcssa = phi i32 [ %num.assign.2, %.preheader ] ; [#uses=2 type=i32]
  %tmp.7 = icmp eq i2 %i.1.cast, 0, !dbg !118     ; [#uses=4 type=i1] [debug line = 56:6]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].8"}, i64 0, metadata !119), !dbg !120 ; [debug line = 63:8] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].5"}, i64 0, metadata !122) nounwind, !dbg !124 ; [debug line = 4:22@75:16] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.lcssa, !dbg !125 ; [#uses=1 type=i8*] [debug line = 24:2@75:16]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !125 ; [#uses=1 type=i8] [debug line = 24:2@75:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.1}, i64 0, metadata !126) nounwind, !dbg !128 ; [debug line = 4:22@76:16] [debug variable = num]
  %sbox.addr.1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.1.lcssa, !dbg !129 ; [#uses=1 type=i8*] [debug line = 24:2@76:16]
  %"temp[1]" = load i8* %sbox.addr.1, align 1, !dbg !129 ; [#uses=1 type=i8] [debug line = 24:2@76:16]
  %"temp[1].cast" = zext i8 %"temp[1]" to i32, !dbg !129 ; [#uses=1 type=i32] [debug line = 24:2@76:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1]"}, i64 0, metadata !111), !dbg !127 ; [debug line = 76:16] [debug variable = temp[1]]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.2}, i64 0, metadata !130) nounwind, !dbg !132 ; [debug line = 4:22@77:16] [debug variable = num]
  %sbox.addr.2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.2.lcssa, !dbg !133 ; [#uses=1 type=i8*] [debug line = 24:2@77:16]
  %"temp[2]" = load i8* %sbox.addr.2, align 1, !dbg !133 ; [#uses=1 type=i8] [debug line = 24:2@77:16]
  %"temp[2].cast" = zext i8 %"temp[2]" to i32, !dbg !133 ; [#uses=1 type=i32] [debug line = 24:2@77:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2]"}, i64 0, metadata !112), !dbg !131 ; [debug line = 77:16] [debug variable = temp[2]]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].8"}, i64 0, metadata !134) nounwind, !dbg !135 ; [debug line = 4:22@78:16] [debug variable = num]
  %sbox.addr.3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %k.lcssa, !dbg !136 ; [#uses=1 type=i8*] [debug line = 24:2@78:16]
  %"temp[3]" = load i8* %sbox.addr.3, align 1, !dbg !136 ; [#uses=1 type=i8] [debug line = 24:2@78:16]
  %"temp[3].cast" = zext i8 %"temp[3]" to i32, !dbg !136 ; [#uses=1 type=i32] [debug line = 24:2@78:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3]"}, i64 0, metadata !110), !dbg !113 ; [debug line = 78:16] [debug variable = temp[3]]
  %_lshr.f = lshr i6 %i.1, 2, !dbg !137           ; [#uses=1 type=i6] [debug line = 81:7]
  %_lshr.f.cast = trunc i6 %_lshr.f to i4, !dbg !137 ; [#uses=1 type=i4] [debug line = 81:7]
  %tmp.9 = zext i4 %_lshr.f.cast to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 81:7]
  %Rcon.addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp.9, !dbg !137 ; [#uses=1 type=i8*] [debug line = 81:7]
  %Rcon.load = load i8* %Rcon.addr, align 1, !dbg !137 ; [#uses=1 type=i8] [debug line = 81:7]
  %"temp[0].1" = xor i8 %Rcon.load, %sbox.load, !dbg !137 ; [#uses=1 type=i8] [debug line = 81:7]
  %"temp[0].1.cast" = zext i8 %"temp[0].1" to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 81:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].1"}, i64 0, metadata !107), !dbg !137 ; [debug line = 81:7] [debug variable = temp[0]]
  %"temp[3].1" = select i1 %tmp.7, i32 %"temp[3].cast", i32 %num.assign.2.lcssa ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3].1"}, i64 0, metadata !110), !dbg !113 ; [debug line = 78:16] [debug variable = temp[3]]
  %"temp[2].1" = select i1 %tmp.7, i32 %"temp[2].cast", i32 %num.assign.1.lcssa ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[2].1"}, i64 0, metadata !112), !dbg !131 ; [debug line = 77:16] [debug variable = temp[2]]
  %"temp[1].1" = select i1 %tmp.7, i32 %"temp[1].cast", i32 %num.assign.lcssa ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[1].1"}, i64 0, metadata !111), !dbg !127 ; [debug line = 76:16] [debug variable = temp[1]]
  %"temp[0].2" = select i1 %tmp.7, i32 %"temp[0].1.cast", i32 %k.lcssa ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0].2"}, i64 0, metadata !107), !dbg !137 ; [debug line = 81:7] [debug variable = temp[0]]
  %sum = add i8 %tmp.4, -16                       ; [#uses=1 type=i8]
  %sum.cast = zext i8 %sum to i32                 ; [#uses=1 type=i32]
  %RoundKey.addr.5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum.cast, !dbg !138 ; [#uses=1 type=i32*] [debug line = 93:6]
  %RoundKey.load = load i32* %RoundKey.addr.5, align 4, !dbg !138 ; [#uses=1 type=i32] [debug line = 93:6]
  %tmp.5 = xor i32 %RoundKey.load, %"temp[0].2", !dbg !138 ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.4.cast, !dbg !138 ; [#uses=1 type=i32*] [debug line = 93:6]
  store i32 %tmp.5, i32* %RoundKey.addr.6, align 4, !dbg !138 ; [debug line = 93:6]
  %sum1 = add i8 %tmp.4, -15                      ; [#uses=1 type=i8]
  %sum1.cast = zext i8 %sum1 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum1.cast, !dbg !139 ; [#uses=1 type=i32*] [debug line = 94:6]
  %RoundKey.load.1 = load i32* %RoundKey.addr.7, align 4, !dbg !139 ; [#uses=1 type=i32] [debug line = 94:6]
  %tmp.6 = xor i32 %RoundKey.load.1, %"temp[1].1", !dbg !139 ; [#uses=1 type=i32] [debug line = 94:6]
  %tmp.8 = or i8 %tmp.4, 1, !dbg !139             ; [#uses=1 type=i8] [debug line = 94:6]
  %tmp.12.cast = zext i8 %tmp.8 to i32, !dbg !139 ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.12.cast, !dbg !139 ; [#uses=1 type=i32*] [debug line = 94:6]
  store i32 %tmp.6, i32* %RoundKey.addr.8, align 4, !dbg !139 ; [debug line = 94:6]
  %sum2 = add i8 %tmp.4, -14                      ; [#uses=1 type=i8]
  %sum2.cast = zext i8 %sum2 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum2.cast, !dbg !140 ; [#uses=1 type=i32*] [debug line = 95:6]
  %RoundKey.load.2 = load i32* %RoundKey.addr.9, align 4, !dbg !140 ; [#uses=1 type=i32] [debug line = 95:6]
  %tmp.10 = xor i32 %RoundKey.load.2, %"temp[2].1", !dbg !140 ; [#uses=1 type=i32] [debug line = 95:6]
  %tmp.11 = or i8 %tmp.4, 2, !dbg !140            ; [#uses=1 type=i8] [debug line = 95:6]
  %tmp.14.cast = zext i8 %tmp.11 to i32, !dbg !140 ; [#uses=1 type=i32] [debug line = 95:6]
  %RoundKey.addr.10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.14.cast, !dbg !140 ; [#uses=1 type=i32*] [debug line = 95:6]
  store i32 %tmp.10, i32* %RoundKey.addr.10, align 4, !dbg !140 ; [debug line = 95:6]
  %sum3 = add i8 %tmp.4, -13                      ; [#uses=1 type=i8]
  %sum3.cast = zext i8 %sum3 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3.cast, !dbg !141 ; [#uses=1 type=i32*] [debug line = 96:6]
  %RoundKey.load.3 = load i32* %RoundKey.addr.11, align 4, !dbg !141 ; [#uses=1 type=i32] [debug line = 96:6]
  %tmp.12 = xor i32 %RoundKey.load.3, %"temp[3].1", !dbg !141 ; [#uses=1 type=i32] [debug line = 96:6]
  %tmp.13 = or i8 %tmp.4, 3, !dbg !141            ; [#uses=1 type=i8] [debug line = 96:6]
  %tmp.16.cast = zext i8 %tmp.13 to i32, !dbg !141 ; [#uses=1 type=i32] [debug line = 96:6]
  %RoundKey.addr.12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp.16.cast, !dbg !141 ; [#uses=1 type=i32*] [debug line = 96:6]
  store i32 %tmp.12, i32* %RoundKey.addr.12, align 4, !dbg !141 ; [debug line = 96:6]
  %i.2 = add i6 %i.1, 1, !dbg !142                ; [#uses=1 type=i6] [debug line = 97:6]
  call void @llvm.dbg.value(metadata !{i6 %i.2}, i64 0, metadata !143), !dbg !142 ; [debug line = 97:6] [debug variable = i]
  br label %.preheader3, !dbg !144                ; [debug line = 98:2]

; <label>:6                                       ; preds = %.preheader3
  ret void, !dbg !145                             ; [debug line = 99:1]
}

; [#uses=0]
define void @Cipher([32 x i32]* %Key, [4 x [4 x i32]]* %state) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !146
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [4 x i32]]* %state) nounwind, !map !152
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=4 type=[240 x i32]*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %Key}, i64 0, metadata !158), !dbg !159 ; [debug line = 181:18] [debug variable = Key]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !160), !dbg !161 ; [debug line = 181:31] [debug variable = state]
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !162), !dbg !165 ; [debug line = 203:7] [debug variable = RoundKey]
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind, !dbg !166 ; [debug line = 207:2]
  call fastcc void @AddRoundKey(i6 0, [4 x [4 x i32]]* %state, [240 x i32]* %RoundKey) nounwind, !dbg !167 ; [debug line = 212:2]
  %state.addr = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 0, !dbg !168 ; [#uses=4 type=i32*] [debug line = 138:2@220:3]
  %state.addr.1 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 1, !dbg !173 ; [#uses=4 type=i32*] [debug line = 139:2@220:3]
  %state.addr.2 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 2, !dbg !174 ; [#uses=4 type=i32*] [debug line = 140:2@220:3]
  %state.addr.3 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 3, !dbg !175 ; [#uses=4 type=i32*] [debug line = 141:2@220:3]
  %state.addr.4 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 0, !dbg !176 ; [#uses=4 type=i32*] [debug line = 145:2@220:3]
  %state.addr.5 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 2, !dbg !177 ; [#uses=4 type=i32*] [debug line = 146:2@220:3]
  %state.addr.6 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 1, !dbg !178 ; [#uses=4 type=i32*] [debug line = 149:2@220:3]
  %state.addr.7 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 3, !dbg !179 ; [#uses=4 type=i32*] [debug line = 150:2@220:3]
  %state.addr.8 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 0, !dbg !180 ; [#uses=4 type=i32*] [debug line = 154:2@220:3]
  %state.addr.9 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 3, !dbg !181 ; [#uses=4 type=i32*] [debug line = 155:2@220:3]
  %state.addr.10 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 2, !dbg !182 ; [#uses=4 type=i32*] [debug line = 156:2@220:3]
  %state.addr.11 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 1, !dbg !183 ; [#uses=4 type=i32*] [debug line = 157:2@220:3]
  br label %1, !dbg !184                          ; [debug line = 217:6]

; <label>:1                                       ; preds = %MixColumns.exit, %0
  %round = phi i4 [ 1, %0 ], [ %round.1, %MixColumns.exit ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %round, -6, !dbg !184    ; [#uses=1 type=i1] [debug line = 217:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %3, !dbg !184  ; [debug line = 217:6]

; <label>:3                                       ; preds = %1
  call fastcc void @SubBytes([4 x [4 x i32]]* %state) nounwind, !dbg !185 ; [debug line = 219:3]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !186) nounwind, !dbg !187 ; [debug line = 133:21@220:3] [debug variable = state]
  %state.load.12 = load i32* %state.addr, align 4, !dbg !168 ; [#uses=1 type=i32] [debug line = 138:2@220:3]
  %temp.4 = trunc i32 %state.load.12 to i8, !dbg !168 ; [#uses=1 type=i8] [debug line = 138:2@220:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.4}, i64 0, metadata !188) nounwind, !dbg !168 ; [debug line = 138:2@220:3] [debug variable = temp]
  %state.load.13 = load i32* %state.addr.1, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 139:2@220:3]
  store i32 %state.load.13, i32* %state.addr, align 4, !dbg !173 ; [debug line = 139:2@220:3]
  %state.load.14 = load i32* %state.addr.2, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 140:2@220:3]
  store i32 %state.load.14, i32* %state.addr.1, align 4, !dbg !174 ; [debug line = 140:2@220:3]
  %state.load.15 = load i32* %state.addr.3, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 141:2@220:3]
  store i32 %state.load.15, i32* %state.addr.2, align 4, !dbg !175 ; [debug line = 141:2@220:3]
  %tmp.i = zext i8 %temp.4 to i32, !dbg !190      ; [#uses=1 type=i32] [debug line = 142:2@220:3]
  store i32 %tmp.i, i32* %state.addr.3, align 4, !dbg !190 ; [debug line = 142:2@220:3]
  %state.load.16 = load i32* %state.addr.4, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 145:2@220:3]
  %temp.5 = trunc i32 %state.load.16 to i8, !dbg !176 ; [#uses=1 type=i8] [debug line = 145:2@220:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.5}, i64 0, metadata !188) nounwind, !dbg !176 ; [debug line = 145:2@220:3] [debug variable = temp]
  %state.load.17 = load i32* %state.addr.5, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 146:2@220:3]
  store i32 %state.load.17, i32* %state.addr.4, align 4, !dbg !177 ; [debug line = 146:2@220:3]
  %tmp.2.i = zext i8 %temp.5 to i32, !dbg !191    ; [#uses=1 type=i32] [debug line = 147:2@220:3]
  store i32 %tmp.2.i, i32* %state.addr.5, align 4, !dbg !191 ; [debug line = 147:2@220:3]
  %state.load.18 = load i32* %state.addr.6, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 149:2@220:3]
  %temp.6 = trunc i32 %state.load.18 to i8, !dbg !178 ; [#uses=1 type=i8] [debug line = 149:2@220:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.6}, i64 0, metadata !188) nounwind, !dbg !178 ; [debug line = 149:2@220:3] [debug variable = temp]
  %state.load.19 = load i32* %state.addr.7, align 4, !dbg !179 ; [#uses=1 type=i32] [debug line = 150:2@220:3]
  store i32 %state.load.19, i32* %state.addr.6, align 4, !dbg !179 ; [debug line = 150:2@220:3]
  %tmp.3.i = zext i8 %temp.6 to i32, !dbg !192    ; [#uses=1 type=i32] [debug line = 151:2@220:3]
  store i32 %tmp.3.i, i32* %state.addr.7, align 4, !dbg !192 ; [debug line = 151:2@220:3]
  %state.load.20 = load i32* %state.addr.8, align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 154:2@220:3]
  %temp.7 = trunc i32 %state.load.20 to i8, !dbg !180 ; [#uses=1 type=i8] [debug line = 154:2@220:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.7}, i64 0, metadata !188) nounwind, !dbg !180 ; [debug line = 154:2@220:3] [debug variable = temp]
  %state.load.21 = load i32* %state.addr.9, align 4, !dbg !181 ; [#uses=1 type=i32] [debug line = 155:2@220:3]
  store i32 %state.load.21, i32* %state.addr.8, align 4, !dbg !181 ; [debug line = 155:2@220:3]
  %state.load.22 = load i32* %state.addr.10, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 156:2@220:3]
  store i32 %state.load.22, i32* %state.addr.9, align 4, !dbg !182 ; [debug line = 156:2@220:3]
  %state.load.23 = load i32* %state.addr.11, align 4, !dbg !183 ; [#uses=1 type=i32] [debug line = 157:2@220:3]
  store i32 %state.load.23, i32* %state.addr.10, align 4, !dbg !183 ; [debug line = 157:2@220:3]
  %tmp.4.i = zext i8 %temp.7 to i32, !dbg !193    ; [#uses=1 type=i32] [debug line = 158:2@220:3]
  store i32 %tmp.4.i, i32* %state.addr.11, align 4, !dbg !193 ; [debug line = 158:2@220:3]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !194) nounwind, !dbg !196 ; [debug line = 165:22@221:3] [debug variable = state]
  br label %4, !dbg !197                          ; [debug line = 169:6@221:3]

; <label>:4                                       ; preds = %6, %3
  %i.i = phi i3 [ 0, %3 ], [ %i, %6 ]             ; [#uses=3 type=i3]
  %i.i.cast5 = zext i3 %i.i to i32, !dbg !197     ; [#uses=4 type=i32] [debug line = 169:6@221:3]
  %exitcond.i = icmp eq i3 %i.i, -4, !dbg !197    ; [#uses=1 type=i1] [debug line = 169:6@221:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %MixColumns.exit, label %6, !dbg !197 ; [debug line = 169:6@221:3]

; <label>:6                                       ; preds = %4
  %state.addr.12 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 0, i32 %i.i.cast5, !dbg !200 ; [#uses=2 type=i32*] [debug line = 171:3@221:3]
  %state.load.24 = load i32* %state.addr.12, align 4, !dbg !200 ; [#uses=2 type=i32] [debug line = 171:3@221:3]
  %t = trunc i32 %state.load.24 to i8, !dbg !200  ; [#uses=2 type=i8] [debug line = 171:3@221:3]
  call void @llvm.dbg.value(metadata !{i8 %t}, i64 0, metadata !202) nounwind, !dbg !200 ; [debug line = 171:3@221:3] [debug variable = t]
  %state.addr.13 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 1, i32 %i.i.cast5, !dbg !203 ; [#uses=2 type=i32*] [debug line = 172:3@221:3]
  %state.load.25 = load i32* %state.addr.13, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 172:3@221:3]
  %state.addr.14 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 2, i32 %i.i.cast5, !dbg !203 ; [#uses=2 type=i32*] [debug line = 172:3@221:3]
  %state.load.26 = load i32* %state.addr.14, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 172:3@221:3]
  %state.addr.15 = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 3, i32 %i.i.cast5, !dbg !203 ; [#uses=2 type=i32*] [debug line = 172:3@221:3]
  %state.load.27 = load i32* %state.addr.15, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 172:3@221:3]
  %tmp.i4 = trunc i32 %state.load.25 to i8        ; [#uses=2 type=i8]
  %tmp.3.i5 = trunc i32 %state.load.26 to i8      ; [#uses=3 type=i8]
  %Tm = xor i8 %tmp.i4, %t                        ; [#uses=3 type=i8]
  %tmp.8.i = trunc i32 %state.load.27 to i8       ; [#uses=3 type=i8]
  %tmp = xor i8 %Tm, %tmp.8.i, !dbg !203          ; [#uses=1 type=i8] [debug line = 172:3@221:3]
  %Tmp = xor i8 %tmp, %tmp.3.i5, !dbg !203        ; [#uses=4 type=i8] [debug line = 172:3@221:3]
  call void @llvm.dbg.value(metadata !{i8 %Tmp}, i64 0, metadata !204) nounwind, !dbg !203 ; [debug line = 172:3@221:3] [debug variable = Tmp]
  call void @llvm.dbg.value(metadata !{i8 %Tm}, i64 0, metadata !205) nounwind, !dbg !206 ; [debug line = 173:3@221:3] [debug variable = Tm]
  %tmp.7.i = shl i8 %Tm, 1, !dbg !207             ; [#uses=1 type=i8] [debug line = 173:36@221:3]
  %tmp.10.i = lshr i8 %Tm, 7, !dbg !207           ; [#uses=1 type=i8] [debug line = 173:36@221:3]
  %tmp.15.i = trunc i8 %tmp.10.i to i1, !dbg !207 ; [#uses=1 type=i1] [debug line = 173:36@221:3]
  %tmp.9.i.cast = select i1 %tmp.15.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp1 = xor i8 %tmp.7.i, %Tmp, !dbg !208        ; [#uses=1 type=i8] [debug line = 173:77@221:3]
  %tmp..i = xor i8 %tmp1, %tmp.9.i.cast, !dbg !208 ; [#uses=1 type=i8] [debug line = 173:77@221:3]
  %tmp.1.i = zext i8 %tmp..i to i32, !dbg !208    ; [#uses=1 type=i32] [debug line = 173:77@221:3]
  %tmp.2.i6 = xor i32 %state.load.24, %tmp.1.i, !dbg !208 ; [#uses=1 type=i32] [debug line = 173:77@221:3]
  store i32 %tmp.2.i6, i32* %state.addr.12, align 4, !dbg !208 ; [debug line = 173:77@221:3]
  %Tm.1 = xor i8 %tmp.3.i5, %tmp.i4, !dbg !209    ; [#uses=2 type=i8] [debug line = 174:3@221:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.1}, i64 0, metadata !205) nounwind, !dbg !209 ; [debug line = 174:3@221:3] [debug variable = Tm]
  %tmp.4.i7 = shl i8 %Tm.1, 1, !dbg !210          ; [#uses=1 type=i8] [debug line = 174:36@221:3]
  %tmp.17.i = lshr i8 %Tm.1, 7, !dbg !210         ; [#uses=1 type=i8] [debug line = 174:36@221:3]
  %tmp.22.i = trunc i8 %tmp.17.i to i1, !dbg !210 ; [#uses=1 type=i1] [debug line = 174:36@221:3]
  %tmp.5.i.cast = select i1 %tmp.22.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp2 = xor i8 %tmp.4.i7, %Tmp, !dbg !211       ; [#uses=1 type=i8] [debug line = 174:77@221:3]
  %tmp.11.i = xor i8 %tmp2, %tmp.5.i.cast, !dbg !211 ; [#uses=1 type=i8] [debug line = 174:77@221:3]
  %tmp.12.i = zext i8 %tmp.11.i to i32, !dbg !211 ; [#uses=1 type=i32] [debug line = 174:77@221:3]
  %tmp.13.i = xor i32 %state.load.25, %tmp.12.i, !dbg !211 ; [#uses=1 type=i32] [debug line = 174:77@221:3]
  store i32 %tmp.13.i, i32* %state.addr.13, align 4, !dbg !211 ; [debug line = 174:77@221:3]
  %Tm.2 = xor i8 %tmp.8.i, %tmp.3.i5, !dbg !212   ; [#uses=2 type=i8] [debug line = 175:3@221:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.2}, i64 0, metadata !205) nounwind, !dbg !212 ; [debug line = 175:3@221:3] [debug variable = Tm]
  %tmp.14.i = shl i8 %Tm.2, 1, !dbg !213          ; [#uses=1 type=i8] [debug line = 175:36@221:3]
  %tmp.24.i = lshr i8 %Tm.2, 7, !dbg !213         ; [#uses=1 type=i8] [debug line = 175:36@221:3]
  %tmp.29.i = trunc i8 %tmp.24.i to i1, !dbg !213 ; [#uses=1 type=i1] [debug line = 175:36@221:3]
  %tmp.16.i.cast = select i1 %tmp.29.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp3 = xor i8 %Tmp, %tmp.16.i.cast, !dbg !214  ; [#uses=1 type=i8] [debug line = 175:77@221:3]
  %tmp.18.i = xor i8 %tmp3, %tmp.14.i, !dbg !214  ; [#uses=1 type=i8] [debug line = 175:77@221:3]
  %tmp.19.i = zext i8 %tmp.18.i to i32, !dbg !214 ; [#uses=1 type=i32] [debug line = 175:77@221:3]
  %tmp.20.i = xor i32 %state.load.26, %tmp.19.i, !dbg !214 ; [#uses=1 type=i32] [debug line = 175:77@221:3]
  store i32 %tmp.20.i, i32* %state.addr.14, align 4, !dbg !214 ; [debug line = 175:77@221:3]
  %Tm.3 = xor i8 %tmp.8.i, %t, !dbg !215          ; [#uses=2 type=i8] [debug line = 176:3@221:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.3}, i64 0, metadata !205) nounwind, !dbg !215 ; [debug line = 176:3@221:3] [debug variable = Tm]
  %tmp.21.i = shl i8 %Tm.3, 1, !dbg !216          ; [#uses=1 type=i8] [debug line = 176:26@221:3]
  %tmp.30.i = lshr i8 %Tm.3, 7, !dbg !216         ; [#uses=1 type=i8] [debug line = 176:26@221:3]
  %tmp.31.i = trunc i8 %tmp.30.i to i1, !dbg !216 ; [#uses=1 type=i1] [debug line = 176:26@221:3]
  %tmp.23.i.cast = select i1 %tmp.31.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp4 = xor i8 %Tmp, %tmp.23.i.cast, !dbg !217  ; [#uses=1 type=i8] [debug line = 176:67@221:3]
  %tmp.25.i = xor i8 %tmp4, %tmp.21.i, !dbg !217  ; [#uses=1 type=i8] [debug line = 176:67@221:3]
  %tmp.26.i = zext i8 %tmp.25.i to i32, !dbg !217 ; [#uses=1 type=i32] [debug line = 176:67@221:3]
  %tmp.27.i = xor i32 %state.load.27, %tmp.26.i, !dbg !217 ; [#uses=1 type=i32] [debug line = 176:67@221:3]
  store i32 %tmp.27.i, i32* %state.addr.15, align 4, !dbg !217 ; [debug line = 176:67@221:3]
  %i = add i3 %i.i, 1, !dbg !218                  ; [#uses=1 type=i3] [debug line = 169:14@221:3]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !219) nounwind, !dbg !218 ; [debug line = 169:14@221:3] [debug variable = i]
  br label %4, !dbg !218                          ; [debug line = 169:14@221:3]

MixColumns.exit:                                  ; preds = %4
  %round.cast6.cast = zext i4 %round to i6, !dbg !220 ; [#uses=1 type=i6] [debug line = 222:3]
  call fastcc void @AddRoundKey(i6 %round.cast6.cast, [4 x [4 x i32]]* %state, [240 x i32]* %RoundKey) nounwind, !dbg !220 ; [debug line = 222:3]
  %round.1 = add i4 %round, 1, !dbg !221          ; [#uses=1 type=i4] [debug line = 217:23]
  call void @llvm.dbg.value(metadata !{i4 %round.1}, i64 0, metadata !222), !dbg !221 ; [debug line = 217:23] [debug variable = round]
  br label %1, !dbg !221                          ; [debug line = 217:23]

; <label>:7                                       ; preds = %1
  call fastcc void @SubBytes([4 x [4 x i32]]* %state) nounwind, !dbg !223 ; [debug line = 227:2]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !224) nounwind, !dbg !226 ; [debug line = 133:21@228:2] [debug variable = state]
  %state.load = load i32* %state.addr, align 4, !dbg !227 ; [#uses=1 type=i32] [debug line = 138:2@228:2]
  %temp = trunc i32 %state.load to i8, !dbg !227  ; [#uses=1 type=i8] [debug line = 138:2@228:2]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !228) nounwind, !dbg !227 ; [debug line = 138:2@228:2] [debug variable = temp]
  %state.load.1 = load i32* %state.addr.1, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 139:2@228:2]
  store i32 %state.load.1, i32* %state.addr, align 4, !dbg !229 ; [debug line = 139:2@228:2]
  %state.load.2 = load i32* %state.addr.2, align 4, !dbg !230 ; [#uses=1 type=i32] [debug line = 140:2@228:2]
  store i32 %state.load.2, i32* %state.addr.1, align 4, !dbg !230 ; [debug line = 140:2@228:2]
  %state.load.3 = load i32* %state.addr.3, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 141:2@228:2]
  store i32 %state.load.3, i32* %state.addr.2, align 4, !dbg !231 ; [debug line = 141:2@228:2]
  %tmp.i1 = zext i8 %temp to i32, !dbg !232       ; [#uses=1 type=i32] [debug line = 142:2@228:2]
  store i32 %tmp.i1, i32* %state.addr.3, align 4, !dbg !232 ; [debug line = 142:2@228:2]
  %state.load.4 = load i32* %state.addr.4, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 145:2@228:2]
  %temp.1 = trunc i32 %state.load.4 to i8, !dbg !233 ; [#uses=1 type=i8] [debug line = 145:2@228:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !228) nounwind, !dbg !233 ; [debug line = 145:2@228:2] [debug variable = temp]
  %state.load.5 = load i32* %state.addr.5, align 4, !dbg !234 ; [#uses=1 type=i32] [debug line = 146:2@228:2]
  store i32 %state.load.5, i32* %state.addr.4, align 4, !dbg !234 ; [debug line = 146:2@228:2]
  %tmp.2.i1 = zext i8 %temp.1 to i32, !dbg !235   ; [#uses=1 type=i32] [debug line = 147:2@228:2]
  store i32 %tmp.2.i1, i32* %state.addr.5, align 4, !dbg !235 ; [debug line = 147:2@228:2]
  %state.load.6 = load i32* %state.addr.6, align 4, !dbg !236 ; [#uses=1 type=i32] [debug line = 149:2@228:2]
  %temp.2 = trunc i32 %state.load.6 to i8, !dbg !236 ; [#uses=1 type=i8] [debug line = 149:2@228:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !228) nounwind, !dbg !236 ; [debug line = 149:2@228:2] [debug variable = temp]
  %state.load.7 = load i32* %state.addr.7, align 4, !dbg !237 ; [#uses=1 type=i32] [debug line = 150:2@228:2]
  store i32 %state.load.7, i32* %state.addr.6, align 4, !dbg !237 ; [debug line = 150:2@228:2]
  %tmp.3.i1 = zext i8 %temp.2 to i32, !dbg !238   ; [#uses=1 type=i32] [debug line = 151:2@228:2]
  store i32 %tmp.3.i1, i32* %state.addr.7, align 4, !dbg !238 ; [debug line = 151:2@228:2]
  %state.load.8 = load i32* %state.addr.8, align 4, !dbg !239 ; [#uses=1 type=i32] [debug line = 154:2@228:2]
  %temp.3 = trunc i32 %state.load.8 to i8, !dbg !239 ; [#uses=1 type=i8] [debug line = 154:2@228:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.3}, i64 0, metadata !228) nounwind, !dbg !239 ; [debug line = 154:2@228:2] [debug variable = temp]
  %state.load.9 = load i32* %state.addr.9, align 4, !dbg !240 ; [#uses=1 type=i32] [debug line = 155:2@228:2]
  store i32 %state.load.9, i32* %state.addr.8, align 4, !dbg !240 ; [debug line = 155:2@228:2]
  %state.load.10 = load i32* %state.addr.10, align 4, !dbg !241 ; [#uses=1 type=i32] [debug line = 156:2@228:2]
  store i32 %state.load.10, i32* %state.addr.9, align 4, !dbg !241 ; [debug line = 156:2@228:2]
  %state.load.11 = load i32* %state.addr.11, align 4, !dbg !242 ; [#uses=1 type=i32] [debug line = 157:2@228:2]
  store i32 %state.load.11, i32* %state.addr.10, align 4, !dbg !242 ; [debug line = 157:2@228:2]
  %tmp.4.i1 = zext i8 %temp.3 to i32, !dbg !243   ; [#uses=1 type=i32] [debug line = 158:2@228:2]
  store i32 %tmp.4.i1, i32* %state.addr.11, align 4, !dbg !243 ; [debug line = 158:2@228:2]
  call fastcc void @AddRoundKey(i6 10, [4 x [4 x i32]]* %state, [240 x i32]* %RoundKey) nounwind, !dbg !244 ; [debug line = 229:2]
  ret void, !dbg !245                             ; [debug line = 235:1]
}

; [#uses=3]
define internal fastcc void @AddRoundKey(i6 %round, [4 x [4 x i32]]* nocapture %state, [240 x i32]* nocapture %RoundKey) {
  call void @llvm.dbg.value(metadata !{i6 %round}, i64 0, metadata !246), !dbg !247 ; [debug line = 103:22] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i32]]* %state}, i64 0, metadata !248), !dbg !249 ; [debug line = 103:33] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[240 x i32]* %RoundKey}, i64 0, metadata !250), !dbg !251 ; [debug line = 103:50] [debug variable = RoundKey]
  br label %1, !dbg !252                          ; [debug line = 106:6]

; <label>:1                                       ; preds = %5, %0
  %i = phi i3 [ 0, %0 ], [ %i.3, %5 ]             ; [#uses=4 type=i3]
  %i.cast4 = zext i3 %i to i32, !dbg !252         ; [#uses=1 type=i32] [debug line = 106:6]
  %i.cast = zext i3 %i to i4, !dbg !252           ; [#uses=1 type=i4] [debug line = 106:6]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !252       ; [#uses=1 type=i1] [debug line = 106:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !252 ; [debug line = 106:6]

.preheader.preheader:                             ; preds = %1
  %tmp. = shl i4 %i.cast, 2, !dbg !255            ; [#uses=1 type=i4] [debug line = 110:4]
  %tmp..cast = zext i4 %tmp. to i8, !dbg !255     ; [#uses=1 type=i8] [debug line = 110:4]
  br label %.preheader, !dbg !259                 ; [debug line = 108:7]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i3 [ %j.3, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i3]
  %j.cast2 = zext i3 %j to i32, !dbg !259         ; [#uses=1 type=i32] [debug line = 108:7]
  %exitcond = icmp eq i3 %j, -4, !dbg !259        ; [#uses=1 type=i1] [debug line = 108:7]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !259  ; [debug line = 108:7]

; <label>:4                                       ; preds = %.preheader
  %tmp = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %round, i32 0, i32 3) ; [#uses=1 type=i4]
  %tmp1 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4 %tmp, i1 false, i3 %j) ; [#uses=1 type=i8]
  %sum3 = add i8 %tmp1, %tmp..cast                ; [#uses=1 type=i8]
  %sum3.cast = zext i8 %sum3 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3.cast, !dbg !255 ; [#uses=1 type=i32*] [debug line = 110:4]
  %RoundKey.load = load i32* %RoundKey.addr, align 4, !dbg !255 ; [#uses=1 type=i32] [debug line = 110:4]
  %state.addr = getelementptr [4 x [4 x i32]]* %state, i32 0, i32 %j.cast2, i32 %i.cast4, !dbg !255 ; [#uses=2 type=i32*] [debug line = 110:4]
  %state.load = load i32* %state.addr, align 4, !dbg !255 ; [#uses=1 type=i32] [debug line = 110:4]
  %tmp.14 = xor i32 %state.load, %RoundKey.load, !dbg !255 ; [#uses=1 type=i32] [debug line = 110:4]
  store i32 %tmp.14, i32* %state.addr, align 4, !dbg !255 ; [debug line = 110:4]
  %j.3 = add i3 %j, 1, !dbg !260                  ; [#uses=1 type=i3] [debug line = 108:15]
  call void @llvm.dbg.value(metadata !{i3 %j.3}, i64 0, metadata !261), !dbg !260 ; [debug line = 108:15] [debug variable = j]
  br label %.preheader, !dbg !260                 ; [debug line = 108:15]

; <label>:5                                       ; preds = %.preheader
  %i.3 = add i3 %i, 1, !dbg !262                  ; [#uses=1 type=i3] [debug line = 106:14]
  call void @llvm.dbg.value(metadata !{i3 %i.3}, i64 0, metadata !263), !dbg !262 ; [debug line = 106:14] [debug variable = i]
  br label %1, !dbg !262                          ; [debug line = 106:14]

; <label>:6                                       ; preds = %1
  ret void, !dbg !264                             ; [debug line = 113:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41, !47, !51, !51, !51, !55}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5Cxorisallages2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !19, metadata !26, metadata !29, metadata !30, metadata !31}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5Cxorisallages2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !18}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 103, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 104} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9, metadata !22, metadata !15}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 117, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 118} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !22}
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 133, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 134} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 165, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 166} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 181, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 182} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !15, metadata !22}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{null, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word*", metadata !"int*"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!47 = metadata !{null, metadata !48, metadata !43, metadata !49, metadata !45, metadata !50, metadata !40}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!51 = metadata !{null, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!52 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!55 = metadata !{null, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !40}
!56 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!57 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word [4]*"}
!59 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"Key", metadata !"state"}
!61 = metadata !{i32 786689, metadata !26, metadata !"state", null, i32 117, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !16, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !25, metadata !25}
!64 = metadata !{i32 117, i32 20, metadata !26, null}
!65 = metadata !{i32 120, i32 6, metadata !66, null}
!66 = metadata !{i32 786443, metadata !67, i32 120, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !26, i32 118, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 122, i32 7, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 122, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !66, i32 121, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 124, i32 18, metadata !72, null}
!72 = metadata !{i32 786443, metadata !69, i32 123, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 4, i32 22, metadata !5, metadata !71}
!75 = metadata !{i32 24, i32 2, metadata !76, metadata !71}
!76 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 122, i32 15, metadata !69, null}
!78 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 120, i32 14, metadata !66, null}
!80 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 128, i32 1, metadata !67, null}
!82 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", null, i32 33, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 239}      ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 33, i32 24, metadata !12, null}
!87 = metadata !{i32 786689, metadata !12, metadata !"Key", null, i32 33, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!91 = metadata !{i32 33, i32 43, metadata !12, null}
!92 = metadata !{i32 41, i32 6, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 41, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 50, i32 2, metadata !94, null}
!96 = metadata !{i32 43, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !93, i32 42, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 44, i32 3, metadata !97, null}
!99 = metadata !{i32 45, i32 3, metadata !97, null}
!100 = metadata !{i32 46, i32 3, metadata !97, null}
!101 = metadata !{i32 41, i32 15, metadata !93, null}
!102 = metadata !{i32 54, i32 7, metadata !103, null}
!103 = metadata !{i32 786443, metadata !104, i32 53, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !105, i32 52, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !94, i32 51, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 52, i32 10, metadata !104, null}
!107 = metadata !{i32 790529, metadata !108, metadata !"temp[0]", null, i32 36, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!108 = metadata !{i32 786688, metadata !94, metadata !"temp", metadata !6, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!110 = metadata !{i32 790529, metadata !108, metadata !"temp[3]", null, i32 36, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!111 = metadata !{i32 790529, metadata !108, metadata !"temp[1]", null, i32 36, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!112 = metadata !{i32 790529, metadata !108, metadata !"temp[2]", null, i32 36, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!113 = metadata !{i32 78, i32 16, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 74, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !105, i32 57, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 52, i32 18, metadata !104, null}
!117 = metadata !{i32 786688, metadata !94, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 56, i32 6, metadata !105, null}
!119 = metadata !{i32 786688, metadata !94, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 63, i32 8, metadata !121, null}
!121 = metadata !{i32 786443, metadata !115, i32 62, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !123} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 75, i32 16, metadata !114, null}
!124 = metadata !{i32 4, i32 22, metadata !5, metadata !123}
!125 = metadata !{i32 24, i32 2, metadata !76, metadata !123}
!126 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !127} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 76, i32 16, metadata !114, null}
!128 = metadata !{i32 4, i32 22, metadata !5, metadata !127}
!129 = metadata !{i32 24, i32 2, metadata !76, metadata !127}
!130 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 77, i32 16, metadata !114, null}
!132 = metadata !{i32 4, i32 22, metadata !5, metadata !131}
!133 = metadata !{i32 24, i32 2, metadata !76, metadata !131}
!134 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 4, i32 22, metadata !5, metadata !113}
!136 = metadata !{i32 24, i32 2, metadata !76, metadata !113}
!137 = metadata !{i32 81, i32 7, metadata !115, null}
!138 = metadata !{i32 93, i32 6, metadata !105, null}
!139 = metadata !{i32 94, i32 6, metadata !105, null}
!140 = metadata !{i32 95, i32 6, metadata !105, null}
!141 = metadata !{i32 96, i32 6, metadata !105, null}
!142 = metadata !{i32 97, i32 6, metadata !105, null}
!143 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 98, i32 2, metadata !105, null}
!145 = metadata !{i32 99, i32 1, metadata !94, null}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 31, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"Key", metadata !150, metadata !"unsigned int", i32 0, i32 31}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 31, i32 1}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 31, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"state", metadata !156, metadata !"unsigned int", i32 0, i32 31}
!156 = metadata !{metadata !157, metadata !157}
!157 = metadata !{i32 0, i32 3, i32 1}
!158 = metadata !{i32 786689, metadata !31, metadata !"Key", null, i32 181, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 181, i32 18, metadata !31, null}
!160 = metadata !{i32 786689, metadata !31, metadata !"state", null, i32 181, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 181, i32 31, metadata !31, null}
!162 = metadata !{i32 786688, metadata !163, metadata !"RoundKey", metadata !6, i32 203, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 786443, metadata !31, i32 182, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !16, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!165 = metadata !{i32 203, i32 7, metadata !163, null}
!166 = metadata !{i32 207, i32 2, metadata !163, null}
!167 = metadata !{i32 212, i32 2, metadata !163, null}
!168 = metadata !{i32 138, i32 2, metadata !169, metadata !170}
!169 = metadata !{i32 786443, metadata !29, i32 134, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 220, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !172, i32 218, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786443, metadata !163, i32 217, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 139, i32 2, metadata !169, metadata !170}
!174 = metadata !{i32 140, i32 2, metadata !169, metadata !170}
!175 = metadata !{i32 141, i32 2, metadata !169, metadata !170}
!176 = metadata !{i32 145, i32 2, metadata !169, metadata !170}
!177 = metadata !{i32 146, i32 2, metadata !169, metadata !170}
!178 = metadata !{i32 149, i32 2, metadata !169, metadata !170}
!179 = metadata !{i32 150, i32 2, metadata !169, metadata !170}
!180 = metadata !{i32 154, i32 2, metadata !169, metadata !170}
!181 = metadata !{i32 155, i32 2, metadata !169, metadata !170}
!182 = metadata !{i32 156, i32 2, metadata !169, metadata !170}
!183 = metadata !{i32 157, i32 2, metadata !169, metadata !170}
!184 = metadata !{i32 217, i32 6, metadata !172, null}
!185 = metadata !{i32 219, i32 3, metadata !171, null}
!186 = metadata !{i32 786689, metadata !29, metadata !"state", null, i32 133, metadata !62, i32 0, metadata !170} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 133, i32 21, metadata !29, metadata !170}
!188 = metadata !{i32 786688, metadata !169, metadata !"temp", metadata !6, i32 135, metadata !189, i32 0, metadata !170} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!190 = metadata !{i32 142, i32 2, metadata !169, metadata !170}
!191 = metadata !{i32 147, i32 2, metadata !169, metadata !170}
!192 = metadata !{i32 151, i32 2, metadata !169, metadata !170}
!193 = metadata !{i32 158, i32 2, metadata !169, metadata !170}
!194 = metadata !{i32 786689, metadata !30, metadata !"state", null, i32 165, metadata !62, i32 0, metadata !195} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 221, i32 3, metadata !171, null}
!196 = metadata !{i32 165, i32 22, metadata !30, metadata !195}
!197 = metadata !{i32 169, i32 6, metadata !198, metadata !195}
!198 = metadata !{i32 786443, metadata !199, i32 169, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 786443, metadata !30, i32 166, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 171, i32 3, metadata !201, metadata !195}
!201 = metadata !{i32 786443, metadata !198, i32 170, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 786688, metadata !199, metadata !"t", metadata !6, i32 168, metadata !189, i32 0, metadata !195} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 172, i32 3, metadata !201, metadata !195}
!204 = metadata !{i32 786688, metadata !199, metadata !"Tmp", metadata !6, i32 168, metadata !189, i32 0, metadata !195} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 786688, metadata !199, metadata !"Tm", metadata !6, i32 168, metadata !189, i32 0, metadata !195} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 173, i32 3, metadata !201, metadata !195}
!207 = metadata !{i32 173, i32 36, metadata !201, metadata !195}
!208 = metadata !{i32 173, i32 77, metadata !201, metadata !195}
!209 = metadata !{i32 174, i32 3, metadata !201, metadata !195}
!210 = metadata !{i32 174, i32 36, metadata !201, metadata !195}
!211 = metadata !{i32 174, i32 77, metadata !201, metadata !195}
!212 = metadata !{i32 175, i32 3, metadata !201, metadata !195}
!213 = metadata !{i32 175, i32 36, metadata !201, metadata !195}
!214 = metadata !{i32 175, i32 77, metadata !201, metadata !195}
!215 = metadata !{i32 176, i32 3, metadata !201, metadata !195}
!216 = metadata !{i32 176, i32 26, metadata !201, metadata !195}
!217 = metadata !{i32 176, i32 67, metadata !201, metadata !195}
!218 = metadata !{i32 169, i32 14, metadata !198, metadata !195}
!219 = metadata !{i32 786688, metadata !199, metadata !"i", metadata !6, i32 167, metadata !9, i32 0, metadata !195} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 222, i32 3, metadata !171, null}
!221 = metadata !{i32 217, i32 23, metadata !172, null}
!222 = metadata !{i32 786688, metadata !163, metadata !"round", metadata !6, i32 202, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 227, i32 2, metadata !163, null}
!224 = metadata !{i32 786689, metadata !29, metadata !"state", null, i32 133, metadata !62, i32 0, metadata !225} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 228, i32 2, metadata !163, null}
!226 = metadata !{i32 133, i32 21, metadata !29, metadata !225}
!227 = metadata !{i32 138, i32 2, metadata !169, metadata !225}
!228 = metadata !{i32 786688, metadata !169, metadata !"temp", metadata !6, i32 135, metadata !189, i32 0, metadata !225} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 139, i32 2, metadata !169, metadata !225}
!230 = metadata !{i32 140, i32 2, metadata !169, metadata !225}
!231 = metadata !{i32 141, i32 2, metadata !169, metadata !225}
!232 = metadata !{i32 142, i32 2, metadata !169, metadata !225}
!233 = metadata !{i32 145, i32 2, metadata !169, metadata !225}
!234 = metadata !{i32 146, i32 2, metadata !169, metadata !225}
!235 = metadata !{i32 147, i32 2, metadata !169, metadata !225}
!236 = metadata !{i32 149, i32 2, metadata !169, metadata !225}
!237 = metadata !{i32 150, i32 2, metadata !169, metadata !225}
!238 = metadata !{i32 151, i32 2, metadata !169, metadata !225}
!239 = metadata !{i32 154, i32 2, metadata !169, metadata !225}
!240 = metadata !{i32 155, i32 2, metadata !169, metadata !225}
!241 = metadata !{i32 156, i32 2, metadata !169, metadata !225}
!242 = metadata !{i32 157, i32 2, metadata !169, metadata !225}
!243 = metadata !{i32 158, i32 2, metadata !169, metadata !225}
!244 = metadata !{i32 229, i32 2, metadata !163, null}
!245 = metadata !{i32 235, i32 1, metadata !163, null}
!246 = metadata !{i32 786689, metadata !19, metadata !"round", metadata !6, i32 16777319, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!247 = metadata !{i32 103, i32 22, metadata !19, null}
!248 = metadata !{i32 786689, metadata !19, metadata !"state", null, i32 103, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 103, i32 33, metadata !19, null}
!250 = metadata !{i32 786689, metadata !19, metadata !"RoundKey", null, i32 103, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!251 = metadata !{i32 103, i32 50, metadata !19, null}
!252 = metadata !{i32 106, i32 6, metadata !253, null}
!253 = metadata !{i32 786443, metadata !254, i32 106, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 786443, metadata !19, i32 104, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 110, i32 4, metadata !256, null}
!256 = metadata !{i32 786443, metadata !257, i32 109, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 786443, metadata !258, i32 108, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 786443, metadata !253, i32 107, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 108, i32 7, metadata !257, null}
!260 = metadata !{i32 108, i32 15, metadata !257, null}
!261 = metadata !{i32 786688, metadata !254, metadata !"j", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 106, i32 14, metadata !253, null}
!263 = metadata !{i32 786688, metadata !254, metadata !"i", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 113, i32 1, metadata !254, null}
