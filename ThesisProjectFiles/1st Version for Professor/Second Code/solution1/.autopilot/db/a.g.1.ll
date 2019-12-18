; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@temp22 = internal unnamed_addr constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF" ; [#uses=1 type=[16 x i8]*]
@temp1 = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F" ; [#uses=1 type=[16 x i8]*]
@sbox = internal unnamed_addr constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22] ; [#uses=1 type=[256 x i32]*]
@Rcon = internal constant [255 x i32] [i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203, i32 141, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145, i32 57, i32 114, i32 228, i32 211, i32 189, i32 97, i32 194, i32 159, i32 37, i32 74, i32 148, i32 51, i32 102, i32 204, i32 131, i32 29, i32 58, i32 116, i32 232, i32 203] ; [#uses=1 type=[255 x i32]*]
@Cipher.str = internal unnamed_addr constant [7 x i8] c"Cipher\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=9]
define internal fastcc i32 @getSBoxValue(i32 %num) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !62), !dbg !63 ; [debug line = 4:22] [debug variable = num]
  br label %1

; <label>:1                                       ; preds = %0
  %sbox.addr = getelementptr inbounds [256 x i32]* @sbox, i32 0, i32 %num, !dbg !64 ; [#uses=1 type=i32*] [debug line = 24:2]
  %sbox.load = load i32* %sbox.addr, align 4, !dbg !64 ; [#uses=2 type=i32] [debug line = 24:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sbox.load) nounwind
  ret i32 %sbox.load, !dbg !64                    ; [debug line = 24:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=63]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=9]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
define internal fastcc void @SubBytes([4 x i8]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i8]* %state}, i64 0, metadata !66), !dbg !67 ; [debug line = 115:29] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i8]* %state, i32 4), !dbg !68 ; [debug line = 116:2]
  br label %1, !dbg !70                           ; [debug line = 118:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !70        ; [#uses=1 type=i1] [debug line = 118:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !70 ; [debug line = 118:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !72                  ; [debug line = 120:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !72         ; [#uses=1 type=i1] [debug line = 120:7]
  br i1 %exitcond, label %3, label %2, !dbg !72   ; [debug line = 120:7]

; <label>:2                                       ; preds = %.preheader
  %state.addr = getelementptr inbounds [4 x i8]* %state, i32 %i, i32 %j, !dbg !75 ; [#uses=2 type=i8*] [debug line = 122:18]
  %state.load = load i8* %state.addr, align 1, !dbg !75 ; [#uses=2 type=i8] [debug line = 122:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %tmp = zext i8 %state.load to i32, !dbg !75     ; [#uses=1 type=i32] [debug line = 122:18]
  %tmp.1 = call fastcc i32 @getSBoxValue(i32 %tmp), !dbg !75 ; [#uses=1 type=i32] [debug line = 122:18]
  %tmp.2 = trunc i32 %tmp.1 to i8, !dbg !75       ; [#uses=1 type=i8] [debug line = 122:18]
  store i8 %tmp.2, i8* %state.addr, align 1, !dbg !75 ; [debug line = 122:18]
  %j.1 = add nsw i32 %j, 1, !dbg !77              ; [#uses=1 type=i32] [debug line = 120:15]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 120:15] [debug variable = j]
  br label %.preheader, !dbg !77                  ; [debug line = 120:15]

; <label>:3                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !79              ; [#uses=1 type=i32] [debug line = 118:14]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !80), !dbg !79 ; [debug line = 118:14] [debug variable = i]
  br label %1, !dbg !79                           ; [debug line = 118:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !81                              ; [debug line = 126:1]
}

; [#uses=2]
define internal fastcc void @ShiftRows([4 x i8]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i8]* %state}, i64 0, metadata !82), !dbg !83 ; [debug line = 131:30] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i8]* %state, i32 4), !dbg !84 ; [debug line = 132:2]
  %state.addr = getelementptr inbounds [4 x i8]* %state, i32 1, i32 0, !dbg !86 ; [#uses=2 type=i8*] [debug line = 136:2]
  %temp = load i8* %state.addr, align 1, !dbg !86 ; [#uses=2 type=i8] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp) nounwind
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !87), !dbg !86 ; [debug line = 136:2] [debug variable = temp]
  %state.addr.1 = getelementptr inbounds [4 x i8]* %state, i32 1, i32 1, !dbg !88 ; [#uses=2 type=i8*] [debug line = 137:2]
  %state.load = load i8* %state.addr.1, align 1, !dbg !88 ; [#uses=2 type=i8] [debug line = 137:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  store i8 %state.load, i8* %state.addr, align 1, !dbg !88 ; [debug line = 137:2]
  %state.addr.2 = getelementptr inbounds [4 x i8]* %state, i32 1, i32 2, !dbg !89 ; [#uses=2 type=i8*] [debug line = 138:2]
  %state.load.1 = load i8* %state.addr.2, align 1, !dbg !89 ; [#uses=2 type=i8] [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.1) nounwind
  store i8 %state.load.1, i8* %state.addr.1, align 1, !dbg !89 ; [debug line = 138:2]
  %state.addr.3 = getelementptr inbounds [4 x i8]* %state, i32 1, i32 3, !dbg !90 ; [#uses=2 type=i8*] [debug line = 139:2]
  %state.load.2 = load i8* %state.addr.3, align 1, !dbg !90 ; [#uses=2 type=i8] [debug line = 139:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.2) nounwind
  store i8 %state.load.2, i8* %state.addr.2, align 1, !dbg !90 ; [debug line = 139:2]
  store i8 %temp, i8* %state.addr.3, align 1, !dbg !91 ; [debug line = 140:2]
  %state.addr.4 = getelementptr inbounds [4 x i8]* %state, i32 2, i32 0, !dbg !92 ; [#uses=2 type=i8*] [debug line = 143:2]
  %temp.1 = load i8* %state.addr.4, align 1, !dbg !92 ; [#uses=2 type=i8] [debug line = 143:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %temp.1}, i64 0, metadata !87), !dbg !92 ; [debug line = 143:2] [debug variable = temp]
  %state.addr.5 = getelementptr inbounds [4 x i8]* %state, i32 2, i32 2, !dbg !93 ; [#uses=2 type=i8*] [debug line = 144:2]
  %state.load.4 = load i8* %state.addr.5, align 1, !dbg !93 ; [#uses=2 type=i8] [debug line = 144:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.4) nounwind
  store i8 %state.load.4, i8* %state.addr.4, align 1, !dbg !93 ; [debug line = 144:2]
  store i8 %temp.1, i8* %state.addr.5, align 1, !dbg !94 ; [debug line = 145:2]
  %state.addr.6 = getelementptr inbounds [4 x i8]* %state, i32 2, i32 1, !dbg !95 ; [#uses=2 type=i8*] [debug line = 147:2]
  %temp.2 = load i8* %state.addr.6, align 1, !dbg !95 ; [#uses=2 type=i8] [debug line = 147:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.2) nounwind
  call void @llvm.dbg.value(metadata !{i8 %temp.2}, i64 0, metadata !87), !dbg !95 ; [debug line = 147:2] [debug variable = temp]
  %state.addr.7 = getelementptr inbounds [4 x i8]* %state, i32 2, i32 3, !dbg !96 ; [#uses=2 type=i8*] [debug line = 148:2]
  %state.load.6 = load i8* %state.addr.7, align 1, !dbg !96 ; [#uses=2 type=i8] [debug line = 148:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.6) nounwind
  store i8 %state.load.6, i8* %state.addr.6, align 1, !dbg !96 ; [debug line = 148:2]
  store i8 %temp.2, i8* %state.addr.7, align 1, !dbg !97 ; [debug line = 149:2]
  %state.addr.8 = getelementptr inbounds [4 x i8]* %state, i32 3, i32 0, !dbg !98 ; [#uses=2 type=i8*] [debug line = 152:2]
  %temp.3 = load i8* %state.addr.8, align 1, !dbg !98 ; [#uses=2 type=i8] [debug line = 152:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.3) nounwind
  call void @llvm.dbg.value(metadata !{i8 %temp.3}, i64 0, metadata !87), !dbg !98 ; [debug line = 152:2] [debug variable = temp]
  %state.addr.9 = getelementptr inbounds [4 x i8]* %state, i32 3, i32 3, !dbg !99 ; [#uses=2 type=i8*] [debug line = 153:2]
  %state.load.8 = load i8* %state.addr.9, align 1, !dbg !99 ; [#uses=2 type=i8] [debug line = 153:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.8) nounwind
  store i8 %state.load.8, i8* %state.addr.8, align 1, !dbg !99 ; [debug line = 153:2]
  %state.addr.10 = getelementptr inbounds [4 x i8]* %state, i32 3, i32 2, !dbg !100 ; [#uses=2 type=i8*] [debug line = 154:2]
  %state.load.9 = load i8* %state.addr.10, align 1, !dbg !100 ; [#uses=2 type=i8] [debug line = 154:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.9) nounwind
  store i8 %state.load.9, i8* %state.addr.9, align 1, !dbg !100 ; [debug line = 154:2]
  %state.addr.11 = getelementptr inbounds [4 x i8]* %state, i32 3, i32 1, !dbg !101 ; [#uses=2 type=i8*] [debug line = 155:2]
  %state.load.10 = load i8* %state.addr.11, align 1, !dbg !101 ; [#uses=2 type=i8] [debug line = 155:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.10) nounwind
  store i8 %state.load.10, i8* %state.addr.10, align 1, !dbg !101 ; [debug line = 155:2]
  store i8 %temp.3, i8* %state.addr.11, align 1, !dbg !102 ; [debug line = 156:2]
  ret void, !dbg !103                             ; [debug line = 157:1]
}

; [#uses=1]
define internal fastcc void @MixColumns([4 x i8]* %state) nounwind {
  call void @llvm.dbg.value(metadata !{[4 x i8]* %state}, i64 0, metadata !104), !dbg !105 ; [debug line = 163:31] [debug variable = state]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i8]* %state, i32 4), !dbg !106 ; [debug line = 164:2]
  br label %1, !dbg !108                          ; [debug line = 167:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=6 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !108        ; [#uses=1 type=i1] [debug line = 167:6]
  br i1 %exitcond, label %3, label %2, !dbg !108  ; [debug line = 167:6]

; <label>:2                                       ; preds = %1
  %state.addr = getelementptr inbounds [4 x i8]* %state, i32 0, i32 %i, !dbg !110 ; [#uses=2 type=i8*] [debug line = 169:3]
  %t = load i8* %state.addr, align 1, !dbg !110   ; [#uses=7 type=i8] [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %t) nounwind
  call void @llvm.dbg.value(metadata !{i8 %t}, i64 0, metadata !112), !dbg !110 ; [debug line = 169:3] [debug variable = t]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %t) nounwind
  %state.addr.12 = getelementptr inbounds [4 x i8]* %state, i32 1, i32 %i, !dbg !113 ; [#uses=2 type=i8*] [debug line = 170:3]
  %state.load = load i8* %state.addr.12, align 1, !dbg !113 ; [#uses=7 type=i8] [debug line = 170:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr.13 = getelementptr inbounds [4 x i8]* %state, i32 2, i32 %i, !dbg !113 ; [#uses=2 type=i8*] [debug line = 170:3]
  %state.load.11 = load i8* %state.addr.13, align 1, !dbg !113 ; [#uses=7 type=i8] [debug line = 170:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  %state.addr.14 = getelementptr inbounds [4 x i8]* %state, i32 3, i32 %i, !dbg !113 ; [#uses=2 type=i8*] [debug line = 170:3]
  %state.load.12 = load i8* %state.addr.14, align 1, !dbg !113 ; [#uses=8 type=i8] [debug line = 170:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %Tm = xor i8 %state.load, %t, !dbg !113         ; [#uses=4 type=i8] [debug line = 170:3]
  %Tm.7 = xor i8 %state.load.11, %Tm, !dbg !113   ; [#uses=2 type=i8] [debug line = 170:3]
  %Tmp = xor i8 %state.load.12, %Tm.7, !dbg !113  ; [#uses=2 type=i8] [debug line = 170:3]
  call void @llvm.dbg.value(metadata !{i8 %Tmp}, i64 0, metadata !114), !dbg !113 ; [debug line = 170:3] [debug variable = Tmp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %t) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  call void @llvm.dbg.value(metadata !{i8 %Tm}, i64 0, metadata !115), !dbg !116 ; [debug line = 171:3] [debug variable = Tm]
  %tmp = shl i8 %Tm, 1, !dbg !117                 ; [#uses=1 type=i8] [debug line = 171:36]
  %tmp.6 = ashr i8 %Tm, 7, !dbg !117              ; [#uses=1 type=i8] [debug line = 171:36]
  %tmp.7 = and i8 %tmp.6, 27, !dbg !117           ; [#uses=1 type=i8] [debug line = 171:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.1}, i64 0, metadata !115), !dbg !117 ; [debug line = 171:36] [debug variable = Tm]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %t) nounwind
  %Tm.1 = xor i8 %tmp, %t, !dbg !117              ; [#uses=1 type=i8] [debug line = 171:36]
  %tmp.8 = xor i8 %Tm.1, %tmp.7, !dbg !118        ; [#uses=1 type=i8] [debug line = 171:77]
  %tmp.9 = xor i8 %tmp.8, %Tmp, !dbg !118         ; [#uses=1 type=i8] [debug line = 171:77]
  store i8 %tmp.9, i8* %state.addr, align 1, !dbg !118 ; [debug line = 171:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  %Tm.2 = xor i8 %state.load.11, %state.load, !dbg !119 ; [#uses=2 type=i8] [debug line = 172:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.2}, i64 0, metadata !115), !dbg !119 ; [debug line = 172:3] [debug variable = Tm]
  %tmp.11 = shl i8 %Tm.2, 1, !dbg !120            ; [#uses=1 type=i8] [debug line = 172:36]
  %tmp.12 = ashr i8 %Tm.2, 7, !dbg !120           ; [#uses=1 type=i8] [debug line = 172:36]
  %tmp.13 = and i8 %tmp.12, 27, !dbg !120         ; [#uses=1 type=i8] [debug line = 172:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.3}, i64 0, metadata !115), !dbg !120 ; [debug line = 172:36] [debug variable = Tm]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %Tm.3 = xor i8 %tmp.11, %state.load, !dbg !120  ; [#uses=1 type=i8] [debug line = 172:36]
  %tmp.14 = xor i8 %Tm.3, %tmp.13, !dbg !121      ; [#uses=1 type=i8] [debug line = 172:77]
  %tmp.15 = xor i8 %tmp.14, %Tmp, !dbg !121       ; [#uses=1 type=i8] [debug line = 172:77]
  store i8 %tmp.15, i8* %state.addr.12, align 1, !dbg !121 ; [debug line = 172:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %Tm.4 = xor i8 %state.load.12, %state.load.11, !dbg !122 ; [#uses=2 type=i8] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.4}, i64 0, metadata !115), !dbg !122 ; [debug line = 173:3] [debug variable = Tm]
  %tmp.17 = shl i8 %Tm.4, 1, !dbg !123            ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.18 = ashr i8 %Tm.4, 7, !dbg !123           ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.19 = and i8 %tmp.18, 27, !dbg !123         ; [#uses=1 type=i8] [debug line = 173:36]
  call void @llvm.dbg.value(metadata !{i8 %Tm.5}, i64 0, metadata !115), !dbg !123 ; [debug line = 173:36] [debug variable = Tm]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  %Tm.5 = xor i8 %state.load.12, %Tm, !dbg !123   ; [#uses=1 type=i8] [debug line = 173:36]
  %tmp.20 = xor i8 %Tm.5, %tmp.17, !dbg !124      ; [#uses=1 type=i8] [debug line = 173:77]
  %tmp.21 = xor i8 %tmp.20, %tmp.19, !dbg !124    ; [#uses=1 type=i8] [debug line = 173:77]
  store i8 %tmp.21, i8* %state.addr.13, align 1, !dbg !124 ; [debug line = 173:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %Tm.6 = xor i8 %state.load.12, %t, !dbg !125    ; [#uses=2 type=i8] [debug line = 174:3]
  call void @llvm.dbg.value(metadata !{i8 %Tm.6}, i64 0, metadata !115), !dbg !125 ; [debug line = 174:3] [debug variable = Tm]
  %tmp.23 = shl i8 %Tm.6, 1, !dbg !126            ; [#uses=1 type=i8] [debug line = 174:26]
  %tmp.24 = ashr i8 %Tm.6, 7, !dbg !126           ; [#uses=1 type=i8] [debug line = 174:26]
  %tmp.25 = and i8 %tmp.24, 27, !dbg !126         ; [#uses=1 type=i8] [debug line = 174:26]
  call void @llvm.dbg.value(metadata !{i8 %Tm.7}, i64 0, metadata !115), !dbg !126 ; [debug line = 174:26] [debug variable = Tm]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %tmp.26 = xor i8 %tmp.23, %Tm.7, !dbg !127      ; [#uses=1 type=i8] [debug line = 174:67]
  %tmp.27 = xor i8 %tmp.26, %tmp.25, !dbg !127    ; [#uses=1 type=i8] [debug line = 174:67]
  store i8 %tmp.27, i8* %state.addr.14, align 1, !dbg !127 ; [debug line = 174:67]
  %i.2 = add nsw i32 %i, 1, !dbg !128             ; [#uses=1 type=i32] [debug line = 167:14]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !129), !dbg !128 ; [debug line = 167:14] [debug variable = i]
  br label %1, !dbg !128                          ; [debug line = 167:14]

; <label>:3                                       ; preds = %1
  ret void, !dbg !130                             ; [debug line = 176:1]
}

; [#uses=1]
define internal fastcc void @KeyExpansion(i8* %RoundKey, i8* %Key, i32 %Nk, i32 %Nr) nounwind {
  %temp = alloca [4 x i8], align 1                ; [#uses=5 type=[4 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %RoundKey}, i64 0, metadata !131), !dbg !132 ; [debug line = 33:33] [debug variable = RoundKey]
  call void @llvm.dbg.value(metadata !{i8* %Key}, i64 0, metadata !133), !dbg !134 ; [debug line = 33:61] [debug variable = Key]
  call void @llvm.dbg.value(metadata !{i32 %Nk}, i64 0, metadata !135), !dbg !136 ; [debug line = 33:87] [debug variable = Nk]
  call void @llvm.dbg.value(metadata !{i32 %Nr}, i64 0, metadata !137), !dbg !138 ; [debug line = 33:94] [debug variable = Nr]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %RoundKey, i32 240), !dbg !139 ; [debug line = 34:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 255), !dbg !141 ; [debug line = 34:39]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %Key, i32 32), !dbg !142 ; [debug line = 34:72]
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %temp}, metadata !143), !dbg !144 ; [debug line = 36:16] [debug variable = temp]
  %tmp = icmp sgt i32 %Nk, 0                      ; [#uses=1 type=i1]
  %i = select i1 %tmp, i32 %Nk, i32 0, !dbg !145  ; [#uses=1 type=i32] [debug line = 39:15]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !147), !dbg !145 ; [debug line = 39:15] [debug variable = i]
  br label %1, !dbg !148                          ; [debug line = 39:6]

; <label>:1                                       ; preds = %2, %0
  %i3 = phi i32 [ 0, %0 ], [ %tmp.34, %2 ]        ; [#uses=3 type=i32]
  %tmp.29 = icmp slt i32 %i3, %Nk, !dbg !148      ; [#uses=1 type=i1] [debug line = 39:6]
  br i1 %tmp.29, label %2, label %.preheader1.preheader, !dbg !148 ; [debug line = 39:6]

.preheader1.preheader:                            ; preds = %1
  %tmp.35 = mul i32 %Nr, 4, !dbg !149             ; [#uses=1 type=i32] [debug line = 48:2]
  %tmp.36 = add i32 %tmp.35, 4, !dbg !149         ; [#uses=1 type=i32] [debug line = 48:2]
  %temp.addr = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 0, !dbg !150 ; [#uses=5 type=i8*] [debug line = 61:8]
  %temp.addr.1 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 1, !dbg !154 ; [#uses=5 type=i8*] [debug line = 62:8]
  %temp.addr.2 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 2, !dbg !155 ; [#uses=5 type=i8*] [debug line = 63:8]
  %temp.addr.3 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 3, !dbg !156 ; [#uses=5 type=i8*] [debug line = 64:8]
  %tmp.37 = icmp sgt i32 %Nk, 6, !dbg !157        ; [#uses=1 type=i1] [debug line = 81:11]
  br label %.preheader1, !dbg !149                ; [debug line = 48:2]

; <label>:2                                       ; preds = %1
  %tmp.30 = shl nsw i32 %i3, 2, !dbg !158         ; [#uses=5 type=i32] [debug line = 41:3]
  %Key.addr = getelementptr inbounds i8* %Key, i32 %tmp.30, !dbg !158 ; [#uses=1 type=i8*] [debug line = 41:3]
  %Key.load = load i8* %Key.addr, align 1, !dbg !158 ; [#uses=2 type=i8] [debug line = 41:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Key.load) nounwind
  %RoundKey.addr = getelementptr inbounds i8* %RoundKey, i32 %tmp.30, !dbg !158 ; [#uses=1 type=i8*] [debug line = 41:3]
  store i8 %Key.load, i8* %RoundKey.addr, align 1, !dbg !158 ; [debug line = 41:3]
  %tmp.31 = or i32 %tmp.30, 1, !dbg !160          ; [#uses=2 type=i32] [debug line = 42:3]
  %Key.addr.1 = getelementptr inbounds i8* %Key, i32 %tmp.31, !dbg !160 ; [#uses=1 type=i8*] [debug line = 42:3]
  %Key.load.1 = load i8* %Key.addr.1, align 1, !dbg !160 ; [#uses=2 type=i8] [debug line = 42:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Key.load.1) nounwind
  %RoundKey.addr.1 = getelementptr inbounds i8* %RoundKey, i32 %tmp.31, !dbg !160 ; [#uses=1 type=i8*] [debug line = 42:3]
  store i8 %Key.load.1, i8* %RoundKey.addr.1, align 1, !dbg !160 ; [debug line = 42:3]
  %tmp.32 = or i32 %tmp.30, 2, !dbg !161          ; [#uses=2 type=i32] [debug line = 43:3]
  %Key.addr.2 = getelementptr inbounds i8* %Key, i32 %tmp.32, !dbg !161 ; [#uses=1 type=i8*] [debug line = 43:3]
  %Key.load.2 = load i8* %Key.addr.2, align 1, !dbg !161 ; [#uses=2 type=i8] [debug line = 43:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Key.load.2) nounwind
  %RoundKey.addr.2 = getelementptr inbounds i8* %RoundKey, i32 %tmp.32, !dbg !161 ; [#uses=1 type=i8*] [debug line = 43:3]
  store i8 %Key.load.2, i8* %RoundKey.addr.2, align 1, !dbg !161 ; [debug line = 43:3]
  %tmp.33 = or i32 %tmp.30, 3, !dbg !162          ; [#uses=2 type=i32] [debug line = 44:3]
  %Key.addr.3 = getelementptr inbounds i8* %Key, i32 %tmp.33, !dbg !162 ; [#uses=1 type=i8*] [debug line = 44:3]
  %Key.load.3 = load i8* %Key.addr.3, align 1, !dbg !162 ; [#uses=2 type=i8] [debug line = 44:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Key.load.3) nounwind
  %RoundKey.addr.3 = getelementptr inbounds i8* %RoundKey, i32 %tmp.33, !dbg !162 ; [#uses=1 type=i8*] [debug line = 44:3]
  store i8 %Key.load.3, i8* %RoundKey.addr.3, align 1, !dbg !162 ; [debug line = 44:3]
  %tmp.34 = add nsw i32 %i3, 1, !dbg !145         ; [#uses=1 type=i32] [debug line = 39:15]
  br label %1, !dbg !145                          ; [debug line = 39:15]

.preheader1:                                      ; preds = %9, %.preheader1.preheader
  %i.1 = phi i32 [ %i.4, %9 ], [ %i, %.preheader1.preheader ] ; [#uses=6 type=i32]
  %tmp.38 = icmp slt i32 %i.1, %tmp.36, !dbg !149 ; [#uses=1 type=i1] [debug line = 48:2]
  br i1 %tmp.38, label %.preheader.preheader, label %10, !dbg !149 ; [debug line = 48:2]

.preheader.preheader:                             ; preds = %.preheader1
  %tmp.39 = shl i32 %i.1, 2, !dbg !163            ; [#uses=5 type=i32] [debug line = 52:7]
  br label %.preheader, !dbg !166                 ; [debug line = 50:10]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %j = phi i32 [ %j.2, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !166        ; [#uses=1 type=i1] [debug line = 50:10]
  br i1 %exitcond, label %4, label %3, !dbg !166  ; [debug line = 50:10]

; <label>:3                                       ; preds = %.preheader
  %tmp.42 = add i32 %tmp.39, -4, !dbg !163        ; [#uses=1 type=i32] [debug line = 52:7]
  %tmp.43 = add i32 %tmp.42, %j, !dbg !163        ; [#uses=1 type=i32] [debug line = 52:7]
  %RoundKey.addr.4 = getelementptr inbounds i8* %RoundKey, i32 %tmp.43, !dbg !163 ; [#uses=1 type=i8*] [debug line = 52:7]
  %RoundKey.load = load i8* %RoundKey.addr.4, align 1, !dbg !163 ; [#uses=2 type=i8] [debug line = 52:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load) nounwind
  %temp.addr.4 = getelementptr inbounds [4 x i8]* %temp, i32 0, i32 %j, !dbg !163 ; [#uses=1 type=i8*] [debug line = 52:7]
  store i8 %RoundKey.load, i8* %temp.addr.4, align 1, !dbg !163 ; [debug line = 52:7]
  %j.2 = add nsw i32 %j, 1, !dbg !167             ; [#uses=1 type=i32] [debug line = 50:18]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !168), !dbg !167 ; [debug line = 50:18] [debug variable = j]
  br label %.preheader, !dbg !167                 ; [debug line = 50:18]

; <label>:4                                       ; preds = %.preheader
  %tmp.40 = srem i32 %i.1, %Nk, !dbg !169         ; [#uses=2 type=i32] [debug line = 54:6]
  %tmp.41 = icmp eq i32 %tmp.40, 0, !dbg !169     ; [#uses=1 type=i1] [debug line = 54:6]
  br i1 %tmp.41, label %5, label %7, !dbg !169    ; [debug line = 54:6]

; <label>:5                                       ; preds = %4
  %k = load i8* %temp.addr, align 1, !dbg !150    ; [#uses=3 type=i8] [debug line = 61:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k) nounwind
  call void @llvm.dbg.value(metadata !{i8 %k}, i64 0, metadata !170), !dbg !150 ; [debug line = 61:8] [debug variable = k]
  %temp.load = load i8* %temp.addr.1, align 1, !dbg !154 ; [#uses=3 type=i8] [debug line = 62:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load) nounwind
  %temp.load.1 = load i8* %temp.addr.2, align 1, !dbg !155 ; [#uses=3 type=i8] [debug line = 63:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.1) nounwind
  %temp.load.2 = load i8* %temp.addr.3, align 1, !dbg !156 ; [#uses=3 type=i8] [debug line = 64:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load) nounwind
  %tmp.45 = zext i8 %temp.load to i32, !dbg !171  ; [#uses=1 type=i32] [debug line = 73:16]
  %tmp.46 = call fastcc i32 @getSBoxValue(i32 %tmp.45), !dbg !171 ; [#uses=1 type=i32] [debug line = 73:16]
  %tmp.47 = trunc i32 %tmp.46 to i8, !dbg !171    ; [#uses=2 type=i8] [debug line = 73:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.1) nounwind
  %tmp.48 = zext i8 %temp.load.1 to i32, !dbg !173 ; [#uses=1 type=i32] [debug line = 74:16]
  %tmp.49 = call fastcc i32 @getSBoxValue(i32 %tmp.48), !dbg !173 ; [#uses=1 type=i32] [debug line = 74:16]
  %tmp.50 = trunc i32 %tmp.49 to i8, !dbg !173    ; [#uses=1 type=i8] [debug line = 74:16]
  store i8 %tmp.50, i8* %temp.addr.1, align 1, !dbg !173 ; [debug line = 74:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.2) nounwind
  %tmp.51 = zext i8 %temp.load.2 to i32, !dbg !174 ; [#uses=1 type=i32] [debug line = 75:16]
  %tmp.52 = call fastcc i32 @getSBoxValue(i32 %tmp.51), !dbg !174 ; [#uses=1 type=i32] [debug line = 75:16]
  %tmp.53 = trunc i32 %tmp.52 to i8, !dbg !174    ; [#uses=1 type=i8] [debug line = 75:16]
  store i8 %tmp.53, i8* %temp.addr.2, align 1, !dbg !174 ; [debug line = 75:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k) nounwind
  %tmp.54 = zext i8 %k to i32, !dbg !175          ; [#uses=1 type=i32] [debug line = 76:16]
  %tmp.55 = call fastcc i32 @getSBoxValue(i32 %tmp.54), !dbg !175 ; [#uses=1 type=i32] [debug line = 76:16]
  %tmp.56 = trunc i32 %tmp.55 to i8, !dbg !175    ; [#uses=1 type=i8] [debug line = 76:16]
  store i8 %tmp.56, i8* %temp.addr.3, align 1, !dbg !175 ; [debug line = 76:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.47) nounwind
  %tmp.57 = sdiv i32 %i.1, %Nk, !dbg !176         ; [#uses=1 type=i32] [debug line = 79:7]
  %.addr = getelementptr inbounds i32* getelementptr inbounds ([255 x i32]* @Rcon, i32 0, i32 0), i32 %tmp.57, !dbg !176 ; [#uses=1 type=i32*] [debug line = 79:7]
  %6 = load i32* %.addr, align 4, !dbg !176       ; [#uses=2 type=i32] [debug line = 79:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %6) nounwind
  %tmp.58 = trunc i32 %6 to i8, !dbg !176         ; [#uses=1 type=i8] [debug line = 79:7]
  %tmp.59 = xor i8 %tmp.58, %tmp.47, !dbg !176    ; [#uses=1 type=i8] [debug line = 79:7]
  store i8 %tmp.59, i8* %temp.addr, align 1, !dbg !176 ; [debug line = 79:7]
  br label %9, !dbg !177                          ; [debug line = 80:6]

; <label>:7                                       ; preds = %4
  %tmp.60 = icmp eq i32 %tmp.40, 4, !dbg !157     ; [#uses=1 type=i1] [debug line = 81:11]
  %or.cond = and i1 %tmp.37, %tmp.60, !dbg !157   ; [#uses=1 type=i1] [debug line = 81:11]
  br i1 %or.cond, label %8, label %._crit_edge, !dbg !157 ; [debug line = 81:11]

; <label>:8                                       ; preds = %7
  %temp.load.3 = load i8* %temp.addr, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 85:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.3) nounwind
  %tmp.61 = zext i8 %temp.load.3 to i32, !dbg !178 ; [#uses=1 type=i32] [debug line = 85:16]
  %tmp.62 = call fastcc i32 @getSBoxValue(i32 %tmp.61), !dbg !178 ; [#uses=1 type=i32] [debug line = 85:16]
  %tmp.63 = trunc i32 %tmp.62 to i8, !dbg !178    ; [#uses=1 type=i8] [debug line = 85:16]
  store i8 %tmp.63, i8* %temp.addr, align 1, !dbg !178 ; [debug line = 85:16]
  %temp.load.4 = load i8* %temp.addr.1, align 1, !dbg !181 ; [#uses=2 type=i8] [debug line = 86:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.4) nounwind
  %tmp.64 = zext i8 %temp.load.4 to i32, !dbg !181 ; [#uses=1 type=i32] [debug line = 86:16]
  %tmp.65 = call fastcc i32 @getSBoxValue(i32 %tmp.64), !dbg !181 ; [#uses=1 type=i32] [debug line = 86:16]
  %tmp.66 = trunc i32 %tmp.65 to i8, !dbg !181    ; [#uses=1 type=i8] [debug line = 86:16]
  store i8 %tmp.66, i8* %temp.addr.1, align 1, !dbg !181 ; [debug line = 86:16]
  %temp.load.5 = load i8* %temp.addr.2, align 1, !dbg !182 ; [#uses=2 type=i8] [debug line = 87:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.5) nounwind
  %tmp.67 = zext i8 %temp.load.5 to i32, !dbg !182 ; [#uses=1 type=i32] [debug line = 87:16]
  %tmp.68 = call fastcc i32 @getSBoxValue(i32 %tmp.67), !dbg !182 ; [#uses=1 type=i32] [debug line = 87:16]
  %tmp.69 = trunc i32 %tmp.68 to i8, !dbg !182    ; [#uses=1 type=i8] [debug line = 87:16]
  store i8 %tmp.69, i8* %temp.addr.2, align 1, !dbg !182 ; [debug line = 87:16]
  %temp.load.6 = load i8* %temp.addr.3, align 1, !dbg !183 ; [#uses=2 type=i8] [debug line = 88:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.6) nounwind
  %tmp.70 = zext i8 %temp.load.6 to i32, !dbg !183 ; [#uses=1 type=i32] [debug line = 88:16]
  %tmp.71 = call fastcc i32 @getSBoxValue(i32 %tmp.70), !dbg !183 ; [#uses=1 type=i32] [debug line = 88:16]
  %tmp.72 = trunc i32 %tmp.71 to i8, !dbg !183    ; [#uses=1 type=i8] [debug line = 88:16]
  store i8 %tmp.72, i8* %temp.addr.3, align 1, !dbg !183 ; [debug line = 88:16]
  br label %._crit_edge, !dbg !184                ; [debug line = 90:6]

._crit_edge:                                      ; preds = %8, %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %5
  %tmp.73 = sub nsw i32 %i.1, %Nk, !dbg !185      ; [#uses=1 type=i32] [debug line = 91:6]
  %tmp.74 = shl nsw i32 %tmp.73, 2, !dbg !185     ; [#uses=4 type=i32] [debug line = 91:6]
  %RoundKey.addr.5 = getelementptr inbounds i8* %RoundKey, i32 %tmp.74, !dbg !185 ; [#uses=1 type=i8*] [debug line = 91:6]
  %RoundKey.load.1 = load i8* %RoundKey.addr.5, align 1, !dbg !185 ; [#uses=2 type=i8] [debug line = 91:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.1) nounwind
  %temp.load.7 = load i8* %temp.addr, align 1, !dbg !185 ; [#uses=2 type=i8] [debug line = 91:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.7) nounwind
  %tmp.75 = xor i8 %temp.load.7, %RoundKey.load.1, !dbg !185 ; [#uses=1 type=i8] [debug line = 91:6]
  %RoundKey.addr.6 = getelementptr inbounds i8* %RoundKey, i32 %tmp.39, !dbg !185 ; [#uses=1 type=i8*] [debug line = 91:6]
  store i8 %tmp.75, i8* %RoundKey.addr.6, align 1, !dbg !185 ; [debug line = 91:6]
  %tmp.76 = or i32 %tmp.74, 1, !dbg !186          ; [#uses=1 type=i32] [debug line = 92:6]
  %RoundKey.addr.7 = getelementptr inbounds i8* %RoundKey, i32 %tmp.76, !dbg !186 ; [#uses=1 type=i8*] [debug line = 92:6]
  %RoundKey.load.2 = load i8* %RoundKey.addr.7, align 1, !dbg !186 ; [#uses=2 type=i8] [debug line = 92:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.2) nounwind
  %temp.load.8 = load i8* %temp.addr.1, align 1, !dbg !186 ; [#uses=2 type=i8] [debug line = 92:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.8) nounwind
  %tmp.77 = xor i8 %temp.load.8, %RoundKey.load.2, !dbg !186 ; [#uses=1 type=i8] [debug line = 92:6]
  %tmp.78 = or i32 %tmp.39, 1, !dbg !186          ; [#uses=1 type=i32] [debug line = 92:6]
  %RoundKey.addr.8 = getelementptr inbounds i8* %RoundKey, i32 %tmp.78, !dbg !186 ; [#uses=1 type=i8*] [debug line = 92:6]
  store i8 %tmp.77, i8* %RoundKey.addr.8, align 1, !dbg !186 ; [debug line = 92:6]
  %tmp.79 = or i32 %tmp.74, 2, !dbg !187          ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.9 = getelementptr inbounds i8* %RoundKey, i32 %tmp.79, !dbg !187 ; [#uses=1 type=i8*] [debug line = 93:6]
  %RoundKey.load.3 = load i8* %RoundKey.addr.9, align 1, !dbg !187 ; [#uses=2 type=i8] [debug line = 93:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.3) nounwind
  %temp.load.9 = load i8* %temp.addr.2, align 1, !dbg !187 ; [#uses=2 type=i8] [debug line = 93:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.9) nounwind
  %tmp.80 = xor i8 %temp.load.9, %RoundKey.load.3, !dbg !187 ; [#uses=1 type=i8] [debug line = 93:6]
  %tmp.81 = or i32 %tmp.39, 2, !dbg !187          ; [#uses=1 type=i32] [debug line = 93:6]
  %RoundKey.addr.10 = getelementptr inbounds i8* %RoundKey, i32 %tmp.81, !dbg !187 ; [#uses=1 type=i8*] [debug line = 93:6]
  store i8 %tmp.80, i8* %RoundKey.addr.10, align 1, !dbg !187 ; [debug line = 93:6]
  %tmp.82 = or i32 %tmp.74, 3, !dbg !188          ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.11 = getelementptr inbounds i8* %RoundKey, i32 %tmp.82, !dbg !188 ; [#uses=1 type=i8*] [debug line = 94:6]
  %RoundKey.load.4 = load i8* %RoundKey.addr.11, align 1, !dbg !188 ; [#uses=2 type=i8] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load.4) nounwind
  %temp.load.10 = load i8* %temp.addr.3, align 1, !dbg !188 ; [#uses=2 type=i8] [debug line = 94:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp.load.10) nounwind
  %tmp.83 = xor i8 %temp.load.10, %RoundKey.load.4, !dbg !188 ; [#uses=1 type=i8] [debug line = 94:6]
  %tmp.84 = or i32 %tmp.39, 3, !dbg !188          ; [#uses=1 type=i32] [debug line = 94:6]
  %RoundKey.addr.12 = getelementptr inbounds i8* %RoundKey, i32 %tmp.84, !dbg !188 ; [#uses=1 type=i8*] [debug line = 94:6]
  store i8 %tmp.83, i8* %RoundKey.addr.12, align 1, !dbg !188 ; [debug line = 94:6]
  %i.4 = add nsw i32 %i.1, 1, !dbg !189           ; [#uses=1 type=i32] [debug line = 95:6]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !147), !dbg !189 ; [debug line = 95:6] [debug variable = i]
  br label %.preheader1, !dbg !190                ; [debug line = 96:2]

; <label>:10                                      ; preds = %.preheader1
  ret void, !dbg !191                             ; [debug line = 97:1]
}

; [#uses=0]
define void @Cipher(i32 %Nr, i32 %Nk, i8* %out) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher.str) nounwind
  %state = alloca [4 x [4 x i8]], align 1         ; [#uses=3 type=[4 x [4 x i8]]*]
  %RoundKey = alloca [240 x i8], align 1          ; [#uses=1 type=[240 x i8]*]
  %Key = alloca [32 x i8], align 1                ; [#uses=2 type=[32 x i8]*]
  %in = alloca [16 x i8], align 1                 ; [#uses=2 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %Nr}, i64 0, metadata !192), !dbg !193 ; [debug line = 179:17] [debug variable = Nr]
  call void @llvm.dbg.value(metadata !{i32 %Nk}, i64 0, metadata !194), !dbg !195 ; [debug line = 179:24] [debug variable = Nk]
  call void @llvm.dbg.value(metadata !{i8* %out}, i64 0, metadata !196), !dbg !197 ; [debug line = 179:41] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %out, i32 16), !dbg !198 ; [debug line = 180:2]
  br label %1

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i8]]* %state}, metadata !200), !dbg !203 ; [debug line = 201:16] [debug variable = state]
  call void @llvm.dbg.declare(metadata !{[240 x i8]* %RoundKey}, metadata !204), !dbg !208 ; [debug line = 202:16] [debug variable = RoundKey]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %Key}, metadata !209), !dbg !213 ; [debug line = 203:16] [debug variable = Key]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %in}, metadata !214), !dbg !218 ; [debug line = 204:16] [debug variable = in]
  %tmp = shl nsw i32 %Nk, 2, !dbg !219            ; [#uses=1 type=i32] [debug line = 208:6]
  br label %2, !dbg !219                          ; [debug line = 208:6]

; <label>:2                                       ; preds = %3, %1
  %i = phi i32 [ 0, %1 ], [ %i.5, %3 ]            ; [#uses=6 type=i32]
  %tmp.86 = icmp slt i32 %i, %tmp, !dbg !219      ; [#uses=1 type=i1] [debug line = 208:6]
  br i1 %tmp.86, label %3, label %4, !dbg !219    ; [debug line = 208:6]

; <label>:3                                       ; preds = %2
  %temp1.addr = getelementptr inbounds [16 x i8]* @temp1, i32 0, i32 %i, !dbg !221 ; [#uses=1 type=i8*] [debug line = 210:3]
  %temp1.load = load i8* %temp1.addr, align 1, !dbg !221 ; [#uses=2 type=i8] [debug line = 210:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp1.load) nounwind
  %Key.addr = getelementptr inbounds [32 x i8]* %Key, i32 0, i32 %i, !dbg !221 ; [#uses=1 type=i8*] [debug line = 210:3]
  store i8 %temp1.load, i8* %Key.addr, align 1, !dbg !221 ; [debug line = 210:3]
  %temp22.addr = getelementptr inbounds [16 x i8]* @temp22, i32 0, i32 %i, !dbg !223 ; [#uses=1 type=i8*] [debug line = 211:3]
  %temp22.load = load i8* %temp22.addr, align 1, !dbg !223 ; [#uses=2 type=i8] [debug line = 211:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %temp22.load) nounwind
  %in.addr = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %i, !dbg !223 ; [#uses=1 type=i8*] [debug line = 211:3]
  store i8 %temp22.load, i8* %in.addr, align 1, !dbg !223 ; [debug line = 211:3]
  %i.5 = add nsw i32 %i, 1, !dbg !224             ; [#uses=1 type=i32] [debug line = 208:17]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !225), !dbg !224 ; [debug line = 208:17] [debug variable = i]
  br label %2, !dbg !224                          ; [debug line = 208:17]

; <label>:4                                       ; preds = %2
  %RoundKey.addr = getelementptr inbounds [240 x i8]* %RoundKey, i32 0, i32 0, !dbg !226 ; [#uses=4 type=i8*] [debug line = 215:2]
  %Key.addr.4 = getelementptr inbounds [32 x i8]* %Key, i32 0, i32 0, !dbg !226 ; [#uses=1 type=i8*] [debug line = 215:2]
  call fastcc void @KeyExpansion(i8* %RoundKey.addr, i8* %Key.addr.4, i32 %Nk, i32 %Nr), !dbg !226 ; [debug line = 215:2]
  br label %5, !dbg !227                          ; [debug line = 218:6]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i32 [ 0, %4 ], [ %i.6, %7 ]          ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %i.1, 4, !dbg !227     ; [#uses=1 type=i1] [debug line = 218:6]
  br i1 %exitcond3, label %8, label %.preheader4.preheader, !dbg !227 ; [debug line = 218:6]

.preheader4.preheader:                            ; preds = %5
  %tmp.88 = mul i32 %i.1, 4, !dbg !229            ; [#uses=1 type=i32] [debug line = 222:4]
  br label %.preheader4, !dbg !233                ; [debug line = 220:7]

.preheader4:                                      ; preds = %6, %.preheader4.preheader
  %j = phi i32 [ %j.3, %6 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j, 4, !dbg !233       ; [#uses=1 type=i1] [debug line = 220:7]
  br i1 %exitcond2, label %7, label %6, !dbg !233 ; [debug line = 220:7]

; <label>:6                                       ; preds = %.preheader4
  %tmp.92 = add nsw i32 %j, %tmp.88, !dbg !229    ; [#uses=1 type=i32] [debug line = 222:4]
  %in.addr.1 = getelementptr inbounds [16 x i8]* %in, i32 0, i32 %tmp.92, !dbg !229 ; [#uses=1 type=i8*] [debug line = 222:4]
  %in.load = load i8* %in.addr.1, align 1, !dbg !229 ; [#uses=2 type=i8] [debug line = 222:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %in.load) nounwind
  %state.addr.15 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %j, i32 %i.1, !dbg !229 ; [#uses=1 type=i8*] [debug line = 222:4]
  store i8 %in.load, i8* %state.addr.15, align 1, !dbg !229 ; [debug line = 222:4]
  %j.3 = add nsw i32 %j, 1, !dbg !234             ; [#uses=1 type=i32] [debug line = 220:15]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !235), !dbg !234 ; [debug line = 220:15] [debug variable = j]
  br label %.preheader4, !dbg !234                ; [debug line = 220:15]

; <label>:7                                       ; preds = %.preheader4
  %i.6 = add nsw i32 %i.1, 1, !dbg !236           ; [#uses=1 type=i32] [debug line = 218:14]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !225), !dbg !236 ; [debug line = 218:14] [debug variable = i]
  br label %5, !dbg !236                          ; [debug line = 218:14]

; <label>:8                                       ; preds = %5
  %state.addr = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 0, !dbg !237 ; [#uses=8 type=[4 x i8]*] [debug line = 227:2]
  call fastcc void @AddRoundKey(i32 0, [4 x i8]* %state.addr, i8* %RoundKey.addr), !dbg !237 ; [debug line = 227:2]
  br label %9, !dbg !238                          ; [debug line = 232:6]

; <label>:9                                       ; preds = %10, %8
  %round = phi i32 [ 1, %8 ], [ %round.1, %10 ]   ; [#uses=3 type=i32]
  %tmp.89 = icmp slt i32 %round, %Nr, !dbg !238   ; [#uses=1 type=i1] [debug line = 232:6]
  br i1 %tmp.89, label %10, label %11, !dbg !238  ; [debug line = 232:6]

; <label>:10                                      ; preds = %9
  call fastcc void @SubBytes([4 x i8]* %state.addr), !dbg !240 ; [debug line = 234:3]
  call fastcc void @ShiftRows([4 x i8]* %state.addr), !dbg !242 ; [debug line = 235:3]
  call fastcc void @MixColumns([4 x i8]* %state.addr), !dbg !243 ; [debug line = 236:3]
  call fastcc void @AddRoundKey(i32 %round, [4 x i8]* %state.addr, i8* %RoundKey.addr), !dbg !244 ; [debug line = 237:3]
  %round.1 = add nsw i32 %round, 1, !dbg !245     ; [#uses=1 type=i32] [debug line = 232:23]
  call void @llvm.dbg.value(metadata !{i32 %round.1}, i64 0, metadata !246), !dbg !245 ; [debug line = 232:23] [debug variable = round]
  br label %9, !dbg !245                          ; [debug line = 232:23]

; <label>:11                                      ; preds = %9
  call fastcc void @SubBytes([4 x i8]* %state.addr), !dbg !247 ; [debug line = 242:2]
  call fastcc void @ShiftRows([4 x i8]* %state.addr), !dbg !248 ; [debug line = 243:2]
  call fastcc void @AddRoundKey(i32 %Nr, [4 x i8]* %state.addr, i8* %RoundKey.addr), !dbg !249 ; [debug line = 244:2]
  br label %12, !dbg !250                         ; [debug line = 248:6]

; <label>:12                                      ; preds = %14, %11
  %i.2 = phi i32 [ 0, %11 ], [ %i.7, %14 ]        ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i.2, 4, !dbg !250     ; [#uses=1 type=i1] [debug line = 248:6]
  br i1 %exitcond1, label %15, label %.preheader.preheader, !dbg !250 ; [debug line = 248:6]

.preheader.preheader:                             ; preds = %12
  %tmp.94 = mul i32 %i.2, 4, !dbg !252            ; [#uses=1 type=i32] [debug line = 252:4]
  br label %.preheader, !dbg !256                 ; [debug line = 250:7]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %j.1 = phi i32 [ %j.4, %13 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j.1, 4, !dbg !256      ; [#uses=1 type=i1] [debug line = 250:7]
  br i1 %exitcond, label %14, label %13, !dbg !256 ; [debug line = 250:7]

; <label>:13                                      ; preds = %.preheader
  %state.addr.16 = getelementptr inbounds [4 x [4 x i8]]* %state, i32 0, i32 %j.1, i32 %i.2, !dbg !252 ; [#uses=1 type=i8*] [debug line = 252:4]
  %state.load = load i8* %state.addr.16, align 1, !dbg !252 ; [#uses=2 type=i8] [debug line = 252:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %tmp.96 = add nsw i32 %j.1, %tmp.94, !dbg !252  ; [#uses=1 type=i32] [debug line = 252:4]
  %out.addr = getelementptr inbounds i8* %out, i32 %tmp.96, !dbg !252 ; [#uses=1 type=i8*] [debug line = 252:4]
  store i8 %state.load, i8* %out.addr, align 1, !dbg !252 ; [debug line = 252:4]
  %j.4 = add nsw i32 %j.1, 1, !dbg !257           ; [#uses=1 type=i32] [debug line = 250:15]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !235), !dbg !257 ; [debug line = 250:15] [debug variable = j]
  br label %.preheader, !dbg !257                 ; [debug line = 250:15]

; <label>:14                                      ; preds = %.preheader
  %i.7 = add nsw i32 %i.2, 1, !dbg !258           ; [#uses=1 type=i32] [debug line = 248:14]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !225), !dbg !258 ; [debug line = 248:14] [debug variable = i]
  br label %12, !dbg !258                         ; [debug line = 248:14]

; <label>:15                                      ; preds = %12
  ret void, !dbg !259                             ; [debug line = 256:1]
}

; [#uses=3]
define internal fastcc void @AddRoundKey(i32 %round, [4 x i8]* %state, i8* %RoundKey) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %round}, i64 0, metadata !260), !dbg !261 ; [debug line = 101:22] [debug variable = round]
  call void @llvm.dbg.value(metadata !{[4 x i8]* %state}, i64 0, metadata !262), !dbg !263 ; [debug line = 101:42] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8* %RoundKey}, i64 0, metadata !264), !dbg !265 ; [debug line = 101:68] [debug variable = RoundKey]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %RoundKey, i32 240), !dbg !266 ; [debug line = 102:2]
  call void (...)* @_ssdm_SpecArrayDimSize([4 x i8]* %state, i32 4), !dbg !268 ; [debug line = 102:39]
  %tmp = mul i32 %round, 16, !dbg !269            ; [#uses=1 type=i32] [debug line = 108:4]
  br label %1, !dbg !274                          ; [debug line = 104:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.8, %3 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !274       ; [#uses=1 type=i1] [debug line = 104:6]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !274 ; [debug line = 104:6]

.preheader.preheader:                             ; preds = %1
  %tmp.98 = mul i32 %i, 4, !dbg !269              ; [#uses=1 type=i32] [debug line = 108:4]
  br label %.preheader, !dbg !275                 ; [debug line = 106:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.5, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !275        ; [#uses=1 type=i1] [debug line = 106:7]
  br i1 %exitcond, label %3, label %2, !dbg !275  ; [debug line = 106:7]

; <label>:2                                       ; preds = %.preheader
  %tmp.100 = add i32 %tmp.98, %tmp, !dbg !269     ; [#uses=1 type=i32] [debug line = 108:4]
  %tmp.101 = add i32 %tmp.100, %j, !dbg !269      ; [#uses=1 type=i32] [debug line = 108:4]
  %RoundKey.addr = getelementptr inbounds i8* %RoundKey, i32 %tmp.101, !dbg !269 ; [#uses=1 type=i8*] [debug line = 108:4]
  %RoundKey.load = load i8* %RoundKey.addr, align 1, !dbg !269 ; [#uses=2 type=i8] [debug line = 108:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %RoundKey.load) nounwind
  %state.addr = getelementptr inbounds [4 x i8]* %state, i32 %j, i32 %i, !dbg !269 ; [#uses=2 type=i8*] [debug line = 108:4]
  %state.load = load i8* %state.addr, align 1, !dbg !269 ; [#uses=2 type=i8] [debug line = 108:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %tmp.102 = xor i8 %state.load, %RoundKey.load, !dbg !269 ; [#uses=1 type=i8] [debug line = 108:4]
  store i8 %tmp.102, i8* %state.addr, align 1, !dbg !269 ; [debug line = 108:4]
  %j.5 = add nsw i32 %j, 1, !dbg !276             ; [#uses=1 type=i32] [debug line = 106:15]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !277), !dbg !276 ; [debug line = 106:15] [debug variable = j]
  br label %.preheader, !dbg !276                 ; [debug line = 106:15]

; <label>:3                                       ; preds = %.preheader
  %i.8 = add nsw i32 %i, 1, !dbg !278             ; [#uses=1 type=i32] [debug line = 104:14]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !279), !dbg !278 ; [debug line = 104:14] [debug variable = i]
  br label %1, !dbg !278                          ; [debug line = 104:14]

; <label>:4                                       ; preds = %1
  ret void, !dbg !280                             ; [debug line = 111:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !46, !52, !56, !57, !58}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/AES_Encrypt.pragma.2.c", metadata !"C:\5CUsers\5CLincoln\5CDesktop\5CThesisSuccess", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !18, metadata !25, metadata !28, metadata !29, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getSBoxValue", metadata !"getSBoxValue", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getSBoxValue, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
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
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"AddRoundKey", metadata !"AddRoundKey", metadata !"", metadata !6, i32 101, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, [4 x i8]*, i8*)* @AddRoundKey, null, null, metadata !10, i32 102} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !9, metadata !21, metadata !15}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"SubBytes", metadata !"SubBytes", metadata !"", metadata !6, i32 115, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @SubBytes, null, null, metadata !10, i32 116} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !21}
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ShiftRows", metadata !"ShiftRows", metadata !"", metadata !6, i32 131, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @ShiftRows, null, null, metadata !10, i32 132} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MixColumns", metadata !"MixColumns", metadata !"", metadata !6, i32 163, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([4 x i8]*)* @MixColumns, null, null, metadata !10, i32 164} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Cipher", metadata !"Cipher", metadata !"", metadata !6, i32 179, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i8*)* @Cipher, null, null, metadata !10, i32 180} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !9, metadata !9, metadata !15}
!33 = metadata !{i32 (i32)* @getSBoxValue, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
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
!46 = metadata !{void (i32, [4 x i8]*, i8*)* @AddRoundKey, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !39}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar [4]*", metadata !"uchar*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"round", metadata !"state", metadata !"RoundKey"}
!52 = metadata !{void ([4 x i8]*)* @SubBytes, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"uchar [4]*"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"state"}
!56 = metadata !{void ([4 x i8]*)* @ShiftRows, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!57 = metadata !{void ([4 x i8]*)* @MixColumns, metadata !53, metadata !35, metadata !54, metadata !37, metadata !55, metadata !39}
!58 = metadata !{void (i32, i32, i8*)* @Cipher, metadata !59, metadata !48, metadata !60, metadata !50, metadata !61, metadata !39}
!59 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uchar*"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Nr", metadata !"Nk", metadata !"out"}
!62 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 4, i32 22, metadata !5, null}
!64 = metadata !{i32 24, i32 2, metadata !65, null}
!65 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786689, metadata !25, metadata !"state", metadata !6, i32 16777331, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 115, i32 29, metadata !25, null}
!68 = metadata !{i32 116, i32 2, metadata !69, null}
!69 = metadata !{i32 786443, metadata !25, i32 116, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 118, i32 6, metadata !71, null}
!71 = metadata !{i32 786443, metadata !69, i32 118, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 120, i32 7, metadata !73, null}
!73 = metadata !{i32 786443, metadata !74, i32 120, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !71, i32 119, i32 2, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 122, i32 18, metadata !76, null}
!76 = metadata !{i32 786443, metadata !73, i32 121, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 120, i32 15, metadata !73, null}
!78 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 118, i32 14, metadata !71, null}
!80 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 126, i32 1, metadata !69, null}
!82 = metadata !{i32 786689, metadata !28, metadata !"state", metadata !6, i32 16777347, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 131, i32 30, metadata !28, null}
!84 = metadata !{i32 132, i32 2, metadata !85, null}
!85 = metadata !{i32 786443, metadata !28, i32 132, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 136, i32 2, metadata !85, null}
!87 = metadata !{i32 786688, metadata !85, metadata !"temp", metadata !6, i32 133, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 137, i32 2, metadata !85, null}
!89 = metadata !{i32 138, i32 2, metadata !85, null}
!90 = metadata !{i32 139, i32 2, metadata !85, null}
!91 = metadata !{i32 140, i32 2, metadata !85, null}
!92 = metadata !{i32 143, i32 2, metadata !85, null}
!93 = metadata !{i32 144, i32 2, metadata !85, null}
!94 = metadata !{i32 145, i32 2, metadata !85, null}
!95 = metadata !{i32 147, i32 2, metadata !85, null}
!96 = metadata !{i32 148, i32 2, metadata !85, null}
!97 = metadata !{i32 149, i32 2, metadata !85, null}
!98 = metadata !{i32 152, i32 2, metadata !85, null}
!99 = metadata !{i32 153, i32 2, metadata !85, null}
!100 = metadata !{i32 154, i32 2, metadata !85, null}
!101 = metadata !{i32 155, i32 2, metadata !85, null}
!102 = metadata !{i32 156, i32 2, metadata !85, null}
!103 = metadata !{i32 157, i32 1, metadata !85, null}
!104 = metadata !{i32 786689, metadata !29, metadata !"state", metadata !6, i32 16777379, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 163, i32 31, metadata !29, null}
!106 = metadata !{i32 164, i32 2, metadata !107, null}
!107 = metadata !{i32 786443, metadata !29, i32 164, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 167, i32 6, metadata !109, null}
!109 = metadata !{i32 786443, metadata !107, i32 167, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 169, i32 3, metadata !111, null}
!111 = metadata !{i32 786443, metadata !109, i32 168, i32 2, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786688, metadata !107, metadata !"t", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 170, i32 3, metadata !111, null}
!114 = metadata !{i32 786688, metadata !107, metadata !"Tmp", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786688, metadata !107, metadata !"Tm", metadata !6, i32 166, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 171, i32 3, metadata !111, null}
!117 = metadata !{i32 171, i32 36, metadata !111, null}
!118 = metadata !{i32 171, i32 77, metadata !111, null}
!119 = metadata !{i32 172, i32 3, metadata !111, null}
!120 = metadata !{i32 172, i32 36, metadata !111, null}
!121 = metadata !{i32 172, i32 77, metadata !111, null}
!122 = metadata !{i32 173, i32 3, metadata !111, null}
!123 = metadata !{i32 173, i32 36, metadata !111, null}
!124 = metadata !{i32 173, i32 77, metadata !111, null}
!125 = metadata !{i32 174, i32 3, metadata !111, null}
!126 = metadata !{i32 174, i32 26, metadata !111, null}
!127 = metadata !{i32 174, i32 67, metadata !111, null}
!128 = metadata !{i32 167, i32 14, metadata !109, null}
!129 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 176, i32 1, metadata !107, null}
!131 = metadata !{i32 786689, metadata !12, metadata !"RoundKey", metadata !6, i32 16777249, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 33, i32 33, metadata !12, null}
!133 = metadata !{i32 786689, metadata !12, metadata !"Key", metadata !6, i32 33554465, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 33, i32 61, metadata !12, null}
!135 = metadata !{i32 786689, metadata !12, metadata !"Nk", metadata !6, i32 67108897, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 33, i32 87, metadata !12, null}
!137 = metadata !{i32 786689, metadata !12, metadata !"Nr", metadata !6, i32 83886113, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 33, i32 94, metadata !12, null}
!139 = metadata !{i32 34, i32 2, metadata !140, null}
!140 = metadata !{i32 786443, metadata !12, i32 34, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 34, i32 39, metadata !140, null}
!142 = metadata !{i32 34, i32 72, metadata !140, null}
!143 = metadata !{i32 786688, metadata !140, metadata !"temp", metadata !6, i32 36, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 36, i32 16, metadata !140, null}
!145 = metadata !{i32 39, i32 15, metadata !146, null}
!146 = metadata !{i32 786443, metadata !140, i32 39, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 39, i32 6, metadata !146, null}
!149 = metadata !{i32 48, i32 2, metadata !140, null}
!150 = metadata !{i32 61, i32 8, metadata !151, null}
!151 = metadata !{i32 786443, metadata !152, i32 60, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !153, i32 55, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786443, metadata !140, i32 49, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 62, i32 8, metadata !151, null}
!155 = metadata !{i32 63, i32 8, metadata !151, null}
!156 = metadata !{i32 64, i32 8, metadata !151, null}
!157 = metadata !{i32 81, i32 11, metadata !153, null}
!158 = metadata !{i32 41, i32 3, metadata !159, null}
!159 = metadata !{i32 786443, metadata !146, i32 40, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 42, i32 3, metadata !159, null}
!161 = metadata !{i32 43, i32 3, metadata !159, null}
!162 = metadata !{i32 44, i32 3, metadata !159, null}
!163 = metadata !{i32 52, i32 7, metadata !164, null}
!164 = metadata !{i32 786443, metadata !165, i32 51, i32 6, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786443, metadata !153, i32 50, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 50, i32 10, metadata !165, null}
!167 = metadata !{i32 50, i32 18, metadata !165, null}
!168 = metadata !{i32 786688, metadata !140, metadata !"j", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 54, i32 6, metadata !153, null}
!170 = metadata !{i32 786688, metadata !140, metadata !"k", metadata !6, i32 36, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 73, i32 16, metadata !172, null}
!172 = metadata !{i32 786443, metadata !152, i32 72, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 74, i32 16, metadata !172, null}
!174 = metadata !{i32 75, i32 16, metadata !172, null}
!175 = metadata !{i32 76, i32 16, metadata !172, null}
!176 = metadata !{i32 79, i32 7, metadata !152, null}
!177 = metadata !{i32 80, i32 6, metadata !152, null}
!178 = metadata !{i32 85, i32 16, metadata !179, null}
!179 = metadata !{i32 786443, metadata !180, i32 84, i32 7, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !153, i32 82, i32 6, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 86, i32 16, metadata !179, null}
!182 = metadata !{i32 87, i32 16, metadata !179, null}
!183 = metadata !{i32 88, i32 16, metadata !179, null}
!184 = metadata !{i32 90, i32 6, metadata !180, null}
!185 = metadata !{i32 91, i32 6, metadata !153, null}
!186 = metadata !{i32 92, i32 6, metadata !153, null}
!187 = metadata !{i32 93, i32 6, metadata !153, null}
!188 = metadata !{i32 94, i32 6, metadata !153, null}
!189 = metadata !{i32 95, i32 6, metadata !153, null}
!190 = metadata !{i32 96, i32 2, metadata !153, null}
!191 = metadata !{i32 97, i32 1, metadata !140, null}
!192 = metadata !{i32 786689, metadata !30, metadata !"Nr", metadata !6, i32 16777395, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 179, i32 17, metadata !30, null}
!194 = metadata !{i32 786689, metadata !30, metadata !"Nk", metadata !6, i32 33554611, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 179, i32 24, metadata !30, null}
!196 = metadata !{i32 786689, metadata !30, metadata !"out", metadata !6, i32 50331827, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 179, i32 41, metadata !30, null}
!198 = metadata !{i32 180, i32 2, metadata !199, null}
!199 = metadata !{i32 786443, metadata !30, i32 180, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786688, metadata !199, metadata !"state", metadata !6, i32 201, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !202, i32 0, i32 0} ; [ DW_TAG_array_type ]
!202 = metadata !{metadata !24, metadata !24}
!203 = metadata !{i32 201, i32 16, metadata !199, null}
!204 = metadata !{i32 786688, metadata !199, metadata !"RoundKey", metadata !6, i32 202, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1920, i64 8, i32 0, i32 0, metadata !16, metadata !206, i32 0, i32 0} ; [ DW_TAG_array_type ]
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786465, i64 0, i64 239}     ; [ DW_TAG_subrange_type ]
!208 = metadata !{i32 202, i32 16, metadata !199, null}
!209 = metadata !{i32 786688, metadata !199, metadata !"Key", metadata !6, i32 203, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !16, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!213 = metadata !{i32 203, i32 16, metadata !199, null}
!214 = metadata !{i32 786688, metadata !199, metadata !"in", metadata !6, i32 204, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !216, i32 0, i32 0} ; [ DW_TAG_array_type ]
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!218 = metadata !{i32 204, i32 16, metadata !199, null}
!219 = metadata !{i32 208, i32 6, metadata !220, null}
!220 = metadata !{i32 786443, metadata !199, i32 208, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 210, i32 3, metadata !222, null}
!222 = metadata !{i32 786443, metadata !220, i32 209, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 211, i32 3, metadata !222, null}
!224 = metadata !{i32 208, i32 17, metadata !220, null}
!225 = metadata !{i32 786688, metadata !199, metadata !"i", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 215, i32 2, metadata !199, null}
!227 = metadata !{i32 218, i32 6, metadata !228, null}
!228 = metadata !{i32 786443, metadata !199, i32 218, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 222, i32 4, metadata !230, null}
!230 = metadata !{i32 786443, metadata !231, i32 221, i32 3, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 786443, metadata !232, i32 220, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 786443, metadata !228, i32 219, i32 2, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 220, i32 7, metadata !231, null}
!234 = metadata !{i32 220, i32 15, metadata !231, null}
!235 = metadata !{i32 786688, metadata !199, metadata !"j", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 218, i32 14, metadata !228, null}
!237 = metadata !{i32 227, i32 2, metadata !199, null}
!238 = metadata !{i32 232, i32 6, metadata !239, null}
!239 = metadata !{i32 786443, metadata !199, i32 232, i32 2, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 234, i32 3, metadata !241, null}
!241 = metadata !{i32 786443, metadata !239, i32 233, i32 2, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 235, i32 3, metadata !241, null}
!243 = metadata !{i32 236, i32 3, metadata !241, null}
!244 = metadata !{i32 237, i32 3, metadata !241, null}
!245 = metadata !{i32 232, i32 23, metadata !239, null}
!246 = metadata !{i32 786688, metadata !199, metadata !"round", metadata !6, i32 200, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 242, i32 2, metadata !199, null}
!248 = metadata !{i32 243, i32 2, metadata !199, null}
!249 = metadata !{i32 244, i32 2, metadata !199, null}
!250 = metadata !{i32 248, i32 6, metadata !251, null}
!251 = metadata !{i32 786443, metadata !199, i32 248, i32 2, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 252, i32 4, metadata !253, null}
!253 = metadata !{i32 786443, metadata !254, i32 251, i32 3, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 786443, metadata !255, i32 250, i32 3, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 786443, metadata !251, i32 249, i32 2, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 250, i32 7, metadata !254, null}
!257 = metadata !{i32 250, i32 15, metadata !254, null}
!258 = metadata !{i32 248, i32 14, metadata !251, null}
!259 = metadata !{i32 256, i32 1, metadata !199, null}
!260 = metadata !{i32 786689, metadata !18, metadata !"round", metadata !6, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 101, i32 22, metadata !18, null}
!262 = metadata !{i32 786689, metadata !18, metadata !"state", metadata !6, i32 33554533, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!263 = metadata !{i32 101, i32 42, metadata !18, null}
!264 = metadata !{i32 786689, metadata !18, metadata !"RoundKey", metadata !6, i32 50331749, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!265 = metadata !{i32 101, i32 68, metadata !18, null}
!266 = metadata !{i32 102, i32 2, metadata !267, null}
!267 = metadata !{i32 786443, metadata !18, i32 102, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 102, i32 39, metadata !267, null}
!269 = metadata !{i32 108, i32 4, metadata !270, null}
!270 = metadata !{i32 786443, metadata !271, i32 107, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 786443, metadata !272, i32 106, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 786443, metadata !273, i32 105, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 786443, metadata !267, i32 104, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 104, i32 6, metadata !273, null}
!275 = metadata !{i32 106, i32 7, metadata !271, null}
!276 = metadata !{i32 106, i32 15, metadata !271, null}
!277 = metadata !{i32 786688, metadata !267, metadata !"j", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 104, i32 14, metadata !273, null}
!279 = metadata !{i32 786688, metadata !267, metadata !"i", metadata !6, i32 103, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 111, i32 1, metadata !267, null}
