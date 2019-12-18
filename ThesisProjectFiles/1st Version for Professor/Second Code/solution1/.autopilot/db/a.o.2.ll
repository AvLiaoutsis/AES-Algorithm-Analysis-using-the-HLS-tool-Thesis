; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@temp22 = internal unnamed_addr constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF" ; [#uses=1 type=[16 x i8]*]
@temp1 = internal unnamed_addr constant [16 x i4] [i4 0, i4 1, i4 2, i4 3, i4 4, i4 5, i4 6, i4 7, i4 -8, i4 -7, i4 -6, i4 -5, i4 -4, i4 -3, i4 -2, i4 -1] ; [#uses=1 type=[16 x i4]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16" ; [#uses=9 type=[256 x i8]*]
@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB" ; [#uses=1 type=[255 x i8]*]
@Cipher.str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=72]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=11]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=1]
declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone

; [#uses=1]
declare i9 @_ssdm_op_BitConcatenate.i9.i5.i1.i3(i5, i1, i3) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone

; [#uses=2]
define internal fastcc void @SubBytes([4 x [4 x i8]]* nocapture %state) {
  call void @llvm.dbg.value(metadata !{[4 x [4 x i8]]* %state}, i64 0, metadata !60), !dbg !63 ; [debug line = 115:29] [debug variable = state]
  br label %1, !dbg !64                           ; [debug line = 118:6]

; <label>:1                                       ; preds = %5, %0
  %i = phi i3 [ 0, %0 ], [ %i.1, %5 ]             ; [#uses=3 type=i3]
  %i.cast2 = zext i3 %i to i32, !dbg !64          ; [#uses=1 type=i32] [debug line = 118:6]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !64        ; [#uses=1 type=i1] [debug line = 118:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !64 ; [debug line = 118:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !67                  ; [debug line = 120:7]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i3 [ %j.1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %j.cast1 = zext i3 %j to i32, !dbg !67          ; [#uses=1 type=i32] [debug line = 120:7]
  %exitcond = icmp eq i3 %j, -4, !dbg !67         ; [#uses=1 type=i1] [debug line = 120:7]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !67   ; [debug line = 120:7]

; <label>:4                                       ; preds = %.preheader
  %state.addr = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 %i.cast2, i32 %j.cast1, !dbg !70 ; [#uses=2 type=i8*] [debug line = 122:18]
  %state.load = load i8* %state.addr, align 1, !dbg !70 ; [#uses=1 type=i8] [debug line = 122:18]
  %num.assign = zext i8 %state.load to i32, !dbg !70 ; [#uses=1 type=i32] [debug line = 122:18]
  call void @llvm.dbg.value(metadata !{i32 %num.assign}, i64 0, metadata !72) nounwind, !dbg !73 ; [debug line = 4:22@122:18] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign, !dbg !74 ; [#uses=1 type=i8*] [debug line = 24:2@122:18]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !74 ; [#uses=1 type=i8] [debug line = 24:2@122:18]
  store i8 %sbox.load, i8* %state.addr, align 1, !dbg !70 ; [debug line = 122:18]
  %j.1 = add i3 %j, 1, !dbg !76                   ; [#uses=1 type=i3] [debug line = 120:15]
  call void @llvm.dbg.value(metadata !{i3 %j.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 120:15] [debug variable = j]
  br label %.preheader, !dbg !76                  ; [debug line = 120:15]

; <label>:5                                       ; preds = %.preheader
  %i.1 = add i3 %i, 1, !dbg !78                   ; [#uses=1 type=i3] [debug line = 118:14]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 118:14] [debug variable = i]
  br label %1, !dbg !78                           ; [debug line = 118:14]

; <label>:6                                       ; preds = %1
  ret void, !dbg !80                              ; [debug line = 126:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion([240 x i8]* nocapture %RoundKey, [32 x i6]* nocapture %Key, i32 %Nk, i32 %Nr) {
  call void @llvm.dbg.value(metadata !{[240 x i8]* %RoundKey}, i64 0, metadata !81), !dbg !85 ; [debug line = 33:33] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{[32 x i6]* %Key}, i64 0, metadata !86), !dbg !90 ; [debug line = 33:61] [debug variable = Key]
  call void @llvm.dbg.value(metadata !{i32 %Nk}, i64 0, metadata !91), !dbg !92 ; [debug line = 33:87] [debug variable = Nk]
  call void @llvm.dbg.value(metadata !{i32 %Nr}, i64 0, metadata !93), !dbg !94 ; [debug line = 33:94] [debug variable = Nr]
  %tmp = icmp sgt i32 %Nk, 0                      ; [#uses=1 type=i1]
  %Nk.cast = trunc i32 %Nk to i31, !dbg !95       ; [#uses=1 type=i31] [debug line = 39:15]
  %i = select i1 %tmp, i31 %Nk.cast, i31 0, !dbg !95 ; [#uses=1 type=i31] [debug line = 39:15]
  %i.cast = zext i31 %i to i32, !dbg !95          ; [#uses=1 type=i32] [debug line = 39:15]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !98), !dbg !95 ; [debug line = 39:15] [debug variable = i]
  br label %1, !dbg !99                           ; [debug line = 39:6]

; <label>:1                                       ; preds = %2, %0
  %i3 = phi i31 [ 0, %0 ], [ %tmp.5, %2 ]         ; [#uses=3 type=i31]
  %i3.cast1 = trunc i31 %i3 to i9, !dbg !99       ; [#uses=1 type=i9] [debug line = 39:6]
  %i3.cast = zext i31 %i3 to i32, !dbg !99        ; [#uses=1 type=i32] [debug line = 39:6]
  %tmp. = icmp slt i32 %i3.cast, %Nk, !dbg !99    ; [#uses=1 type=i1] [debug line = 39:6]
  br i1 %tmp., label %2, label %.preheader1.preheader, !dbg !99 ; [debug line = 39:6]

.preheader1.preheader:                            ; preds = %1
  %tmp.6 = shl i32 %Nr, 2, !dbg !100              ; [#uses=1 type=i32] [debug line = 48:2]
  %tmp.7 = add i32 %tmp.6, 4, !dbg !100           ; [#uses=1 type=i32] [debug line = 48:2]
  %tmp.8 = icmp sgt i32 %Nk, 6, !dbg !101         ; [#uses=1 type=i1] [debug line = 81:11]
  br label %.preheader1, !dbg !100                ; [debug line = 48:2]

; <label>:2                                       ; preds = %1
  %tmp.1 = shl i9 %i3.cast1, 2, !dbg !103         ; [#uses=4 type=i9] [debug line = 41:3]
  %tmp.1.cast = zext i9 %tmp.1 to i32, !dbg !103  ; [#uses=2 type=i32] [debug line = 41:3]
  %Key.addr = getelementptr [32 x i6]* %Key, i32 0, i32 %tmp.1.cast, !dbg !103 ; [#uses=1 type=i6*] [debug line = 41:3]
  %Key.load = load i6* %Key.addr, align 1         ; [#uses=1 type=i6]
  %extLd1 = sext i6 %Key.load to i8               ; [#uses=1 type=i8]
  %RoundKey.addr = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.1.cast, !dbg !103 ; [#uses=1 type=i8*] [debug line = 41:3]
  store i8 %extLd1, i8* %RoundKey.addr, align 1, !dbg !103 ; [debug line = 41:3]
  %tmp.2 = or i9 %tmp.1, 1, !dbg !105             ; [#uses=1 type=i9] [debug line = 42:3]
  %tmp.2.cast = zext i9 %tmp.2 to i32, !dbg !105  ; [#uses=2 type=i32] [debug line = 42:3]
  %Key.addr.1 = getelementptr [32 x i6]* %Key, i32 0, i32 %tmp.2.cast, !dbg !105 ; [#uses=1 type=i6*] [debug line = 42:3]
  %Key.load.1 = load i6* %Key.addr.1, align 1     ; [#uses=1 type=i6]
  %extLd2 = sext i6 %Key.load.1 to i8             ; [#uses=1 type=i8]
  %RoundKey.addr.1 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.2.cast, !dbg !105 ; [#uses=1 type=i8*] [debug line = 42:3]
  store i8 %extLd2, i8* %RoundKey.addr.1, align 1, !dbg !105 ; [debug line = 42:3]
  %tmp.3 = or i9 %tmp.1, 2, !dbg !106             ; [#uses=1 type=i9] [debug line = 43:3]
  %tmp.3.cast = zext i9 %tmp.3 to i32, !dbg !106  ; [#uses=2 type=i32] [debug line = 43:3]
  %Key.addr.2 = getelementptr [32 x i6]* %Key, i32 0, i32 %tmp.3.cast, !dbg !106 ; [#uses=1 type=i6*] [debug line = 43:3]
  %Key.load.2 = load i6* %Key.addr.2, align 1     ; [#uses=1 type=i6]
  %extLd3 = sext i6 %Key.load.2 to i8             ; [#uses=1 type=i8]
  %RoundKey.addr.2 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.3.cast, !dbg !106 ; [#uses=1 type=i8*] [debug line = 43:3]
  store i8 %extLd3, i8* %RoundKey.addr.2, align 1, !dbg !106 ; [debug line = 43:3]
  %tmp.4 = or i9 %tmp.1, 3, !dbg !107             ; [#uses=1 type=i9] [debug line = 44:3]
  %tmp.4.cast = zext i9 %tmp.4 to i32, !dbg !107  ; [#uses=2 type=i32] [debug line = 44:3]
  %Key.addr.3 = getelementptr [32 x i6]* %Key, i32 0, i32 %tmp.4.cast, !dbg !107 ; [#uses=1 type=i6*] [debug line = 44:3]
  %Key.load.3 = load i6* %Key.addr.3, align 1     ; [#uses=1 type=i6]
  %extLd = sext i6 %Key.load.3 to i8              ; [#uses=1 type=i8]
  %RoundKey.addr.3 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.4.cast, !dbg !107 ; [#uses=1 type=i8*] [debug line = 44:3]
  store i8 %extLd, i8* %RoundKey.addr.3, align 1, !dbg !107 ; [debug line = 44:3]
  %tmp.5 = add i31 %i3, 1, !dbg !95               ; [#uses=1 type=i31] [debug line = 39:15]
  br label %1, !dbg !95                           ; [debug line = 39:15]

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.preheader
  %temp.3 = phi i8 [ undef, %.preheader1.preheader ], [ %temp.3.4, %._crit_edge ] ; [#uses=1 type=i8]
  %temp.2 = phi i8 [ undef, %.preheader1.preheader ], [ %temp.2.4, %._crit_edge ] ; [#uses=1 type=i8]
  %temp.1 = phi i8 [ undef, %.preheader1.preheader ], [ %temp.1.4, %._crit_edge ] ; [#uses=1 type=i8]
  %temp = phi i8 [ undef, %.preheader1.preheader ], [ %temp.0.4, %._crit_edge ] ; [#uses=1 type=i8]
  %i.1 = phi i32 [ %i.cast, %.preheader1.preheader ], [ %i.2, %._crit_edge ] ; [#uses=6 type=i32]
  %i.1.cast = trunc i32 %i.1 to i9, !dbg !100     ; [#uses=1 type=i9] [debug line = 48:2]
  %tmp.9 = icmp slt i32 %i.1, %tmp.7, !dbg !100   ; [#uses=1 type=i1] [debug line = 48:2]
  br i1 %tmp.9, label %.preheader.preheader, label %8, !dbg !100 ; [debug line = 48:2]

.preheader.preheader:                             ; preds = %.preheader1
  %tmp.10 = shl i9 %i.1.cast, 2, !dbg !108        ; [#uses=3 type=i9] [debug line = 52:7]
  %tmp.10.cast1 = trunc i9 %tmp.10 to i8, !dbg !108 ; [#uses=3 type=i8] [debug line = 52:7]
  %tmp.10.cast = zext i9 %tmp.10 to i32, !dbg !108 ; [#uses=1 type=i32] [debug line = 52:7]
  br label %.preheader, !dbg !111                 ; [debug line = 50:10]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %temp.3.1 = phi i8 [ %temp.3, %.preheader.preheader ], [ %"temp[3]", %_ifconv ] ; [#uses=3 type=i8]
  %temp.2.1 = phi i8 [ %temp.2, %.preheader.preheader ], [ %"temp[3].1", %_ifconv ] ; [#uses=3 type=i8]
  %"temp[3].2" = phi i8 [ %temp.1, %.preheader.preheader ], [ %"temp[3].4", %_ifconv ] ; [#uses=3 type=i8]
  %"temp[3].9" = phi i8 [ %temp, %.preheader.preheader ], [ %"temp[3].6", %_ifconv ] ; [#uses=2 type=i8]
  %j = phi i3 [ 0, %.preheader.preheader ], [ %j.2, %_ifconv ] ; [#uses=4 type=i3]
  %exitcond = icmp eq i3 %j, -4, !dbg !111        ; [#uses=1 type=i1] [debug line = 50:10]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %_ifconv, !dbg !111 ; [debug line = 50:10]

_ifconv:                                          ; preds = %.preheader
  %tmp1 = xor i3 %j, -4                           ; [#uses=1 type=i3]
  %tmp24.cast = sext i3 %tmp1 to i9               ; [#uses=1 type=i9]
  %sum8 = add i9 %tmp.10, %tmp24.cast             ; [#uses=1 type=i9]
  %sum8.cast = zext i9 %sum8 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr.4 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %sum8.cast, !dbg !108 ; [#uses=1 type=i8*] [debug line = 52:7]
  %"temp[0].2" = load i8* %RoundKey.addr.4, align 1, !dbg !108 ; [#uses=4 type=i8] [debug line = 52:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].2"}, i64 0, metadata !112), !dbg !108 ; [debug line = 52:7] [debug variable = temp[0]]
  %j.t = trunc i3 %j to i2                        ; [#uses=3 type=i2]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].2"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].2"}, i64 0, metadata !115), !dbg !108 ; [debug line = 52:7] [debug variable = temp[1]]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].2"}, i64 0, metadata !116), !dbg !108 ; [debug line = 52:7] [debug variable = temp[2]]
  %sel_tmp = icmp eq i2 %j.t, -2                  ; [#uses=2 type=i1]
  %sel_tmp2 = icmp eq i2 %j.t, 1                  ; [#uses=3 type=i1]
  %sel_tmp4 = icmp eq i2 %j.t, 0                  ; [#uses=4 type=i1]
  %or_cond = or i1 %sel_tmp4, %sel_tmp2           ; [#uses=1 type=i1]
  %newSel = select i1 %sel_tmp, i8 %temp.3.1, i8 %"temp[0].2" ; [#uses=1 type=i8]
  %"temp[3]" = select i1 %or_cond, i8 %temp.3.1, i8 %newSel ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3]"}, i64 0, metadata !114), !dbg !117 ; [debug line = 76:16] [debug variable = temp[3]]
  %or_cond1 = or i1 %sel_tmp4, %sel_tmp2          ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp, i8 %"temp[0].2", i8 %temp.2.1 ; [#uses=1 type=i8]
  %"temp[3].1" = select i1 %or_cond1, i8 %temp.2.1, i8 %newSel2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].1"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].2"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  %"temp[3].3" = select i1 %sel_tmp2, i8 %"temp[0].2", i8 %"temp[3].2" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].3"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  %"temp[3].4" = select i1 %sel_tmp4, i8 %"temp[3].2", i8 %"temp[3].3" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].4"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].9"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  %"temp[3].6" = select i1 %sel_tmp4, i8 %"temp[0].2", i8 %"temp[3].9" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].6"}, i64 0, metadata !114), !dbg !108 ; [debug line = 52:7] [debug variable = temp[3]]
  %j.2 = add i3 %j, 1, !dbg !120                  ; [#uses=1 type=i3] [debug line = 50:18]
  call void @llvm.dbg.value(metadata !{i3 %j.2}, i64 0, metadata !121), !dbg !120 ; [debug line = 50:18] [debug variable = j]
  br label %.preheader, !dbg !120                 ; [debug line = 50:18]

; <label>:4                                       ; preds = %.preheader
  %k.lcssa = phi i8 [ %"temp[3].9", %.preheader ] ; [#uses=3 type=i8]
  %temp.1.1.lcssa = phi i8 [ %"temp[3].2", %.preheader ] ; [#uses=3 type=i8]
  %temp.2.1.lcssa = phi i8 [ %temp.2.1, %.preheader ] ; [#uses=3 type=i8]
  %temp.3.1.lcssa = phi i8 [ %temp.3.1, %.preheader ] ; [#uses=3 type=i8]
  %tmp.11 = srem i32 %i.1, %Nk, !dbg !122         ; [#uses=2 type=i32] [debug line = 54:6]
  %tmp.12 = icmp eq i32 %tmp.11, 0, !dbg !122     ; [#uses=1 type=i1] [debug line = 54:6]
  br i1 %tmp.12, label %5, label %6, !dbg !122    ; [debug line = 54:6]

; <label>:5                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].9"}, i64 0, metadata !123), !dbg !124 ; [debug line = 61:8] [debug variable = k]
  %num.assign = zext i8 %temp.1.1.lcssa to i32, !dbg !126 ; [#uses=1 type=i32] [debug line = 73:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign}, i64 0, metadata !127) nounwind, !dbg !128 ; [debug line = 4:22@73:16] [debug variable = num]
  %sbox.addr = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign, !dbg !129 ; [#uses=1 type=i8*] [debug line = 24:2@73:16]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !129 ; [#uses=1 type=i8] [debug line = 24:2@73:16]
  %num.assign.1 = zext i8 %temp.2.1.lcssa to i32, !dbg !130 ; [#uses=1 type=i32] [debug line = 74:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.1}, i64 0, metadata !131) nounwind, !dbg !132 ; [debug line = 4:22@74:16] [debug variable = num]
  %sbox.addr.1 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.1, !dbg !133 ; [#uses=1 type=i8*] [debug line = 24:2@74:16]
  %"temp[1]" = load i8* %sbox.addr.1, align 1, !dbg !133 ; [#uses=1 type=i8] [debug line = 24:2@74:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1]"}, i64 0, metadata !115), !dbg !130 ; [debug line = 74:16] [debug variable = temp[1]]
  %num.assign.2 = zext i8 %temp.3.1.lcssa to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 75:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.2}, i64 0, metadata !135) nounwind, !dbg !136 ; [debug line = 4:22@75:16] [debug variable = num]
  %sbox.addr.2 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.2, !dbg !137 ; [#uses=1 type=i8*] [debug line = 24:2@75:16]
  %"temp[2].1" = load i8* %sbox.addr.2, align 1, !dbg !137 ; [#uses=1 type=i8] [debug line = 24:2@75:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2].1"}, i64 0, metadata !116), !dbg !134 ; [debug line = 75:16] [debug variable = temp[2]]
  %num.assign.3 = zext i8 %k.lcssa to i32, !dbg !117 ; [#uses=1 type=i32] [debug line = 76:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.3}, i64 0, metadata !138) nounwind, !dbg !139 ; [debug line = 4:22@76:16] [debug variable = num]
  %sbox.addr.3 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.3, !dbg !140 ; [#uses=1 type=i8*] [debug line = 24:2@76:16]
  %"temp[3].7" = load i8* %sbox.addr.3, align 1, !dbg !140 ; [#uses=1 type=i8] [debug line = 24:2@76:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].7"}, i64 0, metadata !114), !dbg !117 ; [debug line = 76:16] [debug variable = temp[3]]
  %tmp.13 = sdiv i32 %i.1, %Nk, !dbg !141         ; [#uses=1 type=i32] [debug line = 79:7]
  %Rcon.addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp.13, !dbg !141 ; [#uses=1 type=i8*] [debug line = 79:7]
  %Rcon.load = load i8* %Rcon.addr, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 79:7]
  %"temp[0]" = xor i8 %Rcon.load, %sbox.load, !dbg !141 ; [#uses=1 type=i8] [debug line = 79:7]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0]"}, i64 0, metadata !112), !dbg !141 ; [debug line = 79:7] [debug variable = temp[0]]
  br label %._crit_edge, !dbg !142                ; [debug line = 80:6]

; <label>:6                                       ; preds = %4
  %tmp.14 = icmp eq i32 %tmp.11, 4, !dbg !101     ; [#uses=1 type=i1] [debug line = 81:11]
  %or.cond = and i1 %tmp.8, %tmp.14, !dbg !101    ; [#uses=1 type=i1] [debug line = 81:11]
  br i1 %or.cond, label %7, label %._crit_edge, !dbg !101 ; [debug line = 81:11]

; <label>:7                                       ; preds = %6
  %num.assign.4 = zext i8 %k.lcssa to i32, !dbg !143 ; [#uses=1 type=i32] [debug line = 85:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.4}, i64 0, metadata !146) nounwind, !dbg !147 ; [debug line = 4:22@85:16] [debug variable = num]
  %sbox.addr.4 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.4, !dbg !148 ; [#uses=1 type=i8*] [debug line = 24:2@85:16]
  %"temp[0].1" = load i8* %sbox.addr.4, align 1, !dbg !148 ; [#uses=1 type=i8] [debug line = 24:2@85:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0].1"}, i64 0, metadata !112), !dbg !143 ; [debug line = 85:16] [debug variable = temp[0]]
  %num.assign.5 = zext i8 %temp.1.1.lcssa to i32, !dbg !149 ; [#uses=1 type=i32] [debug line = 86:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.5}, i64 0, metadata !150) nounwind, !dbg !151 ; [debug line = 4:22@86:16] [debug variable = num]
  %sbox.addr.5 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.5, !dbg !152 ; [#uses=1 type=i8*] [debug line = 24:2@86:16]
  %"temp[1].1" = load i8* %sbox.addr.5, align 1, !dbg !152 ; [#uses=1 type=i8] [debug line = 24:2@86:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[1].1"}, i64 0, metadata !115), !dbg !149 ; [debug line = 86:16] [debug variable = temp[1]]
  %num.assign.6 = zext i8 %temp.2.1.lcssa to i32, !dbg !153 ; [#uses=1 type=i32] [debug line = 87:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.6}, i64 0, metadata !154) nounwind, !dbg !155 ; [debug line = 4:22@87:16] [debug variable = num]
  %sbox.addr.6 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.6, !dbg !156 ; [#uses=1 type=i8*] [debug line = 24:2@87:16]
  %"temp[2].2" = load i8* %sbox.addr.6, align 1, !dbg !156 ; [#uses=1 type=i8] [debug line = 24:2@87:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[2].2"}, i64 0, metadata !116), !dbg !153 ; [debug line = 87:16] [debug variable = temp[2]]
  %num.assign.7 = zext i8 %temp.3.1.lcssa to i32, !dbg !157 ; [#uses=1 type=i32] [debug line = 88:16]
  call void @llvm.dbg.value(metadata !{i32 %num.assign.7}, i64 0, metadata !158) nounwind, !dbg !159 ; [debug line = 4:22@88:16] [debug variable = num]
  %sbox.addr.7 = getelementptr [256 x i8]* @sbox, i32 0, i32 %num.assign.7, !dbg !160 ; [#uses=1 type=i8*] [debug line = 24:2@88:16]
  %"temp[3].8" = load i8* %sbox.addr.7, align 1, !dbg !160 ; [#uses=1 type=i8] [debug line = 24:2@88:16]
  call void @llvm.dbg.value(metadata !{i8 %"temp[3].8"}, i64 0, metadata !114), !dbg !157 ; [debug line = 88:16] [debug variable = temp[3]]
  br label %._crit_edge, !dbg !161                ; [debug line = 90:6]

._crit_edge:                                      ; preds = %7, %6, %5
  %temp.3.4 = phi i8 [ %"temp[3].7", %5 ], [ %"temp[3].8", %7 ], [ %temp.3.1.lcssa, %6 ] ; [#uses=2 type=i8]
  %temp.2.4 = phi i8 [ %"temp[2].1", %5 ], [ %"temp[2].2", %7 ], [ %temp.2.1.lcssa, %6 ] ; [#uses=2 type=i8]
  %temp.1.4 = phi i8 [ %"temp[1]", %5 ], [ %"temp[1].1", %7 ], [ %temp.1.1.lcssa, %6 ] ; [#uses=2 type=i8]
  %temp.0.4 = phi i8 [ %"temp[0]", %5 ], [ %"temp[0].1", %7 ], [ %k.lcssa, %6 ] ; [#uses=2 type=i8]
  %tmp.15 = sub nsw i32 %i.1, %Nk, !dbg !162      ; [#uses=1 type=i32] [debug line = 91:6]
  %tmp.28.cast = trunc i32 %tmp.15 to i9, !dbg !162 ; [#uses=1 type=i9] [debug line = 91:6]
  %tmp.16 = shl i9 %tmp.28.cast, 2, !dbg !162     ; [#uses=4 type=i9] [debug line = 91:6]
  %tmp.29.cast = zext i9 %tmp.16 to i32, !dbg !162 ; [#uses=1 type=i32] [debug line = 91:6]
  %RoundKey.addr.5 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.29.cast, !dbg !162 ; [#uses=1 type=i8*] [debug line = 91:6]
  %RoundKey.load = load i8* %RoundKey.addr.5, align 1, !dbg !162 ; [#uses=1 type=i8] [debug line = 91:6]
  %tmp.17 = xor i8 %RoundKey.load, %temp.0.4, !dbg !162 ; [#uses=1 type=i8] [debug line = 91:6]
  %RoundKey.addr.6 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.10.cast, !dbg !162 ; [#uses=1 type=i8*] [debug line = 91:6]
  store i8 %tmp.17, i8* %RoundKey.addr.6, align 1, !dbg !162 ; [debug line = 91:6]
  %tmp.18 = or i9 %tmp.16, 1, !dbg !163           ; [#uses=1 type=i9] [debug line = 92:6]
  %tmp.31.cast = zext i9 %tmp.18 to i32, !dbg !163 ; [#uses=1 type=i32] [debug line = 92:6]
  %RoundKey.addr.7 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.31.cast, !dbg !163 ; [#uses=1 type=i8*] [debug line = 92:6]
  %RoundKey.load.1 = load i8* %RoundKey.addr.7, align 1, !dbg !163 ; [#uses=1 type=i8] [debug line = 92:6]
  %tmp.19 = xor i8 %RoundKey.load.1, %temp.1.4, !dbg !163 ; [#uses=1 type=i8] [debug line = 92:6]
  %tmp.20 = or i8 %tmp.10.cast1, 1, !dbg !163     ; [#uses=1 type=i8] [debug line = 92:6]
  %tmp.33.cast = zext i8 %tmp.20 to i32, !dbg !163 ; [#uses=1 type=i32] [debug line = 92:6]
  %RoundKey.addr.8 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.33.cast, !dbg !163 ; [#uses=1 type=i8*] [debug line = 92:6]
  store i8 %tmp.19, i8* %RoundKey.addr.8, align 1, !dbg !163 ; [debug line = 92:6]
  %tmp.21 = or i9 %tmp.16, 2, !dbg !164           ; [#uses=1 type=i9] [debug line = 93:6]
  %tmp.34.cast = zext i9 %tmp.21 to i32, !dbg !164 ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.9 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.34.cast, !dbg !164 ; [#uses=1 type=i8*] [debug line = 93:6]
  %RoundKey.load.2 = load i8* %RoundKey.addr.9, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 93:6]
  %tmp.22 = xor i8 %RoundKey.load.2, %temp.2.4, !dbg !164 ; [#uses=1 type=i8] [debug line = 93:6]
  %tmp.23 = or i8 %tmp.10.cast1, 2, !dbg !164     ; [#uses=1 type=i8] [debug line = 93:6]
  %tmp.36.cast = zext i8 %tmp.23 to i32, !dbg !164 ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.10 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.36.cast, !dbg !164 ; [#uses=1 type=i8*] [debug line = 93:6]
  store i8 %tmp.22, i8* %RoundKey.addr.10, align 1, !dbg !164 ; [debug line = 93:6]
  %tmp.24 = or i9 %tmp.16, 3, !dbg !165           ; [#uses=1 type=i9] [debug line = 94:6]
  %tmp.37.cast = zext i9 %tmp.24 to i32, !dbg !165 ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.11 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.37.cast, !dbg !165 ; [#uses=1 type=i8*] [debug line = 94:6]
  %RoundKey.load.3 = load i8* %RoundKey.addr.11, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 94:6]
  %tmp.25 = xor i8 %RoundKey.load.3, %temp.3.4, !dbg !165 ; [#uses=1 type=i8] [debug line = 94:6]
  %tmp.26 = or i8 %tmp.10.cast1, 3, !dbg !165     ; [#uses=1 type=i8] [debug line = 94:6]
  %tmp.39.cast = zext i8 %tmp.26 to i32, !dbg !165 ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.12 = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %tmp.39.cast, !dbg !165 ; [#uses=1 type=i8*] [debug line = 94:6]
  store i8 %tmp.25, i8* %RoundKey.addr.12, align 1, !dbg !165 ; [debug line = 94:6]
  %i.2 = add nsw i32 %i.1, 1, !dbg !166           ; [#uses=1 type=i32] [debug line = 95:6]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !98), !dbg !166 ; [debug line = 95:6] [debug variable = i]
  br label %.preheader1, !dbg !167                ; [debug line = 96:2]

; <label>:8                                       ; preds = %.preheader1
  ret void, !dbg !168                             ; [debug line = 97:1]
}

; [#uses=0]
define void @Cipher(i32 %Nr, i32 %Nk, [16 x i8]* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Nr) nounwind, !map !169
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Nk) nounwind, !map !175
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %out) nounwind, !map !179
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %state = alloca [4 x [4 x i8]], align 1         ; [#uses=23 type=[4 x [4 x i8]]*]
  %RoundKey = alloca [240 x i8], align 1          ; [#uses=4 type=[240 x i8]*]
  %Key = alloca [32 x i6], align 1                ; [#uses=2 type=[32 x i6]*]
  %in = alloca [16 x i8], align 1                 ; [#uses=2 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %Nr}, i64 0, metadata !185), !dbg !186 ; [debug line = 179:17] [debug variable = Nr]
  call void @llvm.dbg.value(metadata !{i32 %Nk}, i64 0, metadata !187), !dbg !188 ; [debug line = 179:24] [debug variable = Nk]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %out}, i64 0, metadata !189), !dbg !193 ; [debug line = 179:41] [debug variable = out]
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i8]]* %state}, metadata !194), !dbg !196 ; [debug line = 201:16] [debug variable = state]
  call void @llvm.dbg.declare(metadata !{[240 x i8]* %RoundKey}, metadata !197), !dbg !198 ; [debug line = 202:16] [debug variable = RoundKey]
  call void @llvm.dbg.declare(metadata !{[32 x i6]* %Key}, metadata !199), !dbg !200 ; [debug line = 203:16] [debug variable = Key]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %in}, metadata !201), !dbg !202 ; [debug line = 204:16] [debug variable = in]
  %tmp = shl nsw i32 %Nk, 2, !dbg !203            ; [#uses=1 type=i32] [debug line = 208:6]
  br label %1, !dbg !203                          ; [debug line = 208:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i.3, %2 ]            ; [#uses=2 type=i31]
  %i.cast = zext i31 %i to i32, !dbg !203         ; [#uses=5 type=i32] [debug line = 208:6]
  %tmp. = icmp slt i32 %i.cast, %tmp, !dbg !203   ; [#uses=1 type=i1] [debug line = 208:6]
  br i1 %tmp., label %2, label %3, !dbg !203      ; [debug line = 208:6]

; <label>:2                                       ; preds = %1
  %temp1.addr = getelementptr [16 x i4]* @temp1, i32 0, i32 %i.cast, !dbg !205 ; [#uses=1 type=i4*] [debug line = 210:3]
  %temp1.load = load i4* %temp1.addr, align 1, !dbg !205 ; [#uses=1 type=i4] [debug line = 210:3]
  %Key.addr13 = getelementptr [32 x i6]* %Key, i32 0, i32 %i.cast, !dbg !205 ; [#uses=1 type=i6*] [debug line = 210:3]
  %temp1.load.cast.cast = zext i4 %temp1.load to i6, !dbg !205 ; [#uses=1 type=i6] [debug line = 210:3]
  store i6 %temp1.load.cast.cast, i6* %Key.addr13, align 1, !dbg !205 ; [debug line = 210:3]
  %temp22.addr = getelementptr inbounds [16 x i8]* @temp22, i32 0, i32 %i.cast, !dbg !207 ; [#uses=1 type=i8*] [debug line = 211:3]
  %temp22.load = load i8* %temp22.addr, align 1, !dbg !207 ; [#uses=1 type=i8] [debug line = 211:3]
  %in.addr = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %i.cast, !dbg !207 ; [#uses=1 type=i8*] [debug line = 211:3]
  store i8 %temp22.load, i8* %in.addr, align 1, !dbg !207 ; [debug line = 211:3]
  %i.3 = add i31 %i, 1, !dbg !208                 ; [#uses=1 type=i31] [debug line = 208:17]
  call void @llvm.dbg.value(metadata !{i31 %i.3}, i64 0, metadata !209), !dbg !208 ; [debug line = 208:17] [debug variable = i]
  br label %1, !dbg !208                          ; [debug line = 208:17]

; <label>:3                                       ; preds = %1
  call fastcc void @KeyExpansion([240 x i8]* %RoundKey, [32 x i6]* %Key, i32 %Nk, i32 %Nr) nounwind, !dbg !210 ; [debug line = 215:2]
  br label %4, !dbg !211                          ; [debug line = 218:6]

; <label>:4                                       ; preds = %8, %3
  %i.1 = phi i3 [ 0, %3 ], [ %i.4, %8 ]           ; [#uses=4 type=i3]
  %i.1.cast1 = zext i3 %i.1 to i32, !dbg !211     ; [#uses=1 type=i32] [debug line = 218:6]
  %i.1.cast = zext i3 %i.1 to i4, !dbg !211       ; [#uses=1 type=i4] [debug line = 218:6]
  %exitcond3 = icmp eq i3 %i.1, -4, !dbg !211     ; [#uses=1 type=i1] [debug line = 218:6]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %9, label %.preheader4.preheader, !dbg !211 ; [debug line = 218:6]

.preheader4.preheader:                            ; preds = %4
  %tmp.27 = shl i4 %i.1.cast, 2, !dbg !213        ; [#uses=1 type=i4] [debug line = 222:4]
  br label %.preheader4, !dbg !217                ; [debug line = 220:7]

.preheader4:                                      ; preds = %7, %.preheader4.preheader
  %j = phi i3 [ %j.3, %7 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i3]
  %j.cast1 = zext i3 %j to i32, !dbg !217         ; [#uses=1 type=i32] [debug line = 220:7]
  %j.cast = zext i3 %j to i4, !dbg !217           ; [#uses=1 type=i4] [debug line = 220:7]
  %exitcond2 = icmp eq i3 %j, -4, !dbg !217       ; [#uses=1 type=i1] [debug line = 220:7]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %8, label %7, !dbg !217 ; [debug line = 220:7]

; <label>:7                                       ; preds = %.preheader4
  %tmp.29 = add i4 %tmp.27, %j.cast, !dbg !213    ; [#uses=1 type=i4] [debug line = 222:4]
  %tmp.42.cast = zext i4 %tmp.29 to i32, !dbg !213 ; [#uses=1 type=i32] [debug line = 222:4]
  %in.addr.1 = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %tmp.42.cast, !dbg !213 ; [#uses=1 type=i8*] [debug line = 222:4]
  %in.load = load i8* %in.addr.1, align 1, !dbg !213 ; [#uses=1 type=i8] [debug line = 222:4]
  %state.assign.addr = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %j.cast1, i32 %i.1.cast1, !dbg !213 ; [#uses=1 type=i8*] [debug line = 222:4]
  store i8 %in.load, i8* %state.assign.addr, align 1, !dbg !213 ; [debug line = 222:4]
  %j.3 = add i3 %j, 1, !dbg !218                  ; [#uses=1 type=i3] [debug line = 220:15]
  call void @llvm.dbg.value(metadata !{i3 %j.3}, i64 0, metadata !219), !dbg !218 ; [debug line = 220:15] [debug variable = j]
  br label %.preheader4, !dbg !218                ; [debug line = 220:15]

; <label>:8                                       ; preds = %.preheader4
  %i.4 = add i3 %i.1, 1, !dbg !220                ; [#uses=1 type=i3] [debug line = 218:14]
  call void @llvm.dbg.value(metadata !{i3 %i.4}, i64 0, metadata !209), !dbg !220 ; [debug line = 218:14] [debug variable = i]
  br label %4, !dbg !220                          ; [debug line = 218:14]

; <label>:9                                       ; preds = %4
  call fastcc void @AddRoundKey(i32 0, [4 x [4 x i8]]* %state, [240 x i8]* %RoundKey) nounwind, !dbg !221 ; [debug line = 227:2]
  %state.addr = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 1, i32 0, !dbg !222 ; [#uses=4 type=i8*] [debug line = 136:2@235:3]
  %state.addr.1 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 1, i32 1, !dbg !227 ; [#uses=4 type=i8*] [debug line = 137:2@235:3]
  %state.addr.2 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 1, i32 2, !dbg !228 ; [#uses=4 type=i8*] [debug line = 138:2@235:3]
  %state.addr.3 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 1, i32 3, !dbg !229 ; [#uses=4 type=i8*] [debug line = 139:2@235:3]
  %state.addr.4 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 2, i32 0, !dbg !230 ; [#uses=4 type=i8*] [debug line = 143:2@235:3]
  %state.addr.5 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 2, i32 2, !dbg !231 ; [#uses=4 type=i8*] [debug line = 144:2@235:3]
  %state.addr.6 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 2, i32 1, !dbg !232 ; [#uses=4 type=i8*] [debug line = 147:2@235:3]
  %state.addr.7 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 2, i32 3, !dbg !233 ; [#uses=4 type=i8*] [debug line = 148:2@235:3]
  %state.addr.8 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 3, i32 0, !dbg !234 ; [#uses=4 type=i8*] [debug line = 152:2@235:3]
  %state.addr.9 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 3, i32 3, !dbg !235 ; [#uses=4 type=i8*] [debug line = 153:2@235:3]
  %state.addr.10 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 3, i32 2, !dbg !236 ; [#uses=4 type=i8*] [debug line = 154:2@235:3]
  %state.addr.11 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 3, i32 1, !dbg !237 ; [#uses=4 type=i8*] [debug line = 155:2@235:3]
  br label %10, !dbg !238                         ; [debug line = 232:6]

; <label>:10                                      ; preds = %MixColumns.exit, %9
  %round = phi i31 [ 1, %9 ], [ %round.1, %MixColumns.exit ] ; [#uses=2 type=i31]
  %round.cast = zext i31 %round to i32, !dbg !238 ; [#uses=2 type=i32] [debug line = 232:6]
  %tmp.28 = icmp slt i32 %round.cast, %Nr, !dbg !238 ; [#uses=1 type=i1] [debug line = 232:6]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.28, label %12, label %16, !dbg !238  ; [debug line = 232:6]

; <label>:12                                      ; preds = %10
  call fastcc void @SubBytes([4 x [4 x i8]]* %state) nounwind, !dbg !239 ; [debug line = 234:3]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i8]]* %state}, i64 0, metadata !240) nounwind, !dbg !241 ; [debug line = 131:30@235:3] [debug variable = state]
  %temp = load i8* %state.addr, align 1, !dbg !222 ; [#uses=1 type=i8] [debug line = 136:2@235:3]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !242) nounwind, !dbg !222 ; [debug line = 136:2@235:3] [debug variable = temp]
  %state.load = load i8* %state.addr.1, align 1, !dbg !227 ; [#uses=1 type=i8] [debug line = 137:2@235:3]
  store i8 %state.load, i8* %state.addr, align 1, !dbg !227 ; [debug line = 137:2@235:3]
  %state.load.1 = load i8* %state.addr.2, align 1, !dbg !228 ; [#uses=1 type=i8] [debug line = 138:2@235:3]
  store i8 %state.load.1, i8* %state.addr.1, align 1, !dbg !228 ; [debug line = 138:2@235:3]
  %state.load.2 = load i8* %state.addr.3, align 1, !dbg !229 ; [#uses=1 type=i8] [debug line = 139:2@235:3]
  store i8 %state.load.2, i8* %state.addr.2, align 1, !dbg !229 ; [debug line = 139:2@235:3]
  store i8 %temp, i8* %state.addr.3, align 1, !dbg !243 ; [debug line = 140:2@235:3]
  %temp.1 = load i8* %state.addr.4, align 1, !dbg !230 ; [#uses=1 type=i8] [debug line = 143:2@235:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !242) nounwind, !dbg !230 ; [debug line = 143:2@235:3] [debug variable = temp]
  %state.load.4 = load i8* %state.addr.5, align 1, !dbg !231 ; [#uses=1 type=i8] [debug line = 144:2@235:3]
  store i8 %state.load.4, i8* %state.addr.4, align 1, !dbg !231 ; [debug line = 144:2@235:3]
  store i8 %temp.1, i8* %state.addr.5, align 1, !dbg !244 ; [debug line = 145:2@235:3]
  %temp.2 = load i8* %state.addr.6, align 1, !dbg !232 ; [#uses=1 type=i8] [debug line = 147:2@235:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !242) nounwind, !dbg !232 ; [debug line = 147:2@235:3] [debug variable = temp]
  %state.load.6 = load i8* %state.addr.7, align 1, !dbg !233 ; [#uses=1 type=i8] [debug line = 148:2@235:3]
  store i8 %state.load.6, i8* %state.addr.6, align 1, !dbg !233 ; [debug line = 148:2@235:3]
  store i8 %temp.2, i8* %state.addr.7, align 1, !dbg !245 ; [debug line = 149:2@235:3]
  %temp.3 = load i8* %state.addr.8, align 1, !dbg !234 ; [#uses=1 type=i8] [debug line = 152:2@235:3]
  call void @llvm.dbg.value(metadata !{i8 %temp.3}, i64 0, metadata !242) nounwind, !dbg !234 ; [debug line = 152:2@235:3] [debug variable = temp]
  %state.load.8 = load i8* %state.addr.9, align 1, !dbg !235 ; [#uses=1 type=i8] [debug line = 153:2@235:3]
  store i8 %state.load.8, i8* %state.addr.8, align 1, !dbg !235 ; [debug line = 153:2@235:3]
  %state.load.9 = load i8* %state.addr.10, align 1, !dbg !236 ; [#uses=1 type=i8] [debug line = 154:2@235:3]
  store i8 %state.load.9, i8* %state.addr.9, align 1, !dbg !236 ; [debug line = 154:2@235:3]
  %state.load.10 = load i8* %state.addr.11, align 1, !dbg !237 ; [#uses=1 type=i8] [debug line = 155:2@235:3]
  store i8 %state.load.10, i8* %state.addr.10, align 1, !dbg !237 ; [debug line = 155:2@235:3]
  store i8 %temp.3, i8* %state.addr.11, align 1, !dbg !246 ; [debug line = 156:2@235:3]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i8]]* %state}, i64 0, metadata !247) nounwind, !dbg !249 ; [debug line = 163:31@236:3] [debug variable = state]
  br label %13, !dbg !250                         ; [debug line = 167:6@236:3]

; <label>:13                                      ; preds = %15, %12
  %i.i = phi i3 [ 0, %12 ], [ %i.5, %15 ]         ; [#uses=3 type=i3]
  %i.i.cast = zext i3 %i.i to i32, !dbg !250      ; [#uses=4 type=i32] [debug line = 167:6@236:3]
  %exitcond.i = icmp eq i3 %i.i, -4, !dbg !250    ; [#uses=1 type=i1] [debug line = 167:6@236:3]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %MixColumns.exit, label %15, !dbg !250 ; [debug line = 167:6@236:3]

; <label>:15                                      ; preds = %13
  %state.assign.addr.1 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 0, i32 %i.i.cast, !dbg !253 ; [#uses=2 type=i8*] [debug line = 169:3@236:3]
  %t = load i8* %state.assign.addr.1, align 1, !dbg !253 ; [#uses=3 type=i8] [debug line = 169:3@236:3]
  call void @llvm.dbg.value(metadata !{i8 %t}, i64 0, metadata !255) nounwind, !dbg !253 ; [debug line = 169:3@236:3] [debug variable = t]
  %state.assign.addr.2 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 1, i32 %i.i.cast, !dbg !256 ; [#uses=2 type=i8*] [debug line = 170:3@236:3]
  %state.assign.load = load i8* %state.assign.addr.2, align 1, !dbg !256 ; [#uses=3 type=i8] [debug line = 170:3@236:3]
  %state.assign.addr.3 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 2, i32 %i.i.cast, !dbg !256 ; [#uses=2 type=i8*] [debug line = 170:3@236:3]
  %state.assign.load.1 = load i8* %state.assign.addr.3, align 1, !dbg !256 ; [#uses=3 type=i8] [debug line = 170:3@236:3]
  %state.assign.addr.4 = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 3, i32 %i.i.cast, !dbg !256 ; [#uses=2 type=i8*] [debug line = 170:3@236:3]
  %state.assign.load.2 = load i8* %state.assign.addr.4, align 1, !dbg !256 ; [#uses=4 type=i8] [debug line = 170:3@236:3]
  %Tm = xor i8 %state.assign.load, %t, !dbg !256  ; [#uses=4 type=i8] [debug line = 170:3@236:3]
  %Tm.4 = xor i8 %state.assign.load.1, %Tm, !dbg !256 ; [#uses=2 type=i8] [debug line = 170:3@236:3]
  %Tmp = xor i8 %state.assign.load.2, %Tm.4, !dbg !256 ; [#uses=2 type=i8] [debug line = 170:3@236:3]
  call void @llvm.dbg.value(metadata !{i8 %Tmp}, i64 0, metadata !257) nounwind, !dbg !256 ; [debug line = 170:3@236:3] [debug variable = Tmp]
  call void @llvm.dbg.value(metadata !{i8 %Tm}, i64 0, metadata !258) nounwind, !dbg !259 ; [debug line = 171:3@236:3] [debug variable = Tm]
  %tmp.i = shl i8 %Tm, 1, !dbg !260               ; [#uses=1 type=i8] [debug line = 171:36@236:3]
  %tmp.1.i = lshr i8 %Tm, 7, !dbg !260            ; [#uses=1 type=i8] [debug line = 171:36@236:3]
  %tmp.6.i = trunc i8 %tmp.1.i to i1, !dbg !260   ; [#uses=1 type=i1] [debug line = 171:36@236:3]
  %tmp.7.i.cast = select i1 %tmp.6.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp1 = xor i8 %t, %tmp.i, !dbg !261            ; [#uses=1 type=i8] [debug line = 171:77@236:3]
  %tmp2 = xor i8 %tmp.7.i.cast, %Tmp, !dbg !261   ; [#uses=1 type=i8] [debug line = 171:77@236:3]
  %tmp.9.i = xor i8 %tmp2, %tmp1, !dbg !261       ; [#uses=1 type=i8] [debug line = 171:77@236:3]
  store i8 %tmp.9.i, i8* %state.assign.addr.1, align 1, !dbg !261 ; [debug line = 171:77@236:3]
  %Tm.1 = xor i8 %state.assign.load.1, %state.assign.load, !dbg !262 ; [#uses=2 type=i8] [debug line = 172:3@236:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.1}, i64 0, metadata !258) nounwind, !dbg !262 ; [debug line = 172:3@236:3] [debug variable = Tm]
  %tmp..i = shl i8 %Tm.1, 1, !dbg !263            ; [#uses=1 type=i8] [debug line = 172:36@236:3]
  %tmp.10.i = lshr i8 %Tm.1, 7, !dbg !263         ; [#uses=1 type=i8] [debug line = 172:36@236:3]
  %tmp.15.i = trunc i8 %tmp.10.i to i1, !dbg !263 ; [#uses=1 type=i1] [debug line = 172:36@236:3]
  %tmp.2.i.cast = select i1 %tmp.15.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp3 = xor i8 %state.assign.load, %tmp..i, !dbg !264 ; [#uses=1 type=i8] [debug line = 172:77@236:3]
  %tmp4 = xor i8 %tmp.2.i.cast, %Tmp, !dbg !264   ; [#uses=1 type=i8] [debug line = 172:77@236:3]
  %tmp.4.i = xor i8 %tmp4, %tmp3, !dbg !264       ; [#uses=1 type=i8] [debug line = 172:77@236:3]
  store i8 %tmp.4.i, i8* %state.assign.addr.2, align 1, !dbg !264 ; [debug line = 172:77@236:3]
  %Tm.2 = xor i8 %state.assign.load.2, %state.assign.load.1, !dbg !265 ; [#uses=2 type=i8] [debug line = 173:3@236:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.2}, i64 0, metadata !258) nounwind, !dbg !265 ; [debug line = 173:3@236:3] [debug variable = Tm]
  %tmp.5.i = shl i8 %Tm.2, 1, !dbg !266           ; [#uses=1 type=i8] [debug line = 173:36@236:3]
  %tmp.19.i = lshr i8 %Tm.2, 7, !dbg !266         ; [#uses=1 type=i8] [debug line = 173:36@236:3]
  %tmp.20.i = trunc i8 %tmp.19.i to i1, !dbg !266 ; [#uses=1 type=i1] [debug line = 173:36@236:3]
  %tmp.11.i.cast = select i1 %tmp.20.i, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp5 = xor i8 %state.assign.load.2, %Tm, !dbg !267 ; [#uses=1 type=i8] [debug line = 173:77@236:3]
  %tmp6 = xor i8 %tmp.5.i, %tmp.11.i.cast, !dbg !267 ; [#uses=1 type=i8] [debug line = 173:77@236:3]
  %tmp.13.i = xor i8 %tmp6, %tmp5, !dbg !267      ; [#uses=1 type=i8] [debug line = 173:77@236:3]
  store i8 %tmp.13.i, i8* %state.assign.addr.3, align 1, !dbg !267 ; [debug line = 173:77@236:3]
  %Tm.3 = xor i8 %state.assign.load.2, %t, !dbg !268 ; [#uses=2 type=i8] [debug line = 174:3@236:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.3}, i64 0, metadata !258) nounwind, !dbg !268 ; [debug line = 174:3@236:3] [debug variable = Tm]
  %tmp.14.i = shl i8 %Tm.3, 1, !dbg !269          ; [#uses=1 type=i8] [debug line = 174:26@236:3]
  %tmp.21.i = lshr i8 %Tm.3, 7, !dbg !269         ; [#uses=1 type=i8] [debug line = 174:26@236:3]
  %tmp.22.i = trunc i8 %tmp.21.i to i1, !dbg !269 ; [#uses=1 type=i1] [debug line = 174:26@236:3]
  %tmp.16.i.cast = select i1 %tmp.22.i, i8 27, i8 0 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Tm.4}, i64 0, metadata !258) nounwind, !dbg !269 ; [debug line = 174:26@236:3] [debug variable = Tm]
  %tmp7 = xor i8 %Tm.4, %tmp.16.i.cast, !dbg !270 ; [#uses=1 type=i8] [debug line = 174:67@236:3]
  %tmp.18.i = xor i8 %tmp7, %tmp.14.i, !dbg !270  ; [#uses=1 type=i8] [debug line = 174:67@236:3]
  store i8 %tmp.18.i, i8* %state.assign.addr.4, align 1, !dbg !270 ; [debug line = 174:67@236:3]
  %i.5 = add i3 %i.i, 1, !dbg !271                ; [#uses=1 type=i3] [debug line = 167:14@236:3]
  call void @llvm.dbg.value(metadata !{i3 %i.5}, i64 0, metadata !272) nounwind, !dbg !271 ; [debug line = 167:14@236:3] [debug variable = i]
  br label %13, !dbg !271                         ; [debug line = 167:14@236:3]

MixColumns.exit:                                  ; preds = %13
  call fastcc void @AddRoundKey(i32 %round.cast, [4 x [4 x i8]]* %state, [240 x i8]* %RoundKey) nounwind, !dbg !273 ; [debug line = 237:3]
  %round.1 = add i31 %round, 1, !dbg !274         ; [#uses=1 type=i31] [debug line = 232:23]
  call void @llvm.dbg.value(metadata !{i31 %round.1}, i64 0, metadata !275), !dbg !274 ; [debug line = 232:23] [debug variable = round]
  br label %10, !dbg !274                         ; [debug line = 232:23]

; <label>:16                                      ; preds = %10
  call fastcc void @SubBytes([4 x [4 x i8]]* %state) nounwind, !dbg !276 ; [debug line = 242:2]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i8]]* %state}, i64 0, metadata !277) nounwind, !dbg !279 ; [debug line = 131:30@243:2] [debug variable = state]
  %temp.4 = load i8* %state.addr, align 1, !dbg !280 ; [#uses=1 type=i8] [debug line = 136:2@243:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.4}, i64 0, metadata !281) nounwind, !dbg !280 ; [debug line = 136:2@243:2] [debug variable = temp]
  %state.load.12 = load i8* %state.addr.1, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 137:2@243:2]
  store i8 %state.load.12, i8* %state.addr, align 1, !dbg !282 ; [debug line = 137:2@243:2]
  %state.load.13 = load i8* %state.addr.2, align 1, !dbg !283 ; [#uses=1 type=i8] [debug line = 138:2@243:2]
  store i8 %state.load.13, i8* %state.addr.1, align 1, !dbg !283 ; [debug line = 138:2@243:2]
  %state.load.14 = load i8* %state.addr.3, align 1, !dbg !284 ; [#uses=1 type=i8] [debug line = 139:2@243:2]
  store i8 %state.load.14, i8* %state.addr.2, align 1, !dbg !284 ; [debug line = 139:2@243:2]
  store i8 %temp.4, i8* %state.addr.3, align 1, !dbg !285 ; [debug line = 140:2@243:2]
  %temp.5 = load i8* %state.addr.4, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 143:2@243:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.5}, i64 0, metadata !281) nounwind, !dbg !286 ; [debug line = 143:2@243:2] [debug variable = temp]
  %state.load.16 = load i8* %state.addr.5, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 144:2@243:2]
  store i8 %state.load.16, i8* %state.addr.4, align 1, !dbg !287 ; [debug line = 144:2@243:2]
  store i8 %temp.5, i8* %state.addr.5, align 1, !dbg !288 ; [debug line = 145:2@243:2]
  %temp.6 = load i8* %state.addr.6, align 1, !dbg !289 ; [#uses=1 type=i8] [debug line = 147:2@243:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.6}, i64 0, metadata !281) nounwind, !dbg !289 ; [debug line = 147:2@243:2] [debug variable = temp]
  %state.load.18 = load i8* %state.addr.7, align 1, !dbg !290 ; [#uses=1 type=i8] [debug line = 148:2@243:2]
  store i8 %state.load.18, i8* %state.addr.6, align 1, !dbg !290 ; [debug line = 148:2@243:2]
  store i8 %temp.6, i8* %state.addr.7, align 1, !dbg !291 ; [debug line = 149:2@243:2]
  %temp.7 = load i8* %state.addr.8, align 1, !dbg !292 ; [#uses=1 type=i8] [debug line = 152:2@243:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.7}, i64 0, metadata !281) nounwind, !dbg !292 ; [debug line = 152:2@243:2] [debug variable = temp]
  %state.load.20 = load i8* %state.addr.9, align 1, !dbg !293 ; [#uses=1 type=i8] [debug line = 153:2@243:2]
  store i8 %state.load.20, i8* %state.addr.8, align 1, !dbg !293 ; [debug line = 153:2@243:2]
  %state.load.21 = load i8* %state.addr.10, align 1, !dbg !294 ; [#uses=1 type=i8] [debug line = 154:2@243:2]
  store i8 %state.load.21, i8* %state.addr.9, align 1, !dbg !294 ; [debug line = 154:2@243:2]
  %state.load.22 = load i8* %state.addr.11, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 155:2@243:2]
  store i8 %state.load.22, i8* %state.addr.10, align 1, !dbg !295 ; [debug line = 155:2@243:2]
  store i8 %temp.7, i8* %state.addr.11, align 1, !dbg !296 ; [debug line = 156:2@243:2]
  call fastcc void @AddRoundKey(i32 %Nr, [4 x [4 x i8]]* %state, [240 x i8]* %RoundKey) nounwind, !dbg !297 ; [debug line = 244:2]
  br label %17, !dbg !298                         ; [debug line = 248:6]

; <label>:17                                      ; preds = %21, %16
  %i.2 = phi i3 [ 0, %16 ], [ %i.6, %21 ]         ; [#uses=4 type=i3]
  %i.2.cast9 = zext i3 %i.2 to i32, !dbg !298     ; [#uses=1 type=i32] [debug line = 248:6]
  %i.2.cast = zext i3 %i.2 to i4, !dbg !298       ; [#uses=1 type=i4] [debug line = 248:6]
  %exitcond1 = icmp eq i3 %i.2, -4, !dbg !298     ; [#uses=1 type=i1] [debug line = 248:6]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %22, label %.preheader.preheader, !dbg !298 ; [debug line = 248:6]

.preheader.preheader:                             ; preds = %17
  %tmp.30 = shl i4 %i.2.cast, 2, !dbg !300        ; [#uses=1 type=i4] [debug line = 252:4]
  br label %.preheader, !dbg !304                 ; [debug line = 250:7]

.preheader:                                       ; preds = %20, %.preheader.preheader
  %j.1 = phi i3 [ %j.4, %20 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i3]
  %j.1.cast8 = zext i3 %j.1 to i32, !dbg !304     ; [#uses=1 type=i32] [debug line = 250:7]
  %j.1.cast = zext i3 %j.1 to i4, !dbg !304       ; [#uses=1 type=i4] [debug line = 250:7]
  %exitcond = icmp eq i3 %j.1, -4, !dbg !304      ; [#uses=1 type=i1] [debug line = 250:7]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %21, label %20, !dbg !304 ; [debug line = 250:7]

; <label>:20                                      ; preds = %.preheader
  %state.assign.addr.5 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %j.1.cast8, i32 %i.2.cast9, !dbg !300 ; [#uses=1 type=i8*] [debug line = 252:4]
  %state.assign.load.3 = load i8* %state.assign.addr.5, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 252:4]
  %sum = add i4 %tmp.30, %j.1.cast                ; [#uses=1 type=i4]
  %sum.cast = zext i4 %sum to i32                 ; [#uses=1 type=i32]
  %out.addr = getelementptr [16 x i8]* %out, i32 0, i32 %sum.cast, !dbg !300 ; [#uses=1 type=i8*] [debug line = 252:4]
  store i8 %state.assign.load.3, i8* %out.addr, align 1, !dbg !300 ; [debug line = 252:4]
  %j.4 = add i3 %j.1, 1, !dbg !305                ; [#uses=1 type=i3] [debug line = 250:15]
  call void @llvm.dbg.value(metadata !{i3 %j.4}, i64 0, metadata !219), !dbg !305 ; [debug line = 250:15] [debug variable = j]
  br label %.preheader, !dbg !305                 ; [debug line = 250:15]

; <label>:21                                      ; preds = %.preheader
  %i.6 = add i3 %i.2, 1, !dbg !306                ; [#uses=1 type=i3] [debug line = 248:14]
  call void @llvm.dbg.value(metadata !{i3 %i.6}, i64 0, metadata !209), !dbg !306 ; [debug line = 248:14] [debug variable = i]
  br label %17, !dbg !306                         ; [debug line = 248:14]

; <label>:22                                      ; preds = %17
  ret void, !dbg !307                             ; [debug line = 256:1]
}

; [#uses=3]
define internal fastcc void @AddRoundKey(i32 %round, [4 x [4 x i8]]* nocapture %state, [240 x i8]* nocapture %RoundKey) {
  call void @llvm.dbg.value(metadata !{i32 %round}, i64 0, metadata !308), !dbg !309 ; [debug line = 101:22] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[4 x [4 x i8]]* %state}, i64 0, metadata !310), !dbg !311 ; [debug line = 101:42] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[240 x i8]* %RoundKey}, i64 0, metadata !312), !dbg !313 ; [debug line = 101:68] [debug variable = RoundKey]
  br label %1, !dbg !314                          ; [debug line = 104:6]

; <label>:1                                       ; preds = %5, %0
  %i = phi i3 [ 0, %0 ], [ %i.7, %5 ]             ; [#uses=4 type=i3]
  %i.cast4 = zext i3 %i to i32, !dbg !314         ; [#uses=1 type=i32] [debug line = 104:6]
  %i.cast = zext i3 %i to i4, !dbg !314           ; [#uses=1 type=i4] [debug line = 104:6]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !314       ; [#uses=1 type=i1] [debug line = 104:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !314 ; [debug line = 104:6]

.preheader.preheader:                             ; preds = %1
  %tmp. = shl i4 %i.cast, 2, !dbg !317            ; [#uses=1 type=i4] [debug line = 108:4]
  %tmp..cast = zext i4 %tmp. to i9, !dbg !317     ; [#uses=1 type=i9] [debug line = 108:4]
  br label %.preheader, !dbg !321                 ; [debug line = 106:7]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i3 [ %j.5, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i3]
  %j.cast2 = zext i3 %j to i32, !dbg !321         ; [#uses=1 type=i32] [debug line = 106:7]
  %exitcond = icmp eq i3 %j, -4, !dbg !321        ; [#uses=1 type=i1] [debug line = 106:7]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !321  ; [debug line = 106:7]

; <label>:4                                       ; preds = %.preheader
  %tmp = call i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32 %round, i32 0, i32 4) ; [#uses=1 type=i5]
  %tmp1 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i1.i3(i5 %tmp, i1 false, i3 %j) ; [#uses=1 type=i9]
  %sum3 = add i9 %tmp1, %tmp..cast                ; [#uses=1 type=i9]
  %sum3.cast = zext i9 %sum3 to i32               ; [#uses=1 type=i32]
  %RoundKey.addr = getelementptr [240 x i8]* %RoundKey, i32 0, i32 %sum3.cast, !dbg !317 ; [#uses=1 type=i8*] [debug line = 108:4]
  %RoundKey.load = load i8* %RoundKey.addr, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 108:4]
  %state.addr = getelementptr [4 x [4 x i8]]* %state, i32 0, i32 %j.cast2, i32 %i.cast4, !dbg !317 ; [#uses=2 type=i8*] [debug line = 108:4]
  %state.load = load i8* %state.addr, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 108:4]
  %tmp.31 = xor i8 %state.load, %RoundKey.load, !dbg !317 ; [#uses=1 type=i8] [debug line = 108:4]
  store i8 %tmp.31, i8* %state.addr, align 1, !dbg !317 ; [debug line = 108:4]
  %j.5 = add i3 %j, 1, !dbg !322                  ; [#uses=1 type=i3] [debug line = 106:15]
  call void @llvm.dbg.value(metadata !{i3 %j.5}, i64 0, metadata !323), !dbg !322 ; [debug line = 106:15] [debug variable = j]
  br label %.preheader, !dbg !322                 ; [debug line = 106:15]

; <label>:5                                       ; preds = %.preheader
  %i.7 = add i3 %i, 1, !dbg !324                  ; [#uses=1 type=i3] [debug line = 104:14]
  call void @llvm.dbg.value(metadata !{i3 %i.7}, i64 0, metadata !325), !dbg !324 ; [debug line = 104:14] [debug variable = i]
  br label %1, !dbg !324                          ; [debug line = 104:14]

; <label>:6                                       ; preds = %1
  ret void, !dbg !326                             ; [debug line = 111:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !46, !52, !52, !52, !56}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !18, metadata !25, metadata !28, metadata !29, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"CCodedFiles/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !17, metadata !9, metadata !9}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 101, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 102} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !9, metadata !21, metadata !15}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 115, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 116} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !21}
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 131, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 132} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 163, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 164} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 179, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 180} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !9, metadata !9, metadata !15}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!39 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!40 = metadata !{null, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !39}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0, i32 0}
!42 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int*", metadata !"int", metadata !"int"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon", metadata !"Nk", metadata !"Nr"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !39}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar [4]*", metadata !"uchar*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!52 = metadata !{null, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"uchar [4]*"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!56 = metadata !{null, metadata !57, metadata !48, metadata !58, metadata !50, metadata !59, metadata !39}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uchar*"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"Nr", metadata !"Nk", metadata !"out"}
!60 = metadata !{i32 786689, metadata !25, metadata !"state", null, i32 115, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !24, metadata !24}
!63 = metadata !{i32 115, i32 29, metadata !25, null}
!64 = metadata !{i32 118, i32 6, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 118, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !25, i32 116, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 120, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 120, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !65, i32 119, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 122, i32 18, metadata !71, null}
!71 = metadata !{i32 786443, metadata !68, i32 121, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !70} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 4, i32 22, metadata !5, metadata !70}
!74 = metadata !{i32 24, i32 2, metadata !75, metadata !70}
!75 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 120, i32 15, metadata !68, null}
!77 = metadata !{i32 786688, metadata !66, metadata !"j", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 118, i32 14, metadata !65, null}
!79 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 126, i32 1, metadata !66, null}
!81 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", null, i32 33, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1920, i64 8, i32 0, i32 0, metadata !16, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 239}      ; [ DW_TAG_subrange_type ]
!85 = metadata !{i32 33, i32 33, metadata !12, null}
!86 = metadata !{i32 786689, metadata !12, metadata !"Key", null, i32 33, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !16, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!90 = metadata !{i32 33, i32 61, metadata !12, null}
!91 = metadata !{i32 786689, metadata !12, metadata !"Nk", metadata !6, i32 67108897, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 33, i32 87, metadata !12, null}
!93 = metadata !{i32 786689, metadata !12, metadata !"Nr", metadata !6, i32 83886113, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 33, i32 94, metadata !12, null}
!95 = metadata !{i32 39, i32 15, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 39, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 39, i32 6, metadata !96, null}
!100 = metadata !{i32 48, i32 2, metadata !97, null}
!101 = metadata !{i32 81, i32 11, metadata !102, null}
!102 = metadata !{i32 786443, metadata !97, i32 49, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 41, i32 3, metadata !104, null}
!104 = metadata !{i32 786443, metadata !96, i32 40, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 42, i32 3, metadata !104, null}
!106 = metadata !{i32 43, i32 3, metadata !104, null}
!107 = metadata !{i32 44, i32 3, metadata !104, null}
!108 = metadata !{i32 52, i32 7, metadata !109, null}
!109 = metadata !{i32 786443, metadata !110, i32 51, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786443, metadata !102, i32 50, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 50, i32 10, metadata !110, null}
!112 = metadata !{i32 790529, metadata !113, metadata !"temp[0]", null, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!113 = metadata !{i32 786688, metadata !97, metadata !"temp", metadata !6, i32 36, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 790529, metadata !113, metadata !"temp[3]", null, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!115 = metadata !{i32 790529, metadata !113, metadata !"temp[1]", null, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!116 = metadata !{i32 790529, metadata !113, metadata !"temp[2]", null, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!117 = metadata !{i32 76, i32 16, metadata !118, null}
!118 = metadata !{i32 786443, metadata !119, i32 72, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !102, i32 55, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 50, i32 18, metadata !110, null}
!121 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 54, i32 6, metadata !102, null}
!123 = metadata !{i32 786688, metadata !97, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 61, i32 8, metadata !125, null}
!125 = metadata !{i32 786443, metadata !119, i32 60, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 73, i32 16, metadata !118, null}
!127 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !126} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 4, i32 22, metadata !5, metadata !126}
!129 = metadata !{i32 24, i32 2, metadata !75, metadata !126}
!130 = metadata !{i32 74, i32 16, metadata !118, null}
!131 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !130} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 4, i32 22, metadata !5, metadata !130}
!133 = metadata !{i32 24, i32 2, metadata !75, metadata !130}
!134 = metadata !{i32 75, i32 16, metadata !118, null}
!135 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !134} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 4, i32 22, metadata !5, metadata !134}
!137 = metadata !{i32 24, i32 2, metadata !75, metadata !134}
!138 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 4, i32 22, metadata !5, metadata !117}
!140 = metadata !{i32 24, i32 2, metadata !75, metadata !117}
!141 = metadata !{i32 79, i32 7, metadata !119, null}
!142 = metadata !{i32 80, i32 6, metadata !119, null}
!143 = metadata !{i32 85, i32 16, metadata !144, null}
!144 = metadata !{i32 786443, metadata !145, i32 84, i32 7, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !102, i32 82, i32 6, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !143} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 4, i32 22, metadata !5, metadata !143}
!148 = metadata !{i32 24, i32 2, metadata !75, metadata !143}
!149 = metadata !{i32 86, i32 16, metadata !144, null}
!150 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !149} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 4, i32 22, metadata !5, metadata !149}
!152 = metadata !{i32 24, i32 2, metadata !75, metadata !149}
!153 = metadata !{i32 87, i32 16, metadata !144, null}
!154 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !153} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 4, i32 22, metadata !5, metadata !153}
!156 = metadata !{i32 24, i32 2, metadata !75, metadata !153}
!157 = metadata !{i32 88, i32 16, metadata !144, null}
!158 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, metadata !157} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 4, i32 22, metadata !5, metadata !157}
!160 = metadata !{i32 24, i32 2, metadata !75, metadata !157}
!161 = metadata !{i32 90, i32 6, metadata !145, null}
!162 = metadata !{i32 91, i32 6, metadata !102, null}
!163 = metadata !{i32 92, i32 6, metadata !102, null}
!164 = metadata !{i32 93, i32 6, metadata !102, null}
!165 = metadata !{i32 94, i32 6, metadata !102, null}
!166 = metadata !{i32 95, i32 6, metadata !102, null}
!167 = metadata !{i32 96, i32 2, metadata !102, null}
!168 = metadata !{i32 97, i32 1, metadata !97, null}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 31, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"Nr", metadata !173, metadata !"int", i32 0, i32 31}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 0, i32 0}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 31, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"Nk", metadata !173, metadata !"int", i32 0, i32 31}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 0, i32 7, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"out", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 0, i32 15, i32 1}
!185 = metadata !{i32 786689, metadata !30, metadata !"Nr", metadata !6, i32 16777395, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 179, i32 17, metadata !30, null}
!187 = metadata !{i32 786689, metadata !30, metadata !"Nk", metadata !6, i32 33554611, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 179, i32 24, metadata !30, null}
!189 = metadata !{i32 786689, metadata !30, metadata !"out", null, i32 179, metadata !190, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!193 = metadata !{i32 179, i32 41, metadata !30, null}
!194 = metadata !{i32 786688, metadata !195, metadata !"state", metadata !6, i32 201, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 786443, metadata !30, i32 180, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 201, i32 16, metadata !195, null}
!197 = metadata !{i32 786688, metadata !195, metadata !"RoundKey", metadata !6, i32 202, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 202, i32 16, metadata !195, null}
!199 = metadata !{i32 786688, metadata !195, metadata !"Key", metadata !6, i32 203, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 203, i32 16, metadata !195, null}
!201 = metadata !{i32 786688, metadata !195, metadata !"in", metadata !6, i32 204, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 204, i32 16, metadata !195, null}
!203 = metadata !{i32 208, i32 6, metadata !204, null}
!204 = metadata !{i32 786443, metadata !195, i32 208, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 210, i32 3, metadata !206, null}
!206 = metadata !{i32 786443, metadata !204, i32 209, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 211, i32 3, metadata !206, null}
!208 = metadata !{i32 208, i32 17, metadata !204, null}
!209 = metadata !{i32 786688, metadata !195, metadata !"i", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 215, i32 2, metadata !195, null}
!211 = metadata !{i32 218, i32 6, metadata !212, null}
!212 = metadata !{i32 786443, metadata !195, i32 218, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 222, i32 4, metadata !214, null}
!214 = metadata !{i32 786443, metadata !215, i32 221, i32 3, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 786443, metadata !216, i32 220, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786443, metadata !212, i32 219, i32 2, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 220, i32 7, metadata !215, null}
!218 = metadata !{i32 220, i32 15, metadata !215, null}
!219 = metadata !{i32 786688, metadata !195, metadata !"j", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 218, i32 14, metadata !212, null}
!221 = metadata !{i32 227, i32 2, metadata !195, null}
!222 = metadata !{i32 136, i32 2, metadata !223, metadata !224}
!223 = metadata !{i32 786443, metadata !28, i32 132, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 235, i32 3, metadata !225, null}
!225 = metadata !{i32 786443, metadata !226, i32 233, i32 2, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 786443, metadata !195, i32 232, i32 2, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 137, i32 2, metadata !223, metadata !224}
!228 = metadata !{i32 138, i32 2, metadata !223, metadata !224}
!229 = metadata !{i32 139, i32 2, metadata !223, metadata !224}
!230 = metadata !{i32 143, i32 2, metadata !223, metadata !224}
!231 = metadata !{i32 144, i32 2, metadata !223, metadata !224}
!232 = metadata !{i32 147, i32 2, metadata !223, metadata !224}
!233 = metadata !{i32 148, i32 2, metadata !223, metadata !224}
!234 = metadata !{i32 152, i32 2, metadata !223, metadata !224}
!235 = metadata !{i32 153, i32 2, metadata !223, metadata !224}
!236 = metadata !{i32 154, i32 2, metadata !223, metadata !224}
!237 = metadata !{i32 155, i32 2, metadata !223, metadata !224}
!238 = metadata !{i32 232, i32 6, metadata !226, null}
!239 = metadata !{i32 234, i32 3, metadata !225, null}
!240 = metadata !{i32 786689, metadata !28, metadata !"state", null, i32 131, metadata !61, i32 0, metadata !224} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 131, i32 30, metadata !28, metadata !224}
!242 = metadata !{i32 786688, metadata !223, metadata !"temp", metadata !6, i32 133, metadata !16, i32 0, metadata !224} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 140, i32 2, metadata !223, metadata !224}
!244 = metadata !{i32 145, i32 2, metadata !223, metadata !224}
!245 = metadata !{i32 149, i32 2, metadata !223, metadata !224}
!246 = metadata !{i32 156, i32 2, metadata !223, metadata !224}
!247 = metadata !{i32 786689, metadata !29, metadata !"state", null, i32 163, metadata !61, i32 0, metadata !248} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 236, i32 3, metadata !225, null}
!249 = metadata !{i32 163, i32 31, metadata !29, metadata !248}
!250 = metadata !{i32 167, i32 6, metadata !251, metadata !248}
!251 = metadata !{i32 786443, metadata !252, i32 167, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 786443, metadata !29, i32 164, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 169, i32 3, metadata !254, metadata !248}
!254 = metadata !{i32 786443, metadata !251, i32 168, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 786688, metadata !252, metadata !"t", metadata !6, i32 166, metadata !16, i32 0, metadata !248} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 170, i32 3, metadata !254, metadata !248}
!257 = metadata !{i32 786688, metadata !252, metadata !"Tmp", metadata !6, i32 166, metadata !16, i32 0, metadata !248} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 786688, metadata !252, metadata !"Tm", metadata !6, i32 166, metadata !16, i32 0, metadata !248} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 171, i32 3, metadata !254, metadata !248}
!260 = metadata !{i32 171, i32 36, metadata !254, metadata !248}
!261 = metadata !{i32 171, i32 77, metadata !254, metadata !248}
!262 = metadata !{i32 172, i32 3, metadata !254, metadata !248}
!263 = metadata !{i32 172, i32 36, metadata !254, metadata !248}
!264 = metadata !{i32 172, i32 77, metadata !254, metadata !248}
!265 = metadata !{i32 173, i32 3, metadata !254, metadata !248}
!266 = metadata !{i32 173, i32 36, metadata !254, metadata !248}
!267 = metadata !{i32 173, i32 77, metadata !254, metadata !248}
!268 = metadata !{i32 174, i32 3, metadata !254, metadata !248}
!269 = metadata !{i32 174, i32 26, metadata !254, metadata !248}
!270 = metadata !{i32 174, i32 67, metadata !254, metadata !248}
!271 = metadata !{i32 167, i32 14, metadata !251, metadata !248}
!272 = metadata !{i32 786688, metadata !252, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, metadata !248} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 237, i32 3, metadata !225, null}
!274 = metadata !{i32 232, i32 23, metadata !226, null}
!275 = metadata !{i32 786688, metadata !195, metadata !"round", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 242, i32 2, metadata !195, null}
!277 = metadata !{i32 786689, metadata !28, metadata !"state", null, i32 131, metadata !61, i32 0, metadata !278} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 243, i32 2, metadata !195, null}
!279 = metadata !{i32 131, i32 30, metadata !28, metadata !278}
!280 = metadata !{i32 136, i32 2, metadata !223, metadata !278}
!281 = metadata !{i32 786688, metadata !223, metadata !"temp", metadata !6, i32 133, metadata !16, i32 0, metadata !278} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 137, i32 2, metadata !223, metadata !278}
!283 = metadata !{i32 138, i32 2, metadata !223, metadata !278}
!284 = metadata !{i32 139, i32 2, metadata !223, metadata !278}
!285 = metadata !{i32 140, i32 2, metadata !223, metadata !278}
!286 = metadata !{i32 143, i32 2, metadata !223, metadata !278}
!287 = metadata !{i32 144, i32 2, metadata !223, metadata !278}
!288 = metadata !{i32 145, i32 2, metadata !223, metadata !278}
!289 = metadata !{i32 147, i32 2, metadata !223, metadata !278}
!290 = metadata !{i32 148, i32 2, metadata !223, metadata !278}
!291 = metadata !{i32 149, i32 2, metadata !223, metadata !278}
!292 = metadata !{i32 152, i32 2, metadata !223, metadata !278}
!293 = metadata !{i32 153, i32 2, metadata !223, metadata !278}
!294 = metadata !{i32 154, i32 2, metadata !223, metadata !278}
!295 = metadata !{i32 155, i32 2, metadata !223, metadata !278}
!296 = metadata !{i32 156, i32 2, metadata !223, metadata !278}
!297 = metadata !{i32 244, i32 2, metadata !195, null}
!298 = metadata !{i32 248, i32 6, metadata !299, null}
!299 = metadata !{i32 786443, metadata !195, i32 248, i32 2, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 252, i32 4, metadata !301, null}
!301 = metadata !{i32 786443, metadata !302, i32 251, i32 3, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786443, metadata !303, i32 250, i32 3, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 786443, metadata !299, i32 249, i32 2, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 250, i32 7, metadata !302, null}
!305 = metadata !{i32 250, i32 15, metadata !302, null}
!306 = metadata !{i32 248, i32 14, metadata !299, null}
!307 = metadata !{i32 256, i32 1, metadata !195, null}
!308 = metadata !{i32 786689, metadata !18, metadata !"round", metadata !6, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!309 = metadata !{i32 101, i32 22, metadata !18, null}
!310 = metadata !{i32 786689, metadata !18, metadata !"state", null, i32 101, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!311 = metadata !{i32 101, i32 42, metadata !18, null}
!312 = metadata !{i32 786689, metadata !18, metadata !"RoundKey", null, i32 101, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 101, i32 68, metadata !18, null}
!314 = metadata !{i32 104, i32 6, metadata !315, null}
!315 = metadata !{i32 786443, metadata !316, i32 104, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!316 = metadata !{i32 786443, metadata !18, i32 102, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 108, i32 4, metadata !318, null}
!318 = metadata !{i32 786443, metadata !319, i32 107, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 786443, metadata !320, i32 106, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 786443, metadata !315, i32 105, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 106, i32 7, metadata !319, null}
!322 = metadata !{i32 106, i32 15, metadata !319, null}
!323 = metadata !{i32 786688, metadata !316, metadata !"j", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 104, i32 14, metadata !315, null}
!325 = metadata !{i32 786688, metadata !316, metadata !"i", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!326 = metadata !{i32 111, i32 1, metadata !316, null}
