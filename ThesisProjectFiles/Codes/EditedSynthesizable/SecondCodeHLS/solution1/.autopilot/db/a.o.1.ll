; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisRaw/deutero/solution1/.autopilot/db/a.g.1.bc'
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
  call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !65), !dbg !66 ; [debug line = 7:22] [debug variable = num]
  br label %1

; <label>:1                                       ; preds = %0
  %sbox.addr = getelementptr inbounds [256 x i32]* @sbox, i32 0, i32 %num, !dbg !67 ; [#uses=1 type=i32*] [debug line = 27:2]
  %sbox.load = load i32* %sbox.addr, align 4, !dbg !67 ; [#uses=2 type=i32] [debug line = 27:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sbox.load) nounwind
  ret i32 %sbox.load, !dbg !67                    ; [debug line = 27:2]
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
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !69), !dbg !70 ; [debug line = 118:20] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !71 ; [debug line = 119:2]
  br label %1, !dbg !73                           ; [debug line = 121:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !73        ; [#uses=1 type=i1] [debug line = 121:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !73 ; [debug line = 121:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !75                  ; [debug line = 123:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !75         ; [#uses=1 type=i1] [debug line = 123:7]
  br i1 %exitcond, label %3, label %2, !dbg !75   ; [debug line = 123:7]

; <label>:2                                       ; preds = %.preheader
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 %i, i32 %j, !dbg !78 ; [#uses=2 type=i32*] [debug line = 125:18]
  %state.load = load i32* %state.addr, align 4, !dbg !78 ; [#uses=2 type=i32] [debug line = 125:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp = call fastcc i32 @getSBoxValue(i32 %state.load), !dbg !78 ; [#uses=1 type=i32] [debug line = 125:18]
  store i32 %tmp, i32* %state.addr, align 4, !dbg !78 ; [debug line = 125:18]
  %j.1 = add nsw i32 %j, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 123:15]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !81), !dbg !80 ; [debug line = 123:15] [debug variable = j]
  br label %.preheader, !dbg !80                  ; [debug line = 123:15]

; <label>:3                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 121:14]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !83), !dbg !82 ; [debug line = 121:14] [debug variable = i]
  br label %1, !dbg !82                           ; [debug line = 121:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !84                              ; [debug line = 129:1]
}

; [#uses=2]
define internal fastcc void @ShiftRows([4 x i32]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !85), !dbg !86 ; [debug line = 134:21] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !87 ; [debug line = 135:2]
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 1, i32 0, !dbg !89 ; [#uses=2 type=i32*] [debug line = 139:2]
  %state.load = load i32* %state.addr, align 4, !dbg !89 ; [#uses=2 type=i32] [debug line = 139:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %temp = trunc i32 %state.load to i8, !dbg !89   ; [#uses=1 type=i8] [debug line = 139:2]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !90), !dbg !89 ; [debug line = 139:2] [debug variable = temp]
  %state.addr.1 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 1, !dbg !91 ; [#uses=2 type=i32*] [debug line = 140:2]
  %state.load.1 = load i32* %state.addr.1, align 4, !dbg !91 ; [#uses=2 type=i32] [debug line = 140:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.1) nounwind
  store i32 %state.load.1, i32* %state.addr, align 4, !dbg !91 ; [debug line = 140:2]
  %state.addr.2 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 2, !dbg !92 ; [#uses=2 type=i32*] [debug line = 141:2]
  %state.load.2 = load i32* %state.addr.2, align 4, !dbg !92 ; [#uses=2 type=i32] [debug line = 141:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.2) nounwind
  store i32 %state.load.2, i32* %state.addr.1, align 4, !dbg !92 ; [debug line = 141:2]
  %state.addr.3 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 3, !dbg !93 ; [#uses=2 type=i32*] [debug line = 142:2]
  %state.load.3 = load i32* %state.addr.3, align 4, !dbg !93 ; [#uses=2 type=i32] [debug line = 142:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.3) nounwind
  store i32 %state.load.3, i32* %state.addr.2, align 4, !dbg !93 ; [debug line = 142:2]
  %tmp = zext i8 %temp to i32, !dbg !94           ; [#uses=1 type=i32] [debug line = 143:2]
  store i32 %tmp, i32* %state.addr.3, align 4, !dbg !94 ; [debug line = 143:2]
  %state.addr.4 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 0, !dbg !95 ; [#uses=2 type=i32*] [debug line = 146:2]
  %state.load.4 = load i32* %state.addr.4, align 4, !dbg !95 ; [#uses=2 type=i32] [debug line = 146:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.4) nounwind
  %temp.1 = trunc i32 %state.load.4 to i8, !dbg !95 ; [#uses=1 type=i8] [debug line = 146:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !90), !dbg !95 ; [debug line = 146:2] [debug variable = temp]
  %state.addr.5 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 2, !dbg !96 ; [#uses=2 type=i32*] [debug line = 147:2]
  %state.load.5 = load i32* %state.addr.5, align 4, !dbg !96 ; [#uses=2 type=i32] [debug line = 147:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.5) nounwind
  store i32 %state.load.5, i32* %state.addr.4, align 4, !dbg !96 ; [debug line = 147:2]
  %tmp.2 = zext i8 %temp.1 to i32, !dbg !97       ; [#uses=1 type=i32] [debug line = 148:2]
  store i32 %tmp.2, i32* %state.addr.5, align 4, !dbg !97 ; [debug line = 148:2]
  %state.addr.6 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 1, !dbg !98 ; [#uses=2 type=i32*] [debug line = 150:2]
  %state.load.6 = load i32* %state.addr.6, align 4, !dbg !98 ; [#uses=2 type=i32] [debug line = 150:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.6) nounwind
  %temp.2 = trunc i32 %state.load.6 to i8, !dbg !98 ; [#uses=1 type=i8] [debug line = 150:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !90), !dbg !98 ; [debug line = 150:2] [debug variable = temp]
  %state.addr.7 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 3, !dbg !99 ; [#uses=2 type=i32*] [debug line = 151:2]
  %state.load.7 = load i32* %state.addr.7, align 4, !dbg !99 ; [#uses=2 type=i32] [debug line = 151:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.7) nounwind
  store i32 %state.load.7, i32* %state.addr.6, align 4, !dbg !99 ; [debug line = 151:2]
  %tmp.3 = zext i8 %temp.2 to i32, !dbg !100      ; [#uses=1 type=i32] [debug line = 152:2]
  store i32 %tmp.3, i32* %state.addr.7, align 4, !dbg !100 ; [debug line = 152:2]
  %state.addr.8 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 0, !dbg !101 ; [#uses=2 type=i32*] [debug line = 155:2]
  %state.load.8 = load i32* %state.addr.8, align 4, !dbg !101 ; [#uses=2 type=i32] [debug line = 155:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.8) nounwind
  %temp.4 = trunc i32 %state.load.8 to i8, !dbg !101 ; [#uses=1 type=i8] [debug line = 155:2]
  call void @llvm.dbg.value(metadata !{i8 %temp.4}, i64 0, metadata !90), !dbg !101 ; [debug line = 155:2] [debug variable = temp]
  %state.addr.9 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 3, !dbg !102 ; [#uses=2 type=i32*] [debug line = 156:2]
  %state.load.9 = load i32* %state.addr.9, align 4, !dbg !102 ; [#uses=2 type=i32] [debug line = 156:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.9) nounwind
  store i32 %state.load.9, i32* %state.addr.8, align 4, !dbg !102 ; [debug line = 156:2]
  %state.addr.10 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 2, !dbg !103 ; [#uses=2 type=i32*] [debug line = 157:2]
  %state.load.10 = load i32* %state.addr.10, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 157:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.10) nounwind
  store i32 %state.load.10, i32* %state.addr.9, align 4, !dbg !103 ; [debug line = 157:2]
  %state.addr.11 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 1, !dbg !104 ; [#uses=2 type=i32*] [debug line = 158:2]
  %state.load.11 = load i32* %state.addr.11, align 4, !dbg !104 ; [#uses=2 type=i32] [debug line = 158:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.11) nounwind
  store i32 %state.load.11, i32* %state.addr.10, align 4, !dbg !104 ; [debug line = 158:2]
  %tmp.4 = zext i8 %temp.4 to i32, !dbg !105      ; [#uses=1 type=i32] [debug line = 159:2]
  store i32 %tmp.4, i32* %state.addr.11, align 4, !dbg !105 ; [debug line = 159:2]
  ret void, !dbg !106                             ; [debug line = 160:1]
}

; [#uses=1]
define internal fastcc void @MixColumns([4 x i32]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !107), !dbg !108 ; [debug line = 166:22] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !109 ; [debug line = 167:2]
  br label %1, !dbg !111                          ; [debug line = 170:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=6 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !111        ; [#uses=1 type=i1] [debug line = 170:6]
  br i1 %exitcond, label %3, label %2, !dbg !111  ; [debug line = 170:6]

; <label>:2                                       ; preds = %1
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 0, i32 %i, !dbg !113 ; [#uses=2 type=i32*] [debug line = 172:3]
  %state.load = load i32* %state.addr, align 4, !dbg !113 ; [#uses=7 type=i32] [debug line = 172:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %t = trunc i32 %state.load to i8, !dbg !113     ; [#uses=1 type=i8] [debug line = 172:3]
  call void @llvm.dbg.value(metadata !{i8 %t}, i64 0, metadata !115), !dbg !113 ; [debug line = 172:3] [debug variable = t]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %state.addr.12 = getelementptr inbounds [4 x i32]* %state, i32 1, i32 %i, !dbg !116 ; [#uses=2 type=i32*] [debug line = 173:3]
  %state.load.12 = load i32* %state.addr.12, align 4, !dbg !116 ; [#uses=7 type=i32] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %state.addr.13 = getelementptr inbounds [4 x i32]* %state, i32 2, i32 %i, !dbg !116 ; [#uses=2 type=i32*] [debug line = 173:3]
  %state.load.13 = load i32* %state.addr.13, align 4, !dbg !116 ; [#uses=8 type=i32] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %state.addr.14 = getelementptr inbounds [4 x i32]* %state, i32 3, i32 %i, !dbg !116 ; [#uses=2 type=i32*] [debug line = 173:3]
  %state.load.14 = load i32* %state.addr.14, align 4, !dbg !116 ; [#uses=8 type=i32] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp = xor i32 %state.load.12, %state.load, !dbg !116 ; [#uses=2 type=i32] [debug line = 173:3]
  %tmp.5 = xor i32 %state.load.13, %tmp, !dbg !116 ; [#uses=1 type=i32] [debug line = 173:3]
  %tmp.6 = xor i32 %tmp.5, %state.load.14, !dbg !116 ; [#uses=1 type=i32] [debug line = 173:3]
  %Tmp = trunc i32 %tmp.6 to i8, !dbg !116        ; [#uses=4 type=i8] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{i8 %Tmp}, i64 0, metadata !117), !dbg !116 ; [debug line = 173:3] [debug variable = Tmp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %Tm = trunc i32 %tmp to i8, !dbg !118           ; [#uses=2 type=i8] [debug line = 174:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm}, i64 0, metadata !119), !dbg !118 ; [debug line = 174:3] [debug variable = Tm]
  %tmp.7 = shl i8 %Tm, 1, !dbg !120               ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.8 = ashr i8 %Tm, 7, !dbg !120              ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.9 = and i8 %tmp.8, 27, !dbg !120           ; [#uses=1 type=i8] [debug line = 174:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.1}, i64 0, metadata !119), !dbg !120 ; [debug line = 174:36] [debug variable = Tm]
  %Tm.1 = xor i8 %tmp.9, %tmp.7, !dbg !120        ; [#uses=1 type=i8] [debug line = 174:36]
  %tmp.10 = xor i8 %Tm.1, %Tmp, !dbg !121         ; [#uses=1 type=i8] [debug line = 174:77]
  %tmp.11 = zext i8 %tmp.10 to i32, !dbg !121     ; [#uses=1 type=i32] [debug line = 174:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp.12 = xor i32 %tmp.11, %state.load, !dbg !121 ; [#uses=1 type=i32] [debug line = 174:77]
  store i32 %tmp.12, i32* %state.addr, align 4, !dbg !121 ; [debug line = 174:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %tmp.13 = xor i32 %state.load.13, %state.load.12, !dbg !122 ; [#uses=1 type=i32] [debug line = 175:3]
  %Tm.2 = trunc i32 %tmp.13 to i8, !dbg !122      ; [#uses=2 type=i8] [debug line = 175:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.2}, i64 0, metadata !119), !dbg !122 ; [debug line = 175:3] [debug variable = Tm]
  %tmp.14 = shl i8 %Tm.2, 1, !dbg !123            ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.15 = ashr i8 %Tm.2, 7, !dbg !123           ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.16 = and i8 %tmp.15, 27, !dbg !123         ; [#uses=1 type=i8] [debug line = 175:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.3}, i64 0, metadata !119), !dbg !123 ; [debug line = 175:36] [debug variable = Tm]
  %Tm.3 = xor i8 %tmp.16, %tmp.14, !dbg !123      ; [#uses=1 type=i8] [debug line = 175:36]
  %tmp.17 = xor i8 %Tm.3, %Tmp, !dbg !124         ; [#uses=1 type=i8] [debug line = 175:77]
  %tmp.18 = zext i8 %tmp.17 to i32, !dbg !124     ; [#uses=1 type=i32] [debug line = 175:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.12) nounwind
  %tmp.19 = xor i32 %tmp.18, %state.load.12, !dbg !124 ; [#uses=1 type=i32] [debug line = 175:77]
  store i32 %tmp.19, i32* %state.addr.12, align 4, !dbg !124 ; [debug line = 175:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.20 = xor i32 %state.load.14, %state.load.13, !dbg !125 ; [#uses=1 type=i32] [debug line = 176:3]
  %Tm.4 = trunc i32 %tmp.20 to i8, !dbg !125      ; [#uses=2 type=i8] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.4}, i64 0, metadata !119), !dbg !125 ; [debug line = 176:3] [debug variable = Tm]
  %tmp.21 = shl i8 %Tm.4, 1, !dbg !126            ; [#uses=1 type=i8] [debug line = 176:36]
  %tmp.22 = ashr i8 %Tm.4, 7, !dbg !126           ; [#uses=1 type=i8] [debug line = 176:36]
  %tmp.23 = and i8 %tmp.22, 27, !dbg !126         ; [#uses=1 type=i8] [debug line = 176:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.5}, i64 0, metadata !119), !dbg !126 ; [debug line = 176:36] [debug variable = Tm]
  %Tm.5 = xor i8 %tmp.21, %Tmp, !dbg !126         ; [#uses=1 type=i8] [debug line = 176:36]
  %tmp.24 = xor i8 %Tm.5, %tmp.23, !dbg !127      ; [#uses=1 type=i8] [debug line = 176:77]
  %tmp.25 = zext i8 %tmp.24 to i32, !dbg !127     ; [#uses=1 type=i32] [debug line = 176:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.13) nounwind
  %tmp.26 = xor i32 %tmp.25, %state.load.13, !dbg !127 ; [#uses=1 type=i32] [debug line = 176:77]
  store i32 %tmp.26, i32* %state.addr.13, align 4, !dbg !127 ; [debug line = 176:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.27 = trunc i32 %state.load.14 to i8, !dbg !128 ; [#uses=1 type=i8] [debug line = 177:3]
  %Tm.6 = xor i8 %tmp.27, %t, !dbg !128           ; [#uses=2 type=i8] [debug line = 177:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.6}, i64 0, metadata !119), !dbg !128 ; [debug line = 177:3] [debug variable = Tm]
  %tmp.28 = shl i8 %Tm.6, 1, !dbg !129            ; [#uses=1 type=i8] [debug line = 177:26]
  %tmp.29 = ashr i8 %Tm.6, 7, !dbg !129           ; [#uses=1 type=i8] [debug line = 177:26]
  %tmp.30 = and i8 %tmp.29, 27, !dbg !129         ; [#uses=1 type=i8] [debug line = 177:26]
  call void @llvm.dbg.value(metadata !{i8 %Tm.7}, i64 0, metadata !119), !dbg !129 ; [debug line = 177:26] [debug variable = Tm]
  %Tm.7 = xor i8 %tmp.28, %Tmp, !dbg !129         ; [#uses=1 type=i8] [debug line = 177:26]
  %tmp.31 = xor i8 %Tm.7, %tmp.30, !dbg !130      ; [#uses=1 type=i8] [debug line = 177:67]
  %tmp.32 = zext i8 %tmp.31 to i32, !dbg !130     ; [#uses=1 type=i32] [debug line = 177:67]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load.14) nounwind
  %tmp.33 = xor i32 %tmp.32, %state.load.14, !dbg !130 ; [#uses=1 type=i32] [debug line = 177:67]
  store i32 %tmp.33, i32* %state.addr.14, align 4, !dbg !130 ; [debug line = 177:67]
  %i.2 = add nsw i32 %i, 1, !dbg !131             ; [#uses=1 type=i32] [debug line = 170:14]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !132), !dbg !131 ; [debug line = 170:14] [debug variable = i]
  br label %1, !dbg !131                          ; [debug line = 170:14]

; <label>:3                                       ; preds = %1
  ret void, !dbg !133                             ; [debug line = 179:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion(i8* %RoundKey, i32* %Key) nounwind {
  %temp = alloca [4 x i8], align 1                ; [#uses=5 type=[4 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %RoundKey}, i64 0, metadata !134), !dbg !135 ; [debug line = 36:33] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{i32* %Key}, i64 0, metadata !136), !dbg !137 ; [debug line = 36:52] [debug variable = Key]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %RoundKey, i32 240), !dbg !138 ; [debug line = 37:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 255), !dbg !140 ; [debug line = 37:39]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %Key, i32 32), !dbg !141 ; [debug line = 37:72]
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %temp}, metadata !142), !dbg !144 ; [debug line = 39:16] [debug variable = temp]
  br label %1, !dbg !145                          ; [debug line = 42:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %tmp.42, %2 ]         ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 4, !dbg !145       ; [#uses=1 type=i1] [debug line = 42:6]
  br i1 %exitcond2, label %.preheader3.preheader, label %2, !dbg !145 ; [debug line = 42:6]

.preheader3.preheader:                            ; preds = %1
  %temp.addr = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !147 ; [#uses=3 type=i8*] [debug line = 64:8]
  %temp.addr.1 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !151 ; [#uses=3 type=i8*] [debug line = 65:8]
  %temp.addr.2 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !152 ; [#uses=3 type=i8*] [debug line = 66:8]
  %temp.addr.3 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !153 ; [#uses=3 type=i8*] [debug line = 67:8]
  br label %.preheader3, !dbg !154                ; [debug line = 51:2]

; <label>:2                                       ; preds = %1
  %tmp = shl nsw i32 %i, 2, !dbg !155             ; [#uses=5 type=i32] [debug line = 44:3]
  %Key.addr = getelementptr inbounds i32* %Key, i32 %tmp, !dbg !155 ; [#uses=1 type=i32*] [debug line = 44:3]
  %Key.load = load i32* %Key.addr, align 4, !dbg !155 ; [#uses=2 type=i32] [debug line = 44:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load) nounwind
  %tmp.35 = trunc i32 %Key.load to i8, !dbg !155  ; [#uses=1 type=i8] [debug line = 44:3]
  %RoundKey.addr = getelementptr inbounds i8* %RoundKey, i32 %tmp, !dbg !155 ; [#uses=1 type=i8*] [debug line = 44:3]
  store i8 %tmp.35, i8* %RoundKey.addr, align 1, !dbg !155 ; [debug line = 44:3]
  %tmp.36 = or i32 %tmp, 1, !dbg !157             ; [#uses=2 type=i32] [debug line = 45:3]
  %Key.addr.1 = getelementptr inbounds i32* %Key, i32 %tmp.36, !dbg !157 ; [#uses=1 type=i32*] [debug line = 45:3]
  %Key.load.1 = load i32* %Key.addr.1, align 4, !dbg !157 ; [#uses=2 type=i32] [debug line = 45:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.1) nounwind
  %tmp.37 = trunc i32 %Key.load.1 to i8, !dbg !157 ; [#uses=1 type=i8] [debug line = 45:3]
  %RoundKey.addr.1 = getelementptr inbounds i8* %RoundKey, i32 %tmp.36, !dbg !157 ; [#uses=1 type=i8*] [debug line = 45:3]
  store i8 %tmp.37, i8* %RoundKey.addr.1, align 1, !dbg !157 ; [debug line = 45:3]
  %tmp.38 = or i32 %tmp, 2, !dbg !158             ; [#uses=2 type=i32] [debug line = 46:3]
  %Key.addr.2 = getelementptr inbounds i32* %Key, i32 %tmp.38, !dbg !158 ; [#uses=1 type=i32*] [debug line = 46:3]
  %Key.load.2 = load i32* %Key.addr.2, align 4, !dbg !158 ; [#uses=2 type=i32] [debug line = 46:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.2) nounwind
  %tmp.39 = trunc i32 %Key.load.2 to i8, !dbg !158 ; [#uses=1 type=i8] [debug line = 46:3]
  %RoundKey.addr.2 = getelementptr inbounds i8* %RoundKey, i32 %tmp.38, !dbg !158 ; [#uses=1 type=i8*] [debug line = 46:3]
  store i8 %tmp.39, i8* %RoundKey.addr.2, align 1, !dbg !158 ; [debug line = 46:3]
  %tmp.40 = or i32 %tmp, 3, !dbg !159             ; [#uses=2 type=i32] [debug line = 47:3]
  %Key.addr.3 = getelementptr inbounds i32* %Key, i32 %tmp.40, !dbg !159 ; [#uses=1 type=i32*] [debug line = 47:3]
  %Key.load.3 = load i32* %Key.addr.3, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 47:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Key.load.3) nounwind
  %tmp.41 = trunc i32 %Key.load.3 to i8, !dbg !159 ; [#uses=1 type=i8] [debug line = 47:3]
  %RoundKey.addr.3 = getelementptr inbounds i8* %RoundKey, i32 %tmp.40, !dbg !159 ; [#uses=1 type=i8*] [debug line = 47:3]
  store i8 %tmp.41, i8* %RoundKey.addr.3, align 1, !dbg !159 ; [debug line = 47:3]
  %tmp.42 = add nsw i32 %i, 1, !dbg !160          ; [#uses=1 type=i32] [debug line = 42:14]
  br label %1, !dbg !160                          ; [debug line = 42:14]

.preheader3:                                      ; preds = %._crit_edge, %.preheader3.preheader
  %i.1 = phi i32 [ %i.3, %._crit_edge ], [ 4, %.preheader3.preheader ] ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i32 %i.1, 44, !dbg !154    ; [#uses=1 type=i1] [debug line = 51:2]
  br i1 %exitcond1, label %7, label %.preheader.preheader, !dbg !154 ; [debug line = 51:2]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp.43 = shl i32 %i.1, 2, !dbg !161            ; [#uses=9 type=i32] [debug line = 55:7]
  br label %.preheader, !dbg !164                 ; [debug line = 53:10]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %j = phi i32 [ %j.2, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !164        ; [#uses=1 type=i1] [debug line = 53:10]
  br i1 %exitcond, label %4, label %3, !dbg !164  ; [debug line = 53:10]

; <label>:3                                       ; preds = %.preheader
  %tmp.46 = add i32 %tmp.43, -4, !dbg !161        ; [#uses=1 type=i32] [debug line = 55:7]
  %tmp.47 = add i32 %tmp.46, %j, !dbg !161        ; [#uses=1 type=i32] [debug line = 55:7]
  %RoundKey.addr.4 = getelementptr inbounds i8* %RoundKey, i32 %tmp.47, !dbg !161 ; [#uses=1 type=i8*] [debug line = 55:7]
  %RoundKey.load = load i8* %RoundKey.addr.4, align 1, !dbg !161 ; [#uses=2 type=i8] [debug line = 55:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load) nounwind
  %temp.addr.4 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 %j, !dbg !161 ; [#uses=1 type=i8*] [debug line = 55:7]
  store i8 %RoundKey.load, i8* %temp.addr.4, align 1, !dbg !161 ; [debug line = 55:7]
  %j.2 = add nsw i32 %j, 1, !dbg !165             ; [#uses=1 type=i32] [debug line = 53:18]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !166), !dbg !165 ; [debug line = 53:18] [debug variable = j]
  br label %.preheader, !dbg !165                 ; [debug line = 53:18]

; <label>:4                                       ; preds = %.preheader
  %tmp.44 = and i32 %i.1, 3, !dbg !167            ; [#uses=1 type=i32] [debug line = 57:6]
  %tmp.45 = icmp eq i32 %tmp.44, 0, !dbg !167     ; [#uses=1 type=i1] [debug line = 57:6]
  br i1 %tmp.45, label %5, label %._crit_edge, !dbg !167 ; [debug line = 57:6]

; <label>:5                                       ; preds = %4
  %k = load i8* %temp.addr, align 1, !dbg !147    ; [#uses=3 type=i8] [debug line = 64:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k) nounwind
  call void @llvm.dbg.value(metadata !{i8 %k}, i64 0, metadata !168), !dbg !147 ; [debug line = 64:8] [debug variable = k]
  %temp.load = load i8* %temp.addr.1, align 1, !dbg !151 ; [#uses=3 type=i8] [debug line = 65:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load) nounwind
  %temp.load.1 = load i8* %temp.addr.2, align 1, !dbg !152 ; [#uses=3 type=i8] [debug line = 66:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.1) nounwind
  %temp.load.2 = load i8* %temp.addr.3, align 1, !dbg !153 ; [#uses=3 type=i8] [debug line = 67:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load) nounwind
  %tmp.49 = zext i8 %temp.load to i32, !dbg !169  ; [#uses=1 type=i32] [debug line = 76:16]
  %tmp.50 = call fastcc i32 @getSBoxValue(i32 %tmp.49), !dbg !169 ; [#uses=1 type=i32] [debug line = 76:16]
  %tmp.51 = trunc i32 %tmp.50 to i8, !dbg !169    ; [#uses=2 type=i8] [debug line = 76:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.1) nounwind
  %tmp.52 = zext i8 %temp.load.1 to i32, !dbg !171 ; [#uses=1 type=i32] [debug line = 77:16]
  %tmp.53 = call fastcc i32 @getSBoxValue(i32 %tmp.52), !dbg !171 ; [#uses=1 type=i32] [debug line = 77:16]
  %tmp.54 = trunc i32 %tmp.53 to i8, !dbg !171    ; [#uses=1 type=i8] [debug line = 77:16]
  store i8 %tmp.54, i8* %temp.addr.1, align 1, !dbg !171 ; [debug line = 77:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.2) nounwind
  %tmp.55 = zext i8 %temp.load.2 to i32, !dbg !172 ; [#uses=1 type=i32] [debug line = 78:16]
  %tmp.56 = call fastcc i32 @getSBoxValue(i32 %tmp.55), !dbg !172 ; [#uses=1 type=i32] [debug line = 78:16]
  %tmp.57 = trunc i32 %tmp.56 to i8, !dbg !172    ; [#uses=1 type=i8] [debug line = 78:16]
  store i8 %tmp.57, i8* %temp.addr.2, align 1, !dbg !172 ; [debug line = 78:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k) nounwind
  %tmp.58 = zext i8 %k to i32, !dbg !173          ; [#uses=1 type=i32] [debug line = 79:16]
  %tmp.59 = call fastcc i32 @getSBoxValue(i32 %tmp.58), !dbg !173 ; [#uses=1 type=i32] [debug line = 79:16]
  %tmp.60 = trunc i32 %tmp.59 to i8, !dbg !173    ; [#uses=1 type=i8] [debug line = 79:16]
  store i8 %tmp.60, i8* %temp.addr.3, align 1, !dbg !173 ; [debug line = 79:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.51) nounwind
  %tmp.61 = sdiv i32 %i.1, 4, !dbg !174           ; [#uses=1 type=i32] [debug line = 82:7]
  %.addr = getelementptr inbounds i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 %tmp.61, !dbg !174 ; [#uses=1 type=i32*] [debug line = 82:7]
  %6 = load i32* %.addr, align 4, !dbg !174       ; [#uses=2 type=i32] [debug line = 82:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %6) nounwind
  %tmp.62 = trunc i32 %6 to i8, !dbg !174         ; [#uses=1 type=i8] [debug line = 82:7]
  %tmp.63 = xor i8 %tmp.62, %tmp.51, !dbg !174    ; [#uses=1 type=i8] [debug line = 82:7]
  store i8 %tmp.63, i8* %temp.addr, align 1, !dbg !174 ; [debug line = 82:7]
  br label %._crit_edge, !dbg !175                ; [debug line = 83:6]

._crit_edge:                                      ; preds = %5, %4
  %tmp.64 = add i32 %tmp.43, -16, !dbg !176       ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.5 = getelementptr inbounds i8* %RoundKey, i32 %tmp.64, !dbg !176 ; [#uses=1 type=i8*] [debug line = 94:6]
  %RoundKey.load.1 = load i8* %RoundKey.addr.5, align 1, !dbg !176 ; [#uses=2 type=i8] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.1) nounwind
  %temp.load.3 = load i8* %temp.addr, align 1, !dbg !176 ; [#uses=2 type=i8] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.3) nounwind
  %tmp.65 = xor i8 %temp.load.3, %RoundKey.load.1, !dbg !176 ; [#uses=1 type=i8] [debug line = 94:6]
  %RoundKey.addr.6 = getelementptr inbounds i8* %RoundKey, i32 %tmp.43, !dbg !176 ; [#uses=1 type=i8*] [debug line = 94:6]
  store i8 %tmp.65, i8* %RoundKey.addr.6, align 1, !dbg !176 ; [debug line = 94:6]
  %tmp.66 = add i32 %tmp.43, -15, !dbg !177       ; [#uses=1 type=i32] [debug line = 95:6]
  %RoundKey.addr.7 = getelementptr inbounds i8* %RoundKey, i32 %tmp.66, !dbg !177 ; [#uses=1 type=i8*] [debug line = 95:6]
  %RoundKey.load.2 = load i8* %RoundKey.addr.7, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 95:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.2) nounwind
  %temp.load.4 = load i8* %temp.addr.1, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 95:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.4) nounwind
  %tmp.67 = xor i8 %temp.load.4, %RoundKey.load.2, !dbg !177 ; [#uses=1 type=i8] [debug line = 95:6]
  %tmp.68 = or i32 %tmp.43, 1, !dbg !177          ; [#uses=1 type=i32] [debug line = 95:6]
  %RoundKey.addr.8 = getelementptr inbounds i8* %RoundKey, i32 %tmp.68, !dbg !177 ; [#uses=1 type=i8*] [debug line = 95:6]
  store i8 %tmp.67, i8* %RoundKey.addr.8, align 1, !dbg !177 ; [debug line = 95:6]
  %tmp.69 = add i32 %tmp.43, -14, !dbg !178       ; [#uses=1 type=i32] [debug line = 96:6]
  %RoundKey.addr.9 = getelementptr inbounds i8* %RoundKey, i32 %tmp.69, !dbg !178 ; [#uses=1 type=i8*] [debug line = 96:6]
  %RoundKey.load.3 = load i8* %RoundKey.addr.9, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 96:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.3) nounwind
  %temp.load.5 = load i8* %temp.addr.2, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 96:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.5) nounwind
  %tmp.70 = xor i8 %temp.load.5, %RoundKey.load.3, !dbg !178 ; [#uses=1 type=i8] [debug line = 96:6]
  %tmp.71 = or i32 %tmp.43, 2, !dbg !178          ; [#uses=1 type=i32] [debug line = 96:6]
  %RoundKey.addr.10 = getelementptr inbounds i8* %RoundKey, i32 %tmp.71, !dbg !178 ; [#uses=1 type=i8*] [debug line = 96:6]
  store i8 %tmp.70, i8* %RoundKey.addr.10, align 1, !dbg !178 ; [debug line = 96:6]
  %tmp.72 = add i32 %tmp.43, -13, !dbg !179       ; [#uses=1 type=i32] [debug line = 97:6]
  %RoundKey.addr.11 = getelementptr inbounds i8* %RoundKey, i32 %tmp.72, !dbg !179 ; [#uses=1 type=i8*] [debug line = 97:6]
  %RoundKey.load.4 = load i8* %RoundKey.addr.11, align 1, !dbg !179 ; [#uses=2 type=i8] [debug line = 97:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.4) nounwind
  %temp.load.6 = load i8* %temp.addr.3, align 1, !dbg !179 ; [#uses=2 type=i8] [debug line = 97:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.6) nounwind
  %tmp.73 = xor i8 %temp.load.6, %RoundKey.load.4, !dbg !179 ; [#uses=1 type=i8] [debug line = 97:6]
  %tmp.74 = or i32 %tmp.43, 3, !dbg !179          ; [#uses=1 type=i32] [debug line = 97:6]
  %RoundKey.addr.12 = getelementptr inbounds i8* %RoundKey, i32 %tmp.74, !dbg !179 ; [#uses=1 type=i8*] [debug line = 97:6]
  store i8 %tmp.73, i8* %RoundKey.addr.12, align 1, !dbg !179 ; [debug line = 97:6]
  %i.3 = add nsw i32 %i.1, 1, !dbg !180           ; [#uses=1 type=i32] [debug line = 98:6]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !181), !dbg !180 ; [debug line = 98:6] [debug variable = i]
  br label %.preheader3, !dbg !182                ; [debug line = 99:2]

; <label>:7                                       ; preds = %.preheader3
  ret void, !dbg !183                             ; [debug line = 100:1]
}

; [#uses=0]
define void @Cipher([4 x i32]* %state, i32* %Key) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %RoundKey = alloca [240 x i8], align 1          ; [#uses=1 type=[240 x i8]*]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !184), !dbg !185 ; [debug line = 182:18] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i32* %Key}, i64 0, metadata !186), !dbg !187 ; [debug line = 182:35] [debug variable = Key]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !188 ; [debug line = 183:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %Key, i32 32), !dbg !190 ; [debug line = 183:34]
  br label %1

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[240 x i8]* %RoundKey}, metadata !191), !dbg !195 ; [debug line = 201:16] [debug variable = RoundKey]
  %RoundKey.addr = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !196 ; [#uses=4 type=i8*] [debug line = 208:2]
  call fastcc void @KeyExpansion(i8* %RoundKey.addr, i32* %Key), !dbg !196 ; [debug line = 208:2]
  call fastcc void @AddRoundKey(i32 0, [4 x i32]* %state, i8* %RoundKey.addr), !dbg !197 ; [debug line = 216:2]
  br label %2, !dbg !198                          ; [debug line = 221:6]

; <label>:2                                       ; preds = %3, %1
  %round = phi i32 [ 1, %1 ], [ %round.1, %3 ]    ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %round, 10, !dbg !198   ; [#uses=1 type=i1] [debug line = 221:6]
  br i1 %exitcond, label %4, label %3, !dbg !198  ; [debug line = 221:6]

; <label>:3                                       ; preds = %2
  call fastcc void @SubBytes([4 x i32]* %state), !dbg !200 ; [debug line = 223:3]
  call fastcc void @ShiftRows([4 x i32]* %state), !dbg !202 ; [debug line = 224:3]
  call fastcc void @MixColumns([4 x i32]* %state), !dbg !203 ; [debug line = 225:3]
  call fastcc void @AddRoundKey(i32 %round, [4 x i32]* %state, i8* %RoundKey.addr), !dbg !204 ; [debug line = 226:3]
  %round.1 = add nsw i32 %round, 1, !dbg !205     ; [#uses=1 type=i32] [debug line = 221:23]
  call void @llvm.dbg.value(metadata !{i32 %round.1}, i64 0, metadata !206), !dbg !205 ; [debug line = 221:23] [debug variable = round]
  br label %2, !dbg !205                          ; [debug line = 221:23]

; <label>:4                                       ; preds = %2
  call fastcc void @SubBytes([4 x i32]* %state), !dbg !207 ; [debug line = 231:2]
  call fastcc void @ShiftRows([4 x i32]* %state), !dbg !208 ; [debug line = 232:2]
  call fastcc void @AddRoundKey(i32 10, [4 x i32]* %state, i8* %RoundKey.addr), !dbg !209 ; [debug line = 233:2]
  ret void, !dbg !210                             ; [debug line = 238:1]
}

; [#uses=3]
define internal fastcc void @AddRoundKey(i32 %round, [4 x i32]* %state, i8* %RoundKey) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %round}, i64 0, metadata !211), !dbg !212 ; [debug line = 104:22] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %state}, i64 0, metadata !213), !dbg !214 ; [debug line = 104:33] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8* %RoundKey}, i64 0, metadata !215), !dbg !216 ; [debug line = 104:59] [debug variable = RoundKey]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %RoundKey, i32 240), !dbg !217 ; [debug line = 105:2]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i32]* %state, i32 4), !dbg !219 ; [debug line = 105:39]
  %tmp = mul i32 %round, 16, !dbg !220            ; [#uses=1 type=i32] [debug line = 111:4]
  br label %1, !dbg !225                          ; [debug line = 107:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %3 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !225       ; [#uses=1 type=i1] [debug line = 107:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !225 ; [debug line = 107:6]

.preheader.preheader:                             ; preds = %1
  %tmp.76 = mul i32 %i, 4, !dbg !220              ; [#uses=1 type=i32] [debug line = 111:4]
  br label %.preheader, !dbg !226                 ; [debug line = 109:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.3, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !226        ; [#uses=1 type=i1] [debug line = 109:7]
  br i1 %exitcond, label %3, label %2, !dbg !226  ; [debug line = 109:7]

; <label>:2                                       ; preds = %.preheader
  %tmp.78 = add i32 %tmp.76, %tmp, !dbg !220      ; [#uses=1 type=i32] [debug line = 111:4]
  %tmp.79 = add i32 %tmp.78, %j, !dbg !220        ; [#uses=1 type=i32] [debug line = 111:4]
  %RoundKey.addr = getelementptr inbounds i8* %RoundKey, i32 %tmp.79, !dbg !220 ; [#uses=1 type=i8*] [debug line = 111:4]
  %RoundKey.load = load i8* %RoundKey.addr, align 1, !dbg !220 ; [#uses=2 type=i8] [debug line = 111:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load) nounwind
  %tmp.80 = zext i8 %RoundKey.load to i32, !dbg !220 ; [#uses=1 type=i32] [debug line = 111:4]
  %state.addr = getelementptr inbounds [4 x i32]* %state, i32 %j, i32 %i, !dbg !220 ; [#uses=2 type=i32*] [debug line = 111:4]
  %state.load = load i32* %state.addr, align 4, !dbg !220 ; [#uses=2 type=i32] [debug line = 111:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %state.load) nounwind
  %tmp.81 = xor i32 %state.load, %tmp.80, !dbg !220 ; [#uses=1 type=i32] [debug line = 111:4]
  store i32 %tmp.81, i32* %state.addr, align 4, !dbg !220 ; [debug line = 111:4]
  %j.3 = add nsw i32 %j, 1, !dbg !227             ; [#uses=1 type=i32] [debug line = 109:15]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !228), !dbg !227 ; [debug line = 109:15] [debug variable = j]
  br label %.preheader, !dbg !227                 ; [debug line = 109:15]

; <label>:3                                       ; preds = %.preheader
  %i.4 = add nsw i32 %i, 1, !dbg !229             ; [#uses=1 type=i32] [debug line = 107:14]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !230), !dbg !229 ; [debug line = 107:14] [debug variable = i]
  br label %1, !dbg !229                          ; [debug line = 107:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !231                             ; [debug line = 114:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43, !49, !53, !57, !58, !59}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisRaw/deutero/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !21, metadata !28, metadata !31, metadata !32, metadata !33}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 8} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"Edited/2nd/AES_Encrypt.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisRaw", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KeyExpansion", metadata !"KeyExpansion", metadata !"", metadata !6, i32 36, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 37} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !17, metadata !20}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786454, null, metadata !"word", metadata !6, i32 1, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 104, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i32]*, i8*)* @AddRoundKey, null, null, metadata !10, i32 105} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !9, metadata !24, metadata !15}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !18, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 118, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @SubBytes, null, null, metadata !10, i32 119} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !24}
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 134, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @ShiftRows, null, null, metadata !10, i32 135} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 166, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*)* @MixColumns, null, null, metadata !10, i32 167} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 182, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i32]*, i32*)* @Cipher, null, null, metadata !10, i32 183} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !24, metadata !17}
!36 = metadata !{i32 (i32)* @getSBoxValue, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"word*", metadata !"int*"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"RoundKey", metadata !"Key", metadata !"Rcon"}
!49 = metadata !{void (i32, [4 x i32]*, i8*)* @AddRoundKey, metadata !50, metadata !45, metadata !51, metadata !47, metadata !52, metadata !42}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"word [4]*", metadata !"uchar*"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!53 = metadata !{void ([4 x i32]*)* @SubBytes, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!57 = metadata !{void ([4 x i32]*)* @ShiftRows, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!58 = metadata !{void ([4 x i32]*)* @MixColumns, metadata !54, metadata !38, metadata !55, metadata !40, metadata !56, metadata !42}
!59 = metadata !{void ([4 x i32]*, i32*)* @Cipher, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !42}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"word [4]*", metadata !"word*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"state", metadata !"Key"}
!65 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 7, i32 22, metadata !5, null}
!67 = metadata !{i32 27, i32 2, metadata !68, null}
!68 = metadata !{i32 786443, metadata !5, i32 8, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786689, metadata !28, metadata !"state", metadata !6, i32 16777334, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 118, i32 20, metadata !28, null}
!71 = metadata !{i32 119, i32 2, metadata !72, null}
!72 = metadata !{i32 786443, metadata !28, i32 119, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 121, i32 6, metadata !74, null}
!74 = metadata !{i32 786443, metadata !72, i32 121, i32 2, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 123, i32 7, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 123, i32 3, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !74, i32 122, i32 2, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 125, i32 18, metadata !79, null}
!79 = metadata !{i32 786443, metadata !76, i32 124, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 123, i32 15, metadata !76, null}
!81 = metadata !{i32 786688, metadata !72, metadata !"j", metadata !6, i32 120, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 121, i32 14, metadata !74, null}
!83 = metadata !{i32 786688, metadata !72, metadata !"i", metadata !6, i32 120, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 129, i32 1, metadata !72, null}
!85 = metadata !{i32 786689, metadata !31, metadata !"state", metadata !6, i32 16777350, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 134, i32 21, metadata !31, null}
!87 = metadata !{i32 135, i32 2, metadata !88, null}
!88 = metadata !{i32 786443, metadata !31, i32 135, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 139, i32 2, metadata !88, null}
!90 = metadata !{i32 786688, metadata !88, metadata !"temp", metadata !6, i32 136, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 140, i32 2, metadata !88, null}
!92 = metadata !{i32 141, i32 2, metadata !88, null}
!93 = metadata !{i32 142, i32 2, metadata !88, null}
!94 = metadata !{i32 143, i32 2, metadata !88, null}
!95 = metadata !{i32 146, i32 2, metadata !88, null}
!96 = metadata !{i32 147, i32 2, metadata !88, null}
!97 = metadata !{i32 148, i32 2, metadata !88, null}
!98 = metadata !{i32 150, i32 2, metadata !88, null}
!99 = metadata !{i32 151, i32 2, metadata !88, null}
!100 = metadata !{i32 152, i32 2, metadata !88, null}
!101 = metadata !{i32 155, i32 2, metadata !88, null}
!102 = metadata !{i32 156, i32 2, metadata !88, null}
!103 = metadata !{i32 157, i32 2, metadata !88, null}
!104 = metadata !{i32 158, i32 2, metadata !88, null}
!105 = metadata !{i32 159, i32 2, metadata !88, null}
!106 = metadata !{i32 160, i32 1, metadata !88, null}
!107 = metadata !{i32 786689, metadata !32, metadata !"state", metadata !6, i32 16777382, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 166, i32 22, metadata !32, null}
!109 = metadata !{i32 167, i32 2, metadata !110, null}
!110 = metadata !{i32 786443, metadata !32, i32 167, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 170, i32 6, metadata !112, null}
!112 = metadata !{i32 786443, metadata !110, i32 170, i32 2, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 172, i32 3, metadata !114, null}
!114 = metadata !{i32 786443, metadata !112, i32 171, i32 2, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786688, metadata !110, metadata !"t", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 173, i32 3, metadata !114, null}
!117 = metadata !{i32 786688, metadata !110, metadata !"Tmp", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 174, i32 3, metadata !114, null}
!119 = metadata !{i32 786688, metadata !110, metadata !"Tm", metadata !6, i32 169, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 174, i32 36, metadata !114, null}
!121 = metadata !{i32 174, i32 77, metadata !114, null}
!122 = metadata !{i32 175, i32 3, metadata !114, null}
!123 = metadata !{i32 175, i32 36, metadata !114, null}
!124 = metadata !{i32 175, i32 77, metadata !114, null}
!125 = metadata !{i32 176, i32 3, metadata !114, null}
!126 = metadata !{i32 176, i32 36, metadata !114, null}
!127 = metadata !{i32 176, i32 77, metadata !114, null}
!128 = metadata !{i32 177, i32 3, metadata !114, null}
!129 = metadata !{i32 177, i32 26, metadata !114, null}
!130 = metadata !{i32 177, i32 67, metadata !114, null}
!131 = metadata !{i32 170, i32 14, metadata !112, null}
!132 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !6, i32 168, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 179, i32 1, metadata !110, null}
!134 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777252, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 36, i32 33, metadata !12, null}
!136 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554468, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 36, i32 52, metadata !12, null}
!138 = metadata !{i32 37, i32 2, metadata !139, null}
!139 = metadata !{i32 786443, metadata !12, i32 37, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 37, i32 39, metadata !139, null}
!141 = metadata !{i32 37, i32 72, metadata !139, null}
!142 = metadata !{i32 786688, metadata !139, metadata !"temp", metadata !6, i32 39, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!144 = metadata !{i32 39, i32 16, metadata !139, null}
!145 = metadata !{i32 42, i32 6, metadata !146, null}
!146 = metadata !{i32 786443, metadata !139, i32 42, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 64, i32 8, metadata !148, null}
!148 = metadata !{i32 786443, metadata !149, i32 63, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !150, i32 58, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !139, i32 52, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 65, i32 8, metadata !148, null}
!152 = metadata !{i32 66, i32 8, metadata !148, null}
!153 = metadata !{i32 67, i32 8, metadata !148, null}
!154 = metadata !{i32 51, i32 2, metadata !139, null}
!155 = metadata !{i32 44, i32 3, metadata !156, null}
!156 = metadata !{i32 786443, metadata !146, i32 43, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 45, i32 3, metadata !156, null}
!158 = metadata !{i32 46, i32 3, metadata !156, null}
!159 = metadata !{i32 47, i32 3, metadata !156, null}
!160 = metadata !{i32 42, i32 14, metadata !146, null}
!161 = metadata !{i32 55, i32 7, metadata !162, null}
!162 = metadata !{i32 786443, metadata !163, i32 54, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !150, i32 53, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 53, i32 10, metadata !163, null}
!165 = metadata !{i32 53, i32 18, metadata !163, null}
!166 = metadata !{i32 786688, metadata !139, metadata !"j", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 57, i32 6, metadata !150, null}
!168 = metadata !{i32 786688, metadata !139, metadata !"k", metadata !6, i32 39, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 76, i32 16, metadata !170, null}
!170 = metadata !{i32 786443, metadata !149, i32 75, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 77, i32 16, metadata !170, null}
!172 = metadata !{i32 78, i32 16, metadata !170, null}
!173 = metadata !{i32 79, i32 16, metadata !170, null}
!174 = metadata !{i32 82, i32 7, metadata !149, null}
!175 = metadata !{i32 83, i32 6, metadata !149, null}
!176 = metadata !{i32 94, i32 6, metadata !150, null}
!177 = metadata !{i32 95, i32 6, metadata !150, null}
!178 = metadata !{i32 96, i32 6, metadata !150, null}
!179 = metadata !{i32 97, i32 6, metadata !150, null}
!180 = metadata !{i32 98, i32 6, metadata !150, null}
!181 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 99, i32 2, metadata !150, null}
!183 = metadata !{i32 100, i32 1, metadata !139, null}
!184 = metadata !{i32 786689, metadata !33, metadata !"state", metadata !6, i32 16777398, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 182, i32 18, metadata !33, null}
!186 = metadata !{i32 786689, metadata !33, metadata !"Key", metadata !6, i32 33554614, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 182, i32 35, metadata !33, null}
!188 = metadata !{i32 183, i32 2, metadata !189, null}
!189 = metadata !{i32 786443, metadata !33, i32 183, i32 1, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 183, i32 34, metadata !189, null}
!191 = metadata !{i32 786688, metadata !189, metadata !"RoundKey", metadata !6, i32 201, metadata !192, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1920, i64 8, i32 0, i32 0, metadata !16, metadata !193, i32 0, i32 0} ; [ DW_TAG_array_type ]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!195 = metadata !{i32 201, i32 16, metadata !189, null}
!196 = metadata !{i32 208, i32 2, metadata !189, null}
!197 = metadata !{i32 216, i32 2, metadata !189, null}
!198 = metadata !{i32 221, i32 6, metadata !199, null}
!199 = metadata !{i32 786443, metadata !189, i32 221, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 223, i32 3, metadata !201, null}
!201 = metadata !{i32 786443, metadata !199, i32 222, i32 2, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 224, i32 3, metadata !201, null}
!203 = metadata !{i32 225, i32 3, metadata !201, null}
!204 = metadata !{i32 226, i32 3, metadata !201, null}
!205 = metadata !{i32 221, i32 23, metadata !199, null}
!206 = metadata !{i32 786688, metadata !189, metadata !"round", metadata !6, i32 205, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 231, i32 2, metadata !189, null}
!208 = metadata !{i32 232, i32 2, metadata !189, null}
!209 = metadata !{i32 233, i32 2, metadata !189, null}
!210 = metadata !{i32 238, i32 1, metadata !189, null}
!211 = metadata !{i32 786689, metadata !21, metadata !"round", metadata !6, i32 16777320, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 104, i32 22, metadata !21, null}
!213 = metadata !{i32 786689, metadata !21, metadata !"state", metadata !6, i32 33554536, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 104, i32 33, metadata !21, null}
!215 = metadata !{i32 786689, metadata !21, metadata !"RoundKey", metadata !6, i32 50331752, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 104, i32 59, metadata !21, null}
!217 = metadata !{i32 105, i32 2, metadata !218, null}
!218 = metadata !{i32 786443, metadata !21, i32 105, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 105, i32 39, metadata !218, null}
!220 = metadata !{i32 111, i32 4, metadata !221, null}
!221 = metadata !{i32 786443, metadata !222, i32 110, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786443, metadata !223, i32 109, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 786443, metadata !224, i32 108, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 786443, metadata !218, i32 107, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 107, i32 6, metadata !224, null}
!226 = metadata !{i32 109, i32 7, metadata !222, null}
!227 = metadata !{i32 109, i32 15, metadata !222, null}
!228 = metadata !{i32 786688, metadata !218, metadata !"j", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 107, i32 14, metadata !224, null}
!230 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 114, i32 1, metadata !218, null}
