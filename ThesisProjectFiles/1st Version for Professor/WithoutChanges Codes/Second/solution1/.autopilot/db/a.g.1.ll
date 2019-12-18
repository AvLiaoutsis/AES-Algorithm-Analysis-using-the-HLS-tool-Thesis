; ModuleID = 'C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sbox = internal unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22] ; [#uses=1 type=[256 x i32]*]
@Rcon = internal constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203] ; [#uses=1 type=[255 x i32]*]
@Cipher.str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=5]
define internal fastcc i32 @getSBoxValue(i32 %num) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !63), !dbg !64 ; [debug line = 4:22] [debug variable = num]
  br label %1

; <label>:1                                       ; preds = %0
  %sbox.addr = getelementptr inbounds [256 x i32]* @sbox, i32 0, i32 %num, !dbg !65 ; [#uses=1 type=i32*] [debug line = 24:2]
  %sbox.load = load i32* %sbox.addr, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 24:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sbox.load) nounwind
  ret i32 %sbox.load, !dbg !65                    ; [debug line = 24:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=55]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=10]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
define internal fastcc void @SubBytes([4 x i32]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !67), !dbg !68 ; [debug line = 117:20] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !69 ; [debug line = 118:2]
  br label %1, !dbg !71                           ; [debug line = 120:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !71        ; [#uses=1 type=i1] [debug line = 120:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !71 ; [debug line = 120:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !73                  ; [debug line = 122:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !73         ; [#uses=1 type=i1] [debug line = 122:7]
  br i1 %exitcond, label %3, label %2, !dbg !73   ; [debug line = 122:7]

; <label>:2                                       ; preds = %.preheader
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 %i, i32 %j, !dbg !76 ; [#uses=2 type=i32*] [debug line = 124:18]
  %state.load = load i32* %state.addr, align 4, !dbg !76 ; [#uses=2 type=i32] [debug line = 124:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp = call fastcc i32 @getSBoxValue(i32 %state.load), !dbg !76 ; [#uses=1 type=i32] [debug line = 124:18]
  store i32 %tmp, i32* %state.addr, align 4, !dbg !76 ; [debug line = 124:18]
  %j.1 = add nsw i32 %j, 1, !dbg !78              ; [#uses=1 type=i32] [debug line = 122:15]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 122:15] [debug variable = j]
  br label %.preheader, !dbg !78                  ; [debug line = 122:15]

; <label>:3                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 120:14]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !81), !dbg !80 ; [debug line = 120:14] [debug variable = i]
  br label %1, !dbg !80                           ; [debug line = 120:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !82                              ; [debug line = 128:1]
}

; [#uses=2]
define internal fastcc void @ShiftRows([4 x i32]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !83), !dbg !84 ; [debug line = 133:21] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !85 ; [debug line = 134:2]
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 1, i32 0, !dbg !87 ; [#uses=2 type=i32*] [debug line = 138:2]
  %state.load = load i32* %state.addr, align 4, !dbg !87 ; [#uses=2 type=i32] [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %temp = trunc i32 %state.load to i8, !dbg !87   ; [#uses=1 type=i8] [debug line = 138:2]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !88), !dbg !87 ; [debug line = 138:2] [debug variable = temp]
  %state.addr.1 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 1, !dbg !90 ; [#uses=2 type=i32*] [debug line = 139:2]
  %state.load.1 = load i32* %state.addr.1, align 4, !dbg !90 ; [#uses=2 type=i32] [debug line = 139:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.1) nounwind
  store i32 %state.load.1, i32* %state.addr, align 4, !dbg !90 ; [debug line = 139:2]
  %state.addr.2 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 2, !dbg !91 ; [#uses=2 type=i32*] [debug line = 140:2]
  %state.load.2 = load i32* %state.addr.2, align 4, !dbg !91 ; [#uses=2 type=i32] [debug line = 140:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.2) nounwind
  store i32 %state.load.2, i32* %state.addr.1, align 4, !dbg !91 ; [debug line = 140:2]
  %state.addr.3 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 3, !dbg !92 ; [#uses=2 type=i32*] [debug line = 141:2]
  %state.load.3 = load i32* %state.addr.3, align 4, !dbg !92 ; [#uses=2 type=i32] [debug line = 141:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.3) nounwind
  store i32 %state.load.3, i32* %state.addr.2, align 4, !dbg !92 ; [debug line = 141:2]
  %tmp = zext i8 %temp to i32, !dbg !93           ; [#uses=1 type=i32] [debug line = 142:2]
  store i32 %tmp, i32* %state.addr.3, align 4, !dbg !93 ; [debug line = 142:2]
  %state.addr.4 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 0, !dbg !94 ; [#uses=2 type=i32*] [debug line = 145:2]
  %state.load.4 = load i32* %state.addr.4, align 4, !dbg !94 ; [#uses=2 type=i32] [debug line = 145:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.4) nounwind
  %temp.1 = trunc i32 %state.load.4 to i8, !dbg !94 ; [#uses=1 type=i8] [debug line = 145:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !88), !dbg !94 ; [debug line = 145:2] [debug variable = temp]
  %state.addr.5 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 2, !dbg !95 ; [#uses=2 type=i32*] [debug line = 146:2]
  %state.load.5 = load i32* %state.addr.5, align 4, !dbg !95 ; [#uses=2 type=i32] [debug line = 146:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.5) nounwind
  store i32 %state.load.5, i32* %state.addr.4, align 4, !dbg !95 ; [debug line = 146:2]
  %tmp.2 = zext i8 %temp.1 to i32, !dbg !96       ; [#uses=1 type=i32] [debug line = 147:2]
  store i32 %tmp.2, i32* %state.addr.5, align 4, !dbg !96 ; [debug line = 147:2]
  %state.addr.6 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 1, !dbg !97 ; [#uses=2 type=i32*] [debug line = 149:2]
  %state.load.6 = load i32* %state.addr.6, align 4, !dbg !97 ; [#uses=2 type=i32] [debug line = 149:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.6) nounwind
  %temp.2 = trunc i32 %state.load.6 to i8, !dbg !97 ; [#uses=1 type=i8] [debug line = 149:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !88), !dbg !97 ; [debug line = 149:2] [debug variable = temp]
  %state.addr.7 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 3, !dbg !98 ; [#uses=2 type=i32*] [debug line = 150:2]
  %state.load.7 = load i32* %state.addr.7, align 4, !dbg !98 ; [#uses=2 type=i32] [debug line = 150:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.7) nounwind
  store i32 %state.load.7, i32* %state.addr.6, align 4, !dbg !98 ; [debug line = 150:2]
  %tmp.3 = zext i8 %temp.2 to i32, !dbg !99       ; [#uses=1 type=i32] [debug line = 151:2]
  store i32 %tmp.3, i32* %state.addr.7, align 4, !dbg !99 ; [debug line = 151:2]
  %state.addr.8 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 0, !dbg !100 ; [#uses=2 type=i32*] [debug line = 154:2]
  %state.load.8 = load i32* %state.addr.8, align 4, !dbg !100 ; [#uses=2 type=i32] [debug line = 154:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.8) nounwind
  %temp.4 = trunc i32 %state.load.8 to i8, !dbg !100 ; [#uses=1 type=i8] [debug line = 154:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.4}, i64 0, metadata !88), !dbg !100 ; [debug line = 154:2] [debug variable = temp]
  %state.addr.9 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 3, !dbg !101 ; [#uses=2 type=i32*] [debug line = 155:2]
  %state.load.9 = load i32* %state.addr.9, align 4, !dbg !101 ; [#uses=2 type=i32] [debug line = 155:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.9) nounwind
  store i32 %state.load.9, i32* %state.addr.8, align 4, !dbg !101 ; [debug line = 155:2]
  %state.addr.10 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 2, !dbg !102 ; [#uses=2 type=i32*] [debug line = 156:2]
  %state.load.10 = load i32* %state.addr.10, align 4, !dbg !102 ; [#uses=2 type=i32] [debug line = 156:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.10) nounwind
  store i32 %state.load.10, i32* %state.addr.9, align 4, !dbg !102 ; [debug line = 156:2]
  %state.addr.11 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 1, !dbg !103 ; [#uses=2 type=i32*] [debug line = 157:2]
  %state.load.11 = load i32* %state.addr.11, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 157:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.11) nounwind
  store i32 %state.load.11, i32* %state.addr.10, align 4, !dbg !103 ; [debug line = 157:2]
  %tmp.4 = zext i8 %temp.4 to i32, !dbg !104      ; [#uses=1 type=i32] [debug line = 158:2]
  store i32 %tmp.4, i32* %state.addr.11, align 4, !dbg !104 ; [debug line = 158:2]
  ret void, !dbg !105                             ; [debug line = 159:1]
}

; [#uses=1]
define internal fastcc void @MixColumns([4 x i32]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !106), !dbg !107 ; [debug line = 165:22] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !108 ; [debug line = 166:2]
  br label %1, !dbg !110                          ; [debug line = 169:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=6 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !110        ; [#uses=1 type=i1] [debug line = 169:6]
  br i1 %exitcond, label %3, label %2, !dbg !110  ; [debug line = 169:6]

; <label>:2                                       ; preds = %1
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 0, i32 %i, !dbg !112 ; [#uses=2 type=i32*] [debug line = 171:3]
  %state.load = load i32* %state.addr, align 4, !dbg !112 ; [#uses=7 type=i32] [debug line = 171:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %t = trunc i32 %state.load to i8, !dbg !112     ; [#uses=1 type=i8] [debug line = 171:3]
  call void @llvm.dbg.value(metadata !{i8 %t}, i64 0, metadata !114), !dbg !112 ; [debug line = 171:3] [debug variable = t]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %state.addr.12 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 %i, !dbg !115 ; [#uses=2 type=i32*] [debug line = 172:3]
  %state.load.12 = load i32* %state.addr.12, align 4, !dbg !115 ; [#uses=7 type=i32] [debug line = 172:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %state.addr.13 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 %i, !dbg !115 ; [#uses=2 type=i32*] [debug line = 172:3]
  %state.load.13 = load i32* %state.addr.13, align 4, !dbg !115 ; [#uses=8 type=i32] [debug line = 172:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %state.addr.14 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 %i, !dbg !115 ; [#uses=2 type=i32*] [debug line = 172:3]
  %state.load.14 = load i32* %state.addr.14, align 4, !dbg !115 ; [#uses=8 type=i32] [debug line = 172:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp = xor i32 %state.load.12, %state.load, !dbg !115 ; [#uses=2 type=i32] [debug line = 172:3]
  %tmp.5 = xor i32 %state.load.13, %tmp, !dbg !115 ; [#uses=1 type=i32] [debug line = 172:3]
  %tmp.6 = xor i32 %tmp.5, %state.load.14, !dbg !115 ; [#uses=1 type=i32] [debug line = 172:3]
  %Tmp = trunc i32 %tmp.6 to i8, !dbg !115        ; [#uses=4 type=i8] [debug line = 172:3]
  call void @llvm.dbg.value(metadata !{i8 %Tmp}, i64 0, metadata !116), !dbg !115 ; [debug line = 172:3] [debug variable = Tmp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %Tm = trunc i32 %tmp to i8, !dbg !117           ; [#uses=2 type=i8] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm}, i64 0, metadata !118), !dbg !117 ; [debug line = 173:3] [debug variable = Tm]
  %tmp.7 = shl i8 %Tm, 1, !dbg !119               ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.8 = ashr i8 %Tm, 7, !dbg !119              ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.9 = and i8 %tmp.8, 27, !dbg !119           ; [#uses=1 type=i8] [debug line = 173:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.1}, i64 0, metadata !118), !dbg !119 ; [debug line = 173:36] [debug variable = Tm]
  %Tm.1 = xor i8 %tmp.9, %tmp.7, !dbg !119        ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.10 = xor i8 %Tm.1, %Tmp, !dbg !120         ; [#uses=1 type=i8] [debug line = 173:77]
  %tmp.11 = zext i8 %tmp.10 to i32, !dbg !120     ; [#uses=1 type=i32] [debug line = 173:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp.12 = xor i32 %tmp.11, %state.load, !dbg !120 ; [#uses=1 type=i32] [debug line = 173:77]
  store i32 %tmp.12, i32* %state.addr, align 4, !dbg !120 ; [debug line = 173:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %tmp.13 = xor i32 %state.load.13, %state.load.12, !dbg !121 ; [#uses=1 type=i32] [debug line = 174:3]
  %Tm.2 = trunc i32 %tmp.13 to i8, !dbg !121      ; [#uses=2 type=i8] [debug line = 174:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.2}, i64 0, metadata !118), !dbg !121 ; [debug line = 174:3] [debug variable = Tm]
  %tmp.14 = shl i8 %Tm.2, 1, !dbg !122            ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.15 = ashr i8 %Tm.2, 7, !dbg !122           ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.16 = and i8 %tmp.15, 27, !dbg !122         ; [#uses=1 type=i8] [debug line = 174:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.3}, i64 0, metadata !118), !dbg !122 ; [debug line = 174:36] [debug variable = Tm]
  %Tm.3 = xor i8 %tmp.16, %tmp.14, !dbg !122      ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.17 = xor i8 %Tm.3, %Tmp, !dbg !123         ; [#uses=1 type=i8] [debug line = 174:77]
  %tmp.18 = zext i8 %tmp.17 to i32, !dbg !123     ; [#uses=1 type=i32] [debug line = 174:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %tmp.19 = xor i32 %tmp.18, %state.load.12, !dbg !123 ; [#uses=1 type=i32] [debug line = 174:77]
  store i32 %tmp.19, i32* %state.addr.12, align 4, !dbg !123 ; [debug line = 174:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.20 = xor i32 %state.load.14, %state.load.13, !dbg !124 ; [#uses=1 type=i32] [debug line = 175:3]
  %Tm.4 = trunc i32 %tmp.20 to i8, !dbg !124      ; [#uses=2 type=i8] [debug line = 175:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.4}, i64 0, metadata !118), !dbg !124 ; [debug line = 175:3] [debug variable = Tm]
  %tmp.21 = shl i8 %Tm.4, 1, !dbg !125            ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.22 = ashr i8 %Tm.4, 7, !dbg !125           ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.23 = and i8 %tmp.22, 27, !dbg !125         ; [#uses=1 type=i8] [debug line = 175:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.5}, i64 0, metadata !118), !dbg !125 ; [debug line = 175:36] [debug variable = Tm]
  %Tm.5 = xor i8 %tmp.21, %Tmp, !dbg !125         ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.24 = xor i8 %Tm.5, %tmp.23, !dbg !126      ; [#uses=1 type=i8] [debug line = 175:77]
  %tmp.25 = zext i8 %tmp.24 to i32, !dbg !126     ; [#uses=1 type=i32] [debug line = 175:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %tmp.26 = xor i32 %tmp.25, %state.load.13, !dbg !126 ; [#uses=1 type=i32] [debug line = 175:77]
  store i32 %tmp.26, i32* %state.addr.13, align 4, !dbg !126 ; [debug line = 175:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.27 = trunc i32 %state.load.14 to i8, !dbg !127 ; [#uses=1 type=i8] [debug line = 176:3]
  %Tm.6 = xor i8 %tmp.27, %t, !dbg !127           ; [#uses=2 type=i8] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.6}, i64 0, metadata !118), !dbg !127 ; [debug line = 176:3] [debug variable = Tm]
  %tmp.28 = shl i8 %Tm.6, 1, !dbg !128            ; [#uses=1 type=i8] [debug line = 176:26]
  %tmp.29 = ashr i8 %Tm.6, 7, !dbg !128           ; [#uses=1 type=i8] [debug line = 176:26]
  %tmp.30 = and i8 %tmp.29, 27, !dbg !128         ; [#uses=1 type=i8] [debug line = 176:26]
  call void @llvm.dbg.value(metadata !{i8 %Tm.7}, i64 0, metadata !118), !dbg !128 ; [debug line = 176:26] [debug variable = Tm]
  %Tm.7 = xor i8 %tmp.28, %Tmp, !dbg !128         ; [#uses=1 type=i8] [debug line = 176:26]
  %tmp.31 = xor i8 %Tm.7, %tmp.30, !dbg !129      ; [#uses=1 type=i8] [debug line = 176:67]
  %tmp.32 = zext i8 %tmp.31 to i32, !dbg !129     ; [#uses=1 type=i32] [debug line = 176:67]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.33 = xor i32 %tmp.32, %state.load.14, !dbg !129 ; [#uses=1 type=i32] [debug line = 176:67]
  store i32 %tmp.33, i32* %state.addr.14, align 4, !dbg !129 ; [debug line = 176:67]
  %i.2 = add nsw i32 %i, 1, !dbg !130             ; [#uses=1 type=i32] [debug line = 169:14]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !131), !dbg !130 ; [debug line = 169:14] [debug variable = i]
  br label %1, !dbg !130                          ; [debug line = 169:14]

; <label>:3                                       ; preds = %1
  ret void, !dbg !132                             ; [debug line = 178:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion(i32* %RoundKey, i32* %Key) nounwind {
  %temp = alloca [4 x i32], align 4               ; [#uses=5 type=[4 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %RoundKey}, i64 0, metadata !133), !dbg !134 ; [debug line = 33:24] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{i32* %Key}, i64 0, metadata !135), !dbg !136 ; [debug line = 33:43] [debug variable = Key]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %RoundKey, i32 240), !dbg !137 ; [debug line = 34:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 255), !dbg !139 ; [debug line = 34:39]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %Key, i32 32), !dbg !140 ; [debug line = 34:72]
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %temp}, metadata !141), !dbg !142 ; [debug line = 36:7] [debug variable = temp]
  br label %1, !dbg !143                          ; [debug line = 41:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %tmp.38, %2 ]         ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 4, !dbg !143       ; [#uses=1 type=i1] [debug line = 41:6]
  br i1 %exitcond2, label %.preheader3.preheader, label %2, !dbg !143 ; [debug line = 41:6]

.preheader3.preheader:                            ; preds = %1
  %temp.addr = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 0, !dbg !145 ; [#uses=3 type=i32*] [debug line = 63:8]
  %temp.addr.1 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 1, !dbg !149 ; [#uses=3 type=i32*] [debug line = 64:8]
  %temp.addr.2 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 2, !dbg !150 ; [#uses=3 type=i32*] [debug line = 65:8]
  %temp.addr.3 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 3, !dbg !151 ; [#uses=3 type=i32*] [debug line = 66:8]
  br label %.preheader3, !dbg !152                ; [debug line = 50:2]

; <label>:2                                       ; preds = %1
  %tmp = shl nsw i32 %i, 2, !dbg !153             ; [#uses=5 type=i32] [debug line = 43:3]
  %Key.addr = getelementptr inbounds i32* %Key, i32 %tmp, !dbg !153 ; [#uses=1 type=i32*] [debug line = 43:3]
  %Key.load = load i32* %Key.addr, align 4, !dbg !153 ; [#uses=2 type=i32] [debug line = 43:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load) nounwind
  %RoundKey.addr = getelementptr inbounds i32* %RoundKey, i32 %tmp, !dbg !153 ; [#uses=1 type=i32*] [debug line = 43:3]
  store i32 %Key.load, i32* %RoundKey.addr, align 4, !dbg !153 ; [debug line = 43:3]
  %tmp.35 = or i32 %tmp, 1, !dbg !155             ; [#uses=2 type=i32] [debug line = 44:3]
  %Key.addr.1 = getelementptr inbounds i32* %Key, i32 %tmp.35, !dbg !155 ; [#uses=1 type=i32*] [debug line = 44:3]
  %Key.load.1 = load i32* %Key.addr.1, align 4, !dbg !155 ; [#uses=2 type=i32] [debug line = 44:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.1) nounwind
  %RoundKey.addr.1 = getelementptr inbounds i32* %RoundKey, i32 %tmp.35, !dbg !155 ; [#uses=1 type=i32*] [debug line = 44:3]
  store i32 %Key.load.1, i32* %RoundKey.addr.1, align 4, !dbg !155 ; [debug line = 44:3]
  %tmp.36 = or i32 %tmp, 2, !dbg !156             ; [#uses=2 type=i32] [debug line = 45:3]
  %Key.addr.2 = getelementptr inbounds i32* %Key, i32 %tmp.36, !dbg !156 ; [#uses=1 type=i32*] [debug line = 45:3]
  %Key.load.2 = load i32* %Key.addr.2, align 4, !dbg !156 ; [#uses=2 type=i32] [debug line = 45:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.2) nounwind
  %RoundKey.addr.2 = getelementptr inbounds i32* %RoundKey, i32 %tmp.36, !dbg !156 ; [#uses=1 type=i32*] [debug line = 45:3]
  store i32 %Key.load.2, i32* %RoundKey.addr.2, align 4, !dbg !156 ; [debug line = 45:3]
  %tmp.37 = or i32 %tmp, 3, !dbg !157             ; [#uses=2 type=i32] [debug line = 46:3]
  %Key.addr.3 = getelementptr inbounds i32* %Key, i32 %tmp.37, !dbg !157 ; [#uses=1 type=i32*] [debug line = 46:3]
  %Key.load.3 = load i32* %Key.addr.3, align 4, !dbg !157 ; [#uses=2 type=i32] [debug line = 46:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.3) nounwind
  %RoundKey.addr.3 = getelementptr inbounds i32* %RoundKey, i32 %tmp.37, !dbg !157 ; [#uses=1 type=i32*] [debug line = 46:3]
  store i32 %Key.load.3, i32* %RoundKey.addr.3, align 4, !dbg !157 ; [debug line = 46:3]
  %tmp.38 = add nsw i32 %i, 1, !dbg !158          ; [#uses=1 type=i32] [debug line = 41:15]
  br label %1, !dbg !158                          ; [debug line = 41:15]

.preheader3:                                      ; preds = %._crit_edge, %.preheader3.preheader
  %i.1 = phi i32 [ %i.3, %._crit_edge ], [ 4, %.preheader3.preheader ] ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i32 %i.1, 44, !dbg !152    ; [#uses=1 type=i1] [debug line = 50:2]
  br i1 %exitcond1, label %7, label %.preheader.preheader, !dbg !152 ; [debug line = 50:2]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp.39 = shl i32 %i.1, 2, !dbg !159            ; [#uses=9 type=i32] [debug line = 54:7]
  br label %.preheader, !dbg !162                 ; [debug line = 52:10]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %j = phi i32 [ %j.2, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !162        ; [#uses=1 type=i1] [debug line = 52:10]
  br i1 %exitcond, label %4, label %3, !dbg !162  ; [debug line = 52:10]

; <label>:3                                       ; preds = %.preheader
  %tmp.42 = add i32 %tmp.39, -4, !dbg !159        ; [#uses=1 type=i32] [debug line = 54:7]
  %tmp.43 = add i32 %tmp.42, %j, !dbg !159        ; [#uses=1 type=i32] [debug line = 54:7]
  %RoundKey.addr.4 = getelementptr inbounds i32* %RoundKey, i32 %tmp.43, !dbg !159 ; [#uses=1 type=i32*] [debug line = 54:7]
  %RoundKey.load = load i32* %RoundKey.addr.4, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 54:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load) nounwind
  %temp.addr.4 = getelementptr inbounds [4 x i32]* %temp, i32 0, i32 %j, !dbg !159 ; [#uses=1 type=i32*] [debug line = 54:7]
  store i32 %RoundKey.load, i32* %temp.addr.4, align 4, !dbg !159 ; [debug line = 54:7]
  %j.2 = add nsw i32 %j, 1, !dbg !163             ; [#uses=1 type=i32] [debug line = 52:18]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !164), !dbg !163 ; [debug line = 52:18] [debug variable = j]
  br label %.preheader, !dbg !163                 ; [debug line = 52:18]

; <label>:4                                       ; preds = %.preheader
  %tmp.40 = and i32 %i.1, 3, !dbg !165            ; [#uses=1 type=i32] [debug line = 56:6]
  %tmp.41 = icmp eq i32 %tmp.40, 0, !dbg !165     ; [#uses=1 type=i1] [debug line = 56:6]
  br i1 %tmp.41, label %5, label %._crit_edge, !dbg !165 ; [debug line = 56:6]

; <label>:5                                       ; preds = %4
  %k = load i32* %temp.addr, align 4, !dbg !145   ; [#uses=3 type=i32] [debug line = 63:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %k) nounwind
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !166), !dbg !145 ; [debug line = 63:8] [debug variable = k]
  %temp.load = load i32* %temp.addr.1, align 4, !dbg !149 ; [#uses=3 type=i32] [debug line = 64:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load) nounwind
  %temp.load.1 = load i32* %temp.addr.2, align 4, !dbg !150 ; [#uses=3 type=i32] [debug line = 65:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.1) nounwind
  %temp.load.2 = load i32* %temp.addr.3, align 4, !dbg !151 ; [#uses=3 type=i32] [debug line = 66:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load) nounwind
  %tmp.45 = call fastcc i32 @getSBoxValue(i32 %temp.load), !dbg !167 ; [#uses=2 type=i32] [debug line = 75:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.1) nounwind
  %tmp.46 = call fastcc i32 @getSBoxValue(i32 %temp.load.1), !dbg !169 ; [#uses=1 type=i32] [debug line = 76:16]
  store i32 %tmp.46, i32* %temp.addr.1, align 4, !dbg !169 ; [debug line = 76:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.2) nounwind
  %tmp.47 = call fastcc i32 @getSBoxValue(i32 %temp.load.2), !dbg !170 ; [#uses=1 type=i32] [debug line = 77:16]
  store i32 %tmp.47, i32* %temp.addr.2, align 4, !dbg !170 ; [debug line = 77:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %k) nounwind
  %tmp.48 = call fastcc i32 @getSBoxValue(i32 %k), !dbg !171 ; [#uses=1 type=i32] [debug line = 78:16]
  store i32 %tmp.48, i32* %temp.addr.3, align 4, !dbg !171 ; [debug line = 78:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.45) nounwind
  %tmp.49 = sdiv i32 %i.1, 4, !dbg !172           ; [#uses=1 type=i32] [debug line = 81:7]
  %.addr = getelementptr inbounds i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 %tmp.49, !dbg !172 ; [#uses=1 type=i32*] [debug line = 81:7]
  %6 = load i32* %.addr, align 4, !dbg !172       ; [#uses=2 type=i32] [debug line = 81:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %6) nounwind
  %tmp.50 = xor i32 %6, %tmp.45, !dbg !172        ; [#uses=1 type=i32] [debug line = 81:7]
  store i32 %tmp.50, i32* %temp.addr, align 4, !dbg !172 ; [debug line = 81:7]
  br label %._crit_edge, !dbg !173                ; [debug line = 82:6]

._crit_edge:                                      ; preds = %5, %4
  %tmp.51 = add i32 %tmp.39, -16, !dbg !174       ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.5 = getelementptr inbounds i32* %RoundKey, i32 %tmp.51, !dbg !174 ; [#uses=1 type=i32*] [debug line = 93:6]
  %RoundKey.load.1 = load i32* %RoundKey.addr.5, align 4, !dbg !174 ; [#uses=2 type=i32] [debug line = 93:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load.1) nounwind
  %temp.load.3 = load i32* %temp.addr, align 4, !dbg !174 ; [#uses=2 type=i32] [debug line = 93:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.3) nounwind
  %tmp.52 = xor i32 %temp.load.3, %RoundKey.load.1, !dbg !174 ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.6 = getelementptr inbounds i32* %RoundKey, i32 %tmp.39, !dbg !174 ; [#uses=1 type=i32*] [debug line = 93:6]
  store i32 %tmp.52, i32* %RoundKey.addr.6, align 4, !dbg !174 ; [debug line = 93:6]
  %tmp.53 = add i32 %tmp.39, -15, !dbg !175       ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.7 = getelementptr inbounds i32* %RoundKey, i32 %tmp.53, !dbg !175 ; [#uses=1 type=i32*] [debug line = 94:6]
  %RoundKey.load.2 = load i32* %RoundKey.addr.7, align 4, !dbg !175 ; [#uses=2 type=i32] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load.2) nounwind
  %temp.load.4 = load i32* %temp.addr.1, align 4, !dbg !175 ; [#uses=2 type=i32] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.4) nounwind
  %tmp.54 = xor i32 %temp.load.4, %RoundKey.load.2, !dbg !175 ; [#uses=1 type=i32] [debug line = 94:6]
  %tmp.55 = or i32 %tmp.39, 1, !dbg !175          ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.8 = getelementptr inbounds i32* %RoundKey, i32 %tmp.55, !dbg !175 ; [#uses=1 type=i32*] [debug line = 94:6]
  store i32 %tmp.54, i32* %RoundKey.addr.8, align 4, !dbg !175 ; [debug line = 94:6]
  %tmp.56 = add i32 %tmp.39, -14, !dbg !176       ; [#uses=1 type=i32] [debug line = 95:6]
  %RoundKey.addr.9 = getelementptr inbounds i32* %RoundKey, i32 %tmp.56, !dbg !176 ; [#uses=1 type=i32*] [debug line = 95:6]
  %RoundKey.load.3 = load i32* %RoundKey.addr.9, align 4, !dbg !176 ; [#uses=2 type=i32] [debug line = 95:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load.3) nounwind
  %temp.load.5 = load i32* %temp.addr.2, align 4, !dbg !176 ; [#uses=2 type=i32] [debug line = 95:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.5) nounwind
  %tmp.57 = xor i32 %temp.load.5, %RoundKey.load.3, !dbg !176 ; [#uses=1 type=i32] [debug line = 95:6]
  %tmp.58 = or i32 %tmp.39, 2, !dbg !176          ; [#uses=1 type=i32] [debug line = 95:6]
  %RoundKey.addr.10 = getelementptr inbounds i32* %RoundKey, i32 %tmp.58, !dbg !176 ; [#uses=1 type=i32*] [debug line = 95:6]
  store i32 %tmp.57, i32* %RoundKey.addr.10, align 4, !dbg !176 ; [debug line = 95:6]
  %tmp.59 = add i32 %tmp.39, -13, !dbg !177       ; [#uses=1 type=i32] [debug line = 96:6]
  %RoundKey.addr.11 = getelementptr inbounds i32* %RoundKey, i32 %tmp.59, !dbg !177 ; [#uses=1 type=i32*] [debug line = 96:6]
  %RoundKey.load.4 = load i32* %RoundKey.addr.11, align 4, !dbg !177 ; [#uses=2 type=i32] [debug line = 96:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load.4) nounwind
  %temp.load.6 = load i32* %temp.addr.3, align 4, !dbg !177 ; [#uses=2 type=i32] [debug line = 96:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp.load.6) nounwind
  %tmp.60 = xor i32 %temp.load.6, %RoundKey.load.4, !dbg !177 ; [#uses=1 type=i32] [debug line = 96:6]
  %tmp.61 = or i32 %tmp.39, 3, !dbg !177          ; [#uses=1 type=i32] [debug line = 96:6]
  %RoundKey.addr.12 = getelementptr inbounds i32* %RoundKey, i32 %tmp.61, !dbg !177 ; [#uses=1 type=i32*] [debug line = 96:6]
  store i32 %tmp.60, i32* %RoundKey.addr.12, align 4, !dbg !177 ; [debug line = 96:6]
  %i.3 = add nsw i32 %i.1, 1, !dbg !178           ; [#uses=1 type=i32] [debug line = 97:6]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !179), !dbg !178 ; [debug line = 97:6] [debug variable = i]
  br label %.preheader3, !dbg !180                ; [debug line = 98:2]

; <label>:7                                       ; preds = %.preheader3
  ret void, !dbg !181                             ; [debug line = 99:1]
}

; [#uses=0]
define void @Cipher(i32* %Key, [4 x i32]* %state) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %RoundKey = alloca [240 x i32], align 4         ; [#uses=1 type=[240 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %Key}, i64 0, metadata !182), !dbg !183 ; [debug line = 181:18] [debug variable = Key]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !184), !dbg !185 ; [debug line = 181:31] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !186 ; [debug line = 182:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %Key, i32 32), !dbg !188 ; [debug line = 182:34]
  br label %1

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[240 x i32]* %RoundKey}, metadata !189), !dbg !193 ; [debug line = 203:7] [debug variable = RoundKey]
  %RoundKey.addr = getelementptr inbounds [240 x i32]* %RoundKey, i32 0, i32 0, !dbg !194 ; [#uses=4 type=i32*] [debug line = 207:2]
  call fastcc void @KeyExpansion(i32* %RoundKey.addr, i32* %Key), !dbg !194 ; [debug line = 207:2]
  call fastcc void @AddRoundKey(i32 0, [4 x i32]* %state, i32* %RoundKey.addr), !dbg !195 ; [debug line = 212:2]
  br label %2, !dbg !196                          ; [debug line = 217:6]

; <label>:2                                       ; preds = %3, %1
  %round = phi i32 [ 1, %1 ], [ %round.1, %3 ]    ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %round, 10, !dbg !196   ; [#uses=1 type=i1] [debug line = 217:6]
  br i1 %exitcond, label %4, label %3, !dbg !196  ; [debug line = 217:6]

; <label>:3                                       ; preds = %2
  call fastcc void @SubBytes([4 x i32]* %state), !dbg !198 ; [debug line = 219:3]
  call fastcc void @ShiftRows([4 x i32]* %state), !dbg !200 ; [debug line = 220:3]
  call fastcc void @MixColumns([4 x i32]* %state), !dbg !201 ; [debug line = 221:3]
  call fastcc void @AddRoundKey(i32 %round, [4 x i32]* %state, i32* %RoundKey.addr), !dbg !202 ; [debug line = 222:3]
  %round.1 = add nsw i32 %round, 1, !dbg !203     ; [#uses=1 type=i32] [debug line = 217:23]
  call void @llvm.dbg.value(metadata !{i32 %round.1}, i64 0, metadata !204), !dbg !203 ; [debug line = 217:23] [debug variable = round]
  br label %2, !dbg !203                          ; [debug line = 217:23]

; <label>:4                                       ; preds = %2
  call fastcc void @SubBytes([4 x i32]* %state), !dbg !205 ; [debug line = 227:2]
  call fastcc void @ShiftRows([4 x i32]* %state), !dbg !206 ; [debug line = 228:2]
  call fastcc void @AddRoundKey(i32 10, [4 x i32]* %state, i32* %RoundKey.addr), !dbg !207 ; [debug line = 229:2]
  ret void, !dbg !208                             ; [debug line = 235:1]
}

; [#uses=3]
define internal fastcc void @AddRoundKey(i32 %round, [4 x i32]* %state, i32* %RoundKey) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %round}, i64 0, metadata !209), !dbg !210 ; [debug line = 103:22] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !211), !dbg !212 ; [debug line = 103:33] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i32* %RoundKey}, i64 0, metadata !213), !dbg !214 ; [debug line = 103:50] [debug variable = RoundKey]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %RoundKey, i32 240), !dbg !215 ; [debug line = 104:2]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !217 ; [debug line = 104:39]
  %tmp = mul i32 %round, 16, !dbg !218            ; [#uses=1 type=i32] [debug line = 110:4]
  br label %1, !dbg !223                          ; [debug line = 106:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %3 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !223       ; [#uses=1 type=i1] [debug line = 106:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !223 ; [debug line = 106:6]

.preheader.preheader:                             ; preds = %1
  %tmp.63 = mul i32 %i, 4, !dbg !218              ; [#uses=1 type=i32] [debug line = 110:4]
  br label %.preheader, !dbg !224                 ; [debug line = 108:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.3, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !224        ; [#uses=1 type=i1] [debug line = 108:7]
  br i1 %exitcond, label %3, label %2, !dbg !224  ; [debug line = 108:7]

; <label>:2                                       ; preds = %.preheader
  %tmp.65 = add i32 %tmp.63, %tmp, !dbg !218      ; [#uses=1 type=i32] [debug line = 110:4]
  %tmp.66 = add i32 %tmp.65, %j, !dbg !218        ; [#uses=1 type=i32] [debug line = 110:4]
  %RoundKey.addr = getelementptr inbounds i32* %RoundKey, i32 %tmp.66, !dbg !218 ; [#uses=1 type=i32*] [debug line = 110:4]
  %RoundKey.load = load i32* %RoundKey.addr, align 4, !dbg !218 ; [#uses=2 type=i32] [debug line = 110:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %RoundKey.load) nounwind
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 %j, i32 %i, !dbg !218 ; [#uses=2 type=i32*] [debug line = 110:4]
  %state.load = load i32* %state.addr, align 4, !dbg !218 ; [#uses=2 type=i32] [debug line = 110:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp.67 = xor i32 %state.load, %RoundKey.load, !dbg !218 ; [#uses=1 type=i32] [debug line = 110:4]
  store i32 %tmp.67, i32* %state.addr, align 4, !dbg !218 ; [debug line = 110:4]
  %j.3 = add nsw i32 %j, 1, !dbg !225             ; [#uses=1 type=i32] [debug line = 108:15]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !226), !dbg !225 ; [debug line = 108:15] [debug variable = j]
  br label %.preheader, !dbg !225                 ; [debug line = 108:15]

; <label>:3                                       ; preds = %.preheader
  %i.4 = add nsw i32 %i, 1, !dbg !227             ; [#uses=1 type=i32] [debug line = 106:14]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !228), !dbg !227 ; [debug line = 106:14] [debug variable = i]
  br label %1, !dbg !227                          ; [debug line = 106:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !229                             ; [debug line = 113:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41, !47, !51, !55, !56, !57}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/Professor/xorisallages2/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CProfessor\5Cxorisallages2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !19, metadata !26, metadata !29, metadata !30, metadata !31}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
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
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 103, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i32]*, i32*)* @AddRoundKey, null, null, metadata !10, i32 104} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9, metadata !22, metadata !15}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 117, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @SubBytes, null, null, metadata !10, i32 118} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !22}
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 133, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @ShiftRows, null, null, metadata !10, i32 134} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 165, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @MixColumns, null, null, metadata !10, i32 166} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 181, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, [4 x i32]*)* @Cipher, null, null, metadata !10, i32 182} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !15, metadata !22}
!34 = metadata !{i32 (i32)* @getSBoxValue, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
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
!47 = metadata !{void (i32, [4 x i32]*, i32*)* @AddRoundKey, metadata !48, metadata !43, metadata !49, metadata !45, metadata !50, metadata !40}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"word*"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!51 = metadata !{void ([4 x i32]*)* @SubBytes, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!52 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!55 = metadata !{void ([4 x i32]*)* @ShiftRows, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!56 = metadata !{void ([4 x i32]*)* @MixColumns, metadata !52, metadata !36, metadata !53, metadata !38, metadata !54, metadata !40}
!57 = metadata !{void (i32*, [4 x i32]*)* @Cipher, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !40}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!59 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"word*", metadata !"word [4]*"}
!61 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"Key", metadata !"state"}
!63 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 4, i32 22, metadata !5, null}
!65 = metadata !{i32 24, i32 2, metadata !66, null}
!66 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786689, metadata !26, metadata !"state", metadata !6, i32 16777333, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 117, i32 20, metadata !26, null}
!69 = metadata !{i32 118, i32 2, metadata !70, null}
!70 = metadata !{i32 786443, metadata !26, i32 118, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 120, i32 6, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 120, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 122, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 122, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !72, i32 121, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 124, i32 18, metadata !77, null}
!77 = metadata !{i32 786443, metadata !74, i32 123, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 122, i32 15, metadata !74, null}
!79 = metadata !{i32 786688, metadata !70, metadata !"j", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 120, i32 14, metadata !72, null}
!81 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 128, i32 1, metadata !70, null}
!83 = metadata !{i32 786689, metadata !29, metadata !"state", metadata !6, i32 16777349, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 133, i32 21, metadata !29, null}
!85 = metadata !{i32 134, i32 2, metadata !86, null}
!86 = metadata !{i32 786443, metadata !29, i32 134, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 138, i32 2, metadata !86, null}
!88 = metadata !{i32 786688, metadata !86, metadata !"temp", metadata !6, i32 135, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!90 = metadata !{i32 139, i32 2, metadata !86, null}
!91 = metadata !{i32 140, i32 2, metadata !86, null}
!92 = metadata !{i32 141, i32 2, metadata !86, null}
!93 = metadata !{i32 142, i32 2, metadata !86, null}
!94 = metadata !{i32 145, i32 2, metadata !86, null}
!95 = metadata !{i32 146, i32 2, metadata !86, null}
!96 = metadata !{i32 147, i32 2, metadata !86, null}
!97 = metadata !{i32 149, i32 2, metadata !86, null}
!98 = metadata !{i32 150, i32 2, metadata !86, null}
!99 = metadata !{i32 151, i32 2, metadata !86, null}
!100 = metadata !{i32 154, i32 2, metadata !86, null}
!101 = metadata !{i32 155, i32 2, metadata !86, null}
!102 = metadata !{i32 156, i32 2, metadata !86, null}
!103 = metadata !{i32 157, i32 2, metadata !86, null}
!104 = metadata !{i32 158, i32 2, metadata !86, null}
!105 = metadata !{i32 159, i32 1, metadata !86, null}
!106 = metadata !{i32 786689, metadata !30, metadata !"state", metadata !6, i32 16777381, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 165, i32 22, metadata !30, null}
!108 = metadata !{i32 166, i32 2, metadata !109, null}
!109 = metadata !{i32 786443, metadata !30, i32 166, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 169, i32 6, metadata !111, null}
!111 = metadata !{i32 786443, metadata !109, i32 169, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 171, i32 3, metadata !113, null}
!113 = metadata !{i32 786443, metadata !111, i32 170, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786688, metadata !109, metadata !"t", metadata !6, i32 168, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 172, i32 3, metadata !113, null}
!116 = metadata !{i32 786688, metadata !109, metadata !"Tmp", metadata !6, i32 168, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 173, i32 3, metadata !113, null}
!118 = metadata !{i32 786688, metadata !109, metadata !"Tm", metadata !6, i32 168, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 173, i32 36, metadata !113, null}
!120 = metadata !{i32 173, i32 77, metadata !113, null}
!121 = metadata !{i32 174, i32 3, metadata !113, null}
!122 = metadata !{i32 174, i32 36, metadata !113, null}
!123 = metadata !{i32 174, i32 77, metadata !113, null}
!124 = metadata !{i32 175, i32 3, metadata !113, null}
!125 = metadata !{i32 175, i32 36, metadata !113, null}
!126 = metadata !{i32 175, i32 77, metadata !113, null}
!127 = metadata !{i32 176, i32 3, metadata !113, null}
!128 = metadata !{i32 176, i32 26, metadata !113, null}
!129 = metadata !{i32 176, i32 67, metadata !113, null}
!130 = metadata !{i32 169, i32 14, metadata !111, null}
!131 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !6, i32 167, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 178, i32 1, metadata !109, null}
!133 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777249, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 33, i32 24, metadata !12, null}
!135 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554465, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 33, i32 43, metadata !12, null}
!137 = metadata !{i32 34, i32 2, metadata !138, null}
!138 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 34, i32 39, metadata !138, null}
!140 = metadata !{i32 34, i32 72, metadata !138, null}
!141 = metadata !{i32 786688, metadata !138, metadata !"temp", metadata !6, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 36, i32 7, metadata !138, null}
!143 = metadata !{i32 41, i32 6, metadata !144, null}
!144 = metadata !{i32 786443, metadata !138, i32 41, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 63, i32 8, metadata !146, null}
!146 = metadata !{i32 786443, metadata !147, i32 62, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 57, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !138, i32 51, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 64, i32 8, metadata !146, null}
!150 = metadata !{i32 65, i32 8, metadata !146, null}
!151 = metadata !{i32 66, i32 8, metadata !146, null}
!152 = metadata !{i32 50, i32 2, metadata !138, null}
!153 = metadata !{i32 43, i32 3, metadata !154, null}
!154 = metadata !{i32 786443, metadata !144, i32 42, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 44, i32 3, metadata !154, null}
!156 = metadata !{i32 45, i32 3, metadata !154, null}
!157 = metadata !{i32 46, i32 3, metadata !154, null}
!158 = metadata !{i32 41, i32 15, metadata !144, null}
!159 = metadata !{i32 54, i32 7, metadata !160, null}
!160 = metadata !{i32 786443, metadata !161, i32 53, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !148, i32 52, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 52, i32 10, metadata !161, null}
!163 = metadata !{i32 52, i32 18, metadata !161, null}
!164 = metadata !{i32 786688, metadata !138, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 56, i32 6, metadata !148, null}
!166 = metadata !{i32 786688, metadata !138, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 75, i32 16, metadata !168, null}
!168 = metadata !{i32 786443, metadata !147, i32 74, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 76, i32 16, metadata !168, null}
!170 = metadata !{i32 77, i32 16, metadata !168, null}
!171 = metadata !{i32 78, i32 16, metadata !168, null}
!172 = metadata !{i32 81, i32 7, metadata !147, null}
!173 = metadata !{i32 82, i32 6, metadata !147, null}
!174 = metadata !{i32 93, i32 6, metadata !148, null}
!175 = metadata !{i32 94, i32 6, metadata !148, null}
!176 = metadata !{i32 95, i32 6, metadata !148, null}
!177 = metadata !{i32 96, i32 6, metadata !148, null}
!178 = metadata !{i32 97, i32 6, metadata !148, null}
!179 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 98, i32 2, metadata !148, null}
!181 = metadata !{i32 99, i32 1, metadata !138, null}
!182 = metadata !{i32 786689, metadata !31, metadata !"Key", metadata !6, i32 16777397, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 181, i32 18, metadata !31, null}
!184 = metadata !{i32 786689, metadata !31, metadata !"state", metadata !6, i32 33554613, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 181, i32 31, metadata !31, null}
!186 = metadata !{i32 182, i32 2, metadata !187, null}
!187 = metadata !{i32 786443, metadata !31, i32 182, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 182, i32 34, metadata !187, null}
!189 = metadata !{i32 786688, metadata !187, metadata !"RoundKey", metadata !6, i32 203, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !16, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!193 = metadata !{i32 203, i32 7, metadata !187, null}
!194 = metadata !{i32 207, i32 2, metadata !187, null}
!195 = metadata !{i32 212, i32 2, metadata !187, null}
!196 = metadata !{i32 217, i32 6, metadata !197, null}
!197 = metadata !{i32 786443, metadata !187, i32 217, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 219, i32 3, metadata !199, null}
!199 = metadata !{i32 786443, metadata !197, i32 218, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 220, i32 3, metadata !199, null}
!201 = metadata !{i32 221, i32 3, metadata !199, null}
!202 = metadata !{i32 222, i32 3, metadata !199, null}
!203 = metadata !{i32 217, i32 23, metadata !197, null}
!204 = metadata !{i32 786688, metadata !187, metadata !"round", metadata !6, i32 202, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 227, i32 2, metadata !187, null}
!206 = metadata !{i32 228, i32 2, metadata !187, null}
!207 = metadata !{i32 229, i32 2, metadata !187, null}
!208 = metadata !{i32 235, i32 1, metadata !187, null}
!209 = metadata !{i32 786689, metadata !19, metadata !"round", metadata !6, i32 16777319, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 103, i32 22, metadata !19, null}
!211 = metadata !{i32 786689, metadata !19, metadata !"state", metadata !6, i32 33554535, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 103, i32 33, metadata !19, null}
!213 = metadata !{i32 786689, metadata !19, metadata !"RoundKey", metadata !6, i32 50331751, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 103, i32 50, metadata !19, null}
!215 = metadata !{i32 104, i32 2, metadata !216, null}
!216 = metadata !{i32 786443, metadata !19, i32 104, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 104, i32 39, metadata !216, null}
!218 = metadata !{i32 110, i32 4, metadata !219, null}
!219 = metadata !{i32 786443, metadata !220, i32 109, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 786443, metadata !221, i32 108, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 786443, metadata !222, i32 107, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786443, metadata !216, i32 106, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 106, i32 6, metadata !222, null}
!224 = metadata !{i32 108, i32 7, metadata !220, null}
!225 = metadata !{i32 108, i32 15, metadata !220, null}
!226 = metadata !{i32 786688, metadata !216, metadata !"j", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 106, i32 14, metadata !222, null}
!228 = metadata !{i32 786688, metadata !216, metadata !"i", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 113, i32 1, metadata !216, null}
