; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisRaw/trito/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@worda = common global [4 x [120 x i32]] zeroinitializer, align 4 ; [#uses=19 type=[4 x [120 x i32]]*]
@invSbox = constant [16 x [16 x i32]] [[16 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251], [16 x i32] [i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203], [16 x i32] [i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78], [16 x i32] [i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37], [16 x i32] [i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146], [16 x i32] [i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132], [16 x i32] [i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6], [16 x i32] [i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107], [16 x i32] [i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115], [16 x i32] [i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110], [16 x i32] [i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27], [16 x i32] [i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244], [16 x i32] [i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95], [16 x i32] [i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239], [16 x i32] [i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97], [16 x i32] [i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125]], align 4 ; [#uses=0 type=[16 x [16 x i32]]*]
@aes_main.str = internal unnamed_addr constant [9 x i8] c"aes_main\00" ; [#uses=1 type=[9 x i8]*]
@Sbox = constant [16 x [16 x i32]] [[16 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118], [16 x i32] [i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192], [16 x i32] [i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21], [16 x i32] [i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117], [16 x i32] [i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132], [16 x i32] [i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207], [16 x i32] [i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168], [16 x i32] [i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210], [16 x i32] [i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115], [16 x i32] [i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219], [16 x i32] [i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121], [16 x i32] [i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8], [16 x i32] [i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138], [16 x i32] [i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158], [16 x i32] [i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223], [16 x i32] [i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22]], align 4 ; [#uses=20 type=[16 x [16 x i32]]*]
@Rcon0_old = constant [30 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145], align 4 ; [#uses=0 type=[30 x i32]*]
@Rcon0 = constant [30 x i8] c"\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\91" ; [#uses=1 type=[30 x i8]*]

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aes_main([32 x i32]* %statemt, [32 x i32]* %key, [32 x i32]* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %statemt) nounwind, !map !74
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %key) nounwind, !map !80
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %out) nounwind, !map !84
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @aes_main.str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !88), !dbg !96 ; [debug line = 624:21] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !97), !dbg !98 ; [debug line = 624:39] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !99), !dbg !100 ; [debug line = 624:52] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !101) nounwind, !dbg !105 ; [debug line = 95:18@629:3] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !106) nounwind, !dbg !107 ; [debug line = 95:35@629:3] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !108) nounwind, !dbg !109 ; [debug line = 95:57@629:3] [debug variable = out]
  call fastcc void @KeySchedule([32 x i32]* %key) nounwind, !dbg !110 ; [debug line = 106:3@629:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 0) nounwind, !dbg !112 ; [debug line = 110:3@629:3]
  br label %1, !dbg !113                          ; [debug line = 112:8@629:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 1, %0 ], [ %tmp.i, %3 ]         ; [#uses=3 type=i4]
  %exitcond3.i = icmp eq i4 %i.i, -6, !dbg !113   ; [#uses=1 type=i1] [debug line = 112:8@629:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3.i, label %4, label %3, !dbg !113 ; [debug line = 112:8@629:3]

; <label>:3                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !115 ; [debug line = 114:7@629:3]
  call fastcc void @MixColumn_AddRoundKey([32 x i32]* %statemt, i4 %i.i) nounwind, !dbg !117 ; [debug line = 115:7@629:3]
  %tmp.i = add i4 %i.i, 1, !dbg !118              ; [#uses=1 type=i4] [debug line = 112:35@629:3]
  br label %1, !dbg !118                          ; [debug line = 112:35@629:3]

; <label>:4                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !119 ; [debug line = 117:3@629:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 10) nounwind, !dbg !120 ; [debug line = 118:3@629:3]
  br label %5, !dbg !121                          ; [debug line = 121:8@629:3]

; <label>:5                                       ; preds = %7, %4
  %i.1.i = phi i5 [ 0, %4 ], [ %i, %7 ]           ; [#uses=3 type=i5]
  %i.1.i.cast1 = zext i5 %i.1.i to i32, !dbg !121 ; [#uses=2 type=i32] [debug line = 121:8@629:3]
  %exitcond2.i = icmp eq i5 %i.1.i, -16, !dbg !121 ; [#uses=1 type=i1] [debug line = 121:8@629:3]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %encrypt.exit, label %7, !dbg !121 ; [debug line = 121:8@629:3]

; <label>:7                                       ; preds = %5
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %i.1.i.cast1, !dbg !123 ; [#uses=1 type=i32*] [debug line = 123:4@629:3]
  %statemt.load = load i32* %statemt.addr, align 4, !dbg !123 ; [#uses=1 type=i32] [debug line = 123:4@629:3]
  %out.addr = getelementptr [32 x i32]* %out, i32 0, i32 %i.1.i.cast1, !dbg !123 ; [#uses=1 type=i32*] [debug line = 123:4@629:3]
  store i32 %statemt.load, i32* %out.addr, align 4, !dbg !123 ; [debug line = 123:4@629:3]
  %i = add i5 %i.1.i, 1, !dbg !125                ; [#uses=1 type=i5] [debug line = 121:27@629:3]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !126) nounwind, !dbg !125 ; [debug line = 121:27@629:3] [debug variable = i]
  br label %5, !dbg !125                          ; [debug line = 121:27@629:3]

encrypt.exit:                                     ; preds = %5
  ret void, !dbg !127                             ; [debug line = 632:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc void @MixColumn_AddRoundKey([32 x i32]* nocapture %statemt, i4 %n) {
  %ret = alloca [32 x i32], align 4               ; [#uses=8 type=[32 x i32]*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !128), !dbg !132 ; [debug line = 457:32] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i4 %n}, i64 0, metadata !133), !dbg !134 ; [debug line = 457:57] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %ret}, metadata !135), !dbg !137 ; [debug line = 459:7] [debug variable = ret]
  %n.cast = zext i4 %n to i6, !dbg !138           ; [#uses=1 type=i6] [debug line = 473:7]
  %tmp = shl nuw i6 %n.cast, 2, !dbg !138         ; [#uses=1 type=i6] [debug line = 473:7]
  br label %1, !dbg !141                          ; [debug line = 462:8]

; <label>:1                                       ; preds = %._crit_edge_ifconv, %0
  %j = phi i3 [ 0, %0 ], [ %j.3, %._crit_edge_ifconv ] ; [#uses=4 type=i3]
  %j.cast1 = zext i3 %j to i6, !dbg !141          ; [#uses=1 type=i6] [debug line = 462:8]
  %j.cast = zext i3 %j to i4, !dbg !141           ; [#uses=1 type=i4] [debug line = 462:8]
  %exitcond1 = icmp eq i3 %j, -4, !dbg !141       ; [#uses=1 type=i1] [debug line = 462:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader.preheader, label %._crit_edge_ifconv, !dbg !141 ; [debug line = 462:8]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !142                 ; [debug line = 512:8]

._crit_edge_ifconv:                               ; preds = %1
  %tmp.5 = shl i4 %j.cast, 2, !dbg !144           ; [#uses=4 type=i4] [debug line = 464:7]
  %tmp.5.cast = zext i4 %tmp.5 to i32, !dbg !144  ; [#uses=2 type=i32] [debug line = 464:7]
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.5.cast, !dbg !144 ; [#uses=1 type=i32*] [debug line = 464:7]
  %x.6 = load i32* %statemt.addr, align 4, !dbg !144 ; [#uses=4 type=i32] [debug line = 464:7]
  %tmp.6 = shl i32 %x.6, 1, !dbg !144             ; [#uses=4 type=i32] [debug line = 464:7]
  %ret.addr = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.5.cast, !dbg !144 ; [#uses=1 type=i32*] [debug line = 464:7]
  %.mask = and i32 %tmp.6, -256, !dbg !145        ; [#uses=1 type=i32] [debug line = 465:7]
  %tmp.7 = icmp eq i32 %.mask, 256, !dbg !145     ; [#uses=1 type=i1] [debug line = 465:7]
  %tmp.8 = xor i32 %tmp.6, 283, !dbg !146         ; [#uses=1 type=i32] [debug line = 466:2]
  %ret.load.1 = select i1 %tmp.7, i32 %tmp.8, i32 %tmp.6, !dbg !145 ; [#uses=1 type=i32] [debug line = 465:7]
  %tmp.9 = or i4 %tmp.5, 1, !dbg !147             ; [#uses=1 type=i4] [debug line = 467:7]
  %tmp.9.cast = zext i4 %tmp.9 to i32, !dbg !147  ; [#uses=2 type=i32] [debug line = 467:7]
  %statemt.addr.1 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.9.cast, !dbg !147 ; [#uses=1 type=i32*] [debug line = 467:7]
  %x = load i32* %statemt.addr.1, align 4, !dbg !147 ; [#uses=4 type=i32] [debug line = 467:7]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !148), !dbg !147 ; [debug line = 467:7] [debug variable = x]
  %tmp. = shl i32 %x, 1, !dbg !149                ; [#uses=4 type=i32] [debug line = 468:7]
  %x.1 = xor i32 %x, %tmp., !dbg !149             ; [#uses=3 type=i32] [debug line = 468:7]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !148), !dbg !149 ; [debug line = 468:7] [debug variable = x]
  %.mask1 = and i32 %x.1, -256, !dbg !150         ; [#uses=1 type=i32] [debug line = 469:7]
  %tmp.1 = icmp eq i32 %.mask1, 256, !dbg !150    ; [#uses=1 type=i1] [debug line = 469:7]
  %tmp.3 = xor i32 %x.1, 283, !dbg !151           ; [#uses=1 type=i32] [debug line = 470:2]
  %storemerge.v = select i1 %tmp.1, i32 %tmp.3, i32 %x.1 ; [#uses=1 type=i32]
  %tmp.10 = or i4 %tmp.5, 2, !dbg !138            ; [#uses=1 type=i4] [debug line = 473:7]
  %tmp.14.cast = zext i4 %tmp.10 to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 473:7]
  %statemt.addr.6 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.14.cast, !dbg !138 ; [#uses=1 type=i32*] [debug line = 473:7]
  %x.2 = load i32* %statemt.addr.6, align 4, !dbg !138 ; [#uses=4 type=i32] [debug line = 473:7]
  %tmp.11 = or i4 %tmp.5, 3, !dbg !138            ; [#uses=1 type=i4] [debug line = 473:7]
  %tmp.15.cast = zext i4 %tmp.11 to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 473:7]
  %statemt.addr.7 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.15.cast, !dbg !138 ; [#uses=1 type=i32*] [debug line = 473:7]
  %x.4 = load i32* %statemt.addr.7, align 4, !dbg !138 ; [#uses=4 type=i32] [debug line = 473:7]
  %tmp.14 = add i6 %tmp, %j.cast1, !dbg !138      ; [#uses=1 type=i6] [debug line = 473:7]
  %tmp.16.cast = zext i6 %tmp.14 to i32, !dbg !138 ; [#uses=4 type=i32] [debug line = 473:7]
  %worda.addr = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 0, i32 %tmp.16.cast, !dbg !138 ; [#uses=1 type=i32*] [debug line = 473:7]
  %worda.load = load i32* %worda.addr, align 4, !dbg !138 ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp1 = xor i32 %x.2, %x.4, !dbg !138           ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp3 = xor i32 %ret.load.1, %storemerge.v, !dbg !138 ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp2 = xor i32 %tmp3, %worda.load, !dbg !138   ; [#uses=1 type=i32] [debug line = 473:7]
  %tmp.15 = xor i32 %tmp2, %tmp1, !dbg !138       ; [#uses=1 type=i32] [debug line = 473:7]
  store i32 %tmp.15, i32* %ret.addr, align 4, !dbg !138 ; [debug line = 473:7]
  %ret.addr.5 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.9.cast, !dbg !152 ; [#uses=1 type=i32*] [debug line = 476:7]
  %.mask2 = and i32 %tmp., -256, !dbg !153        ; [#uses=1 type=i32] [debug line = 477:7]
  %tmp.16 = icmp eq i32 %.mask2, 256, !dbg !153   ; [#uses=1 type=i1] [debug line = 477:7]
  %tmp.17 = xor i32 %tmp., 283, !dbg !154         ; [#uses=1 type=i32] [debug line = 478:2]
  %tmp.23.tmp. = select i1 %tmp.16, i32 %tmp.17, i32 %tmp., !dbg !153 ; [#uses=1 type=i32] [debug line = 477:7]
  call void @llvm.dbg.value(metadata !{i32 %x.2}, i64 0, metadata !148), !dbg !155 ; [debug line = 479:7] [debug variable = x]
  %tmp.18 = shl i32 %x.2, 1, !dbg !156            ; [#uses=4 type=i32] [debug line = 480:7]
  %x.3 = xor i32 %x.2, %tmp.18, !dbg !156         ; [#uses=3 type=i32] [debug line = 480:7]
  call void @llvm.dbg.value(metadata !{i32 %x.3}, i64 0, metadata !148), !dbg !156 ; [debug line = 480:7] [debug variable = x]
  %.mask3 = and i32 %x.3, -256, !dbg !157         ; [#uses=1 type=i32] [debug line = 481:7]
  %tmp.19 = icmp eq i32 %.mask3, 256, !dbg !157   ; [#uses=1 type=i1] [debug line = 481:7]
  %tmp.20 = xor i32 %x.3, 283, !dbg !158          ; [#uses=1 type=i32] [debug line = 482:2]
  %storemerge8.v = select i1 %tmp.19, i32 %tmp.20, i32 %x.3 ; [#uses=1 type=i32]
  %worda.addr.1 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 1, i32 %tmp.16.cast, !dbg !159 ; [#uses=1 type=i32*] [debug line = 485:7]
  %worda.load.1 = load i32* %worda.addr.1, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp4 = xor i32 %x.4, %x.6, !dbg !159           ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp6 = xor i32 %storemerge8.v, %tmp.23.tmp., !dbg !159 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp5 = xor i32 %tmp6, %worda.load.1, !dbg !159 ; [#uses=1 type=i32] [debug line = 485:7]
  %tmp.21 = xor i32 %tmp5, %tmp4, !dbg !159       ; [#uses=1 type=i32] [debug line = 485:7]
  store i32 %tmp.21, i32* %ret.addr.5, align 4, !dbg !159 ; [debug line = 485:7]
  %ret.addr.6 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.14.cast, !dbg !160 ; [#uses=1 type=i32*] [debug line = 488:7]
  %.mask4 = and i32 %tmp.18, -256, !dbg !161      ; [#uses=1 type=i32] [debug line = 489:7]
  %tmp.22 = icmp eq i32 %.mask4, 256, !dbg !161   ; [#uses=1 type=i1] [debug line = 489:7]
  %tmp.23 = xor i32 %tmp.18, 283, !dbg !162       ; [#uses=1 type=i32] [debug line = 490:2]
  %tmp.33.tmp. = select i1 %tmp.22, i32 %tmp.23, i32 %tmp.18, !dbg !161 ; [#uses=1 type=i32] [debug line = 489:7]
  call void @llvm.dbg.value(metadata !{i32 %x.4}, i64 0, metadata !148), !dbg !163 ; [debug line = 491:7] [debug variable = x]
  %tmp.24 = shl i32 %x.4, 1, !dbg !164            ; [#uses=4 type=i32] [debug line = 492:7]
  %x.5 = xor i32 %x.4, %tmp.24, !dbg !164         ; [#uses=3 type=i32] [debug line = 492:7]
  call void @llvm.dbg.value(metadata !{i32 %x.5}, i64 0, metadata !148), !dbg !164 ; [debug line = 492:7] [debug variable = x]
  %.mask5 = and i32 %x.5, -256, !dbg !165         ; [#uses=1 type=i32] [debug line = 493:7]
  %tmp.25 = icmp eq i32 %.mask5, 256, !dbg !165   ; [#uses=1 type=i1] [debug line = 493:7]
  %tmp.26 = xor i32 %x.5, 283, !dbg !166          ; [#uses=1 type=i32] [debug line = 494:2]
  %storemerge9.v = select i1 %tmp.25, i32 %tmp.26, i32 %x.5 ; [#uses=1 type=i32]
  %worda.addr.2 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 2, i32 %tmp.16.cast, !dbg !167 ; [#uses=1 type=i32*] [debug line = 497:7]
  %worda.load.2 = load i32* %worda.addr.2, align 4, !dbg !167 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp7 = xor i32 %x, %x.6, !dbg !167             ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp9 = xor i32 %storemerge9.v, %tmp.33.tmp., !dbg !167 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp8 = xor i32 %tmp9, %worda.load.2, !dbg !167 ; [#uses=1 type=i32] [debug line = 497:7]
  %tmp.27 = xor i32 %tmp8, %tmp7, !dbg !167       ; [#uses=1 type=i32] [debug line = 497:7]
  store i32 %tmp.27, i32* %ret.addr.6, align 4, !dbg !167 ; [debug line = 497:7]
  %ret.addr.7 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.15.cast, !dbg !168 ; [#uses=1 type=i32*] [debug line = 500:7]
  %.mask6 = and i32 %tmp.24, -256, !dbg !169      ; [#uses=1 type=i32] [debug line = 501:7]
  %tmp.28 = icmp eq i32 %.mask6, 256, !dbg !169   ; [#uses=1 type=i1] [debug line = 501:7]
  %tmp.29 = xor i32 %tmp.24, 283, !dbg !170       ; [#uses=1 type=i32] [debug line = 502:2]
  %tmp.43.tmp. = select i1 %tmp.28, i32 %tmp.29, i32 %tmp.24, !dbg !169 ; [#uses=1 type=i32] [debug line = 501:7]
  call void @llvm.dbg.value(metadata !{i32 %x.6}, i64 0, metadata !148), !dbg !171 ; [debug line = 503:7] [debug variable = x]
  %x.7 = xor i32 %x.6, %tmp.6, !dbg !172          ; [#uses=3 type=i32] [debug line = 504:7]
  call void @llvm.dbg.value(metadata !{i32 %x.7}, i64 0, metadata !148), !dbg !172 ; [debug line = 504:7] [debug variable = x]
  %.mask7 = and i32 %x.7, -256, !dbg !173         ; [#uses=1 type=i32] [debug line = 505:7]
  %tmp.30 = icmp eq i32 %.mask7, 256, !dbg !173   ; [#uses=1 type=i1] [debug line = 505:7]
  %tmp.31 = xor i32 %x.7, 283, !dbg !174          ; [#uses=1 type=i32] [debug line = 506:2]
  %storemerge1.v = select i1 %tmp.30, i32 %tmp.31, i32 %x.7 ; [#uses=1 type=i32]
  %worda.addr.3 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 3, i32 %tmp.16.cast, !dbg !175 ; [#uses=1 type=i32*] [debug line = 509:7]
  %worda.load.3 = load i32* %worda.addr.3, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp10 = xor i32 %x.2, %x, !dbg !175            ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp12 = xor i32 %storemerge1.v, %tmp.43.tmp., !dbg !175 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp11 = xor i32 %tmp12, %worda.load.3, !dbg !175 ; [#uses=1 type=i32] [debug line = 509:7]
  %tmp.32 = xor i32 %tmp11, %tmp10, !dbg !175     ; [#uses=1 type=i32] [debug line = 509:7]
  store i32 %tmp.32, i32* %ret.addr.7, align 4, !dbg !175 ; [debug line = 509:7]
  %j.3 = add i3 %j, 1, !dbg !176                  ; [#uses=1 type=i3] [debug line = 462:23]
  call void @llvm.dbg.value(metadata !{i3 %j.3}, i64 0, metadata !177), !dbg !176 ; [debug line = 462:23] [debug variable = j]
  br label %1, !dbg !176                          ; [debug line = 462:23]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j.1 = phi i3 [ %j.2, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %j.1.cast = zext i3 %j.1 to i4, !dbg !142       ; [#uses=1 type=i4] [debug line = 512:8]
  %exitcond = icmp eq i3 %j.1, -4, !dbg !142      ; [#uses=1 type=i1] [debug line = 512:8]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !142  ; [debug line = 512:8]

; <label>:4                                       ; preds = %.preheader
  %tmp.2 = shl i4 %j.1.cast, 2, !dbg !178         ; [#uses=4 type=i4] [debug line = 514:7]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !178  ; [#uses=2 type=i32] [debug line = 514:7]
  %ret.addr.1 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.2.cast, !dbg !178 ; [#uses=1 type=i32*] [debug line = 514:7]
  %ret.load = load i32* %ret.addr.1, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 514:7]
  %statemt.addr.2 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.2.cast, !dbg !178 ; [#uses=1 type=i32*] [debug line = 514:7]
  store i32 %ret.load, i32* %statemt.addr.2, align 4, !dbg !178 ; [debug line = 514:7]
  %tmp.4 = or i4 %tmp.2, 1, !dbg !180             ; [#uses=1 type=i4] [debug line = 515:7]
  %tmp.4.cast = zext i4 %tmp.4 to i32, !dbg !180  ; [#uses=2 type=i32] [debug line = 515:7]
  %ret.addr.2 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.4.cast, !dbg !180 ; [#uses=1 type=i32*] [debug line = 515:7]
  %ret.load.2 = load i32* %ret.addr.2, align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 515:7]
  %statemt.addr.3 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.4.cast, !dbg !180 ; [#uses=1 type=i32*] [debug line = 515:7]
  store i32 %ret.load.2, i32* %statemt.addr.3, align 4, !dbg !180 ; [debug line = 515:7]
  %tmp.12 = or i4 %tmp.2, 2, !dbg !181            ; [#uses=1 type=i4] [debug line = 516:7]
  %tmp.12.cast = zext i4 %tmp.12 to i32, !dbg !181 ; [#uses=2 type=i32] [debug line = 516:7]
  %ret.addr.3 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.12.cast, !dbg !181 ; [#uses=1 type=i32*] [debug line = 516:7]
  %ret.load.3 = load i32* %ret.addr.3, align 4, !dbg !181 ; [#uses=1 type=i32] [debug line = 516:7]
  %statemt.addr.4 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.12.cast, !dbg !181 ; [#uses=1 type=i32*] [debug line = 516:7]
  store i32 %ret.load.3, i32* %statemt.addr.4, align 4, !dbg !181 ; [debug line = 516:7]
  %tmp.13 = or i4 %tmp.2, 3, !dbg !182            ; [#uses=1 type=i4] [debug line = 517:7]
  %tmp.13.cast = zext i4 %tmp.13 to i32, !dbg !182 ; [#uses=2 type=i32] [debug line = 517:7]
  %ret.addr.4 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.13.cast, !dbg !182 ; [#uses=1 type=i32*] [debug line = 517:7]
  %ret.load.4 = load i32* %ret.addr.4, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 517:7]
  %statemt.addr.5 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.13.cast, !dbg !182 ; [#uses=1 type=i32*] [debug line = 517:7]
  store i32 %ret.load.4, i32* %statemt.addr.5, align 4, !dbg !182 ; [debug line = 517:7]
  %j.2 = add i3 %j.1, 1, !dbg !183                ; [#uses=1 type=i3] [debug line = 512:23]
  call void @llvm.dbg.value(metadata !{i3 %j.2}, i64 0, metadata !177), !dbg !183 ; [debug line = 512:23] [debug variable = j]
  br label %.preheader, !dbg !183                 ; [debug line = 512:23]

; <label>:5                                       ; preds = %.preheader
  ret void
}

; [#uses=1]
define internal fastcc void @KeySchedule([32 x i32]* nocapture %key) {
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !184), !dbg !188 ; [debug line = 178:32] [debug variable = key]
  br label %1, !dbg !189                          ; [debug line = 192:8]

; <label>:1                                       ; preds = %6, %0
  %j = phi i3 [ 0, %0 ], [ %j.4, %6 ]             ; [#uses=4 type=i3]
  %j.cast5 = zext i3 %j to i32, !dbg !189         ; [#uses=1 type=i32] [debug line = 192:8]
  %j.cast = zext i3 %j to i4, !dbg !189           ; [#uses=1 type=i4] [debug line = 192:8]
  %exitcond3 = icmp eq i3 %j, -4, !dbg !189       ; [#uses=1 type=i1] [debug line = 192:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader.preheader, label %.preheader4.preheader, !dbg !189 ; [debug line = 192:8]

.preheader.preheader:                             ; preds = %1
  %3 = lshr i6 -24, 2                             ; [#uses=0 type=i6]
  br label %.preheader, !dbg !192                 ; [debug line = 198:8]

.preheader4.preheader:                            ; preds = %1
  %tmp = shl i4 %j.cast, 2, !dbg !194             ; [#uses=1 type=i4] [debug line = 195:7]
  br label %.preheader4, !dbg !196                ; [debug line = 193:10]

.preheader4:                                      ; preds = %5, %.preheader4.preheader
  %i = phi i3 [ %i.1, %5 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i3]
  %i.cast4 = zext i3 %i to i32, !dbg !196         ; [#uses=1 type=i32] [debug line = 193:10]
  %i.cast = zext i3 %i to i4, !dbg !196           ; [#uses=1 type=i4] [debug line = 193:10]
  %exitcond2 = icmp eq i3 %i, -4, !dbg !196       ; [#uses=1 type=i1] [debug line = 193:10]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %6, label %5, !dbg !196 ; [debug line = 193:10]

; <label>:5                                       ; preds = %.preheader4
  %sum = add i4 %tmp, %i.cast                     ; [#uses=1 type=i4]
  %sum.cast = zext i4 %sum to i32                 ; [#uses=1 type=i32]
  %key.addr = getelementptr [32 x i32]* %key, i32 0, i32 %sum.cast, !dbg !194 ; [#uses=1 type=i32*] [debug line = 195:7]
  %key.load = load i32* %key.addr, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 195:7]
  %worda.addr = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 %i.cast4, i32 %j.cast5, !dbg !194 ; [#uses=1 type=i32*] [debug line = 195:7]
  store i32 %key.load, i32* %worda.addr, align 4, !dbg !194 ; [debug line = 195:7]
  %i.1 = add i3 %i, 1, !dbg !197                  ; [#uses=1 type=i3] [debug line = 193:24]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !198), !dbg !197 ; [debug line = 193:24] [debug variable = i]
  br label %.preheader4, !dbg !197                ; [debug line = 193:24]

; <label>:6                                       ; preds = %.preheader4
  %j.4 = add i3 %j, 1, !dbg !199                  ; [#uses=1 type=i3] [debug line = 192:23]
  call void @llvm.dbg.value(metadata !{i3 %j.4}, i64 0, metadata !200), !dbg !199 ; [debug line = 192:23] [debug variable = j]
  br label %1, !dbg !199                          ; [debug line = 192:23]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %j.1 = phi i6 [ %j.5, %12 ], [ 4, %.preheader.preheader ] ; [#uses=7 type=i6]
  %j.1.cast3 = trunc i6 %j.1 to i2, !dbg !192     ; [#uses=1 type=i2] [debug line = 198:8]
  %j.1.cast2 = zext i6 %j.1 to i32, !dbg !192     ; [#uses=1 type=i32] [debug line = 198:8]
  %exitcond1 = icmp eq i6 %j.1, -20, !dbg !192    ; [#uses=1 type=i1] [debug line = 198:8]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %13, label %8, !dbg !192 ; [debug line = 198:8]

; <label>:8                                       ; preds = %.preheader
  %tmp. = icmp eq i2 %j.1.cast3, 0, !dbg !201     ; [#uses=1 type=i1] [debug line = 202:7]
  %tmp.33 = add i6 %j.1, -1, !dbg !203            ; [#uses=1 type=i6] [debug line = 204:14]
  %tmp.50.cast = zext i6 %tmp.33 to i32, !dbg !203 ; [#uses=8 type=i32] [debug line = 204:14]
  br i1 %tmp., label %._crit_edge, label %.critedge, !dbg !201 ; [debug line = 202:7]

._crit_edge:                                      ; preds = %8
  %worda.addr.4 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 1, i32 %tmp.50.cast, !dbg !203 ; [#uses=1 type=i32*] [debug line = 204:14]
  %in.assign = load i32* %worda.addr.4, align 4, !dbg !203 ; [#uses=4 type=i32] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign}, i64 0, metadata !205) nounwind, !dbg !209 ; [debug line = 338:18@204:14] [debug variable = in]
  %tmp.i = srem i32 %in.assign, 16, !dbg !210     ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %_signbit.i = lshr i32 %in.assign, 31, !dbg !210 ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %_cond.i = trunc i32 %_signbit.i to i1, !dbg !210 ; [#uses=1 type=i1] [debug line = 340:3@204:14]
  %_neg.i = sub i32 0, %in.assign, !dbg !210      ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %_lshr.i = lshr i32 %_neg.i, 4, !dbg !210       ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %_lshr.i.cast = trunc i32 %_lshr.i to i29, !dbg !210 ; [#uses=1 type=i29] [debug line = 340:3@204:14]
  %_neg.t.i = sub i29 0, %_lshr.i.cast, !dbg !210 ; [#uses=1 type=i29] [debug line = 340:3@204:14]
  %_lshr.f.i = lshr i32 %in.assign, 4, !dbg !210  ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %_lshr.f.i.cast = trunc i32 %_lshr.f.i to i29, !dbg !210 ; [#uses=1 type=i29] [debug line = 340:3@204:14]
  %tmp.3.i = select i1 %_cond.i, i29 %_neg.t.i, i29 %_lshr.f.i.cast, !dbg !210 ; [#uses=1 type=i29] [debug line = 340:3@204:14]
  %tmp.3.i.cast = sext i29 %tmp.3.i to i32, !dbg !210 ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %Sbox.addr = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i.cast, i32 %tmp.i, !dbg !210 ; [#uses=1 type=i32*] [debug line = 340:3@204:14]
  %Sbox.load = load i32* %Sbox.addr, align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 340:3@204:14]
  %Sbox.load.cast = trunc i32 %Sbox.load to i8, !dbg !203 ; [#uses=1 type=i8] [debug line = 204:14]
  %_lshr.f = lshr i6 %j.1, 2, !dbg !203           ; [#uses=1 type=i6] [debug line = 204:14]
  %_lshr.f.cast = trunc i6 %_lshr.f to i4, !dbg !203 ; [#uses=1 type=i4] [debug line = 204:14]
  %addconv = add i4 %_lshr.f.cast, -1, !dbg !203  ; [#uses=1 type=i4] [debug line = 204:14]
  %tmp.34 = zext i4 %addconv to i32, !dbg !203    ; [#uses=1 type=i32] [debug line = 204:14]
  %Rcon0.addr = getelementptr [30 x i8]* @Rcon0, i32 0, i32 %tmp.34, !dbg !203 ; [#uses=1 type=i8*] [debug line = 204:14]
  %Rcon0.load = load i8* %Rcon0.addr, align 1, !dbg !203 ; [#uses=1 type=i8] [debug line = 204:14]
  %"temp[0]" = xor i8 %Rcon0.load, %Sbox.load.cast, !dbg !203 ; [#uses=1 type=i8] [debug line = 204:14]
  %"temp[0].1.cast" = zext i8 %"temp[0]" to i32, !dbg !203 ; [#uses=1 type=i32] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0]"}, i64 0, metadata !212), !dbg !203 ; [debug line = 204:14] [debug variable = temp[0]]
  %worda.addr.5 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 2, i32 %tmp.50.cast, !dbg !216 ; [#uses=1 type=i32*] [debug line = 205:14]
  %in.assign.1 = load i32* %worda.addr.5, align 4, !dbg !216 ; [#uses=4 type=i32] [debug line = 205:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.1}, i64 0, metadata !217) nounwind, !dbg !218 ; [debug line = 338:18@205:14] [debug variable = in]
  %tmp.i1 = srem i32 %in.assign.1, 16, !dbg !219  ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %_signbit.i1 = lshr i32 %in.assign.1, 31, !dbg !219 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %_cond.i1 = trunc i32 %_signbit.i1 to i1, !dbg !219 ; [#uses=1 type=i1] [debug line = 340:3@205:14]
  %_neg.i1 = sub i32 0, %in.assign.1, !dbg !219   ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %_lshr.i1 = lshr i32 %_neg.i1, 4, !dbg !219     ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %_lshr.i1.cast = trunc i32 %_lshr.i1 to i29, !dbg !219 ; [#uses=1 type=i29] [debug line = 340:3@205:14]
  %_neg.t.i1 = sub i29 0, %_lshr.i1.cast, !dbg !219 ; [#uses=1 type=i29] [debug line = 340:3@205:14]
  %_lshr.f.i1 = lshr i32 %in.assign.1, 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %_lshr.f.i1.cast = trunc i32 %_lshr.f.i1 to i29, !dbg !219 ; [#uses=1 type=i29] [debug line = 340:3@205:14]
  %tmp.3.i1 = select i1 %_cond.i1, i29 %_neg.t.i1, i29 %_lshr.f.i1.cast, !dbg !219 ; [#uses=1 type=i29] [debug line = 340:3@205:14]
  %tmp.3.i1.cast = sext i29 %tmp.3.i1 to i32, !dbg !219 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  %Sbox.addr.1 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i1.cast, i32 %tmp.i1, !dbg !219 ; [#uses=1 type=i32*] [debug line = 340:3@205:14]
  %"temp[1]" = load i32* %Sbox.addr.1, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 340:3@205:14]
  call void @llvm.dbg.value(metadata !{i32 %"temp[1]"}, i64 0, metadata !220), !dbg !216 ; [debug line = 205:14] [debug variable = temp[1]]
  %worda.addr.6 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 3, i32 %tmp.50.cast, !dbg !221 ; [#uses=1 type=i32*] [debug line = 206:14]
  %in.assign.2 = load i32* %worda.addr.6, align 4, !dbg !221 ; [#uses=4 type=i32] [debug line = 206:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.2}, i64 0, metadata !222) nounwind, !dbg !223 ; [debug line = 338:18@206:14] [debug variable = in]
  %tmp.i2 = srem i32 %in.assign.2, 16, !dbg !224  ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %_signbit.i2 = lshr i32 %in.assign.2, 31, !dbg !224 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %_cond.i2 = trunc i32 %_signbit.i2 to i1, !dbg !224 ; [#uses=1 type=i1] [debug line = 340:3@206:14]
  %_neg.i2 = sub i32 0, %in.assign.2, !dbg !224   ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %_lshr.i2 = lshr i32 %_neg.i2, 4, !dbg !224     ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %_lshr.i2.cast = trunc i32 %_lshr.i2 to i29, !dbg !224 ; [#uses=1 type=i29] [debug line = 340:3@206:14]
  %_neg.t.i2 = sub i29 0, %_lshr.i2.cast, !dbg !224 ; [#uses=1 type=i29] [debug line = 340:3@206:14]
  %_lshr.f.i2 = lshr i32 %in.assign.2, 4, !dbg !224 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %_lshr.f.i2.cast = trunc i32 %_lshr.f.i2 to i29, !dbg !224 ; [#uses=1 type=i29] [debug line = 340:3@206:14]
  %tmp.3.i2 = select i1 %_cond.i2, i29 %_neg.t.i2, i29 %_lshr.f.i2.cast, !dbg !224 ; [#uses=1 type=i29] [debug line = 340:3@206:14]
  %tmp.3.i2.cast = sext i29 %tmp.3.i2 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  %Sbox.addr.2 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i2.cast, i32 %tmp.i2, !dbg !224 ; [#uses=1 type=i32*] [debug line = 340:3@206:14]
  %"temp[2]" = load i32* %Sbox.addr.2, align 4, !dbg !224 ; [#uses=1 type=i32] [debug line = 340:3@206:14]
  call void @llvm.dbg.value(metadata !{i32 %"temp[2]"}, i64 0, metadata !225), !dbg !221 ; [debug line = 206:14] [debug variable = temp[2]]
  %worda.addr.7 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 0, i32 %tmp.50.cast, !dbg !226 ; [#uses=1 type=i32*] [debug line = 207:14]
  %in.assign.3 = load i32* %worda.addr.7, align 4, !dbg !226 ; [#uses=4 type=i32] [debug line = 207:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.3}, i64 0, metadata !227) nounwind, !dbg !228 ; [debug line = 338:18@207:14] [debug variable = in]
  %tmp.i3 = srem i32 %in.assign.3, 16, !dbg !229  ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %_signbit.i3 = lshr i32 %in.assign.3, 31, !dbg !229 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %_cond.i3 = trunc i32 %_signbit.i3 to i1, !dbg !229 ; [#uses=1 type=i1] [debug line = 340:3@207:14]
  %_neg.i3 = sub i32 0, %in.assign.3, !dbg !229   ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %_lshr.i3 = lshr i32 %_neg.i3, 4, !dbg !229     ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %_lshr.i3.cast = trunc i32 %_lshr.i3 to i29, !dbg !229 ; [#uses=1 type=i29] [debug line = 340:3@207:14]
  %_neg.t.i3 = sub i29 0, %_lshr.i3.cast, !dbg !229 ; [#uses=1 type=i29] [debug line = 340:3@207:14]
  %_lshr.f.i3 = lshr i32 %in.assign.3, 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %_lshr.f.i3.cast = trunc i32 %_lshr.f.i3 to i29, !dbg !229 ; [#uses=1 type=i29] [debug line = 340:3@207:14]
  %tmp.3.i3 = select i1 %_cond.i3, i29 %_neg.t.i3, i29 %_lshr.f.i3.cast, !dbg !229 ; [#uses=1 type=i29] [debug line = 340:3@207:14]
  %tmp.3.i3.cast = sext i29 %tmp.3.i3 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  %Sbox.addr.3 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i3.cast, i32 %tmp.i3, !dbg !229 ; [#uses=1 type=i32*] [debug line = 340:3@207:14]
  %Sbox.load.3 = load i32* %Sbox.addr.3, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 340:3@207:14]
  br label %._crit_edge5, !dbg !230               ; [debug line = 209:7]

.critedge:                                        ; preds = %8
  %worda.addr.8 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 0, i32 %tmp.50.cast, !dbg !231 ; [#uses=1 type=i32*] [debug line = 211:4]
  %"temp[0].1" = load i32* %worda.addr.8, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 211:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0].1"}, i64 0, metadata !212), !dbg !231 ; [debug line = 211:4] [debug variable = temp[0]]
  %worda.addr.9 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 1, i32 %tmp.50.cast, !dbg !233 ; [#uses=1 type=i32*] [debug line = 212:4]
  %"temp[1].1" = load i32* %worda.addr.9, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 212:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[1].1"}, i64 0, metadata !220), !dbg !233 ; [debug line = 212:4] [debug variable = temp[1]]
  %worda.addr.10 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 2, i32 %tmp.50.cast, !dbg !234 ; [#uses=1 type=i32*] [debug line = 213:4]
  %"temp[2].1" = load i32* %worda.addr.10, align 4, !dbg !234 ; [#uses=1 type=i32] [debug line = 213:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[2].1"}, i64 0, metadata !225), !dbg !234 ; [debug line = 213:4] [debug variable = temp[2]]
  %worda.addr.11 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 3, i32 %tmp.50.cast, !dbg !235 ; [#uses=1 type=i32*] [debug line = 214:4]
  %worda.load = load i32* %worda.addr.11, align 4, !dbg !235 ; [#uses=1 type=i32] [debug line = 214:4]
  br label %._crit_edge5, !dbg !236               ; [debug line = 215:2]

._crit_edge5:                                     ; preds = %.critedge, %._crit_edge
  %"temp[2]2" = phi i32 [ %"temp[2]", %._crit_edge ], [ %"temp[2].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[1]2" = phi i32 [ %"temp[1]", %._crit_edge ], [ %"temp[1].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[0]2" = phi i32 [ %"temp[0].1.cast", %._crit_edge ], [ %"temp[0].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[3]" = phi i32 [ %Sbox.load.3, %._crit_edge ], [ %worda.load, %.critedge ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3]"}, i64 0, metadata !237), !dbg !226 ; [debug line = 207:14] [debug variable = temp[3]]
  %tmp.35 = add i6 %j.1, -4, !dbg !238            ; [#uses=1 type=i6] [debug line = 220:2]
  %tmp.52.cast = zext i6 %tmp.35 to i32, !dbg !238 ; [#uses=1 type=i32] [debug line = 220:2]
  br label %9, !dbg !240                          ; [debug line = 219:12]

; <label>:9                                       ; preds = %11, %._crit_edge5
  %i.2 = phi i3 [ 0, %._crit_edge5 ], [ %i.3, %11 ] ; [#uses=4 type=i3]
  %i.2.cast1 = zext i3 %i.2 to i32, !dbg !240     ; [#uses=2 type=i32] [debug line = 219:12]
  %exitcond = icmp eq i3 %i.2, -4, !dbg !240      ; [#uses=1 type=i1] [debug line = 219:12]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %12, label %11, !dbg !240 ; [debug line = 219:12]

; <label>:11                                      ; preds = %9
  %worda.addr.12 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 %i.2.cast1, i32 %tmp.52.cast, !dbg !238 ; [#uses=1 type=i32*] [debug line = 220:2]
  %worda.load.4 = load i32* %worda.addr.12, align 4, !dbg !238 ; [#uses=1 type=i32] [debug line = 220:2]
  %i.2.t = trunc i3 %i.2 to i2                    ; [#uses=1 type=i2]
  %tmp.13 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %"temp[0]2", i32 %"temp[1]2", i32 %"temp[2]2", i32 %"temp[3]", i2 %i.2.t) ; [#uses=1 type=i32]
  %tmp.36 = xor i32 %worda.load.4, %tmp.13, !dbg !238 ; [#uses=1 type=i32] [debug line = 220:2]
  %worda.addr.13 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 %i.2.cast1, i32 %j.1.cast2, !dbg !238 ; [#uses=1 type=i32*] [debug line = 220:2]
  store i32 %tmp.36, i32* %worda.addr.13, align 4, !dbg !238 ; [debug line = 220:2]
  %i.3 = add i3 %i.2, 1, !dbg !241                ; [#uses=1 type=i3] [debug line = 219:26]
  call void @llvm.dbg.value(metadata !{i3 %i.3}, i64 0, metadata !198), !dbg !241 ; [debug line = 219:26] [debug variable = i]
  br label %9, !dbg !241                          ; [debug line = 219:26]

; <label>:12                                      ; preds = %9
  %j.5 = add i6 %j.1, 1, !dbg !242                ; [#uses=1 type=i6] [debug line = 198:42]
  call void @llvm.dbg.value(metadata !{i6 %j.5}, i64 0, metadata !200), !dbg !242 ; [debug line = 198:42] [debug variable = j]
  br label %.preheader, !dbg !242                 ; [debug line = 198:42]

; <label>:13                                      ; preds = %.preheader
  ret void
}

; [#uses=2]
define internal fastcc void @ByteSub_ShiftRow([32 x i32]* nocapture %statemt) {
._crit_edge:
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 0 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !243), !dbg !247 ; [debug line = 226:28] [debug variable = statemt]
  %statemt.addr.8 = getelementptr [32 x i32]* %statemt, i32 0, i32 1, !dbg !248 ; [#uses=2 type=i32*] [debug line = 233:7]
  %statemt.load = load i32* %statemt.addr.8, align 4, !dbg !248 ; [#uses=2 type=i32] [debug line = 233:7]
  %statemt.load.cast = trunc i32 %statemt.load to i4, !dbg !248 ; [#uses=1 type=i4] [debug line = 233:7]
  %tmp.cast = zext i4 %statemt.load.cast to i32, !dbg !248 ; [#uses=1 type=i32] [debug line = 233:7]
  %tmp.3 = lshr i32 %statemt.load, 4, !dbg !248   ; [#uses=1 type=i32] [debug line = 233:7]
  %tmp.4 = trunc i32 %tmp.3 to i28, !dbg !248     ; [#uses=1 type=i28] [debug line = 233:7]
  %tmp. = sext i28 %tmp.4 to i32, !dbg !248       ; [#uses=1 type=i32] [debug line = 233:7]
  %Sbox.addr = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp., i32 %tmp.cast, !dbg !248 ; [#uses=1 type=i32*] [debug line = 233:7]
  %temp = load i32* %Sbox.addr, align 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 233:7]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !251), !dbg !248 ; [debug line = 233:7] [debug variable = temp]
  %statemt.addr.9 = getelementptr [32 x i32]* %statemt, i32 0, i32 5, !dbg !252 ; [#uses=2 type=i32*] [debug line = 234:7]
  %statemt.load.4 = load i32* %statemt.addr.9, align 4, !dbg !252 ; [#uses=2 type=i32] [debug line = 234:7]
  %statemt.load.4.cast = trunc i32 %statemt.load.4 to i4, !dbg !252 ; [#uses=1 type=i4] [debug line = 234:7]
  %tmp.54.cast = zext i4 %statemt.load.4.cast to i32, !dbg !252 ; [#uses=1 type=i32] [debug line = 234:7]
  %tmp.5 = lshr i32 %statemt.load.4, 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 234:7]
  %tmp.6 = trunc i32 %tmp.5 to i28, !dbg !252     ; [#uses=1 type=i28] [debug line = 234:7]
  %tmp.37 = sext i28 %tmp.6 to i32, !dbg !252     ; [#uses=1 type=i32] [debug line = 234:7]
  %Sbox.addr.1 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.37, i32 %tmp.54.cast, !dbg !252 ; [#uses=1 type=i32*] [debug line = 234:7]
  %Sbox.load = load i32* %Sbox.addr.1, align 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 234:7]
  store i32 %Sbox.load, i32* %statemt.addr.8, align 4, !dbg !252 ; [debug line = 234:7]
  %statemt.addr.10 = getelementptr [32 x i32]* %statemt, i32 0, i32 9, !dbg !253 ; [#uses=2 type=i32*] [debug line = 235:7]
  %statemt.load.5 = load i32* %statemt.addr.10, align 4, !dbg !253 ; [#uses=2 type=i32] [debug line = 235:7]
  %statemt.load.5.cast = trunc i32 %statemt.load.5 to i4, !dbg !253 ; [#uses=1 type=i4] [debug line = 235:7]
  %tmp.56.cast = zext i4 %statemt.load.5.cast to i32, !dbg !253 ; [#uses=1 type=i32] [debug line = 235:7]
  %tmp.7 = lshr i32 %statemt.load.5, 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 235:7]
  %tmp.8 = trunc i32 %tmp.7 to i28, !dbg !253     ; [#uses=1 type=i28] [debug line = 235:7]
  %tmp.38 = sext i28 %tmp.8 to i32, !dbg !253     ; [#uses=1 type=i32] [debug line = 235:7]
  %Sbox.addr.2 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.38, i32 %tmp.56.cast, !dbg !253 ; [#uses=1 type=i32*] [debug line = 235:7]
  %Sbox.load.1 = load i32* %Sbox.addr.2, align 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 235:7]
  store i32 %Sbox.load.1, i32* %statemt.addr.9, align 4, !dbg !253 ; [debug line = 235:7]
  %statemt.addr.11 = getelementptr [32 x i32]* %statemt, i32 0, i32 13, !dbg !254 ; [#uses=2 type=i32*] [debug line = 236:7]
  %statemt.load.6 = load i32* %statemt.addr.11, align 4, !dbg !254 ; [#uses=2 type=i32] [debug line = 236:7]
  %statemt.load.6.cast = trunc i32 %statemt.load.6 to i4, !dbg !254 ; [#uses=1 type=i4] [debug line = 236:7]
  %tmp.58.cast = zext i4 %statemt.load.6.cast to i32, !dbg !254 ; [#uses=1 type=i32] [debug line = 236:7]
  %tmp.9 = lshr i32 %statemt.load.6, 4, !dbg !254 ; [#uses=1 type=i32] [debug line = 236:7]
  %tmp.10 = trunc i32 %tmp.9 to i28, !dbg !254    ; [#uses=1 type=i28] [debug line = 236:7]
  %tmp.39 = sext i28 %tmp.10 to i32, !dbg !254    ; [#uses=1 type=i32] [debug line = 236:7]
  %Sbox.addr.3 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.39, i32 %tmp.58.cast, !dbg !254 ; [#uses=1 type=i32*] [debug line = 236:7]
  %Sbox.load.2 = load i32* %Sbox.addr.3, align 4, !dbg !254 ; [#uses=1 type=i32] [debug line = 236:7]
  store i32 %Sbox.load.2, i32* %statemt.addr.10, align 4, !dbg !254 ; [debug line = 236:7]
  store i32 %temp, i32* %statemt.addr.11, align 4, !dbg !255 ; [debug line = 237:7]
  %statemt.addr.12 = getelementptr [32 x i32]* %statemt, i32 0, i32 2, !dbg !256 ; [#uses=2 type=i32*] [debug line = 239:7]
  %statemt.load.7 = load i32* %statemt.addr.12, align 4, !dbg !256 ; [#uses=2 type=i32] [debug line = 239:7]
  %statemt.load.7.cast = trunc i32 %statemt.load.7 to i4, !dbg !256 ; [#uses=1 type=i4] [debug line = 239:7]
  %tmp.60.cast = zext i4 %statemt.load.7.cast to i32, !dbg !256 ; [#uses=1 type=i32] [debug line = 239:7]
  %tmp.11 = lshr i32 %statemt.load.7, 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 239:7]
  %tmp.12 = trunc i32 %tmp.11 to i28, !dbg !256   ; [#uses=1 type=i28] [debug line = 239:7]
  %tmp.40 = sext i28 %tmp.12 to i32, !dbg !256    ; [#uses=1 type=i32] [debug line = 239:7]
  %Sbox.addr.4 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.40, i32 %tmp.60.cast, !dbg !256 ; [#uses=1 type=i32*] [debug line = 239:7]
  %temp.1 = load i32* %Sbox.addr.4, align 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 239:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.1}, i64 0, metadata !251), !dbg !256 ; [debug line = 239:7] [debug variable = temp]
  %statemt.addr.13 = getelementptr [32 x i32]* %statemt, i32 0, i32 10, !dbg !257 ; [#uses=2 type=i32*] [debug line = 240:7]
  %statemt.load.8 = load i32* %statemt.addr.13, align 4, !dbg !257 ; [#uses=2 type=i32] [debug line = 240:7]
  %statemt.load.8.cast = trunc i32 %statemt.load.8 to i4, !dbg !257 ; [#uses=1 type=i4] [debug line = 240:7]
  %tmp.62.cast = zext i4 %statemt.load.8.cast to i32, !dbg !257 ; [#uses=1 type=i32] [debug line = 240:7]
  %tmp.13 = lshr i32 %statemt.load.8, 4, !dbg !257 ; [#uses=1 type=i32] [debug line = 240:7]
  %tmp.14 = trunc i32 %tmp.13 to i28, !dbg !257   ; [#uses=1 type=i28] [debug line = 240:7]
  %tmp.41 = sext i28 %tmp.14 to i32, !dbg !257    ; [#uses=1 type=i32] [debug line = 240:7]
  %Sbox.addr.5 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.41, i32 %tmp.62.cast, !dbg !257 ; [#uses=1 type=i32*] [debug line = 240:7]
  %Sbox.load.4 = load i32* %Sbox.addr.5, align 4, !dbg !257 ; [#uses=1 type=i32] [debug line = 240:7]
  store i32 %Sbox.load.4, i32* %statemt.addr.12, align 4, !dbg !257 ; [debug line = 240:7]
  store i32 %temp.1, i32* %statemt.addr.13, align 4, !dbg !258 ; [debug line = 241:7]
  %statemt.addr.14 = getelementptr [32 x i32]* %statemt, i32 0, i32 6, !dbg !259 ; [#uses=2 type=i32*] [debug line = 242:7]
  %statemt.load.9 = load i32* %statemt.addr.14, align 4, !dbg !259 ; [#uses=2 type=i32] [debug line = 242:7]
  %statemt.load.9.cast = trunc i32 %statemt.load.9 to i4, !dbg !259 ; [#uses=1 type=i4] [debug line = 242:7]
  %tmp.64.cast = zext i4 %statemt.load.9.cast to i32, !dbg !259 ; [#uses=1 type=i32] [debug line = 242:7]
  %tmp.15 = lshr i32 %statemt.load.9, 4, !dbg !259 ; [#uses=1 type=i32] [debug line = 242:7]
  %tmp.16 = trunc i32 %tmp.15 to i28, !dbg !259   ; [#uses=1 type=i28] [debug line = 242:7]
  %tmp.42 = sext i28 %tmp.16 to i32, !dbg !259    ; [#uses=1 type=i32] [debug line = 242:7]
  %Sbox.addr.6 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.42, i32 %tmp.64.cast, !dbg !259 ; [#uses=1 type=i32*] [debug line = 242:7]
  %temp.2 = load i32* %Sbox.addr.6, align 4, !dbg !259 ; [#uses=1 type=i32] [debug line = 242:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.2}, i64 0, metadata !251), !dbg !259 ; [debug line = 242:7] [debug variable = temp]
  %statemt.addr.15 = getelementptr [32 x i32]* %statemt, i32 0, i32 14, !dbg !260 ; [#uses=2 type=i32*] [debug line = 243:7]
  %statemt.load.10 = load i32* %statemt.addr.15, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 243:7]
  %statemt.load.10.cast = trunc i32 %statemt.load.10 to i4, !dbg !260 ; [#uses=1 type=i4] [debug line = 243:7]
  %tmp.66.cast = zext i4 %statemt.load.10.cast to i32, !dbg !260 ; [#uses=1 type=i32] [debug line = 243:7]
  %tmp.17 = lshr i32 %statemt.load.10, 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 243:7]
  %tmp.18 = trunc i32 %tmp.17 to i28, !dbg !260   ; [#uses=1 type=i28] [debug line = 243:7]
  %tmp.43 = sext i28 %tmp.18 to i32, !dbg !260    ; [#uses=1 type=i32] [debug line = 243:7]
  %Sbox.addr.7 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.43, i32 %tmp.66.cast, !dbg !260 ; [#uses=1 type=i32*] [debug line = 243:7]
  %Sbox.load.6 = load i32* %Sbox.addr.7, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 243:7]
  store i32 %Sbox.load.6, i32* %statemt.addr.14, align 4, !dbg !260 ; [debug line = 243:7]
  store i32 %temp.2, i32* %statemt.addr.15, align 4, !dbg !261 ; [debug line = 244:7]
  %statemt.addr.16 = getelementptr [32 x i32]* %statemt, i32 0, i32 3, !dbg !262 ; [#uses=2 type=i32*] [debug line = 246:7]
  %statemt.load.11 = load i32* %statemt.addr.16, align 4, !dbg !262 ; [#uses=2 type=i32] [debug line = 246:7]
  %statemt.load.11.cast = trunc i32 %statemt.load.11 to i4, !dbg !262 ; [#uses=1 type=i4] [debug line = 246:7]
  %tmp.68.cast = zext i4 %statemt.load.11.cast to i32, !dbg !262 ; [#uses=1 type=i32] [debug line = 246:7]
  %tmp.19 = lshr i32 %statemt.load.11, 4, !dbg !262 ; [#uses=1 type=i32] [debug line = 246:7]
  %tmp.20 = trunc i32 %tmp.19 to i28, !dbg !262   ; [#uses=1 type=i28] [debug line = 246:7]
  %tmp.44 = sext i28 %tmp.20 to i32, !dbg !262    ; [#uses=1 type=i32] [debug line = 246:7]
  %Sbox.addr.8 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.44, i32 %tmp.68.cast, !dbg !262 ; [#uses=1 type=i32*] [debug line = 246:7]
  %temp.3 = load i32* %Sbox.addr.8, align 4, !dbg !262 ; [#uses=1 type=i32] [debug line = 246:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.3}, i64 0, metadata !251), !dbg !262 ; [debug line = 246:7] [debug variable = temp]
  %statemt.addr.17 = getelementptr [32 x i32]* %statemt, i32 0, i32 15, !dbg !263 ; [#uses=2 type=i32*] [debug line = 247:7]
  %statemt.load.12 = load i32* %statemt.addr.17, align 4, !dbg !263 ; [#uses=2 type=i32] [debug line = 247:7]
  %statemt.load.12.cast = trunc i32 %statemt.load.12 to i4, !dbg !263 ; [#uses=1 type=i4] [debug line = 247:7]
  %tmp.70.cast = zext i4 %statemt.load.12.cast to i32, !dbg !263 ; [#uses=1 type=i32] [debug line = 247:7]
  %tmp.21 = lshr i32 %statemt.load.12, 4, !dbg !263 ; [#uses=1 type=i32] [debug line = 247:7]
  %tmp.22 = trunc i32 %tmp.21 to i28, !dbg !263   ; [#uses=1 type=i28] [debug line = 247:7]
  %tmp.45 = sext i28 %tmp.22 to i32, !dbg !263    ; [#uses=1 type=i32] [debug line = 247:7]
  %Sbox.addr.9 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.45, i32 %tmp.70.cast, !dbg !263 ; [#uses=1 type=i32*] [debug line = 247:7]
  %Sbox.load.8 = load i32* %Sbox.addr.9, align 4, !dbg !263 ; [#uses=1 type=i32] [debug line = 247:7]
  store i32 %Sbox.load.8, i32* %statemt.addr.16, align 4, !dbg !263 ; [debug line = 247:7]
  %statemt.addr.18 = getelementptr [32 x i32]* %statemt, i32 0, i32 11, !dbg !264 ; [#uses=2 type=i32*] [debug line = 248:7]
  %statemt.load.13 = load i32* %statemt.addr.18, align 4, !dbg !264 ; [#uses=2 type=i32] [debug line = 248:7]
  %statemt.load.13.cast = trunc i32 %statemt.load.13 to i4, !dbg !264 ; [#uses=1 type=i4] [debug line = 248:7]
  %tmp.72.cast = zext i4 %statemt.load.13.cast to i32, !dbg !264 ; [#uses=1 type=i32] [debug line = 248:7]
  %tmp.23 = lshr i32 %statemt.load.13, 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 248:7]
  %tmp.24 = trunc i32 %tmp.23 to i28, !dbg !264   ; [#uses=1 type=i28] [debug line = 248:7]
  %tmp.46 = sext i28 %tmp.24 to i32, !dbg !264    ; [#uses=1 type=i32] [debug line = 248:7]
  %Sbox.addr.10 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.46, i32 %tmp.72.cast, !dbg !264 ; [#uses=1 type=i32*] [debug line = 248:7]
  %Sbox.load.9 = load i32* %Sbox.addr.10, align 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 248:7]
  store i32 %Sbox.load.9, i32* %statemt.addr.17, align 4, !dbg !264 ; [debug line = 248:7]
  %statemt.addr.19 = getelementptr [32 x i32]* %statemt, i32 0, i32 7, !dbg !265 ; [#uses=2 type=i32*] [debug line = 249:7]
  %statemt.load.14 = load i32* %statemt.addr.19, align 4, !dbg !265 ; [#uses=2 type=i32] [debug line = 249:7]
  %statemt.load.14.cast = trunc i32 %statemt.load.14 to i4, !dbg !265 ; [#uses=1 type=i4] [debug line = 249:7]
  %tmp.74.cast = zext i4 %statemt.load.14.cast to i32, !dbg !265 ; [#uses=1 type=i32] [debug line = 249:7]
  %tmp.25 = lshr i32 %statemt.load.14, 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 249:7]
  %tmp.26 = trunc i32 %tmp.25 to i28, !dbg !265   ; [#uses=1 type=i28] [debug line = 249:7]
  %tmp.47 = sext i28 %tmp.26 to i32, !dbg !265    ; [#uses=1 type=i32] [debug line = 249:7]
  %Sbox.addr.11 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.47, i32 %tmp.74.cast, !dbg !265 ; [#uses=1 type=i32*] [debug line = 249:7]
  %Sbox.load.10 = load i32* %Sbox.addr.11, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 249:7]
  store i32 %Sbox.load.10, i32* %statemt.addr.18, align 4, !dbg !265 ; [debug line = 249:7]
  store i32 %temp.3, i32* %statemt.addr.19, align 4, !dbg !266 ; [debug line = 250:7]
  %statemt.load.15 = load i32* %statemt.addr, align 4, !dbg !267 ; [#uses=2 type=i32] [debug line = 252:7]
  %statemt.load.15.cast = trunc i32 %statemt.load.15 to i4, !dbg !267 ; [#uses=1 type=i4] [debug line = 252:7]
  %tmp.76.cast = zext i4 %statemt.load.15.cast to i32, !dbg !267 ; [#uses=1 type=i32] [debug line = 252:7]
  %tmp.27 = lshr i32 %statemt.load.15, 4, !dbg !267 ; [#uses=1 type=i32] [debug line = 252:7]
  %tmp.28 = trunc i32 %tmp.27 to i28, !dbg !267   ; [#uses=1 type=i28] [debug line = 252:7]
  %tmp.48 = sext i28 %tmp.28 to i32, !dbg !267    ; [#uses=1 type=i32] [debug line = 252:7]
  %Sbox.addr.12 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.48, i32 %tmp.76.cast, !dbg !267 ; [#uses=1 type=i32*] [debug line = 252:7]
  %Sbox.load.11 = load i32* %Sbox.addr.12, align 4, !dbg !267 ; [#uses=1 type=i32] [debug line = 252:7]
  store i32 %Sbox.load.11, i32* %statemt.addr, align 4, !dbg !267 ; [debug line = 252:7]
  %statemt.addr.20 = getelementptr [32 x i32]* %statemt, i32 0, i32 4, !dbg !268 ; [#uses=2 type=i32*] [debug line = 253:7]
  %statemt.load.16 = load i32* %statemt.addr.20, align 4, !dbg !268 ; [#uses=2 type=i32] [debug line = 253:7]
  %statemt.load.16.cast = trunc i32 %statemt.load.16 to i4, !dbg !268 ; [#uses=1 type=i4] [debug line = 253:7]
  %tmp.78.cast = zext i4 %statemt.load.16.cast to i32, !dbg !268 ; [#uses=1 type=i32] [debug line = 253:7]
  %tmp.29 = lshr i32 %statemt.load.16, 4, !dbg !268 ; [#uses=1 type=i32] [debug line = 253:7]
  %tmp.30 = trunc i32 %tmp.29 to i28, !dbg !268   ; [#uses=1 type=i28] [debug line = 253:7]
  %tmp.49 = sext i28 %tmp.30 to i32, !dbg !268    ; [#uses=1 type=i32] [debug line = 253:7]
  %Sbox.addr.13 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.49, i32 %tmp.78.cast, !dbg !268 ; [#uses=1 type=i32*] [debug line = 253:7]
  %Sbox.load.12 = load i32* %Sbox.addr.13, align 4, !dbg !268 ; [#uses=1 type=i32] [debug line = 253:7]
  store i32 %Sbox.load.12, i32* %statemt.addr.20, align 4, !dbg !268 ; [debug line = 253:7]
  %statemt.addr.21 = getelementptr [32 x i32]* %statemt, i32 0, i32 8, !dbg !269 ; [#uses=2 type=i32*] [debug line = 254:7]
  %statemt.load.17 = load i32* %statemt.addr.21, align 4, !dbg !269 ; [#uses=2 type=i32] [debug line = 254:7]
  %statemt.load.17.cast = trunc i32 %statemt.load.17 to i4, !dbg !269 ; [#uses=1 type=i4] [debug line = 254:7]
  %tmp.80.cast = zext i4 %statemt.load.17.cast to i32, !dbg !269 ; [#uses=1 type=i32] [debug line = 254:7]
  %tmp.31 = lshr i32 %statemt.load.17, 4, !dbg !269 ; [#uses=1 type=i32] [debug line = 254:7]
  %tmp.32 = trunc i32 %tmp.31 to i28, !dbg !269   ; [#uses=1 type=i28] [debug line = 254:7]
  %tmp.50 = sext i28 %tmp.32 to i32, !dbg !269    ; [#uses=1 type=i32] [debug line = 254:7]
  %Sbox.addr.14 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.50, i32 %tmp.80.cast, !dbg !269 ; [#uses=1 type=i32*] [debug line = 254:7]
  %Sbox.load.13 = load i32* %Sbox.addr.14, align 4, !dbg !269 ; [#uses=1 type=i32] [debug line = 254:7]
  store i32 %Sbox.load.13, i32* %statemt.addr.21, align 4, !dbg !269 ; [debug line = 254:7]
  %statemt.addr.22 = getelementptr [32 x i32]* %statemt, i32 0, i32 12, !dbg !270 ; [#uses=2 type=i32*] [debug line = 255:7]
  %statemt.load.18 = load i32* %statemt.addr.22, align 4, !dbg !270 ; [#uses=2 type=i32] [debug line = 255:7]
  %statemt.load.18.cast = trunc i32 %statemt.load.18 to i4, !dbg !270 ; [#uses=1 type=i4] [debug line = 255:7]
  %tmp.82.cast = zext i4 %statemt.load.18.cast to i32, !dbg !270 ; [#uses=1 type=i32] [debug line = 255:7]
  %tmp.33 = lshr i32 %statemt.load.18, 4, !dbg !270 ; [#uses=1 type=i32] [debug line = 255:7]
  %tmp.34 = trunc i32 %tmp.33 to i28, !dbg !270   ; [#uses=1 type=i28] [debug line = 255:7]
  %tmp.51 = sext i28 %tmp.34 to i32, !dbg !270    ; [#uses=1 type=i32] [debug line = 255:7]
  %Sbox.addr.15 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.51, i32 %tmp.82.cast, !dbg !270 ; [#uses=1 type=i32*] [debug line = 255:7]
  %Sbox.load.14 = load i32* %Sbox.addr.15, align 4, !dbg !270 ; [#uses=1 type=i32] [debug line = 255:7]
  store i32 %Sbox.load.14, i32* %statemt.addr.22, align 4, !dbg !270 ; [debug line = 255:7]
  ret void, !dbg !271                             ; [debug line = 336:1]
}

; [#uses=2]
define internal fastcc void @AddRoundKey([32 x i32]* nocapture %statemt, i6 %n) {
._crit_edge3:
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !272), !dbg !274 ; [debug line = 600:22] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i6 %n}, i64 0, metadata !275), !dbg !276 ; [debug line = 600:49] [debug variable = n]
  %tmp = shl i6 %n, 2, !dbg !277                  ; [#uses=1 type=i6] [debug line = 615:7]
  br label %0, !dbg !281                          ; [debug line = 613:8]

; <label>:0                                       ; preds = %2, %._crit_edge3
  %j = phi i3 [ 0, %._crit_edge3 ], [ %j.6, %2 ]  ; [#uses=4 type=i3]
  %j.cast1 = zext i3 %j to i6, !dbg !281          ; [#uses=1 type=i6] [debug line = 613:8]
  %j.cast = zext i3 %j to i4, !dbg !281           ; [#uses=1 type=i4] [debug line = 613:8]
  %exitcond = icmp eq i3 %j, -4, !dbg !281        ; [#uses=1 type=i1] [debug line = 613:8]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %2, !dbg !281  ; [debug line = 613:8]

; <label>:2                                       ; preds = %0
  %tmp. = add i6 %tmp, %j.cast1, !dbg !277        ; [#uses=1 type=i6] [debug line = 615:7]
  %tmp..cast = zext i6 %tmp. to i32, !dbg !277    ; [#uses=4 type=i32] [debug line = 615:7]
  %worda.addr = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 0, i32 %tmp..cast, !dbg !277 ; [#uses=1 type=i32*] [debug line = 615:7]
  %worda.load = load i32* %worda.addr, align 4, !dbg !277 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp.52 = shl i4 %j.cast, 2, !dbg !277          ; [#uses=4 type=i4] [debug line = 615:7]
  %tmp.84.cast = zext i4 %tmp.52 to i32, !dbg !277 ; [#uses=1 type=i32] [debug line = 615:7]
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.84.cast, !dbg !277 ; [#uses=2 type=i32*] [debug line = 615:7]
  %statemt.load = load i32* %statemt.addr, align 4, !dbg !277 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp.53 = xor i32 %statemt.load, %worda.load, !dbg !277 ; [#uses=1 type=i32] [debug line = 615:7]
  store i32 %tmp.53, i32* %statemt.addr, align 4, !dbg !277 ; [debug line = 615:7]
  %worda.addr.14 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 1, i32 %tmp..cast, !dbg !282 ; [#uses=1 type=i32*] [debug line = 616:7]
  %worda.load.5 = load i32* %worda.addr.14, align 4, !dbg !282 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp.54 = or i4 %tmp.52, 1, !dbg !282           ; [#uses=1 type=i4] [debug line = 616:7]
  %tmp.86.cast = zext i4 %tmp.54 to i32, !dbg !282 ; [#uses=1 type=i32] [debug line = 616:7]
  %statemt.addr.23 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.86.cast, !dbg !282 ; [#uses=2 type=i32*] [debug line = 616:7]
  %statemt.load.19 = load i32* %statemt.addr.23, align 4, !dbg !282 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp.55 = xor i32 %statemt.load.19, %worda.load.5, !dbg !282 ; [#uses=1 type=i32] [debug line = 616:7]
  store i32 %tmp.55, i32* %statemt.addr.23, align 4, !dbg !282 ; [debug line = 616:7]
  %worda.addr.15 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 2, i32 %tmp..cast, !dbg !283 ; [#uses=1 type=i32*] [debug line = 617:7]
  %worda.load.6 = load i32* %worda.addr.15, align 4, !dbg !283 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp.56 = or i4 %tmp.52, 2, !dbg !283           ; [#uses=1 type=i4] [debug line = 617:7]
  %tmp.88.cast = zext i4 %tmp.56 to i32, !dbg !283 ; [#uses=1 type=i32] [debug line = 617:7]
  %statemt.addr.24 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.88.cast, !dbg !283 ; [#uses=2 type=i32*] [debug line = 617:7]
  %statemt.load.20 = load i32* %statemt.addr.24, align 4, !dbg !283 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp.57 = xor i32 %statemt.load.20, %worda.load.6, !dbg !283 ; [#uses=1 type=i32] [debug line = 617:7]
  store i32 %tmp.57, i32* %statemt.addr.24, align 4, !dbg !283 ; [debug line = 617:7]
  %worda.addr.16 = getelementptr inbounds [4 x [120 x i32]]* @worda, i32 0, i32 3, i32 %tmp..cast, !dbg !284 ; [#uses=1 type=i32*] [debug line = 618:7]
  %worda.load.7 = load i32* %worda.addr.16, align 4, !dbg !284 ; [#uses=1 type=i32] [debug line = 618:7]
  %tmp.58 = or i4 %tmp.52, 3, !dbg !284           ; [#uses=1 type=i4] [debug line = 618:7]
  %tmp.90.cast = zext i4 %tmp.58 to i32, !dbg !284 ; [#uses=1 type=i32] [debug line = 618:7]
  %statemt.addr.25 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.90.cast, !dbg !284 ; [#uses=2 type=i32*] [debug line = 618:7]
  %statemt.load.21 = load i32* %statemt.addr.25, align 4, !dbg !284 ; [#uses=1 type=i32] [debug line = 618:7]
  %tmp.59 = xor i32 %statemt.load.21, %worda.load.7, !dbg !284 ; [#uses=1 type=i32] [debug line = 618:7]
  store i32 %tmp.59, i32* %statemt.addr.25, align 4, !dbg !284 ; [debug line = 618:7]
  %j.6 = add i3 %j, 1, !dbg !285                  ; [#uses=1 type=i3] [debug line = 613:23]
  call void @llvm.dbg.value(metadata !{i3 %j.6}, i64 0, metadata !286), !dbg !285 ; [debug line = 613:23] [debug variable = j]
  br label %0, !dbg !285                          ; [debug line = 613:23]

; <label>:3                                       ; preds = %0
  ret void
}

!opencl.kernels = !{!0, !7, !13, !17, !13, !23, !23, !29, !31}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!35}
!llvm.dbg.cu = !{!43}

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
!35 = metadata !{metadata !36, [4 x [120 x i32]]* @worda}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"worda", metadata !40, metadata !"unsigned int", i32 0, i32 31}
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 0, i32 3, i32 1}
!42 = metadata !{i32 0, i32 119, i32 1}
!43 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisRaw/trito/solution1/.autopilot/db/aes.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !44} ; [ DW_TAG_compile_unit ]
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !46, metadata !54, metadata !60, metadata !64, metadata !65}
!46 = metadata !{i32 786484, i32 0, null, metadata !"worda", metadata !"worda", metadata !"", metadata !47, i32 4, metadata !48, i32 0, i32 1, [4 x [120 x i32]]* @worda} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786473, metadata !"Edited/3rd/aes.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 32, i32 0, i32 0, metadata !49, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{i32 786454, null, metadata !"word", metadata !47, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!51 = metadata !{metadata !52, metadata !53}
!52 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 786465, i64 0, i64 119}      ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786484, i32 0, null, metadata !"Sbox", metadata !"Sbox", metadata !"", metadata !47, i32 6, metadata !55, i32 0, i32 1, [16 x [16 x i32]]* @Sbox} ; [ DW_TAG_variable ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !56, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_const_type ]
!57 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!58 = metadata !{metadata !59, metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 786484, i32 0, null, metadata !"Rcon0", metadata !"Rcon0", metadata !"Rcon0", metadata !47, i32 76, metadata !61, i32 0, i32 1, [30 x i8]* @Rcon0} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !56, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 29}       ; [ DW_TAG_subrange_type ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"invSbox", metadata !"invSbox", metadata !"", metadata !47, i32 40, metadata !55, i32 0, i32 1, [16 x [16 x i32]]* @invSbox} ; [ DW_TAG_variable ]
!65 = metadata !{i32 786484, i32 0, metadata !66, metadata !"out_enc_statemt", metadata !"out_enc_statemt", metadata !"", metadata !47, i32 101, metadata !72, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !47, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !47, i32 95, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 96} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !57, metadata !69, metadata !69, metadata !57, metadata !69}
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !56, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !59}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"statemt", metadata !78, metadata !"unsigned int", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 31, i32 1}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"key", metadata !78, metadata !"unsigned int", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"out", metadata !78, metadata !"unsigned int", i32 0, i32 31}
!88 = metadata !{i32 786689, metadata !89, metadata !"statemt", null, i32 624, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 786478, i32 0, metadata !47, metadata !"aes_main", metadata !"aes_main", metadata !"", metadata !47, i32 624, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 625} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !92, metadata !92, metadata !92}
!92 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !49, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!96 = metadata !{i32 624, i32 21, metadata !89, null}
!97 = metadata !{i32 786689, metadata !89, metadata !"key", null, i32 624, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 624, i32 39, metadata !89, null}
!99 = metadata !{i32 786689, metadata !89, metadata !"out", null, i32 624, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 624, i32 52, metadata !89, null}
!101 = metadata !{i32 786689, metadata !66, metadata !"statemt", null, i32 95, metadata !102, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !57, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!103 = metadata !{i32 629, i32 3, metadata !104, null}
!104 = metadata !{i32 786443, metadata !89, i32 625, i32 1, metadata !47, i32 38} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 95, i32 18, metadata !66, metadata !103}
!106 = metadata !{i32 786689, metadata !66, metadata !"key", null, i32 95, metadata !102, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 95, i32 35, metadata !66, metadata !103}
!108 = metadata !{i32 786689, metadata !66, metadata !"out", null, i32 95, metadata !102, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 95, i32 57, metadata !66, metadata !103}
!110 = metadata !{i32 106, i32 3, metadata !111, metadata !103}
!111 = metadata !{i32 786443, metadata !66, i32 96, i32 1, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 110, i32 3, metadata !111, metadata !103}
!113 = metadata !{i32 112, i32 8, metadata !114, metadata !103}
!114 = metadata !{i32 786443, metadata !111, i32 112, i32 3, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 114, i32 7, metadata !116, metadata !103}
!116 = metadata !{i32 786443, metadata !114, i32 113, i32 5, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 115, i32 7, metadata !116, metadata !103}
!118 = metadata !{i32 112, i32 35, metadata !114, metadata !103}
!119 = metadata !{i32 117, i32 3, metadata !111, metadata !103}
!120 = metadata !{i32 118, i32 3, metadata !111, metadata !103}
!121 = metadata !{i32 121, i32 8, metadata !122, metadata !103}
!122 = metadata !{i32 786443, metadata !111, i32 121, i32 3, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 123, i32 4, metadata !124, metadata !103}
!124 = metadata !{i32 786443, metadata !122, i32 122, i32 2, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 121, i32 27, metadata !122, metadata !103}
!126 = metadata !{i32 786688, metadata !111, metadata !"i", metadata !47, i32 100, metadata !57, i32 0, metadata !103} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 632, i32 1, metadata !104, null}
!128 = metadata !{i32 786689, metadata !129, metadata !"statemt", null, i32 457, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 786478, i32 0, metadata !47, metadata !"MixColumn_AddRoundKey", metadata !"MixColumn_AddRoundKey", metadata !"", metadata !47, i32 457, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 458} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !57, metadata !69, metadata !57, metadata !57}
!132 = metadata !{i32 457, i32 32, metadata !129, null}
!133 = metadata !{i32 786689, metadata !129, metadata !"n", metadata !47, i32 50332105, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 457, i32 57, metadata !129, null}
!135 = metadata !{i32 786688, metadata !136, metadata !"ret", metadata !47, i32 459, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 786443, metadata !129, i32 458, i32 1, metadata !47, i32 21} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 459, i32 7, metadata !136, null}
!138 = metadata !{i32 473, i32 7, metadata !139, null}
!139 = metadata !{i32 786443, metadata !140, i32 463, i32 5, metadata !47, i32 23} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !136, i32 462, i32 3, metadata !47, i32 22} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 462, i32 8, metadata !140, null}
!142 = metadata !{i32 512, i32 8, metadata !143, null}
!143 = metadata !{i32 786443, metadata !136, i32 512, i32 3, metadata !47, i32 24} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 464, i32 7, metadata !139, null}
!145 = metadata !{i32 465, i32 7, metadata !139, null}
!146 = metadata !{i32 466, i32 2, metadata !139, null}
!147 = metadata !{i32 467, i32 7, metadata !139, null}
!148 = metadata !{i32 786688, metadata !136, metadata !"x", metadata !47, i32 460, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 468, i32 7, metadata !139, null}
!150 = metadata !{i32 469, i32 7, metadata !139, null}
!151 = metadata !{i32 470, i32 2, metadata !139, null}
!152 = metadata !{i32 476, i32 7, metadata !139, null}
!153 = metadata !{i32 477, i32 7, metadata !139, null}
!154 = metadata !{i32 478, i32 2, metadata !139, null}
!155 = metadata !{i32 479, i32 7, metadata !139, null}
!156 = metadata !{i32 480, i32 7, metadata !139, null}
!157 = metadata !{i32 481, i32 7, metadata !139, null}
!158 = metadata !{i32 482, i32 2, metadata !139, null}
!159 = metadata !{i32 485, i32 7, metadata !139, null}
!160 = metadata !{i32 488, i32 7, metadata !139, null}
!161 = metadata !{i32 489, i32 7, metadata !139, null}
!162 = metadata !{i32 490, i32 2, metadata !139, null}
!163 = metadata !{i32 491, i32 7, metadata !139, null}
!164 = metadata !{i32 492, i32 7, metadata !139, null}
!165 = metadata !{i32 493, i32 7, metadata !139, null}
!166 = metadata !{i32 494, i32 2, metadata !139, null}
!167 = metadata !{i32 497, i32 7, metadata !139, null}
!168 = metadata !{i32 500, i32 7, metadata !139, null}
!169 = metadata !{i32 501, i32 7, metadata !139, null}
!170 = metadata !{i32 502, i32 2, metadata !139, null}
!171 = metadata !{i32 503, i32 7, metadata !139, null}
!172 = metadata !{i32 504, i32 7, metadata !139, null}
!173 = metadata !{i32 505, i32 7, metadata !139, null}
!174 = metadata !{i32 506, i32 2, metadata !139, null}
!175 = metadata !{i32 509, i32 7, metadata !139, null}
!176 = metadata !{i32 462, i32 23, metadata !140, null}
!177 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !47, i32 459, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 514, i32 7, metadata !179, null}
!179 = metadata !{i32 786443, metadata !143, i32 513, i32 5, metadata !47, i32 25} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 515, i32 7, metadata !179, null}
!181 = metadata !{i32 516, i32 7, metadata !179, null}
!182 = metadata !{i32 517, i32 7, metadata !179, null}
!183 = metadata !{i32 512, i32 23, metadata !143, null}
!184 = metadata !{i32 786689, metadata !185, metadata !"key", null, i32 178, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 786478, i32 0, metadata !47, metadata !"KeySchedule", metadata !"KeySchedule", metadata !"", metadata !47, i32 178, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 179} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !57, metadata !57, metadata !69}
!188 = metadata !{i32 178, i32 32, metadata !185, null}
!189 = metadata !{i32 192, i32 8, metadata !190, null}
!190 = metadata !{i32 786443, metadata !191, i32 192, i32 3, metadata !47, i32 8} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 786443, metadata !185, i32 179, i32 1, metadata !47, i32 6} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 198, i32 8, metadata !193, null}
!193 = metadata !{i32 786443, metadata !191, i32 198, i32 3, metadata !47, i32 10} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 195, i32 7, metadata !195, null}
!195 = metadata !{i32 786443, metadata !190, i32 193, i32 5, metadata !47, i32 9} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 193, i32 10, metadata !195, null}
!197 = metadata !{i32 193, i32 24, metadata !195, null}
!198 = metadata !{i32 786688, metadata !191, metadata !"i", metadata !47, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 192, i32 23, metadata !190, null}
!200 = metadata !{i32 786688, metadata !191, metadata !"j", metadata !47, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 202, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !193, i32 199, i32 5, metadata !47, i32 11} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 204, i32 14, metadata !204, null}
!204 = metadata !{i32 786443, metadata !202, i32 203, i32 2, metadata !47, i32 12} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 786689, metadata !206, metadata !"in", metadata !47, i32 16777554, metadata !57, i32 0, metadata !203} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 786478, i32 0, metadata !47, metadata !"SubByte", metadata !"SubByte", metadata !"", metadata !47, i32 338, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 339} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !57, metadata !57}
!209 = metadata !{i32 338, i32 18, metadata !206, metadata !203}
!210 = metadata !{i32 340, i32 3, metadata !211, metadata !203}
!211 = metadata !{i32 786443, metadata !206, i32 339, i32 1, metadata !47, i32 18} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 790529, metadata !213, metadata !"temp[0]", null, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!213 = metadata !{i32 786688, metadata !191, metadata !"temp", metadata !47, i32 181, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !57, metadata !215, i32 0, i32 0} ; [ DW_TAG_array_type ]
!215 = metadata !{metadata !52}
!216 = metadata !{i32 205, i32 14, metadata !204, null}
!217 = metadata !{i32 786689, metadata !206, metadata !"in", metadata !47, i32 16777554, metadata !57, i32 0, metadata !216} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 338, i32 18, metadata !206, metadata !216}
!219 = metadata !{i32 340, i32 3, metadata !211, metadata !216}
!220 = metadata !{i32 790529, metadata !213, metadata !"temp[1]", null, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!221 = metadata !{i32 206, i32 14, metadata !204, null}
!222 = metadata !{i32 786689, metadata !206, metadata !"in", metadata !47, i32 16777554, metadata !57, i32 0, metadata !221} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 338, i32 18, metadata !206, metadata !221}
!224 = metadata !{i32 340, i32 3, metadata !211, metadata !221}
!225 = metadata !{i32 790529, metadata !213, metadata !"temp[2]", null, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!226 = metadata !{i32 207, i32 14, metadata !204, null}
!227 = metadata !{i32 786689, metadata !206, metadata !"in", metadata !47, i32 16777554, metadata !57, i32 0, metadata !226} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 338, i32 18, metadata !206, metadata !226}
!229 = metadata !{i32 340, i32 3, metadata !211, metadata !226}
!230 = metadata !{i32 209, i32 7, metadata !202, null}
!231 = metadata !{i32 211, i32 4, metadata !232, null}
!232 = metadata !{i32 786443, metadata !202, i32 210, i32 2, metadata !47, i32 13} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 212, i32 4, metadata !232, null}
!234 = metadata !{i32 213, i32 4, metadata !232, null}
!235 = metadata !{i32 214, i32 4, metadata !232, null}
!236 = metadata !{i32 215, i32 2, metadata !232, null}
!237 = metadata !{i32 790529, metadata !213, metadata !"temp[3]", null, i32 181, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!238 = metadata !{i32 220, i32 2, metadata !239, null}
!239 = metadata !{i32 786443, metadata !202, i32 219, i32 7, metadata !47, i32 15} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 219, i32 12, metadata !239, null}
!241 = metadata !{i32 219, i32 26, metadata !239, null}
!242 = metadata !{i32 198, i32 42, metadata !193, null}
!243 = metadata !{i32 786689, metadata !244, metadata !"statemt", null, i32 226, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ByteSub_ShiftRow", metadata !"ByteSub_ShiftRow", metadata !"", metadata !47, i32 226, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 227} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{null, metadata !69, metadata !57}
!247 = metadata !{i32 226, i32 28, metadata !244, null}
!248 = metadata !{i32 233, i32 7, metadata !249, null}
!249 = metadata !{i32 786443, metadata !250, i32 231, i32 5, metadata !47, i32 17} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 786443, metadata !244, i32 227, i32 1, metadata !47, i32 16} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 786688, metadata !250, metadata !"temp", metadata !47, i32 228, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 234, i32 7, metadata !249, null}
!253 = metadata !{i32 235, i32 7, metadata !249, null}
!254 = metadata !{i32 236, i32 7, metadata !249, null}
!255 = metadata !{i32 237, i32 7, metadata !249, null}
!256 = metadata !{i32 239, i32 7, metadata !249, null}
!257 = metadata !{i32 240, i32 7, metadata !249, null}
!258 = metadata !{i32 241, i32 7, metadata !249, null}
!259 = metadata !{i32 242, i32 7, metadata !249, null}
!260 = metadata !{i32 243, i32 7, metadata !249, null}
!261 = metadata !{i32 244, i32 7, metadata !249, null}
!262 = metadata !{i32 246, i32 7, metadata !249, null}
!263 = metadata !{i32 247, i32 7, metadata !249, null}
!264 = metadata !{i32 248, i32 7, metadata !249, null}
!265 = metadata !{i32 249, i32 7, metadata !249, null}
!266 = metadata !{i32 250, i32 7, metadata !249, null}
!267 = metadata !{i32 252, i32 7, metadata !249, null}
!268 = metadata !{i32 253, i32 7, metadata !249, null}
!269 = metadata !{i32 254, i32 7, metadata !249, null}
!270 = metadata !{i32 255, i32 7, metadata !249, null}
!271 = metadata !{i32 336, i32 1, metadata !250, null}
!272 = metadata !{i32 786689, metadata !273, metadata !"statemt", null, i32 600, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 786478, i32 0, metadata !47, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !47, i32 600, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !70, i32 601} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 600, i32 22, metadata !273, null}
!275 = metadata !{i32 786689, metadata !273, metadata !"n", metadata !47, i32 50332248, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 600, i32 49, metadata !273, null}
!277 = metadata !{i32 615, i32 7, metadata !278, null}
!278 = metadata !{i32 786443, metadata !279, i32 614, i32 5, metadata !47, i32 37} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 786443, metadata !280, i32 613, i32 3, metadata !47, i32 36} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 786443, metadata !273, i32 601, i32 1, metadata !47, i32 34} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 613, i32 8, metadata !279, null}
!282 = metadata !{i32 616, i32 7, metadata !278, null}
!283 = metadata !{i32 617, i32 7, metadata !278, null}
!284 = metadata !{i32 618, i32 7, metadata !278, null}
!285 = metadata !{i32 613, i32 23, metadata !279, null}
!286 = metadata !{i32 786688, metadata !280, metadata !"j", metadata !47, i32 602, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
