; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Third/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@word = common global [4 x [120 x i32]] zeroinitializer, align 4 ; [#uses=19 type=[4 x [120 x i32]]*]
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
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %statemt) nounwind, !map !72
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %key) nounwind, !map !78
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %out) nounwind, !map !82
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @aes_main.str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !86), !dbg !93 ; [debug line = 623:20] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !94), !dbg !95 ; [debug line = 623:37] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !96), !dbg !97 ; [debug line = 623:49] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !98) nounwind, !dbg !101 ; [debug line = 94:18@628:3] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !102) nounwind, !dbg !103 ; [debug line = 94:35@628:3] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %out}, i64 0, metadata !104) nounwind, !dbg !105 ; [debug line = 94:57@628:3] [debug variable = out]
  call fastcc void @KeySchedule([32 x i32]* %key) nounwind, !dbg !106 ; [debug line = 105:3@628:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 0) nounwind, !dbg !108 ; [debug line = 109:3@628:3]
  br label %1, !dbg !109                          ; [debug line = 111:8@628:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 1, %0 ], [ %tmp.i, %3 ]         ; [#uses=3 type=i4]
  %exitcond3.i = icmp eq i4 %i.i, -6, !dbg !109   ; [#uses=1 type=i1] [debug line = 111:8@628:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3.i, label %4, label %3, !dbg !109 ; [debug line = 111:8@628:3]

; <label>:3                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !111 ; [debug line = 113:7@628:3]
  call fastcc void @MixColumn_AddRoundKey([32 x i32]* %statemt, i4 %i.i) nounwind, !dbg !113 ; [debug line = 114:7@628:3]
  %tmp.i = add i4 %i.i, 1, !dbg !114              ; [#uses=1 type=i4] [debug line = 111:35@628:3]
  br label %1, !dbg !114                          ; [debug line = 111:35@628:3]

; <label>:4                                       ; preds = %1
  call fastcc void @ByteSub_ShiftRow([32 x i32]* %statemt) nounwind, !dbg !115 ; [debug line = 116:3@628:3]
  call fastcc void @AddRoundKey([32 x i32]* %statemt, i6 10) nounwind, !dbg !116 ; [debug line = 117:3@628:3]
  br label %5, !dbg !117                          ; [debug line = 120:8@628:3]

; <label>:5                                       ; preds = %7, %4
  %i.1.i = phi i5 [ 0, %4 ], [ %i, %7 ]           ; [#uses=3 type=i5]
  %i.1.i.cast1 = zext i5 %i.1.i to i32, !dbg !117 ; [#uses=2 type=i32] [debug line = 120:8@628:3]
  %exitcond2.i = icmp eq i5 %i.1.i, -16, !dbg !117 ; [#uses=1 type=i1] [debug line = 120:8@628:3]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %encrypt.exit, label %7, !dbg !117 ; [debug line = 120:8@628:3]

; <label>:7                                       ; preds = %5
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %i.1.i.cast1, !dbg !119 ; [#uses=1 type=i32*] [debug line = 122:4@628:3]
  %statemt.load = load i32* %statemt.addr, align 4, !dbg !119 ; [#uses=1 type=i32] [debug line = 122:4@628:3]
  %out.addr = getelementptr [32 x i32]* %out, i32 0, i32 %i.1.i.cast1, !dbg !119 ; [#uses=1 type=i32*] [debug line = 122:4@628:3]
  store i32 %statemt.load, i32* %out.addr, align 4, !dbg !119 ; [debug line = 122:4@628:3]
  %i = add i5 %i.1.i, 1, !dbg !121                ; [#uses=1 type=i5] [debug line = 120:27@628:3]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !122) nounwind, !dbg !121 ; [debug line = 120:27@628:3] [debug variable = i]
  br label %5, !dbg !121                          ; [debug line = 120:27@628:3]

encrypt.exit:                                     ; preds = %5
  ret void, !dbg !123                             ; [debug line = 631:1]
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
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !124), !dbg !128 ; [debug line = 456:32] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i4 %n}, i64 0, metadata !129), !dbg !130 ; [debug line = 456:57] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %ret}, metadata !131), !dbg !133 ; [debug line = 458:7] [debug variable = ret]
  %n.cast = zext i4 %n to i6, !dbg !134           ; [#uses=1 type=i6] [debug line = 472:7]
  %tmp = shl nuw i6 %n.cast, 2, !dbg !134         ; [#uses=1 type=i6] [debug line = 472:7]
  br label %1, !dbg !137                          ; [debug line = 461:8]

; <label>:1                                       ; preds = %._crit_edge_ifconv, %0
  %j = phi i3 [ 0, %0 ], [ %j.3, %._crit_edge_ifconv ] ; [#uses=4 type=i3]
  %j.cast1 = zext i3 %j to i6, !dbg !137          ; [#uses=1 type=i6] [debug line = 461:8]
  %j.cast = zext i3 %j to i4, !dbg !137           ; [#uses=1 type=i4] [debug line = 461:8]
  %exitcond1 = icmp eq i3 %j, -4, !dbg !137       ; [#uses=1 type=i1] [debug line = 461:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader.preheader, label %._crit_edge_ifconv, !dbg !137 ; [debug line = 461:8]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !138                 ; [debug line = 511:8]

._crit_edge_ifconv:                               ; preds = %1
  %tmp.5 = shl i4 %j.cast, 2, !dbg !140           ; [#uses=4 type=i4] [debug line = 463:7]
  %tmp.5.cast = zext i4 %tmp.5 to i32, !dbg !140  ; [#uses=2 type=i32] [debug line = 463:7]
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.5.cast, !dbg !140 ; [#uses=1 type=i32*] [debug line = 463:7]
  %x.6 = load i32* %statemt.addr, align 4, !dbg !140 ; [#uses=4 type=i32] [debug line = 463:7]
  %tmp.6 = shl i32 %x.6, 1, !dbg !140             ; [#uses=4 type=i32] [debug line = 463:7]
  %ret.addr = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.5.cast, !dbg !140 ; [#uses=1 type=i32*] [debug line = 463:7]
  %.mask = and i32 %tmp.6, -256, !dbg !141        ; [#uses=1 type=i32] [debug line = 464:7]
  %tmp.7 = icmp eq i32 %.mask, 256, !dbg !141     ; [#uses=1 type=i1] [debug line = 464:7]
  %tmp.8 = xor i32 %tmp.6, 283, !dbg !142         ; [#uses=1 type=i32] [debug line = 465:2]
  %ret.load.1 = select i1 %tmp.7, i32 %tmp.8, i32 %tmp.6, !dbg !141 ; [#uses=1 type=i32] [debug line = 464:7]
  %tmp.9 = or i4 %tmp.5, 1, !dbg !143             ; [#uses=1 type=i4] [debug line = 466:7]
  %tmp.9.cast = zext i4 %tmp.9 to i32, !dbg !143  ; [#uses=2 type=i32] [debug line = 466:7]
  %statemt.addr.1 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.9.cast, !dbg !143 ; [#uses=1 type=i32*] [debug line = 466:7]
  %x = load i32* %statemt.addr.1, align 4, !dbg !143 ; [#uses=4 type=i32] [debug line = 466:7]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !144), !dbg !143 ; [debug line = 466:7] [debug variable = x]
  %tmp. = shl i32 %x, 1, !dbg !145                ; [#uses=4 type=i32] [debug line = 467:7]
  %x.1 = xor i32 %x, %tmp., !dbg !145             ; [#uses=3 type=i32] [debug line = 467:7]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !144), !dbg !145 ; [debug line = 467:7] [debug variable = x]
  %.mask1 = and i32 %x.1, -256, !dbg !146         ; [#uses=1 type=i32] [debug line = 468:7]
  %tmp.1 = icmp eq i32 %.mask1, 256, !dbg !146    ; [#uses=1 type=i1] [debug line = 468:7]
  %tmp.3 = xor i32 %x.1, 283, !dbg !147           ; [#uses=1 type=i32] [debug line = 469:2]
  %storemerge.v = select i1 %tmp.1, i32 %tmp.3, i32 %x.1 ; [#uses=1 type=i32]
  %tmp.10 = or i4 %tmp.5, 2, !dbg !134            ; [#uses=1 type=i4] [debug line = 472:7]
  %tmp.14.cast = zext i4 %tmp.10 to i32, !dbg !134 ; [#uses=2 type=i32] [debug line = 472:7]
  %statemt.addr.6 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.14.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 472:7]
  %x.2 = load i32* %statemt.addr.6, align 4, !dbg !134 ; [#uses=4 type=i32] [debug line = 472:7]
  %tmp.11 = or i4 %tmp.5, 3, !dbg !134            ; [#uses=1 type=i4] [debug line = 472:7]
  %tmp.15.cast = zext i4 %tmp.11 to i32, !dbg !134 ; [#uses=2 type=i32] [debug line = 472:7]
  %statemt.addr.7 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.15.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 472:7]
  %x.4 = load i32* %statemt.addr.7, align 4, !dbg !134 ; [#uses=4 type=i32] [debug line = 472:7]
  %tmp.14 = add i6 %tmp, %j.cast1, !dbg !134      ; [#uses=1 type=i6] [debug line = 472:7]
  %tmp.16.cast = zext i6 %tmp.14 to i32, !dbg !134 ; [#uses=4 type=i32] [debug line = 472:7]
  %word.addr = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %tmp.16.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 472:7]
  %word.load = load i32* %word.addr, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 472:7]
  %tmp1 = xor i32 %x.2, %x.4, !dbg !134           ; [#uses=1 type=i32] [debug line = 472:7]
  %tmp3 = xor i32 %ret.load.1, %storemerge.v, !dbg !134 ; [#uses=1 type=i32] [debug line = 472:7]
  %tmp2 = xor i32 %tmp3, %word.load, !dbg !134    ; [#uses=1 type=i32] [debug line = 472:7]
  %tmp.15 = xor i32 %tmp2, %tmp1, !dbg !134       ; [#uses=1 type=i32] [debug line = 472:7]
  store i32 %tmp.15, i32* %ret.addr, align 4, !dbg !134 ; [debug line = 472:7]
  %ret.addr.5 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.9.cast, !dbg !148 ; [#uses=1 type=i32*] [debug line = 475:7]
  %.mask2 = and i32 %tmp., -256, !dbg !149        ; [#uses=1 type=i32] [debug line = 476:7]
  %tmp.16 = icmp eq i32 %.mask2, 256, !dbg !149   ; [#uses=1 type=i1] [debug line = 476:7]
  %tmp.17 = xor i32 %tmp., 283, !dbg !150         ; [#uses=1 type=i32] [debug line = 477:2]
  %tmp.23.tmp. = select i1 %tmp.16, i32 %tmp.17, i32 %tmp., !dbg !149 ; [#uses=1 type=i32] [debug line = 476:7]
  call void @llvm.dbg.value(metadata !{i32 %x.2}, i64 0, metadata !144), !dbg !151 ; [debug line = 478:7] [debug variable = x]
  %tmp.18 = shl i32 %x.2, 1, !dbg !152            ; [#uses=4 type=i32] [debug line = 479:7]
  %x.3 = xor i32 %x.2, %tmp.18, !dbg !152         ; [#uses=3 type=i32] [debug line = 479:7]
  call void @llvm.dbg.value(metadata !{i32 %x.3}, i64 0, metadata !144), !dbg !152 ; [debug line = 479:7] [debug variable = x]
  %.mask3 = and i32 %x.3, -256, !dbg !153         ; [#uses=1 type=i32] [debug line = 480:7]
  %tmp.19 = icmp eq i32 %.mask3, 256, !dbg !153   ; [#uses=1 type=i1] [debug line = 480:7]
  %tmp.20 = xor i32 %x.3, 283, !dbg !154          ; [#uses=1 type=i32] [debug line = 481:2]
  %storemerge8.v = select i1 %tmp.19, i32 %tmp.20, i32 %x.3 ; [#uses=1 type=i32]
  %word.addr.1 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %tmp.16.cast, !dbg !155 ; [#uses=1 type=i32*] [debug line = 484:7]
  %word.load.1 = load i32* %word.addr.1, align 4, !dbg !155 ; [#uses=1 type=i32] [debug line = 484:7]
  %tmp4 = xor i32 %x.4, %x.6, !dbg !155           ; [#uses=1 type=i32] [debug line = 484:7]
  %tmp6 = xor i32 %storemerge8.v, %tmp.23.tmp., !dbg !155 ; [#uses=1 type=i32] [debug line = 484:7]
  %tmp5 = xor i32 %tmp6, %word.load.1, !dbg !155  ; [#uses=1 type=i32] [debug line = 484:7]
  %tmp.21 = xor i32 %tmp5, %tmp4, !dbg !155       ; [#uses=1 type=i32] [debug line = 484:7]
  store i32 %tmp.21, i32* %ret.addr.5, align 4, !dbg !155 ; [debug line = 484:7]
  %ret.addr.6 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.14.cast, !dbg !156 ; [#uses=1 type=i32*] [debug line = 487:7]
  %.mask4 = and i32 %tmp.18, -256, !dbg !157      ; [#uses=1 type=i32] [debug line = 488:7]
  %tmp.22 = icmp eq i32 %.mask4, 256, !dbg !157   ; [#uses=1 type=i1] [debug line = 488:7]
  %tmp.23 = xor i32 %tmp.18, 283, !dbg !158       ; [#uses=1 type=i32] [debug line = 489:2]
  %tmp.33.tmp. = select i1 %tmp.22, i32 %tmp.23, i32 %tmp.18, !dbg !157 ; [#uses=1 type=i32] [debug line = 488:7]
  call void @llvm.dbg.value(metadata !{i32 %x.4}, i64 0, metadata !144), !dbg !159 ; [debug line = 490:7] [debug variable = x]
  %tmp.24 = shl i32 %x.4, 1, !dbg !160            ; [#uses=4 type=i32] [debug line = 491:7]
  %x.5 = xor i32 %x.4, %tmp.24, !dbg !160         ; [#uses=3 type=i32] [debug line = 491:7]
  call void @llvm.dbg.value(metadata !{i32 %x.5}, i64 0, metadata !144), !dbg !160 ; [debug line = 491:7] [debug variable = x]
  %.mask5 = and i32 %x.5, -256, !dbg !161         ; [#uses=1 type=i32] [debug line = 492:7]
  %tmp.25 = icmp eq i32 %.mask5, 256, !dbg !161   ; [#uses=1 type=i1] [debug line = 492:7]
  %tmp.26 = xor i32 %x.5, 283, !dbg !162          ; [#uses=1 type=i32] [debug line = 493:2]
  %storemerge9.v = select i1 %tmp.25, i32 %tmp.26, i32 %x.5 ; [#uses=1 type=i32]
  %word.addr.2 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %tmp.16.cast, !dbg !163 ; [#uses=1 type=i32*] [debug line = 496:7]
  %word.load.2 = load i32* %word.addr.2, align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 496:7]
  %tmp7 = xor i32 %x, %x.6, !dbg !163             ; [#uses=1 type=i32] [debug line = 496:7]
  %tmp9 = xor i32 %storemerge9.v, %tmp.33.tmp., !dbg !163 ; [#uses=1 type=i32] [debug line = 496:7]
  %tmp8 = xor i32 %tmp9, %word.load.2, !dbg !163  ; [#uses=1 type=i32] [debug line = 496:7]
  %tmp.27 = xor i32 %tmp8, %tmp7, !dbg !163       ; [#uses=1 type=i32] [debug line = 496:7]
  store i32 %tmp.27, i32* %ret.addr.6, align 4, !dbg !163 ; [debug line = 496:7]
  %ret.addr.7 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.15.cast, !dbg !164 ; [#uses=1 type=i32*] [debug line = 499:7]
  %.mask6 = and i32 %tmp.24, -256, !dbg !165      ; [#uses=1 type=i32] [debug line = 500:7]
  %tmp.28 = icmp eq i32 %.mask6, 256, !dbg !165   ; [#uses=1 type=i1] [debug line = 500:7]
  %tmp.29 = xor i32 %tmp.24, 283, !dbg !166       ; [#uses=1 type=i32] [debug line = 501:2]
  %tmp.43.tmp. = select i1 %tmp.28, i32 %tmp.29, i32 %tmp.24, !dbg !165 ; [#uses=1 type=i32] [debug line = 500:7]
  call void @llvm.dbg.value(metadata !{i32 %x.6}, i64 0, metadata !144), !dbg !167 ; [debug line = 502:7] [debug variable = x]
  %x.7 = xor i32 %x.6, %tmp.6, !dbg !168          ; [#uses=3 type=i32] [debug line = 503:7]
  call void @llvm.dbg.value(metadata !{i32 %x.7}, i64 0, metadata !144), !dbg !168 ; [debug line = 503:7] [debug variable = x]
  %.mask7 = and i32 %x.7, -256, !dbg !169         ; [#uses=1 type=i32] [debug line = 504:7]
  %tmp.30 = icmp eq i32 %.mask7, 256, !dbg !169   ; [#uses=1 type=i1] [debug line = 504:7]
  %tmp.31 = xor i32 %x.7, 283, !dbg !170          ; [#uses=1 type=i32] [debug line = 505:2]
  %storemerge1.v = select i1 %tmp.30, i32 %tmp.31, i32 %x.7 ; [#uses=1 type=i32]
  %word.addr.3 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %tmp.16.cast, !dbg !171 ; [#uses=1 type=i32*] [debug line = 508:7]
  %word.load.3 = load i32* %word.addr.3, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 508:7]
  %tmp10 = xor i32 %x.2, %x, !dbg !171            ; [#uses=1 type=i32] [debug line = 508:7]
  %tmp12 = xor i32 %storemerge1.v, %tmp.43.tmp., !dbg !171 ; [#uses=1 type=i32] [debug line = 508:7]
  %tmp11 = xor i32 %tmp12, %word.load.3, !dbg !171 ; [#uses=1 type=i32] [debug line = 508:7]
  %tmp.32 = xor i32 %tmp11, %tmp10, !dbg !171     ; [#uses=1 type=i32] [debug line = 508:7]
  store i32 %tmp.32, i32* %ret.addr.7, align 4, !dbg !171 ; [debug line = 508:7]
  %j.3 = add i3 %j, 1, !dbg !172                  ; [#uses=1 type=i3] [debug line = 461:23]
  call void @llvm.dbg.value(metadata !{i3 %j.3}, i64 0, metadata !173), !dbg !172 ; [debug line = 461:23] [debug variable = j]
  br label %1, !dbg !172                          ; [debug line = 461:23]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j.1 = phi i3 [ %j.2, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %j.1.cast = zext i3 %j.1 to i4, !dbg !138       ; [#uses=1 type=i4] [debug line = 511:8]
  %exitcond = icmp eq i3 %j.1, -4, !dbg !138      ; [#uses=1 type=i1] [debug line = 511:8]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !138  ; [debug line = 511:8]

; <label>:4                                       ; preds = %.preheader
  %tmp.2 = shl i4 %j.1.cast, 2, !dbg !174         ; [#uses=4 type=i4] [debug line = 513:7]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !174  ; [#uses=2 type=i32] [debug line = 513:7]
  %ret.addr.1 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.2.cast, !dbg !174 ; [#uses=1 type=i32*] [debug line = 513:7]
  %ret.load = load i32* %ret.addr.1, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 513:7]
  %statemt.addr.2 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.2.cast, !dbg !174 ; [#uses=1 type=i32*] [debug line = 513:7]
  store i32 %ret.load, i32* %statemt.addr.2, align 4, !dbg !174 ; [debug line = 513:7]
  %tmp.4 = or i4 %tmp.2, 1, !dbg !176             ; [#uses=1 type=i4] [debug line = 514:7]
  %tmp.4.cast = zext i4 %tmp.4 to i32, !dbg !176  ; [#uses=2 type=i32] [debug line = 514:7]
  %ret.addr.2 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.4.cast, !dbg !176 ; [#uses=1 type=i32*] [debug line = 514:7]
  %ret.load.2 = load i32* %ret.addr.2, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 514:7]
  %statemt.addr.3 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.4.cast, !dbg !176 ; [#uses=1 type=i32*] [debug line = 514:7]
  store i32 %ret.load.2, i32* %statemt.addr.3, align 4, !dbg !176 ; [debug line = 514:7]
  %tmp.12 = or i4 %tmp.2, 2, !dbg !177            ; [#uses=1 type=i4] [debug line = 515:7]
  %tmp.12.cast = zext i4 %tmp.12 to i32, !dbg !177 ; [#uses=2 type=i32] [debug line = 515:7]
  %ret.addr.3 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.12.cast, !dbg !177 ; [#uses=1 type=i32*] [debug line = 515:7]
  %ret.load.3 = load i32* %ret.addr.3, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 515:7]
  %statemt.addr.4 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.12.cast, !dbg !177 ; [#uses=1 type=i32*] [debug line = 515:7]
  store i32 %ret.load.3, i32* %statemt.addr.4, align 4, !dbg !177 ; [debug line = 515:7]
  %tmp.13 = or i4 %tmp.2, 3, !dbg !178            ; [#uses=1 type=i4] [debug line = 516:7]
  %tmp.13.cast = zext i4 %tmp.13 to i32, !dbg !178 ; [#uses=2 type=i32] [debug line = 516:7]
  %ret.addr.4 = getelementptr inbounds [32 x i32]* %ret, i32 0, i32 %tmp.13.cast, !dbg !178 ; [#uses=1 type=i32*] [debug line = 516:7]
  %ret.load.4 = load i32* %ret.addr.4, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 516:7]
  %statemt.addr.5 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.13.cast, !dbg !178 ; [#uses=1 type=i32*] [debug line = 516:7]
  store i32 %ret.load.4, i32* %statemt.addr.5, align 4, !dbg !178 ; [debug line = 516:7]
  %j.2 = add i3 %j.1, 1, !dbg !179                ; [#uses=1 type=i3] [debug line = 511:23]
  call void @llvm.dbg.value(metadata !{i3 %j.2}, i64 0, metadata !173), !dbg !179 ; [debug line = 511:23] [debug variable = j]
  br label %.preheader, !dbg !179                 ; [debug line = 511:23]

; <label>:5                                       ; preds = %.preheader
  ret void
}

; [#uses=1]
define internal fastcc void @KeySchedule([32 x i32]* nocapture %key) {
  call void @llvm.dbg.value(metadata !{[32 x i32]* %key}, i64 0, metadata !180), !dbg !184 ; [debug line = 177:32] [debug variable = key]
  br label %1, !dbg !185                          ; [debug line = 191:8]

; <label>:1                                       ; preds = %6, %0
  %j = phi i3 [ 0, %0 ], [ %j.4, %6 ]             ; [#uses=4 type=i3]
  %j.cast5 = zext i3 %j to i32, !dbg !185         ; [#uses=1 type=i32] [debug line = 191:8]
  %j.cast = zext i3 %j to i4, !dbg !185           ; [#uses=1 type=i4] [debug line = 191:8]
  %exitcond3 = icmp eq i3 %j, -4, !dbg !185       ; [#uses=1 type=i1] [debug line = 191:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader.preheader, label %.preheader4.preheader, !dbg !185 ; [debug line = 191:8]

.preheader.preheader:                             ; preds = %1
  %3 = lshr i6 -24, 2                             ; [#uses=0 type=i6]
  br label %.preheader, !dbg !188                 ; [debug line = 197:8]

.preheader4.preheader:                            ; preds = %1
  %tmp = shl i4 %j.cast, 2, !dbg !190             ; [#uses=1 type=i4] [debug line = 194:7]
  br label %.preheader4, !dbg !192                ; [debug line = 192:10]

.preheader4:                                      ; preds = %5, %.preheader4.preheader
  %i = phi i3 [ %i.1, %5 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i3]
  %i.cast4 = zext i3 %i to i32, !dbg !192         ; [#uses=1 type=i32] [debug line = 192:10]
  %i.cast = zext i3 %i to i4, !dbg !192           ; [#uses=1 type=i4] [debug line = 192:10]
  %exitcond2 = icmp eq i3 %i, -4, !dbg !192       ; [#uses=1 type=i1] [debug line = 192:10]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %6, label %5, !dbg !192 ; [debug line = 192:10]

; <label>:5                                       ; preds = %.preheader4
  %sum = add i4 %tmp, %i.cast                     ; [#uses=1 type=i4]
  %sum.cast = zext i4 %sum to i32                 ; [#uses=1 type=i32]
  %key.addr = getelementptr [32 x i32]* %key, i32 0, i32 %sum.cast, !dbg !190 ; [#uses=1 type=i32*] [debug line = 194:7]
  %key.load = load i32* %key.addr, align 4, !dbg !190 ; [#uses=1 type=i32] [debug line = 194:7]
  %word.addr = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 %i.cast4, i32 %j.cast5, !dbg !190 ; [#uses=1 type=i32*] [debug line = 194:7]
  store i32 %key.load, i32* %word.addr, align 4, !dbg !190 ; [debug line = 194:7]
  %i.1 = add i3 %i, 1, !dbg !193                  ; [#uses=1 type=i3] [debug line = 192:24]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !194), !dbg !193 ; [debug line = 192:24] [debug variable = i]
  br label %.preheader4, !dbg !193                ; [debug line = 192:24]

; <label>:6                                       ; preds = %.preheader4
  %j.4 = add i3 %j, 1, !dbg !195                  ; [#uses=1 type=i3] [debug line = 191:23]
  call void @llvm.dbg.value(metadata !{i3 %j.4}, i64 0, metadata !196), !dbg !195 ; [debug line = 191:23] [debug variable = j]
  br label %1, !dbg !195                          ; [debug line = 191:23]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %j.1 = phi i6 [ %j.5, %12 ], [ 4, %.preheader.preheader ] ; [#uses=7 type=i6]
  %j.1.cast3 = trunc i6 %j.1 to i2, !dbg !188     ; [#uses=1 type=i2] [debug line = 197:8]
  %j.1.cast2 = zext i6 %j.1 to i32, !dbg !188     ; [#uses=1 type=i32] [debug line = 197:8]
  %exitcond1 = icmp eq i6 %j.1, -20, !dbg !188    ; [#uses=1 type=i1] [debug line = 197:8]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %13, label %8, !dbg !188 ; [debug line = 197:8]

; <label>:8                                       ; preds = %.preheader
  %tmp. = icmp eq i2 %j.1.cast3, 0, !dbg !197     ; [#uses=1 type=i1] [debug line = 201:7]
  %tmp.33 = add i6 %j.1, -1, !dbg !199            ; [#uses=1 type=i6] [debug line = 203:14]
  %tmp.50.cast = zext i6 %tmp.33 to i32, !dbg !199 ; [#uses=8 type=i32] [debug line = 203:14]
  br i1 %tmp., label %._crit_edge, label %.critedge, !dbg !197 ; [debug line = 201:7]

._crit_edge:                                      ; preds = %8
  %word.addr.4 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %tmp.50.cast, !dbg !199 ; [#uses=1 type=i32*] [debug line = 203:14]
  %in.assign = load i32* %word.addr.4, align 4, !dbg !199 ; [#uses=4 type=i32] [debug line = 203:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign}, i64 0, metadata !201) nounwind, !dbg !205 ; [debug line = 337:18@203:14] [debug variable = in]
  %tmp.i = srem i32 %in.assign, 16, !dbg !206     ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %_signbit.i = lshr i32 %in.assign, 31, !dbg !206 ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %_cond.i = trunc i32 %_signbit.i to i1, !dbg !206 ; [#uses=1 type=i1] [debug line = 339:3@203:14]
  %_neg.i = sub i32 0, %in.assign, !dbg !206      ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %_lshr.i = lshr i32 %_neg.i, 4, !dbg !206       ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %_lshr.i.cast = trunc i32 %_lshr.i to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 339:3@203:14]
  %_neg.t.i = sub i29 0, %_lshr.i.cast, !dbg !206 ; [#uses=1 type=i29] [debug line = 339:3@203:14]
  %_lshr.f.i = lshr i32 %in.assign, 4, !dbg !206  ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %_lshr.f.i.cast = trunc i32 %_lshr.f.i to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 339:3@203:14]
  %tmp.3.i = select i1 %_cond.i, i29 %_neg.t.i, i29 %_lshr.f.i.cast, !dbg !206 ; [#uses=1 type=i29] [debug line = 339:3@203:14]
  %tmp.3.i.cast = sext i29 %tmp.3.i to i32, !dbg !206 ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %Sbox.addr = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i.cast, i32 %tmp.i, !dbg !206 ; [#uses=1 type=i32*] [debug line = 339:3@203:14]
  %Sbox.load = load i32* %Sbox.addr, align 4, !dbg !206 ; [#uses=1 type=i32] [debug line = 339:3@203:14]
  %Sbox.load.cast = trunc i32 %Sbox.load to i8, !dbg !199 ; [#uses=1 type=i8] [debug line = 203:14]
  %_lshr.f = lshr i6 %j.1, 2, !dbg !199           ; [#uses=1 type=i6] [debug line = 203:14]
  %_lshr.f.cast = trunc i6 %_lshr.f to i4, !dbg !199 ; [#uses=1 type=i4] [debug line = 203:14]
  %addconv = add i4 %_lshr.f.cast, -1, !dbg !199  ; [#uses=1 type=i4] [debug line = 203:14]
  %tmp.34 = zext i4 %addconv to i32, !dbg !199    ; [#uses=1 type=i32] [debug line = 203:14]
  %Rcon0.addr = getelementptr [30 x i8]* @Rcon0, i32 0, i32 %tmp.34, !dbg !199 ; [#uses=1 type=i8*] [debug line = 203:14]
  %Rcon0.load = load i8* %Rcon0.addr, align 1, !dbg !199 ; [#uses=1 type=i8] [debug line = 203:14]
  %"temp[0]" = xor i8 %Rcon0.load, %Sbox.load.cast, !dbg !199 ; [#uses=1 type=i8] [debug line = 203:14]
  %"temp[0].1.cast" = zext i8 %"temp[0]" to i32, !dbg !199 ; [#uses=1 type=i32] [debug line = 203:14]
  call void @llvm.dbg.value(metadata !{i8 %"temp[0]"}, i64 0, metadata !208), !dbg !199 ; [debug line = 203:14] [debug variable = temp[0]]
  %word.addr.5 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %tmp.50.cast, !dbg !212 ; [#uses=1 type=i32*] [debug line = 204:14]
  %in.assign.1 = load i32* %word.addr.5, align 4, !dbg !212 ; [#uses=4 type=i32] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.1}, i64 0, metadata !213) nounwind, !dbg !214 ; [debug line = 337:18@204:14] [debug variable = in]
  %tmp.i1 = srem i32 %in.assign.1, 16, !dbg !215  ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %_signbit.i1 = lshr i32 %in.assign.1, 31, !dbg !215 ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %_cond.i1 = trunc i32 %_signbit.i1 to i1, !dbg !215 ; [#uses=1 type=i1] [debug line = 339:3@204:14]
  %_neg.i1 = sub i32 0, %in.assign.1, !dbg !215   ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %_lshr.i1 = lshr i32 %_neg.i1, 4, !dbg !215     ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %_lshr.i1.cast = trunc i32 %_lshr.i1 to i29, !dbg !215 ; [#uses=1 type=i29] [debug line = 339:3@204:14]
  %_neg.t.i1 = sub i29 0, %_lshr.i1.cast, !dbg !215 ; [#uses=1 type=i29] [debug line = 339:3@204:14]
  %_lshr.f.i1 = lshr i32 %in.assign.1, 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %_lshr.f.i1.cast = trunc i32 %_lshr.f.i1 to i29, !dbg !215 ; [#uses=1 type=i29] [debug line = 339:3@204:14]
  %tmp.3.i1 = select i1 %_cond.i1, i29 %_neg.t.i1, i29 %_lshr.f.i1.cast, !dbg !215 ; [#uses=1 type=i29] [debug line = 339:3@204:14]
  %tmp.3.i1.cast = sext i29 %tmp.3.i1 to i32, !dbg !215 ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  %Sbox.addr.1 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i1.cast, i32 %tmp.i1, !dbg !215 ; [#uses=1 type=i32*] [debug line = 339:3@204:14]
  %"temp[1]" = load i32* %Sbox.addr.1, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 339:3@204:14]
  call void @llvm.dbg.value(metadata !{i32 %"temp[1]"}, i64 0, metadata !216), !dbg !212 ; [debug line = 204:14] [debug variable = temp[1]]
  %word.addr.6 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %tmp.50.cast, !dbg !217 ; [#uses=1 type=i32*] [debug line = 205:14]
  %in.assign.2 = load i32* %word.addr.6, align 4, !dbg !217 ; [#uses=4 type=i32] [debug line = 205:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.2}, i64 0, metadata !218) nounwind, !dbg !219 ; [debug line = 337:18@205:14] [debug variable = in]
  %tmp.i2 = srem i32 %in.assign.2, 16, !dbg !220  ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %_signbit.i2 = lshr i32 %in.assign.2, 31, !dbg !220 ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %_cond.i2 = trunc i32 %_signbit.i2 to i1, !dbg !220 ; [#uses=1 type=i1] [debug line = 339:3@205:14]
  %_neg.i2 = sub i32 0, %in.assign.2, !dbg !220   ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %_lshr.i2 = lshr i32 %_neg.i2, 4, !dbg !220     ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %_lshr.i2.cast = trunc i32 %_lshr.i2 to i29, !dbg !220 ; [#uses=1 type=i29] [debug line = 339:3@205:14]
  %_neg.t.i2 = sub i29 0, %_lshr.i2.cast, !dbg !220 ; [#uses=1 type=i29] [debug line = 339:3@205:14]
  %_lshr.f.i2 = lshr i32 %in.assign.2, 4, !dbg !220 ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %_lshr.f.i2.cast = trunc i32 %_lshr.f.i2 to i29, !dbg !220 ; [#uses=1 type=i29] [debug line = 339:3@205:14]
  %tmp.3.i2 = select i1 %_cond.i2, i29 %_neg.t.i2, i29 %_lshr.f.i2.cast, !dbg !220 ; [#uses=1 type=i29] [debug line = 339:3@205:14]
  %tmp.3.i2.cast = sext i29 %tmp.3.i2 to i32, !dbg !220 ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  %Sbox.addr.2 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i2.cast, i32 %tmp.i2, !dbg !220 ; [#uses=1 type=i32*] [debug line = 339:3@205:14]
  %"temp[2]" = load i32* %Sbox.addr.2, align 4, !dbg !220 ; [#uses=1 type=i32] [debug line = 339:3@205:14]
  call void @llvm.dbg.value(metadata !{i32 %"temp[2]"}, i64 0, metadata !221), !dbg !217 ; [debug line = 205:14] [debug variable = temp[2]]
  %word.addr.7 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %tmp.50.cast, !dbg !222 ; [#uses=1 type=i32*] [debug line = 206:14]
  %in.assign.3 = load i32* %word.addr.7, align 4, !dbg !222 ; [#uses=4 type=i32] [debug line = 206:14]
  call void @llvm.dbg.value(metadata !{i32 %in.assign.3}, i64 0, metadata !223) nounwind, !dbg !224 ; [debug line = 337:18@206:14] [debug variable = in]
  %tmp.i3 = srem i32 %in.assign.3, 16, !dbg !225  ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %_signbit.i3 = lshr i32 %in.assign.3, 31, !dbg !225 ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %_cond.i3 = trunc i32 %_signbit.i3 to i1, !dbg !225 ; [#uses=1 type=i1] [debug line = 339:3@206:14]
  %_neg.i3 = sub i32 0, %in.assign.3, !dbg !225   ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %_lshr.i3 = lshr i32 %_neg.i3, 4, !dbg !225     ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %_lshr.i3.cast = trunc i32 %_lshr.i3 to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 339:3@206:14]
  %_neg.t.i3 = sub i29 0, %_lshr.i3.cast, !dbg !225 ; [#uses=1 type=i29] [debug line = 339:3@206:14]
  %_lshr.f.i3 = lshr i32 %in.assign.3, 4, !dbg !225 ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %_lshr.f.i3.cast = trunc i32 %_lshr.f.i3 to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 339:3@206:14]
  %tmp.3.i3 = select i1 %_cond.i3, i29 %_neg.t.i3, i29 %_lshr.f.i3.cast, !dbg !225 ; [#uses=1 type=i29] [debug line = 339:3@206:14]
  %tmp.3.i3.cast = sext i29 %tmp.3.i3 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  %Sbox.addr.3 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.3.i3.cast, i32 %tmp.i3, !dbg !225 ; [#uses=1 type=i32*] [debug line = 339:3@206:14]
  %Sbox.load.3 = load i32* %Sbox.addr.3, align 4, !dbg !225 ; [#uses=1 type=i32] [debug line = 339:3@206:14]
  br label %._crit_edge5, !dbg !226               ; [debug line = 208:7]

.critedge:                                        ; preds = %8
  %word.addr.8 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %tmp.50.cast, !dbg !227 ; [#uses=1 type=i32*] [debug line = 210:4]
  %"temp[0].1" = load i32* %word.addr.8, align 4, !dbg !227 ; [#uses=1 type=i32] [debug line = 210:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[0].1"}, i64 0, metadata !208), !dbg !227 ; [debug line = 210:4] [debug variable = temp[0]]
  %word.addr.9 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %tmp.50.cast, !dbg !229 ; [#uses=1 type=i32*] [debug line = 211:4]
  %"temp[1].1" = load i32* %word.addr.9, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 211:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[1].1"}, i64 0, metadata !216), !dbg !229 ; [debug line = 211:4] [debug variable = temp[1]]
  %word.addr.10 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %tmp.50.cast, !dbg !230 ; [#uses=1 type=i32*] [debug line = 212:4]
  %"temp[2].1" = load i32* %word.addr.10, align 4, !dbg !230 ; [#uses=1 type=i32] [debug line = 212:4]
  call void @llvm.dbg.value(metadata !{i32 %"temp[2].1"}, i64 0, metadata !221), !dbg !230 ; [debug line = 212:4] [debug variable = temp[2]]
  %word.addr.11 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %tmp.50.cast, !dbg !231 ; [#uses=1 type=i32*] [debug line = 213:4]
  %word.load = load i32* %word.addr.11, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 213:4]
  br label %._crit_edge5, !dbg !232               ; [debug line = 214:2]

._crit_edge5:                                     ; preds = %.critedge, %._crit_edge
  %"temp[2]2" = phi i32 [ %"temp[2]", %._crit_edge ], [ %"temp[2].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[1]2" = phi i32 [ %"temp[1]", %._crit_edge ], [ %"temp[1].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[0]2" = phi i32 [ %"temp[0].1.cast", %._crit_edge ], [ %"temp[0].1", %.critedge ] ; [#uses=1 type=i32]
  %"temp[3]" = phi i32 [ %Sbox.load.3, %._crit_edge ], [ %word.load, %.critedge ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"temp[3]"}, i64 0, metadata !233), !dbg !222 ; [debug line = 206:14] [debug variable = temp[3]]
  %tmp.35 = add i6 %j.1, -4, !dbg !234            ; [#uses=1 type=i6] [debug line = 219:2]
  %tmp.52.cast = zext i6 %tmp.35 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 219:2]
  br label %9, !dbg !236                          ; [debug line = 218:12]

; <label>:9                                       ; preds = %11, %._crit_edge5
  %i.2 = phi i3 [ 0, %._crit_edge5 ], [ %i.3, %11 ] ; [#uses=4 type=i3]
  %i.2.cast1 = zext i3 %i.2 to i32, !dbg !236     ; [#uses=2 type=i32] [debug line = 218:12]
  %exitcond = icmp eq i3 %i.2, -4, !dbg !236      ; [#uses=1 type=i1] [debug line = 218:12]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %12, label %11, !dbg !236 ; [debug line = 218:12]

; <label>:11                                      ; preds = %9
  %word.addr.12 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 %i.2.cast1, i32 %tmp.52.cast, !dbg !234 ; [#uses=1 type=i32*] [debug line = 219:2]
  %word.load.4 = load i32* %word.addr.12, align 4, !dbg !234 ; [#uses=1 type=i32] [debug line = 219:2]
  %i.2.t = trunc i3 %i.2 to i2                    ; [#uses=1 type=i2]
  %tmp.13 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %"temp[0]2", i32 %"temp[1]2", i32 %"temp[2]2", i32 %"temp[3]", i2 %i.2.t) ; [#uses=1 type=i32]
  %tmp.36 = xor i32 %word.load.4, %tmp.13, !dbg !234 ; [#uses=1 type=i32] [debug line = 219:2]
  %word.addr.13 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 %i.2.cast1, i32 %j.1.cast2, !dbg !234 ; [#uses=1 type=i32*] [debug line = 219:2]
  store i32 %tmp.36, i32* %word.addr.13, align 4, !dbg !234 ; [debug line = 219:2]
  %i.3 = add i3 %i.2, 1, !dbg !237                ; [#uses=1 type=i3] [debug line = 218:26]
  call void @llvm.dbg.value(metadata !{i3 %i.3}, i64 0, metadata !194), !dbg !237 ; [debug line = 218:26] [debug variable = i]
  br label %9, !dbg !237                          ; [debug line = 218:26]

; <label>:12                                      ; preds = %9
  %j.5 = add i6 %j.1, 1, !dbg !238                ; [#uses=1 type=i6] [debug line = 197:42]
  call void @llvm.dbg.value(metadata !{i6 %j.5}, i64 0, metadata !196), !dbg !238 ; [debug line = 197:42] [debug variable = j]
  br label %.preheader, !dbg !238                 ; [debug line = 197:42]

; <label>:13                                      ; preds = %.preheader
  ret void
}

; [#uses=2]
define internal fastcc void @ByteSub_ShiftRow([32 x i32]* nocapture %statemt) {
._crit_edge:
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 0 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !239), !dbg !243 ; [debug line = 225:28] [debug variable = statemt]
  %statemt.addr.8 = getelementptr [32 x i32]* %statemt, i32 0, i32 1, !dbg !244 ; [#uses=2 type=i32*] [debug line = 232:7]
  %statemt.load = load i32* %statemt.addr.8, align 4, !dbg !244 ; [#uses=2 type=i32] [debug line = 232:7]
  %statemt.load.cast = trunc i32 %statemt.load to i4, !dbg !244 ; [#uses=1 type=i4] [debug line = 232:7]
  %tmp.cast = zext i4 %statemt.load.cast to i32, !dbg !244 ; [#uses=1 type=i32] [debug line = 232:7]
  %tmp.3 = lshr i32 %statemt.load, 4, !dbg !244   ; [#uses=1 type=i32] [debug line = 232:7]
  %tmp.4 = trunc i32 %tmp.3 to i28, !dbg !244     ; [#uses=1 type=i28] [debug line = 232:7]
  %tmp. = sext i28 %tmp.4 to i32, !dbg !244       ; [#uses=1 type=i32] [debug line = 232:7]
  %Sbox.addr = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp., i32 %tmp.cast, !dbg !244 ; [#uses=1 type=i32*] [debug line = 232:7]
  %temp = load i32* %Sbox.addr, align 4, !dbg !244 ; [#uses=1 type=i32] [debug line = 232:7]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !247), !dbg !244 ; [debug line = 232:7] [debug variable = temp]
  %statemt.addr.9 = getelementptr [32 x i32]* %statemt, i32 0, i32 5, !dbg !248 ; [#uses=2 type=i32*] [debug line = 233:7]
  %statemt.load.4 = load i32* %statemt.addr.9, align 4, !dbg !248 ; [#uses=2 type=i32] [debug line = 233:7]
  %statemt.load.4.cast = trunc i32 %statemt.load.4 to i4, !dbg !248 ; [#uses=1 type=i4] [debug line = 233:7]
  %tmp.54.cast = zext i4 %statemt.load.4.cast to i32, !dbg !248 ; [#uses=1 type=i32] [debug line = 233:7]
  %tmp.5 = lshr i32 %statemt.load.4, 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 233:7]
  %tmp.6 = trunc i32 %tmp.5 to i28, !dbg !248     ; [#uses=1 type=i28] [debug line = 233:7]
  %tmp.37 = sext i28 %tmp.6 to i32, !dbg !248     ; [#uses=1 type=i32] [debug line = 233:7]
  %Sbox.addr.1 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.37, i32 %tmp.54.cast, !dbg !248 ; [#uses=1 type=i32*] [debug line = 233:7]
  %Sbox.load = load i32* %Sbox.addr.1, align 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 233:7]
  store i32 %Sbox.load, i32* %statemt.addr.8, align 4, !dbg !248 ; [debug line = 233:7]
  %statemt.addr.10 = getelementptr [32 x i32]* %statemt, i32 0, i32 9, !dbg !249 ; [#uses=2 type=i32*] [debug line = 234:7]
  %statemt.load.5 = load i32* %statemt.addr.10, align 4, !dbg !249 ; [#uses=2 type=i32] [debug line = 234:7]
  %statemt.load.5.cast = trunc i32 %statemt.load.5 to i4, !dbg !249 ; [#uses=1 type=i4] [debug line = 234:7]
  %tmp.56.cast = zext i4 %statemt.load.5.cast to i32, !dbg !249 ; [#uses=1 type=i32] [debug line = 234:7]
  %tmp.7 = lshr i32 %statemt.load.5, 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 234:7]
  %tmp.8 = trunc i32 %tmp.7 to i28, !dbg !249     ; [#uses=1 type=i28] [debug line = 234:7]
  %tmp.38 = sext i28 %tmp.8 to i32, !dbg !249     ; [#uses=1 type=i32] [debug line = 234:7]
  %Sbox.addr.2 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.38, i32 %tmp.56.cast, !dbg !249 ; [#uses=1 type=i32*] [debug line = 234:7]
  %Sbox.load.1 = load i32* %Sbox.addr.2, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 234:7]
  store i32 %Sbox.load.1, i32* %statemt.addr.9, align 4, !dbg !249 ; [debug line = 234:7]
  %statemt.addr.11 = getelementptr [32 x i32]* %statemt, i32 0, i32 13, !dbg !250 ; [#uses=2 type=i32*] [debug line = 235:7]
  %statemt.load.6 = load i32* %statemt.addr.11, align 4, !dbg !250 ; [#uses=2 type=i32] [debug line = 235:7]
  %statemt.load.6.cast = trunc i32 %statemt.load.6 to i4, !dbg !250 ; [#uses=1 type=i4] [debug line = 235:7]
  %tmp.58.cast = zext i4 %statemt.load.6.cast to i32, !dbg !250 ; [#uses=1 type=i32] [debug line = 235:7]
  %tmp.9 = lshr i32 %statemt.load.6, 4, !dbg !250 ; [#uses=1 type=i32] [debug line = 235:7]
  %tmp.10 = trunc i32 %tmp.9 to i28, !dbg !250    ; [#uses=1 type=i28] [debug line = 235:7]
  %tmp.39 = sext i28 %tmp.10 to i32, !dbg !250    ; [#uses=1 type=i32] [debug line = 235:7]
  %Sbox.addr.3 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.39, i32 %tmp.58.cast, !dbg !250 ; [#uses=1 type=i32*] [debug line = 235:7]
  %Sbox.load.2 = load i32* %Sbox.addr.3, align 4, !dbg !250 ; [#uses=1 type=i32] [debug line = 235:7]
  store i32 %Sbox.load.2, i32* %statemt.addr.10, align 4, !dbg !250 ; [debug line = 235:7]
  store i32 %temp, i32* %statemt.addr.11, align 4, !dbg !251 ; [debug line = 236:7]
  %statemt.addr.12 = getelementptr [32 x i32]* %statemt, i32 0, i32 2, !dbg !252 ; [#uses=2 type=i32*] [debug line = 238:7]
  %statemt.load.7 = load i32* %statemt.addr.12, align 4, !dbg !252 ; [#uses=2 type=i32] [debug line = 238:7]
  %statemt.load.7.cast = trunc i32 %statemt.load.7 to i4, !dbg !252 ; [#uses=1 type=i4] [debug line = 238:7]
  %tmp.60.cast = zext i4 %statemt.load.7.cast to i32, !dbg !252 ; [#uses=1 type=i32] [debug line = 238:7]
  %tmp.11 = lshr i32 %statemt.load.7, 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 238:7]
  %tmp.12 = trunc i32 %tmp.11 to i28, !dbg !252   ; [#uses=1 type=i28] [debug line = 238:7]
  %tmp.40 = sext i28 %tmp.12 to i32, !dbg !252    ; [#uses=1 type=i32] [debug line = 238:7]
  %Sbox.addr.4 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.40, i32 %tmp.60.cast, !dbg !252 ; [#uses=1 type=i32*] [debug line = 238:7]
  %temp.1 = load i32* %Sbox.addr.4, align 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 238:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.1}, i64 0, metadata !247), !dbg !252 ; [debug line = 238:7] [debug variable = temp]
  %statemt.addr.13 = getelementptr [32 x i32]* %statemt, i32 0, i32 10, !dbg !253 ; [#uses=2 type=i32*] [debug line = 239:7]
  %statemt.load.8 = load i32* %statemt.addr.13, align 4, !dbg !253 ; [#uses=2 type=i32] [debug line = 239:7]
  %statemt.load.8.cast = trunc i32 %statemt.load.8 to i4, !dbg !253 ; [#uses=1 type=i4] [debug line = 239:7]
  %tmp.62.cast = zext i4 %statemt.load.8.cast to i32, !dbg !253 ; [#uses=1 type=i32] [debug line = 239:7]
  %tmp.13 = lshr i32 %statemt.load.8, 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 239:7]
  %tmp.14 = trunc i32 %tmp.13 to i28, !dbg !253   ; [#uses=1 type=i28] [debug line = 239:7]
  %tmp.41 = sext i28 %tmp.14 to i32, !dbg !253    ; [#uses=1 type=i32] [debug line = 239:7]
  %Sbox.addr.5 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.41, i32 %tmp.62.cast, !dbg !253 ; [#uses=1 type=i32*] [debug line = 239:7]
  %Sbox.load.4 = load i32* %Sbox.addr.5, align 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 239:7]
  store i32 %Sbox.load.4, i32* %statemt.addr.12, align 4, !dbg !253 ; [debug line = 239:7]
  store i32 %temp.1, i32* %statemt.addr.13, align 4, !dbg !254 ; [debug line = 240:7]
  %statemt.addr.14 = getelementptr [32 x i32]* %statemt, i32 0, i32 6, !dbg !255 ; [#uses=2 type=i32*] [debug line = 241:7]
  %statemt.load.9 = load i32* %statemt.addr.14, align 4, !dbg !255 ; [#uses=2 type=i32] [debug line = 241:7]
  %statemt.load.9.cast = trunc i32 %statemt.load.9 to i4, !dbg !255 ; [#uses=1 type=i4] [debug line = 241:7]
  %tmp.64.cast = zext i4 %statemt.load.9.cast to i32, !dbg !255 ; [#uses=1 type=i32] [debug line = 241:7]
  %tmp.15 = lshr i32 %statemt.load.9, 4, !dbg !255 ; [#uses=1 type=i32] [debug line = 241:7]
  %tmp.16 = trunc i32 %tmp.15 to i28, !dbg !255   ; [#uses=1 type=i28] [debug line = 241:7]
  %tmp.42 = sext i28 %tmp.16 to i32, !dbg !255    ; [#uses=1 type=i32] [debug line = 241:7]
  %Sbox.addr.6 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.42, i32 %tmp.64.cast, !dbg !255 ; [#uses=1 type=i32*] [debug line = 241:7]
  %temp.2 = load i32* %Sbox.addr.6, align 4, !dbg !255 ; [#uses=1 type=i32] [debug line = 241:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.2}, i64 0, metadata !247), !dbg !255 ; [debug line = 241:7] [debug variable = temp]
  %statemt.addr.15 = getelementptr [32 x i32]* %statemt, i32 0, i32 14, !dbg !256 ; [#uses=2 type=i32*] [debug line = 242:7]
  %statemt.load.10 = load i32* %statemt.addr.15, align 4, !dbg !256 ; [#uses=2 type=i32] [debug line = 242:7]
  %statemt.load.10.cast = trunc i32 %statemt.load.10 to i4, !dbg !256 ; [#uses=1 type=i4] [debug line = 242:7]
  %tmp.66.cast = zext i4 %statemt.load.10.cast to i32, !dbg !256 ; [#uses=1 type=i32] [debug line = 242:7]
  %tmp.17 = lshr i32 %statemt.load.10, 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 242:7]
  %tmp.18 = trunc i32 %tmp.17 to i28, !dbg !256   ; [#uses=1 type=i28] [debug line = 242:7]
  %tmp.43 = sext i28 %tmp.18 to i32, !dbg !256    ; [#uses=1 type=i32] [debug line = 242:7]
  %Sbox.addr.7 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.43, i32 %tmp.66.cast, !dbg !256 ; [#uses=1 type=i32*] [debug line = 242:7]
  %Sbox.load.6 = load i32* %Sbox.addr.7, align 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 242:7]
  store i32 %Sbox.load.6, i32* %statemt.addr.14, align 4, !dbg !256 ; [debug line = 242:7]
  store i32 %temp.2, i32* %statemt.addr.15, align 4, !dbg !257 ; [debug line = 243:7]
  %statemt.addr.16 = getelementptr [32 x i32]* %statemt, i32 0, i32 3, !dbg !258 ; [#uses=2 type=i32*] [debug line = 245:7]
  %statemt.load.11 = load i32* %statemt.addr.16, align 4, !dbg !258 ; [#uses=2 type=i32] [debug line = 245:7]
  %statemt.load.11.cast = trunc i32 %statemt.load.11 to i4, !dbg !258 ; [#uses=1 type=i4] [debug line = 245:7]
  %tmp.68.cast = zext i4 %statemt.load.11.cast to i32, !dbg !258 ; [#uses=1 type=i32] [debug line = 245:7]
  %tmp.19 = lshr i32 %statemt.load.11, 4, !dbg !258 ; [#uses=1 type=i32] [debug line = 245:7]
  %tmp.20 = trunc i32 %tmp.19 to i28, !dbg !258   ; [#uses=1 type=i28] [debug line = 245:7]
  %tmp.44 = sext i28 %tmp.20 to i32, !dbg !258    ; [#uses=1 type=i32] [debug line = 245:7]
  %Sbox.addr.8 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.44, i32 %tmp.68.cast, !dbg !258 ; [#uses=1 type=i32*] [debug line = 245:7]
  %temp.3 = load i32* %Sbox.addr.8, align 4, !dbg !258 ; [#uses=1 type=i32] [debug line = 245:7]
  call void @llvm.dbg.value(metadata !{i32 %temp.3}, i64 0, metadata !247), !dbg !258 ; [debug line = 245:7] [debug variable = temp]
  %statemt.addr.17 = getelementptr [32 x i32]* %statemt, i32 0, i32 15, !dbg !259 ; [#uses=2 type=i32*] [debug line = 246:7]
  %statemt.load.12 = load i32* %statemt.addr.17, align 4, !dbg !259 ; [#uses=2 type=i32] [debug line = 246:7]
  %statemt.load.12.cast = trunc i32 %statemt.load.12 to i4, !dbg !259 ; [#uses=1 type=i4] [debug line = 246:7]
  %tmp.70.cast = zext i4 %statemt.load.12.cast to i32, !dbg !259 ; [#uses=1 type=i32] [debug line = 246:7]
  %tmp.21 = lshr i32 %statemt.load.12, 4, !dbg !259 ; [#uses=1 type=i32] [debug line = 246:7]
  %tmp.22 = trunc i32 %tmp.21 to i28, !dbg !259   ; [#uses=1 type=i28] [debug line = 246:7]
  %tmp.45 = sext i28 %tmp.22 to i32, !dbg !259    ; [#uses=1 type=i32] [debug line = 246:7]
  %Sbox.addr.9 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.45, i32 %tmp.70.cast, !dbg !259 ; [#uses=1 type=i32*] [debug line = 246:7]
  %Sbox.load.8 = load i32* %Sbox.addr.9, align 4, !dbg !259 ; [#uses=1 type=i32] [debug line = 246:7]
  store i32 %Sbox.load.8, i32* %statemt.addr.16, align 4, !dbg !259 ; [debug line = 246:7]
  %statemt.addr.18 = getelementptr [32 x i32]* %statemt, i32 0, i32 11, !dbg !260 ; [#uses=2 type=i32*] [debug line = 247:7]
  %statemt.load.13 = load i32* %statemt.addr.18, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 247:7]
  %statemt.load.13.cast = trunc i32 %statemt.load.13 to i4, !dbg !260 ; [#uses=1 type=i4] [debug line = 247:7]
  %tmp.72.cast = zext i4 %statemt.load.13.cast to i32, !dbg !260 ; [#uses=1 type=i32] [debug line = 247:7]
  %tmp.23 = lshr i32 %statemt.load.13, 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 247:7]
  %tmp.24 = trunc i32 %tmp.23 to i28, !dbg !260   ; [#uses=1 type=i28] [debug line = 247:7]
  %tmp.46 = sext i28 %tmp.24 to i32, !dbg !260    ; [#uses=1 type=i32] [debug line = 247:7]
  %Sbox.addr.10 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.46, i32 %tmp.72.cast, !dbg !260 ; [#uses=1 type=i32*] [debug line = 247:7]
  %Sbox.load.9 = load i32* %Sbox.addr.10, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 247:7]
  store i32 %Sbox.load.9, i32* %statemt.addr.17, align 4, !dbg !260 ; [debug line = 247:7]
  %statemt.addr.19 = getelementptr [32 x i32]* %statemt, i32 0, i32 7, !dbg !261 ; [#uses=2 type=i32*] [debug line = 248:7]
  %statemt.load.14 = load i32* %statemt.addr.19, align 4, !dbg !261 ; [#uses=2 type=i32] [debug line = 248:7]
  %statemt.load.14.cast = trunc i32 %statemt.load.14 to i4, !dbg !261 ; [#uses=1 type=i4] [debug line = 248:7]
  %tmp.74.cast = zext i4 %statemt.load.14.cast to i32, !dbg !261 ; [#uses=1 type=i32] [debug line = 248:7]
  %tmp.25 = lshr i32 %statemt.load.14, 4, !dbg !261 ; [#uses=1 type=i32] [debug line = 248:7]
  %tmp.26 = trunc i32 %tmp.25 to i28, !dbg !261   ; [#uses=1 type=i28] [debug line = 248:7]
  %tmp.47 = sext i28 %tmp.26 to i32, !dbg !261    ; [#uses=1 type=i32] [debug line = 248:7]
  %Sbox.addr.11 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.47, i32 %tmp.74.cast, !dbg !261 ; [#uses=1 type=i32*] [debug line = 248:7]
  %Sbox.load.10 = load i32* %Sbox.addr.11, align 4, !dbg !261 ; [#uses=1 type=i32] [debug line = 248:7]
  store i32 %Sbox.load.10, i32* %statemt.addr.18, align 4, !dbg !261 ; [debug line = 248:7]
  store i32 %temp.3, i32* %statemt.addr.19, align 4, !dbg !262 ; [debug line = 249:7]
  %statemt.load.15 = load i32* %statemt.addr, align 4, !dbg !263 ; [#uses=2 type=i32] [debug line = 251:7]
  %statemt.load.15.cast = trunc i32 %statemt.load.15 to i4, !dbg !263 ; [#uses=1 type=i4] [debug line = 251:7]
  %tmp.76.cast = zext i4 %statemt.load.15.cast to i32, !dbg !263 ; [#uses=1 type=i32] [debug line = 251:7]
  %tmp.27 = lshr i32 %statemt.load.15, 4, !dbg !263 ; [#uses=1 type=i32] [debug line = 251:7]
  %tmp.28 = trunc i32 %tmp.27 to i28, !dbg !263   ; [#uses=1 type=i28] [debug line = 251:7]
  %tmp.48 = sext i28 %tmp.28 to i32, !dbg !263    ; [#uses=1 type=i32] [debug line = 251:7]
  %Sbox.addr.12 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.48, i32 %tmp.76.cast, !dbg !263 ; [#uses=1 type=i32*] [debug line = 251:7]
  %Sbox.load.11 = load i32* %Sbox.addr.12, align 4, !dbg !263 ; [#uses=1 type=i32] [debug line = 251:7]
  store i32 %Sbox.load.11, i32* %statemt.addr, align 4, !dbg !263 ; [debug line = 251:7]
  %statemt.addr.20 = getelementptr [32 x i32]* %statemt, i32 0, i32 4, !dbg !264 ; [#uses=2 type=i32*] [debug line = 252:7]
  %statemt.load.16 = load i32* %statemt.addr.20, align 4, !dbg !264 ; [#uses=2 type=i32] [debug line = 252:7]
  %statemt.load.16.cast = trunc i32 %statemt.load.16 to i4, !dbg !264 ; [#uses=1 type=i4] [debug line = 252:7]
  %tmp.78.cast = zext i4 %statemt.load.16.cast to i32, !dbg !264 ; [#uses=1 type=i32] [debug line = 252:7]
  %tmp.29 = lshr i32 %statemt.load.16, 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 252:7]
  %tmp.30 = trunc i32 %tmp.29 to i28, !dbg !264   ; [#uses=1 type=i28] [debug line = 252:7]
  %tmp.49 = sext i28 %tmp.30 to i32, !dbg !264    ; [#uses=1 type=i32] [debug line = 252:7]
  %Sbox.addr.13 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.49, i32 %tmp.78.cast, !dbg !264 ; [#uses=1 type=i32*] [debug line = 252:7]
  %Sbox.load.12 = load i32* %Sbox.addr.13, align 4, !dbg !264 ; [#uses=1 type=i32] [debug line = 252:7]
  store i32 %Sbox.load.12, i32* %statemt.addr.20, align 4, !dbg !264 ; [debug line = 252:7]
  %statemt.addr.21 = getelementptr [32 x i32]* %statemt, i32 0, i32 8, !dbg !265 ; [#uses=2 type=i32*] [debug line = 253:7]
  %statemt.load.17 = load i32* %statemt.addr.21, align 4, !dbg !265 ; [#uses=2 type=i32] [debug line = 253:7]
  %statemt.load.17.cast = trunc i32 %statemt.load.17 to i4, !dbg !265 ; [#uses=1 type=i4] [debug line = 253:7]
  %tmp.80.cast = zext i4 %statemt.load.17.cast to i32, !dbg !265 ; [#uses=1 type=i32] [debug line = 253:7]
  %tmp.31 = lshr i32 %statemt.load.17, 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 253:7]
  %tmp.32 = trunc i32 %tmp.31 to i28, !dbg !265   ; [#uses=1 type=i28] [debug line = 253:7]
  %tmp.50 = sext i28 %tmp.32 to i32, !dbg !265    ; [#uses=1 type=i32] [debug line = 253:7]
  %Sbox.addr.14 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.50, i32 %tmp.80.cast, !dbg !265 ; [#uses=1 type=i32*] [debug line = 253:7]
  %Sbox.load.13 = load i32* %Sbox.addr.14, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 253:7]
  store i32 %Sbox.load.13, i32* %statemt.addr.21, align 4, !dbg !265 ; [debug line = 253:7]
  %statemt.addr.22 = getelementptr [32 x i32]* %statemt, i32 0, i32 12, !dbg !266 ; [#uses=2 type=i32*] [debug line = 254:7]
  %statemt.load.18 = load i32* %statemt.addr.22, align 4, !dbg !266 ; [#uses=2 type=i32] [debug line = 254:7]
  %statemt.load.18.cast = trunc i32 %statemt.load.18 to i4, !dbg !266 ; [#uses=1 type=i4] [debug line = 254:7]
  %tmp.82.cast = zext i4 %statemt.load.18.cast to i32, !dbg !266 ; [#uses=1 type=i32] [debug line = 254:7]
  %tmp.33 = lshr i32 %statemt.load.18, 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 254:7]
  %tmp.34 = trunc i32 %tmp.33 to i28, !dbg !266   ; [#uses=1 type=i28] [debug line = 254:7]
  %tmp.51 = sext i28 %tmp.34 to i32, !dbg !266    ; [#uses=1 type=i32] [debug line = 254:7]
  %Sbox.addr.15 = getelementptr inbounds [16 x [16 x i32]]* @Sbox, i32 0, i32 %tmp.51, i32 %tmp.82.cast, !dbg !266 ; [#uses=1 type=i32*] [debug line = 254:7]
  %Sbox.load.14 = load i32* %Sbox.addr.15, align 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 254:7]
  store i32 %Sbox.load.14, i32* %statemt.addr.22, align 4, !dbg !266 ; [debug line = 254:7]
  ret void, !dbg !267                             ; [debug line = 335:1]
}

; [#uses=2]
define internal fastcc void @AddRoundKey([32 x i32]* nocapture %statemt, i6 %n) {
._crit_edge3:
  call void @llvm.dbg.value(metadata !{[32 x i32]* %statemt}, i64 0, metadata !268), !dbg !270 ; [debug line = 599:22] [debug variable = statemt]
  call void @llvm.dbg.value(metadata !{i6 %n}, i64 0, metadata !271), !dbg !272 ; [debug line = 599:49] [debug variable = n]
  %tmp = shl i6 %n, 2, !dbg !273                  ; [#uses=1 type=i6] [debug line = 614:7]
  br label %0, !dbg !277                          ; [debug line = 612:8]

; <label>:0                                       ; preds = %2, %._crit_edge3
  %j = phi i3 [ 0, %._crit_edge3 ], [ %j.6, %2 ]  ; [#uses=4 type=i3]
  %j.cast1 = zext i3 %j to i6, !dbg !277          ; [#uses=1 type=i6] [debug line = 612:8]
  %j.cast = zext i3 %j to i4, !dbg !277           ; [#uses=1 type=i4] [debug line = 612:8]
  %exitcond = icmp eq i3 %j, -4, !dbg !277        ; [#uses=1 type=i1] [debug line = 612:8]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %2, !dbg !277  ; [debug line = 612:8]

; <label>:2                                       ; preds = %0
  %tmp. = add i6 %tmp, %j.cast1, !dbg !273        ; [#uses=1 type=i6] [debug line = 614:7]
  %tmp..cast = zext i6 %tmp. to i32, !dbg !273    ; [#uses=4 type=i32] [debug line = 614:7]
  %word.addr = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %tmp..cast, !dbg !273 ; [#uses=1 type=i32*] [debug line = 614:7]
  %word.load = load i32* %word.addr, align 4, !dbg !273 ; [#uses=1 type=i32] [debug line = 614:7]
  %tmp.52 = shl i4 %j.cast, 2, !dbg !273          ; [#uses=4 type=i4] [debug line = 614:7]
  %tmp.84.cast = zext i4 %tmp.52 to i32, !dbg !273 ; [#uses=1 type=i32] [debug line = 614:7]
  %statemt.addr = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.84.cast, !dbg !273 ; [#uses=2 type=i32*] [debug line = 614:7]
  %statemt.load = load i32* %statemt.addr, align 4, !dbg !273 ; [#uses=1 type=i32] [debug line = 614:7]
  %tmp.53 = xor i32 %statemt.load, %word.load, !dbg !273 ; [#uses=1 type=i32] [debug line = 614:7]
  store i32 %tmp.53, i32* %statemt.addr, align 4, !dbg !273 ; [debug line = 614:7]
  %word.addr.14 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %tmp..cast, !dbg !278 ; [#uses=1 type=i32*] [debug line = 615:7]
  %word.load.5 = load i32* %word.addr.14, align 4, !dbg !278 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp.54 = or i4 %tmp.52, 1, !dbg !278           ; [#uses=1 type=i4] [debug line = 615:7]
  %tmp.86.cast = zext i4 %tmp.54 to i32, !dbg !278 ; [#uses=1 type=i32] [debug line = 615:7]
  %statemt.addr.23 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.86.cast, !dbg !278 ; [#uses=2 type=i32*] [debug line = 615:7]
  %statemt.load.19 = load i32* %statemt.addr.23, align 4, !dbg !278 ; [#uses=1 type=i32] [debug line = 615:7]
  %tmp.55 = xor i32 %statemt.load.19, %word.load.5, !dbg !278 ; [#uses=1 type=i32] [debug line = 615:7]
  store i32 %tmp.55, i32* %statemt.addr.23, align 4, !dbg !278 ; [debug line = 615:7]
  %word.addr.15 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %tmp..cast, !dbg !279 ; [#uses=1 type=i32*] [debug line = 616:7]
  %word.load.6 = load i32* %word.addr.15, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp.56 = or i4 %tmp.52, 2, !dbg !279           ; [#uses=1 type=i4] [debug line = 616:7]
  %tmp.88.cast = zext i4 %tmp.56 to i32, !dbg !279 ; [#uses=1 type=i32] [debug line = 616:7]
  %statemt.addr.24 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.88.cast, !dbg !279 ; [#uses=2 type=i32*] [debug line = 616:7]
  %statemt.load.20 = load i32* %statemt.addr.24, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 616:7]
  %tmp.57 = xor i32 %statemt.load.20, %word.load.6, !dbg !279 ; [#uses=1 type=i32] [debug line = 616:7]
  store i32 %tmp.57, i32* %statemt.addr.24, align 4, !dbg !279 ; [debug line = 616:7]
  %word.addr.16 = getelementptr inbounds [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %tmp..cast, !dbg !280 ; [#uses=1 type=i32*] [debug line = 617:7]
  %word.load.7 = load i32* %word.addr.16, align 4, !dbg !280 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp.58 = or i4 %tmp.52, 3, !dbg !280           ; [#uses=1 type=i4] [debug line = 617:7]
  %tmp.90.cast = zext i4 %tmp.58 to i32, !dbg !280 ; [#uses=1 type=i32] [debug line = 617:7]
  %statemt.addr.25 = getelementptr [32 x i32]* %statemt, i32 0, i32 %tmp.90.cast, !dbg !280 ; [#uses=2 type=i32*] [debug line = 617:7]
  %statemt.load.21 = load i32* %statemt.addr.25, align 4, !dbg !280 ; [#uses=1 type=i32] [debug line = 617:7]
  %tmp.59 = xor i32 %statemt.load.21, %word.load.7, !dbg !280 ; [#uses=1 type=i32] [debug line = 617:7]
  store i32 %tmp.59, i32* %statemt.addr.25, align 4, !dbg !280 ; [debug line = 617:7]
  %j.6 = add i3 %j, 1, !dbg !281                  ; [#uses=1 type=i3] [debug line = 612:23]
  call void @llvm.dbg.value(metadata !{i3 %j.6}, i64 0, metadata !282), !dbg !281 ; [debug line = 612:23] [debug variable = j]
  br label %0, !dbg !281                          ; [debug line = 612:23]

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
!33 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"statemt", metadata !"key", metadata !"out"}
!35 = metadata !{metadata !36, [4 x [120 x i32]]* @word}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"word", metadata !40, metadata !"int", i32 0, i32 31}
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 0, i32 3, i32 1}
!42 = metadata !{i32 0, i32 119, i32 1}
!43 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisSuccess/Third/solution1/.autopilot/db/aes.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !44} ; [ DW_TAG_compile_unit ]
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !46, metadata !53, metadata !54, metadata !58, metadata !63}
!46 = metadata !{i32 786484, i32 0, null, metadata !"invSbox", metadata !"invSbox", metadata !"", metadata !47, i32 39, metadata !48, i32 0, i32 1, [16 x [16 x i32]]* @invSbox} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786473, metadata !"CCodedFiles/3rd/aes.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !49, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{metadata !52, metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"Sbox", metadata !"Sbox", metadata !"", metadata !47, i32 5, metadata !48, i32 0, i32 1, [16 x [16 x i32]]* @Sbox} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786484, i32 0, null, metadata !"Rcon0", metadata !"Rcon0", metadata !"Rcon0", metadata !47, i32 75, metadata !55, i32 0, i32 1, [30 x i8]* @Rcon0} ; [ DW_TAG_variable ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !49, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 29}       ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 786484, i32 0, null, metadata !"word", metadata !"word", metadata !"", metadata !47, i32 3, metadata !59, i32 0, i32 1, [4 x [120 x i32]]* @word} ; [ DW_TAG_variable ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 32, i32 0, i32 0, metadata !50, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!62 = metadata !{i32 786465, i64 0, i64 119}      ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 786484, i32 0, metadata !64, metadata !"out_enc_statemt", metadata !"out_enc_statemt", metadata !"", metadata !47, i32 100, metadata !70, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786478, i32 0, metadata !47, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !47, i32 94, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 95} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !50, metadata !67, metadata !67, metadata !50, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !49, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ]
!71 = metadata !{metadata !52}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 31, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"statemt", metadata !76, metadata !"int", i32 0, i32 31}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 31, i32 1}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 31, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"key", metadata !76, metadata !"int", i32 0, i32 31}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 31, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"out", metadata !76, metadata !"int", i32 0, i32 31}
!86 = metadata !{i32 786689, metadata !87, metadata !"statemt", null, i32 623, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786478, i32 0, metadata !47, metadata !"aes_main", metadata !"aes_main", metadata !"", metadata !47, i32 623, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 624} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !67, metadata !67, metadata !67}
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !50, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!93 = metadata !{i32 623, i32 20, metadata !87, null}
!94 = metadata !{i32 786689, metadata !87, metadata !"key", null, i32 623, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 623, i32 37, metadata !87, null}
!96 = metadata !{i32 786689, metadata !87, metadata !"out", null, i32 623, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 623, i32 49, metadata !87, null}
!98 = metadata !{i32 786689, metadata !64, metadata !"statemt", null, i32 94, metadata !90, i32 0, metadata !99} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 628, i32 3, metadata !100, null}
!100 = metadata !{i32 786443, metadata !87, i32 624, i32 1, metadata !47, i32 38} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 94, i32 18, metadata !64, metadata !99}
!102 = metadata !{i32 786689, metadata !64, metadata !"key", null, i32 94, metadata !90, i32 0, metadata !99} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 94, i32 35, metadata !64, metadata !99}
!104 = metadata !{i32 786689, metadata !64, metadata !"out", null, i32 94, metadata !90, i32 0, metadata !99} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 94, i32 57, metadata !64, metadata !99}
!106 = metadata !{i32 105, i32 3, metadata !107, metadata !99}
!107 = metadata !{i32 786443, metadata !64, i32 95, i32 1, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 109, i32 3, metadata !107, metadata !99}
!109 = metadata !{i32 111, i32 8, metadata !110, metadata !99}
!110 = metadata !{i32 786443, metadata !107, i32 111, i32 3, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 113, i32 7, metadata !112, metadata !99}
!112 = metadata !{i32 786443, metadata !110, i32 112, i32 5, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 114, i32 7, metadata !112, metadata !99}
!114 = metadata !{i32 111, i32 35, metadata !110, metadata !99}
!115 = metadata !{i32 116, i32 3, metadata !107, metadata !99}
!116 = metadata !{i32 117, i32 3, metadata !107, metadata !99}
!117 = metadata !{i32 120, i32 8, metadata !118, metadata !99}
!118 = metadata !{i32 786443, metadata !107, i32 120, i32 3, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 122, i32 4, metadata !120, metadata !99}
!120 = metadata !{i32 786443, metadata !118, i32 121, i32 2, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 120, i32 27, metadata !118, metadata !99}
!122 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !47, i32 99, metadata !50, i32 0, metadata !99} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 631, i32 1, metadata !100, null}
!124 = metadata !{i32 786689, metadata !125, metadata !"statemt", null, i32 456, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 786478, i32 0, metadata !47, metadata !"MixColumn_AddRoundKey", metadata !"MixColumn_AddRoundKey", metadata !"", metadata !47, i32 456, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 457} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !50, metadata !67, metadata !50, metadata !50}
!128 = metadata !{i32 456, i32 32, metadata !125, null}
!129 = metadata !{i32 786689, metadata !125, metadata !"n", metadata !47, i32 50332104, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 456, i32 57, metadata !125, null}
!131 = metadata !{i32 786688, metadata !132, metadata !"ret", metadata !47, i32 458, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786443, metadata !125, i32 457, i32 1, metadata !47, i32 21} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 458, i32 7, metadata !132, null}
!134 = metadata !{i32 472, i32 7, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 462, i32 5, metadata !47, i32 23} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !132, i32 461, i32 3, metadata !47, i32 22} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 461, i32 8, metadata !136, null}
!138 = metadata !{i32 511, i32 8, metadata !139, null}
!139 = metadata !{i32 786443, metadata !132, i32 511, i32 3, metadata !47, i32 24} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 463, i32 7, metadata !135, null}
!141 = metadata !{i32 464, i32 7, metadata !135, null}
!142 = metadata !{i32 465, i32 2, metadata !135, null}
!143 = metadata !{i32 466, i32 7, metadata !135, null}
!144 = metadata !{i32 786688, metadata !132, metadata !"x", metadata !47, i32 459, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 467, i32 7, metadata !135, null}
!146 = metadata !{i32 468, i32 7, metadata !135, null}
!147 = metadata !{i32 469, i32 2, metadata !135, null}
!148 = metadata !{i32 475, i32 7, metadata !135, null}
!149 = metadata !{i32 476, i32 7, metadata !135, null}
!150 = metadata !{i32 477, i32 2, metadata !135, null}
!151 = metadata !{i32 478, i32 7, metadata !135, null}
!152 = metadata !{i32 479, i32 7, metadata !135, null}
!153 = metadata !{i32 480, i32 7, metadata !135, null}
!154 = metadata !{i32 481, i32 2, metadata !135, null}
!155 = metadata !{i32 484, i32 7, metadata !135, null}
!156 = metadata !{i32 487, i32 7, metadata !135, null}
!157 = metadata !{i32 488, i32 7, metadata !135, null}
!158 = metadata !{i32 489, i32 2, metadata !135, null}
!159 = metadata !{i32 490, i32 7, metadata !135, null}
!160 = metadata !{i32 491, i32 7, metadata !135, null}
!161 = metadata !{i32 492, i32 7, metadata !135, null}
!162 = metadata !{i32 493, i32 2, metadata !135, null}
!163 = metadata !{i32 496, i32 7, metadata !135, null}
!164 = metadata !{i32 499, i32 7, metadata !135, null}
!165 = metadata !{i32 500, i32 7, metadata !135, null}
!166 = metadata !{i32 501, i32 2, metadata !135, null}
!167 = metadata !{i32 502, i32 7, metadata !135, null}
!168 = metadata !{i32 503, i32 7, metadata !135, null}
!169 = metadata !{i32 504, i32 7, metadata !135, null}
!170 = metadata !{i32 505, i32 2, metadata !135, null}
!171 = metadata !{i32 508, i32 7, metadata !135, null}
!172 = metadata !{i32 461, i32 23, metadata !136, null}
!173 = metadata !{i32 786688, metadata !132, metadata !"j", metadata !47, i32 458, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 513, i32 7, metadata !175, null}
!175 = metadata !{i32 786443, metadata !139, i32 512, i32 5, metadata !47, i32 25} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 514, i32 7, metadata !175, null}
!177 = metadata !{i32 515, i32 7, metadata !175, null}
!178 = metadata !{i32 516, i32 7, metadata !175, null}
!179 = metadata !{i32 511, i32 23, metadata !139, null}
!180 = metadata !{i32 786689, metadata !181, metadata !"key", null, i32 177, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !47, metadata !"KeySchedule", metadata !"KeySchedule", metadata !"", metadata !47, i32 177, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 178} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !50, metadata !50, metadata !67}
!184 = metadata !{i32 177, i32 32, metadata !181, null}
!185 = metadata !{i32 191, i32 8, metadata !186, null}
!186 = metadata !{i32 786443, metadata !187, i32 191, i32 3, metadata !47, i32 8} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786443, metadata !181, i32 178, i32 1, metadata !47, i32 6} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 197, i32 8, metadata !189, null}
!189 = metadata !{i32 786443, metadata !187, i32 197, i32 3, metadata !47, i32 10} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 194, i32 7, metadata !191, null}
!191 = metadata !{i32 786443, metadata !186, i32 192, i32 5, metadata !47, i32 9} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 192, i32 10, metadata !191, null}
!193 = metadata !{i32 192, i32 24, metadata !191, null}
!194 = metadata !{i32 786688, metadata !187, metadata !"i", metadata !47, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 191, i32 23, metadata !186, null}
!196 = metadata !{i32 786688, metadata !187, metadata !"j", metadata !47, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 201, i32 7, metadata !198, null}
!198 = metadata !{i32 786443, metadata !189, i32 198, i32 5, metadata !47, i32 11} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 203, i32 14, metadata !200, null}
!200 = metadata !{i32 786443, metadata !198, i32 202, i32 2, metadata !47, i32 12} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 786689, metadata !202, metadata !"in", metadata !47, i32 16777553, metadata !50, i32 0, metadata !199} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 786478, i32 0, metadata !47, metadata !"SubByte", metadata !"SubByte", metadata !"", metadata !47, i32 337, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 338} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !50, metadata !50}
!205 = metadata !{i32 337, i32 18, metadata !202, metadata !199}
!206 = metadata !{i32 339, i32 3, metadata !207, metadata !199}
!207 = metadata !{i32 786443, metadata !202, i32 338, i32 1, metadata !47, i32 18} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 790529, metadata !209, metadata !"temp[0]", null, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!209 = metadata !{i32 786688, metadata !187, metadata !"temp", metadata !47, i32 180, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !50, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ]
!211 = metadata !{metadata !61}
!212 = metadata !{i32 204, i32 14, metadata !200, null}
!213 = metadata !{i32 786689, metadata !202, metadata !"in", metadata !47, i32 16777553, metadata !50, i32 0, metadata !212} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 337, i32 18, metadata !202, metadata !212}
!215 = metadata !{i32 339, i32 3, metadata !207, metadata !212}
!216 = metadata !{i32 790529, metadata !209, metadata !"temp[1]", null, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 205, i32 14, metadata !200, null}
!218 = metadata !{i32 786689, metadata !202, metadata !"in", metadata !47, i32 16777553, metadata !50, i32 0, metadata !217} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 337, i32 18, metadata !202, metadata !217}
!220 = metadata !{i32 339, i32 3, metadata !207, metadata !217}
!221 = metadata !{i32 790529, metadata !209, metadata !"temp[2]", null, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!222 = metadata !{i32 206, i32 14, metadata !200, null}
!223 = metadata !{i32 786689, metadata !202, metadata !"in", metadata !47, i32 16777553, metadata !50, i32 0, metadata !222} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 337, i32 18, metadata !202, metadata !222}
!225 = metadata !{i32 339, i32 3, metadata !207, metadata !222}
!226 = metadata !{i32 208, i32 7, metadata !198, null}
!227 = metadata !{i32 210, i32 4, metadata !228, null}
!228 = metadata !{i32 786443, metadata !198, i32 209, i32 2, metadata !47, i32 13} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 211, i32 4, metadata !228, null}
!230 = metadata !{i32 212, i32 4, metadata !228, null}
!231 = metadata !{i32 213, i32 4, metadata !228, null}
!232 = metadata !{i32 214, i32 2, metadata !228, null}
!233 = metadata !{i32 790529, metadata !209, metadata !"temp[3]", null, i32 180, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!234 = metadata !{i32 219, i32 2, metadata !235, null}
!235 = metadata !{i32 786443, metadata !198, i32 218, i32 7, metadata !47, i32 15} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 218, i32 12, metadata !235, null}
!237 = metadata !{i32 218, i32 26, metadata !235, null}
!238 = metadata !{i32 197, i32 42, metadata !189, null}
!239 = metadata !{i32 786689, metadata !240, metadata !"statemt", null, i32 225, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ByteSub_ShiftRow", metadata !"ByteSub_ShiftRow", metadata !"", metadata !47, i32 225, metadata !241, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 226} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{null, metadata !67, metadata !50}
!243 = metadata !{i32 225, i32 28, metadata !240, null}
!244 = metadata !{i32 232, i32 7, metadata !245, null}
!245 = metadata !{i32 786443, metadata !246, i32 230, i32 5, metadata !47, i32 17} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 786443, metadata !240, i32 226, i32 1, metadata !47, i32 16} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 786688, metadata !246, metadata !"temp", metadata !47, i32 227, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 233, i32 7, metadata !245, null}
!249 = metadata !{i32 234, i32 7, metadata !245, null}
!250 = metadata !{i32 235, i32 7, metadata !245, null}
!251 = metadata !{i32 236, i32 7, metadata !245, null}
!252 = metadata !{i32 238, i32 7, metadata !245, null}
!253 = metadata !{i32 239, i32 7, metadata !245, null}
!254 = metadata !{i32 240, i32 7, metadata !245, null}
!255 = metadata !{i32 241, i32 7, metadata !245, null}
!256 = metadata !{i32 242, i32 7, metadata !245, null}
!257 = metadata !{i32 243, i32 7, metadata !245, null}
!258 = metadata !{i32 245, i32 7, metadata !245, null}
!259 = metadata !{i32 246, i32 7, metadata !245, null}
!260 = metadata !{i32 247, i32 7, metadata !245, null}
!261 = metadata !{i32 248, i32 7, metadata !245, null}
!262 = metadata !{i32 249, i32 7, metadata !245, null}
!263 = metadata !{i32 251, i32 7, metadata !245, null}
!264 = metadata !{i32 252, i32 7, metadata !245, null}
!265 = metadata !{i32 253, i32 7, metadata !245, null}
!266 = metadata !{i32 254, i32 7, metadata !245, null}
!267 = metadata !{i32 335, i32 1, metadata !246, null}
!268 = metadata !{i32 786689, metadata !269, metadata !"statemt", null, i32 599, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 786478, i32 0, metadata !47, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !47, i32 599, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 600} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 599, i32 22, metadata !269, null}
!271 = metadata !{i32 786689, metadata !269, metadata !"n", metadata !47, i32 50332247, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 599, i32 49, metadata !269, null}
!273 = metadata !{i32 614, i32 7, metadata !274, null}
!274 = metadata !{i32 786443, metadata !275, i32 613, i32 5, metadata !47, i32 37} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 786443, metadata !276, i32 612, i32 3, metadata !47, i32 36} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 786443, metadata !269, i32 600, i32 1, metadata !47, i32 34} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 612, i32 8, metadata !275, null}
!278 = metadata !{i32 615, i32 7, metadata !274, null}
!279 = metadata !{i32 616, i32 7, metadata !274, null}
!280 = metadata !{i32 617, i32 7, metadata !274, null}
!281 = metadata !{i32 612, i32 23, metadata !275, null}
!282 = metadata !{i32 786688, metadata !276, metadata !"j", metadata !47, i32 601, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
