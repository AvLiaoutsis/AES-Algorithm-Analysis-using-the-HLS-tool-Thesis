; ModuleID = 'C:/Users/Lincoln/Desktop/ThesisSuccess/Second/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@Rcon = internal unnamed_addr constant [255 x i8] c"\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB\8D\01\02\04\08\10 @\80\1B6l\D8\ABM\9A/^\BCc\C6\975j\D4\B3}\FA\EF\C5\919r\E4\D3\BDa\C2\9F%J\943f\CC\83\1D:t\E8\CB"
@Cipher_str = internal unnamed_addr constant [7 x i8] c"Cipher\00"
@p_str5 = private unnamed_addr constant [15 x i8] c"Cipher_label34\00", align 1
@p_str3 = private unnamed_addr constant [20 x i8] c"KeyExpansion_label4\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i128 @llvm.part.set.i128.i32(i128, i32, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

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

define weak i128 @_ssdm_op_PartSet.i128.i128.i32.i32.i32(i128, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.set.i128.i32(i128 %0, i32 %1, i32 %2, i32 %3)
  ret i128 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_10 = trunc i128 %empty to i8
  ret i8 %empty_10
}

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_11 = trunc i6 %empty to i4
  ret i4 %empty_11
}

define weak i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_12 = trunc i128 %empty to i32
  ret i32 %empty_12
}

declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8) {
entry:
  switch i8 %256, label %case255 [
    i8 0, label %case0
    i8 1, label %case1
    i8 2, label %case2
    i8 3, label %case3
    i8 4, label %case4
    i8 5, label %case5
    i8 6, label %case6
    i8 7, label %case7
    i8 8, label %case8
    i8 9, label %case9
    i8 10, label %case10
    i8 11, label %case11
    i8 12, label %case12
    i8 13, label %case13
    i8 14, label %case14
    i8 15, label %case15
    i8 16, label %case16
    i8 17, label %case17
    i8 18, label %case18
    i8 19, label %case19
    i8 20, label %case20
    i8 21, label %case21
    i8 22, label %case22
    i8 23, label %case23
    i8 24, label %case24
    i8 25, label %case25
    i8 26, label %case26
    i8 27, label %case27
    i8 28, label %case28
    i8 29, label %case29
    i8 30, label %case30
    i8 31, label %case31
    i8 32, label %case32
    i8 33, label %case33
    i8 34, label %case34
    i8 35, label %case35
    i8 36, label %case36
    i8 37, label %case37
    i8 38, label %case38
    i8 39, label %case39
    i8 40, label %case40
    i8 41, label %case41
    i8 42, label %case42
    i8 43, label %case43
    i8 44, label %case44
    i8 45, label %case45
    i8 46, label %case46
    i8 47, label %case47
    i8 48, label %case48
    i8 49, label %case49
    i8 50, label %case50
    i8 51, label %case51
    i8 52, label %case52
    i8 53, label %case53
    i8 54, label %case54
    i8 55, label %case55
    i8 56, label %case56
    i8 57, label %case57
    i8 58, label %case58
    i8 59, label %case59
    i8 60, label %case60
    i8 61, label %case61
    i8 62, label %case62
    i8 63, label %case63
    i8 64, label %case64
    i8 65, label %case65
    i8 66, label %case66
    i8 67, label %case67
    i8 68, label %case68
    i8 69, label %case69
    i8 70, label %case70
    i8 71, label %case71
    i8 72, label %case72
    i8 73, label %case73
    i8 74, label %case74
    i8 75, label %case75
    i8 76, label %case76
    i8 77, label %case77
    i8 78, label %case78
    i8 79, label %case79
    i8 80, label %case80
    i8 81, label %case81
    i8 82, label %case82
    i8 83, label %case83
    i8 84, label %case84
    i8 85, label %case85
    i8 86, label %case86
    i8 87, label %case87
    i8 88, label %case88
    i8 89, label %case89
    i8 90, label %case90
    i8 91, label %case91
    i8 92, label %case92
    i8 93, label %case93
    i8 94, label %case94
    i8 95, label %case95
    i8 96, label %case96
    i8 97, label %case97
    i8 98, label %case98
    i8 99, label %case99
    i8 100, label %case100
    i8 101, label %case101
    i8 102, label %case102
    i8 103, label %case103
    i8 104, label %case104
    i8 105, label %case105
    i8 106, label %case106
    i8 107, label %case107
    i8 108, label %case108
    i8 109, label %case109
    i8 110, label %case110
    i8 111, label %case111
    i8 112, label %case112
    i8 113, label %case113
    i8 114, label %case114
    i8 115, label %case115
    i8 116, label %case116
    i8 117, label %case117
    i8 118, label %case118
    i8 119, label %case119
    i8 120, label %case120
    i8 121, label %case121
    i8 122, label %case122
    i8 123, label %case123
    i8 124, label %case124
    i8 125, label %case125
    i8 126, label %case126
    i8 127, label %case127
    i8 -128, label %case128
    i8 -127, label %case129
    i8 -126, label %case130
    i8 -125, label %case131
    i8 -124, label %case132
    i8 -123, label %case133
    i8 -122, label %case134
    i8 -121, label %case135
    i8 -120, label %case136
    i8 -119, label %case137
    i8 -118, label %case138
    i8 -117, label %case139
    i8 -116, label %case140
    i8 -115, label %case141
    i8 -114, label %case142
    i8 -113, label %case143
    i8 -112, label %case144
    i8 -111, label %case145
    i8 -110, label %case146
    i8 -109, label %case147
    i8 -108, label %case148
    i8 -107, label %case149
    i8 -106, label %case150
    i8 -105, label %case151
    i8 -104, label %case152
    i8 -103, label %case153
    i8 -102, label %case154
    i8 -101, label %case155
    i8 -100, label %case156
    i8 -99, label %case157
    i8 -98, label %case158
    i8 -97, label %case159
    i8 -96, label %case160
    i8 -95, label %case161
    i8 -94, label %case162
    i8 -93, label %case163
    i8 -92, label %case164
    i8 -91, label %case165
    i8 -90, label %case166
    i8 -89, label %case167
    i8 -88, label %case168
    i8 -87, label %case169
    i8 -86, label %case170
    i8 -85, label %case171
    i8 -84, label %case172
    i8 -83, label %case173
    i8 -82, label %case174
    i8 -81, label %case175
    i8 -80, label %case176
    i8 -79, label %case177
    i8 -78, label %case178
    i8 -77, label %case179
    i8 -76, label %case180
    i8 -75, label %case181
    i8 -74, label %case182
    i8 -73, label %case183
    i8 -72, label %case184
    i8 -71, label %case185
    i8 -70, label %case186
    i8 -69, label %case187
    i8 -68, label %case188
    i8 -67, label %case189
    i8 -66, label %case190
    i8 -65, label %case191
    i8 -64, label %case192
    i8 -63, label %case193
    i8 -62, label %case194
    i8 -61, label %case195
    i8 -60, label %case196
    i8 -59, label %case197
    i8 -58, label %case198
    i8 -57, label %case199
    i8 -56, label %case200
    i8 -55, label %case201
    i8 -54, label %case202
    i8 -53, label %case203
    i8 -52, label %case204
    i8 -51, label %case205
    i8 -50, label %case206
    i8 -49, label %case207
    i8 -48, label %case208
    i8 -47, label %case209
    i8 -46, label %case210
    i8 -45, label %case211
    i8 -44, label %case212
    i8 -43, label %case213
    i8 -42, label %case214
    i8 -41, label %case215
    i8 -40, label %case216
    i8 -39, label %case217
    i8 -38, label %case218
    i8 -37, label %case219
    i8 -36, label %case220
    i8 -35, label %case221
    i8 -34, label %case222
    i8 -33, label %case223
    i8 -32, label %case224
    i8 -31, label %case225
    i8 -30, label %case226
    i8 -29, label %case227
    i8 -28, label %case228
    i8 -27, label %case229
    i8 -26, label %case230
    i8 -25, label %case231
    i8 -24, label %case232
    i8 -23, label %case233
    i8 -22, label %case234
    i8 -21, label %case235
    i8 -20, label %case236
    i8 -19, label %case237
    i8 -18, label %case238
    i8 -17, label %case239
    i8 -16, label %case240
    i8 -15, label %case241
    i8 -14, label %case242
    i8 -13, label %case243
    i8 -12, label %case244
    i8 -11, label %case245
    i8 -10, label %case246
    i8 -9, label %case247
    i8 -8, label %case248
    i8 -7, label %case249
    i8 -6, label %case250
    i8 -5, label %case251
    i8 -4, label %case252
    i8 -3, label %case253
    i8 -2, label %case254
  ]

case0:                                            ; preds = %case255, %case254, %case253, %case252, %case251, %case250, %case249, %case248, %case247, %case246, %case245, %case244, %case243, %case242, %case241, %case240, %case239, %case238, %case237, %case236, %case235, %case234, %case233, %case232, %case231, %case230, %case229, %case228, %case227, %case226, %case225, %case224, %case223, %case222, %case221, %case220, %case219, %case218, %case217, %case216, %case215, %case214, %case213, %case212, %case211, %case210, %case209, %case208, %case207, %case206, %case205, %case204, %case203, %case202, %case201, %case200, %case199, %case198, %case197, %case196, %case195, %case194, %case193, %case192, %case191, %case190, %case189, %case188, %case187, %case186, %case185, %case184, %case183, %case182, %case181, %case180, %case179, %case178, %case177, %case176, %case175, %case174, %case173, %case172, %case171, %case170, %case169, %case168, %case167, %case166, %case165, %case164, %case163, %case162, %case161, %case160, %case159, %case158, %case157, %case156, %case155, %case154, %case153, %case152, %case151, %case150, %case149, %case148, %case147, %case146, %case145, %case144, %case143, %case142, %case141, %case140, %case139, %case138, %case137, %case136, %case135, %case134, %case133, %case132, %case131, %case130, %case129, %case128, %case127, %case126, %case125, %case124, %case123, %case122, %case121, %case120, %case119, %case118, %case117, %case116, %case115, %case114, %case113, %case112, %case111, %case110, %case109, %case108, %case107, %case106, %case105, %case104, %case103, %case102, %case101, %case100, %case99, %case98, %case97, %case96, %case95, %case94, %case93, %case92, %case91, %case90, %case89, %case88, %case87, %case86, %case85, %case84, %case83, %case82, %case81, %case80, %case79, %case78, %case77, %case76, %case75, %case74, %case73, %case72, %case71, %case70, %case69, %case68, %case67, %case66, %case65, %case64, %case63, %case62, %case61, %case60, %case59, %case58, %case57, %case56, %case55, %case54, %case53, %case52, %case51, %case50, %case49, %case48, %case47, %case46, %case45, %case44, %case43, %case42, %case41, %case40, %case39, %case38, %case37, %case36, %case35, %case34, %case33, %case32, %case31, %case30, %case29, %case28, %case27, %case26, %case25, %case24, %case23, %case22, %case21, %case20, %case19, %case18, %case17, %case16, %case15, %case14, %case13, %case12, %case11, %case10, %case9, %case8, %case7, %case6, %case5, %case4, %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ], [ %10, %case10 ], [ %11, %case11 ], [ %12, %case12 ], [ %13, %case13 ], [ %14, %case14 ], [ %15, %case15 ], [ %16, %case16 ], [ %17, %case17 ], [ %18, %case18 ], [ %19, %case19 ], [ %20, %case20 ], [ %21, %case21 ], [ %22, %case22 ], [ %23, %case23 ], [ %24, %case24 ], [ %25, %case25 ], [ %26, %case26 ], [ %27, %case27 ], [ %28, %case28 ], [ %29, %case29 ], [ %30, %case30 ], [ %31, %case31 ], [ %32, %case32 ], [ %33, %case33 ], [ %34, %case34 ], [ %35, %case35 ], [ %36, %case36 ], [ %37, %case37 ], [ %38, %case38 ], [ %39, %case39 ], [ %40, %case40 ], [ %41, %case41 ], [ %42, %case42 ], [ %43, %case43 ], [ %44, %case44 ], [ %45, %case45 ], [ %46, %case46 ], [ %47, %case47 ], [ %48, %case48 ], [ %49, %case49 ], [ %50, %case50 ], [ %51, %case51 ], [ %52, %case52 ], [ %53, %case53 ], [ %54, %case54 ], [ %55, %case55 ], [ %56, %case56 ], [ %57, %case57 ], [ %58, %case58 ], [ %59, %case59 ], [ %60, %case60 ], [ %61, %case61 ], [ %62, %case62 ], [ %63, %case63 ], [ %64, %case64 ], [ %65, %case65 ], [ %66, %case66 ], [ %67, %case67 ], [ %68, %case68 ], [ %69, %case69 ], [ %70, %case70 ], [ %71, %case71 ], [ %72, %case72 ], [ %73, %case73 ], [ %74, %case74 ], [ %75, %case75 ], [ %76, %case76 ], [ %77, %case77 ], [ %78, %case78 ], [ %79, %case79 ], [ %80, %case80 ], [ %81, %case81 ], [ %82, %case82 ], [ %83, %case83 ], [ %84, %case84 ], [ %85, %case85 ], [ %86, %case86 ], [ %87, %case87 ], [ %88, %case88 ], [ %89, %case89 ], [ %90, %case90 ], [ %91, %case91 ], [ %92, %case92 ], [ %93, %case93 ], [ %94, %case94 ], [ %95, %case95 ], [ %96, %case96 ], [ %97, %case97 ], [ %98, %case98 ], [ %99, %case99 ], [ %100, %case100 ], [ %101, %case101 ], [ %102, %case102 ], [ %103, %case103 ], [ %104, %case104 ], [ %105, %case105 ], [ %106, %case106 ], [ %107, %case107 ], [ %108, %case108 ], [ %109, %case109 ], [ %110, %case110 ], [ %111, %case111 ], [ %112, %case112 ], [ %113, %case113 ], [ %114, %case114 ], [ %115, %case115 ], [ %116, %case116 ], [ %117, %case117 ], [ %118, %case118 ], [ %119, %case119 ], [ %120, %case120 ], [ %121, %case121 ], [ %122, %case122 ], [ %123, %case123 ], [ %124, %case124 ], [ %125, %case125 ], [ %126, %case126 ], [ %127, %case127 ], [ %128, %case128 ], [ %129, %case129 ], [ %130, %case130 ], [ %131, %case131 ], [ %132, %case132 ], [ %133, %case133 ], [ %134, %case134 ], [ %135, %case135 ], [ %136, %case136 ], [ %137, %case137 ], [ %138, %case138 ], [ %139, %case139 ], [ %140, %case140 ], [ %141, %case141 ], [ %142, %case142 ], [ %143, %case143 ], [ %144, %case144 ], [ %145, %case145 ], [ %146, %case146 ], [ %147, %case147 ], [ %148, %case148 ], [ %149, %case149 ], [ %150, %case150 ], [ %151, %case151 ], [ %152, %case152 ], [ %153, %case153 ], [ %154, %case154 ], [ %155, %case155 ], [ %156, %case156 ], [ %157, %case157 ], [ %158, %case158 ], [ %159, %case159 ], [ %160, %case160 ], [ %161, %case161 ], [ %162, %case162 ], [ %163, %case163 ], [ %164, %case164 ], [ %165, %case165 ], [ %166, %case166 ], [ %167, %case167 ], [ %168, %case168 ], [ %169, %case169 ], [ %170, %case170 ], [ %171, %case171 ], [ %172, %case172 ], [ %173, %case173 ], [ %174, %case174 ], [ %175, %case175 ], [ %176, %case176 ], [ %177, %case177 ], [ %178, %case178 ], [ %179, %case179 ], [ %180, %case180 ], [ %181, %case181 ], [ %182, %case182 ], [ %183, %case183 ], [ %184, %case184 ], [ %185, %case185 ], [ %186, %case186 ], [ %187, %case187 ], [ %188, %case188 ], [ %189, %case189 ], [ %190, %case190 ], [ %191, %case191 ], [ %192, %case192 ], [ %193, %case193 ], [ %194, %case194 ], [ %195, %case195 ], [ %196, %case196 ], [ %197, %case197 ], [ %198, %case198 ], [ %199, %case199 ], [ %200, %case200 ], [ %201, %case201 ], [ %202, %case202 ], [ %203, %case203 ], [ %204, %case204 ], [ %205, %case205 ], [ %206, %case206 ], [ %207, %case207 ], [ %208, %case208 ], [ %209, %case209 ], [ %210, %case210 ], [ %211, %case211 ], [ %212, %case212 ], [ %213, %case213 ], [ %214, %case214 ], [ %215, %case215 ], [ %216, %case216 ], [ %217, %case217 ], [ %218, %case218 ], [ %219, %case219 ], [ %220, %case220 ], [ %221, %case221 ], [ %222, %case222 ], [ %223, %case223 ], [ %224, %case224 ], [ %225, %case225 ], [ %226, %case226 ], [ %227, %case227 ], [ %228, %case228 ], [ %229, %case229 ], [ %230, %case230 ], [ %231, %case231 ], [ %232, %case232 ], [ %233, %case233 ], [ %234, %case234 ], [ %235, %case235 ], [ %236, %case236 ], [ %237, %case237 ], [ %238, %case238 ], [ %239, %case239 ], [ %240, %case240 ], [ %241, %case241 ], [ %242, %case242 ], [ %243, %case243 ], [ %244, %case244 ], [ %245, %case245 ], [ %246, %case246 ], [ %247, %case247 ], [ %248, %case248 ], [ %249, %case249 ], [ %250, %case250 ], [ %251, %case251 ], [ %252, %case252 ], [ %253, %case253 ], [ %254, %case254 ], [ %255, %case255 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0

case4:                                            ; preds = %entry
  br label %case0

case5:                                            ; preds = %entry
  br label %case0

case6:                                            ; preds = %entry
  br label %case0

case7:                                            ; preds = %entry
  br label %case0

case8:                                            ; preds = %entry
  br label %case0

case9:                                            ; preds = %entry
  br label %case0

case10:                                           ; preds = %entry
  br label %case0

case11:                                           ; preds = %entry
  br label %case0

case12:                                           ; preds = %entry
  br label %case0

case13:                                           ; preds = %entry
  br label %case0

case14:                                           ; preds = %entry
  br label %case0

case15:                                           ; preds = %entry
  br label %case0

case16:                                           ; preds = %entry
  br label %case0

case17:                                           ; preds = %entry
  br label %case0

case18:                                           ; preds = %entry
  br label %case0

case19:                                           ; preds = %entry
  br label %case0

case20:                                           ; preds = %entry
  br label %case0

case21:                                           ; preds = %entry
  br label %case0

case22:                                           ; preds = %entry
  br label %case0

case23:                                           ; preds = %entry
  br label %case0

case24:                                           ; preds = %entry
  br label %case0

case25:                                           ; preds = %entry
  br label %case0

case26:                                           ; preds = %entry
  br label %case0

case27:                                           ; preds = %entry
  br label %case0

case28:                                           ; preds = %entry
  br label %case0

case29:                                           ; preds = %entry
  br label %case0

case30:                                           ; preds = %entry
  br label %case0

case31:                                           ; preds = %entry
  br label %case0

case32:                                           ; preds = %entry
  br label %case0

case33:                                           ; preds = %entry
  br label %case0

case34:                                           ; preds = %entry
  br label %case0

case35:                                           ; preds = %entry
  br label %case0

case36:                                           ; preds = %entry
  br label %case0

case37:                                           ; preds = %entry
  br label %case0

case38:                                           ; preds = %entry
  br label %case0

case39:                                           ; preds = %entry
  br label %case0

case40:                                           ; preds = %entry
  br label %case0

case41:                                           ; preds = %entry
  br label %case0

case42:                                           ; preds = %entry
  br label %case0

case43:                                           ; preds = %entry
  br label %case0

case44:                                           ; preds = %entry
  br label %case0

case45:                                           ; preds = %entry
  br label %case0

case46:                                           ; preds = %entry
  br label %case0

case47:                                           ; preds = %entry
  br label %case0

case48:                                           ; preds = %entry
  br label %case0

case49:                                           ; preds = %entry
  br label %case0

case50:                                           ; preds = %entry
  br label %case0

case51:                                           ; preds = %entry
  br label %case0

case52:                                           ; preds = %entry
  br label %case0

case53:                                           ; preds = %entry
  br label %case0

case54:                                           ; preds = %entry
  br label %case0

case55:                                           ; preds = %entry
  br label %case0

case56:                                           ; preds = %entry
  br label %case0

case57:                                           ; preds = %entry
  br label %case0

case58:                                           ; preds = %entry
  br label %case0

case59:                                           ; preds = %entry
  br label %case0

case60:                                           ; preds = %entry
  br label %case0

case61:                                           ; preds = %entry
  br label %case0

case62:                                           ; preds = %entry
  br label %case0

case63:                                           ; preds = %entry
  br label %case0

case64:                                           ; preds = %entry
  br label %case0

case65:                                           ; preds = %entry
  br label %case0

case66:                                           ; preds = %entry
  br label %case0

case67:                                           ; preds = %entry
  br label %case0

case68:                                           ; preds = %entry
  br label %case0

case69:                                           ; preds = %entry
  br label %case0

case70:                                           ; preds = %entry
  br label %case0

case71:                                           ; preds = %entry
  br label %case0

case72:                                           ; preds = %entry
  br label %case0

case73:                                           ; preds = %entry
  br label %case0

case74:                                           ; preds = %entry
  br label %case0

case75:                                           ; preds = %entry
  br label %case0

case76:                                           ; preds = %entry
  br label %case0

case77:                                           ; preds = %entry
  br label %case0

case78:                                           ; preds = %entry
  br label %case0

case79:                                           ; preds = %entry
  br label %case0

case80:                                           ; preds = %entry
  br label %case0

case81:                                           ; preds = %entry
  br label %case0

case82:                                           ; preds = %entry
  br label %case0

case83:                                           ; preds = %entry
  br label %case0

case84:                                           ; preds = %entry
  br label %case0

case85:                                           ; preds = %entry
  br label %case0

case86:                                           ; preds = %entry
  br label %case0

case87:                                           ; preds = %entry
  br label %case0

case88:                                           ; preds = %entry
  br label %case0

case89:                                           ; preds = %entry
  br label %case0

case90:                                           ; preds = %entry
  br label %case0

case91:                                           ; preds = %entry
  br label %case0

case92:                                           ; preds = %entry
  br label %case0

case93:                                           ; preds = %entry
  br label %case0

case94:                                           ; preds = %entry
  br label %case0

case95:                                           ; preds = %entry
  br label %case0

case96:                                           ; preds = %entry
  br label %case0

case97:                                           ; preds = %entry
  br label %case0

case98:                                           ; preds = %entry
  br label %case0

case99:                                           ; preds = %entry
  br label %case0

case100:                                          ; preds = %entry
  br label %case0

case101:                                          ; preds = %entry
  br label %case0

case102:                                          ; preds = %entry
  br label %case0

case103:                                          ; preds = %entry
  br label %case0

case104:                                          ; preds = %entry
  br label %case0

case105:                                          ; preds = %entry
  br label %case0

case106:                                          ; preds = %entry
  br label %case0

case107:                                          ; preds = %entry
  br label %case0

case108:                                          ; preds = %entry
  br label %case0

case109:                                          ; preds = %entry
  br label %case0

case110:                                          ; preds = %entry
  br label %case0

case111:                                          ; preds = %entry
  br label %case0

case112:                                          ; preds = %entry
  br label %case0

case113:                                          ; preds = %entry
  br label %case0

case114:                                          ; preds = %entry
  br label %case0

case115:                                          ; preds = %entry
  br label %case0

case116:                                          ; preds = %entry
  br label %case0

case117:                                          ; preds = %entry
  br label %case0

case118:                                          ; preds = %entry
  br label %case0

case119:                                          ; preds = %entry
  br label %case0

case120:                                          ; preds = %entry
  br label %case0

case121:                                          ; preds = %entry
  br label %case0

case122:                                          ; preds = %entry
  br label %case0

case123:                                          ; preds = %entry
  br label %case0

case124:                                          ; preds = %entry
  br label %case0

case125:                                          ; preds = %entry
  br label %case0

case126:                                          ; preds = %entry
  br label %case0

case127:                                          ; preds = %entry
  br label %case0

case128:                                          ; preds = %entry
  br label %case0

case129:                                          ; preds = %entry
  br label %case0

case130:                                          ; preds = %entry
  br label %case0

case131:                                          ; preds = %entry
  br label %case0

case132:                                          ; preds = %entry
  br label %case0

case133:                                          ; preds = %entry
  br label %case0

case134:                                          ; preds = %entry
  br label %case0

case135:                                          ; preds = %entry
  br label %case0

case136:                                          ; preds = %entry
  br label %case0

case137:                                          ; preds = %entry
  br label %case0

case138:                                          ; preds = %entry
  br label %case0

case139:                                          ; preds = %entry
  br label %case0

case140:                                          ; preds = %entry
  br label %case0

case141:                                          ; preds = %entry
  br label %case0

case142:                                          ; preds = %entry
  br label %case0

case143:                                          ; preds = %entry
  br label %case0

case144:                                          ; preds = %entry
  br label %case0

case145:                                          ; preds = %entry
  br label %case0

case146:                                          ; preds = %entry
  br label %case0

case147:                                          ; preds = %entry
  br label %case0

case148:                                          ; preds = %entry
  br label %case0

case149:                                          ; preds = %entry
  br label %case0

case150:                                          ; preds = %entry
  br label %case0

case151:                                          ; preds = %entry
  br label %case0

case152:                                          ; preds = %entry
  br label %case0

case153:                                          ; preds = %entry
  br label %case0

case154:                                          ; preds = %entry
  br label %case0

case155:                                          ; preds = %entry
  br label %case0

case156:                                          ; preds = %entry
  br label %case0

case157:                                          ; preds = %entry
  br label %case0

case158:                                          ; preds = %entry
  br label %case0

case159:                                          ; preds = %entry
  br label %case0

case160:                                          ; preds = %entry
  br label %case0

case161:                                          ; preds = %entry
  br label %case0

case162:                                          ; preds = %entry
  br label %case0

case163:                                          ; preds = %entry
  br label %case0

case164:                                          ; preds = %entry
  br label %case0

case165:                                          ; preds = %entry
  br label %case0

case166:                                          ; preds = %entry
  br label %case0

case167:                                          ; preds = %entry
  br label %case0

case168:                                          ; preds = %entry
  br label %case0

case169:                                          ; preds = %entry
  br label %case0

case170:                                          ; preds = %entry
  br label %case0

case171:                                          ; preds = %entry
  br label %case0

case172:                                          ; preds = %entry
  br label %case0

case173:                                          ; preds = %entry
  br label %case0

case174:                                          ; preds = %entry
  br label %case0

case175:                                          ; preds = %entry
  br label %case0

case176:                                          ; preds = %entry
  br label %case0

case177:                                          ; preds = %entry
  br label %case0

case178:                                          ; preds = %entry
  br label %case0

case179:                                          ; preds = %entry
  br label %case0

case180:                                          ; preds = %entry
  br label %case0

case181:                                          ; preds = %entry
  br label %case0

case182:                                          ; preds = %entry
  br label %case0

case183:                                          ; preds = %entry
  br label %case0

case184:                                          ; preds = %entry
  br label %case0

case185:                                          ; preds = %entry
  br label %case0

case186:                                          ; preds = %entry
  br label %case0

case187:                                          ; preds = %entry
  br label %case0

case188:                                          ; preds = %entry
  br label %case0

case189:                                          ; preds = %entry
  br label %case0

case190:                                          ; preds = %entry
  br label %case0

case191:                                          ; preds = %entry
  br label %case0

case192:                                          ; preds = %entry
  br label %case0

case193:                                          ; preds = %entry
  br label %case0

case194:                                          ; preds = %entry
  br label %case0

case195:                                          ; preds = %entry
  br label %case0

case196:                                          ; preds = %entry
  br label %case0

case197:                                          ; preds = %entry
  br label %case0

case198:                                          ; preds = %entry
  br label %case0

case199:                                          ; preds = %entry
  br label %case0

case200:                                          ; preds = %entry
  br label %case0

case201:                                          ; preds = %entry
  br label %case0

case202:                                          ; preds = %entry
  br label %case0

case203:                                          ; preds = %entry
  br label %case0

case204:                                          ; preds = %entry
  br label %case0

case205:                                          ; preds = %entry
  br label %case0

case206:                                          ; preds = %entry
  br label %case0

case207:                                          ; preds = %entry
  br label %case0

case208:                                          ; preds = %entry
  br label %case0

case209:                                          ; preds = %entry
  br label %case0

case210:                                          ; preds = %entry
  br label %case0

case211:                                          ; preds = %entry
  br label %case0

case212:                                          ; preds = %entry
  br label %case0

case213:                                          ; preds = %entry
  br label %case0

case214:                                          ; preds = %entry
  br label %case0

case215:                                          ; preds = %entry
  br label %case0

case216:                                          ; preds = %entry
  br label %case0

case217:                                          ; preds = %entry
  br label %case0

case218:                                          ; preds = %entry
  br label %case0

case219:                                          ; preds = %entry
  br label %case0

case220:                                          ; preds = %entry
  br label %case0

case221:                                          ; preds = %entry
  br label %case0

case222:                                          ; preds = %entry
  br label %case0

case223:                                          ; preds = %entry
  br label %case0

case224:                                          ; preds = %entry
  br label %case0

case225:                                          ; preds = %entry
  br label %case0

case226:                                          ; preds = %entry
  br label %case0

case227:                                          ; preds = %entry
  br label %case0

case228:                                          ; preds = %entry
  br label %case0

case229:                                          ; preds = %entry
  br label %case0

case230:                                          ; preds = %entry
  br label %case0

case231:                                          ; preds = %entry
  br label %case0

case232:                                          ; preds = %entry
  br label %case0

case233:                                          ; preds = %entry
  br label %case0

case234:                                          ; preds = %entry
  br label %case0

case235:                                          ; preds = %entry
  br label %case0

case236:                                          ; preds = %entry
  br label %case0

case237:                                          ; preds = %entry
  br label %case0

case238:                                          ; preds = %entry
  br label %case0

case239:                                          ; preds = %entry
  br label %case0

case240:                                          ; preds = %entry
  br label %case0

case241:                                          ; preds = %entry
  br label %case0

case242:                                          ; preds = %entry
  br label %case0

case243:                                          ; preds = %entry
  br label %case0

case244:                                          ; preds = %entry
  br label %case0

case245:                                          ; preds = %entry
  br label %case0

case246:                                          ; preds = %entry
  br label %case0

case247:                                          ; preds = %entry
  br label %case0

case248:                                          ; preds = %entry
  br label %case0

case249:                                          ; preds = %entry
  br label %case0

case250:                                          ; preds = %entry
  br label %case0

case251:                                          ; preds = %entry
  br label %case0

case252:                                          ; preds = %entry
  br label %case0

case253:                                          ; preds = %entry
  br label %case0

case254:                                          ; preds = %entry
  br label %case0

case255:                                          ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_13 = shl i8 1, %empty
  %empty_14 = and i8 %0, %empty_13
  %empty_15 = icmp ne i8 %empty_14, 0
  ret i1 %empty_15
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_16 = zext i2 %1 to i8
  %empty_17 = shl i8 %empty, 2
  %empty_18 = or i8 %empty_17, %empty_16
  ret i8 %empty_18
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_19 = zext i4 %1 to i8
  %empty_20 = shl i8 %empty, 4
  %empty_21 = or i8 %empty_20, %empty_19
  ret i8 %empty_21
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_22 = zext i2 %1 to i4
  %empty_23 = shl i4 %empty, 2
  %empty_24 = or i4 %empty_23, %empty_22
  ret i4 %empty_24
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %2 to i64
  %empty_25 = zext i32 %3 to i64
  %empty_26 = shl i64 %empty, 32
  %empty_27 = or i64 %empty_26, %empty_25
  %empty_28 = zext i32 %1 to i96
  %empty_29 = zext i64 %empty_27 to i96
  %empty_30 = shl i96 %empty_28, 64
  %empty_31 = or i96 %empty_30, %empty_29
  %empty_32 = zext i32 %0 to i128
  %empty_33 = zext i96 %empty_31 to i128
  %empty_34 = shl i128 %empty_32, 96
  %empty_35 = or i128 %empty_34, %empty_33
  ret i128 %empty_35
}

define weak i104 @_ssdm_op_BitConcatenate.i104.i8.i32.i32.i32(i8, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %2 to i64
  %empty_36 = zext i32 %3 to i64
  %empty_37 = shl i64 %empty, 32
  %empty_38 = or i64 %empty_37, %empty_36
  %empty_39 = zext i32 %1 to i96
  %empty_40 = zext i64 %empty_38 to i96
  %empty_41 = shl i96 %empty_39, 64
  %empty_42 = or i96 %empty_41, %empty_40
  %empty_43 = zext i8 %0 to i104
  %empty_44 = zext i96 %empty_42 to i104
  %empty_45 = shl i104 %empty_43, 96
  %empty_46 = or i104 %empty_45, %empty_44
  ret i104 %empty_46
}

define internal fastcc void @SubBytes([4 x i128]* nocapture %state, i6 %round, [240 x i32]* %RoundKey) {
.preheader12.preheader.0:
  %round_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %round)
  %state_addr = getelementptr [4 x i128]* %state, i32 0, i32 0
  %state_load = load i128* %state_addr, align 8
  %tmp_10 = trunc i128 %state_load to i8
  %tmp_5 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %tmp_10)
  %state_addr_1 = getelementptr [4 x i128]* %state, i32 0, i32 1
  %state_load_1 = load i128* %state_addr_1, align 8
  %tmp_11 = trunc i128 %state_load_1 to i8
  %tmp_13 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %tmp_11)
  %state_addr_2 = getelementptr [4 x i128]* %state, i32 0, i32 2
  %state_load_2 = load i128* %state_addr_2, align 8
  %tmp_14 = trunc i128 %state_load_2 to i8
  %tmp_15 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %tmp_14)
  %state_addr_3 = getelementptr [4 x i128]* %state, i32 0, i32 3
  %state_load_3 = load i128* %state_addr_3, align 8
  %tmp_16 = trunc i128 %state_load_3 to i8
  %tmp_17 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %tmp_16)
  %num_t_i4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load, i32 32, i32 39)
  %tmp_18 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i4)
  %num_t_i5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_1, i32 32, i32 39)
  %tmp_21 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i5)
  %num_t_i6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_2, i32 32, i32 39)
  %tmp_22 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i6)
  %num_t_i7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_3, i32 32, i32 39)
  %tmp_23 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i7)
  %num_t_i8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load, i32 64, i32 71)
  %tmp_24 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i8)
  %num_t_i9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_1, i32 64, i32 71)
  %tmp_25 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i9)
  %num_t_i = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_2, i32 64, i32 71)
  %tmp_28 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i)
  %num_t_i1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_3, i32 64, i32 71)
  %tmp_29 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i1)
  %num_t_i2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load, i32 96, i32 103)
  %tmp_30 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i2)
  %num_t_i3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_1, i32 96, i32 103)
  %tmp_31 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i3)
  %num_t_i10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_2, i32 96, i32 103)
  %tmp_32 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i10)
  %num_t_i11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %state_load_3, i32 96, i32 103)
  %tmp_35 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %num_t_i11)
  %temp = trunc i32 %tmp_18 to i8
  %tmp = zext i8 %temp to i32
  %temp_1 = trunc i32 %tmp_24 to i8
  %tmp_1 = zext i8 %temp_1 to i32
  %temp_2 = trunc i32 %tmp_25 to i8
  %tmp_2 = zext i8 %temp_2 to i32
  %temp_3 = trunc i32 %tmp_30 to i8
  %tmp_s = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_35, i32 %tmp_28, i32 %tmp_21, i32 %tmp_5)
  store i128 %tmp_s, i128* %state_addr, align 8
  %tmp_6 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_31, i32 %tmp_1, i32 %tmp_23, i32 %tmp_15)
  store i128 %tmp_6, i128* %state_addr_2, align 8
  %tmp_3 = zext i8 %temp_3 to i32
  %tmp_7 = call i104 @_ssdm_op_BitConcatenate.i104.i8.i32.i32.i32(i8 %temp_3, i32 %tmp_29, i32 %tmp_22, i32 %tmp_13)
  %tmp_9 = zext i104 %tmp_7 to i128
  store i128 %tmp_9, i128* %state_addr_1, align 8
  %tmp_42 = trunc i6 %round_read to i5
  %tmp_4 = icmp slt i5 %tmp_42, 10
  br i1 %tmp_4, label %.preheader11.0, label %.preheader.preheader.0

.preheader11.0:                                   ; preds = %.preheader12.preheader.0
  %tmp_43 = trunc i32 %tmp_5 to i8
  %tmp_44 = trunc i32 %tmp_21 to i8
  %tmp_46 = trunc i32 %tmp_28 to i8
  %tmp_12 = xor i8 %tmp_44, %tmp_43
  %tmp_47 = trunc i32 %tmp_35 to i8
  %tmp1 = xor i8 %tmp_12, %tmp_47
  %Tmp = xor i8 %tmp1, %tmp_46
  %tmp_48 = shl i8 %tmp_12, 1
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_12, i32 7)
  %tmp_18_cast_cast = select i1 %tmp_49, i8 27, i8 0
  %tmp2 = xor i8 %tmp_48, %Tmp
  %tmp_19 = xor i8 %tmp2, %tmp_18_cast_cast
  %tmp_20 = zext i8 %tmp_19 to i32
  %Tm_2 = xor i8 %tmp_46, %tmp_44
  %tmp_50 = shl i8 %Tm_2, 1
  %tmp_51 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2, i32 7)
  %tmp_25_cast_cast = select i1 %tmp_51, i8 27, i8 0
  %tmp3 = xor i8 %tmp_50, %Tmp
  %tmp_26 = xor i8 %tmp3, %tmp_25_cast_cast
  %tmp_27 = zext i8 %tmp_26 to i32
  %Tm_4 = xor i8 %tmp_47, %tmp_46
  %tmp_52 = shl i8 %Tm_4, 1
  %tmp_53 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4, i32 7)
  %tmp_32_cast_cast = select i1 %tmp_53, i8 27, i8 0
  %tmp4 = xor i8 %Tmp, %tmp_32_cast_cast
  %tmp_33 = xor i8 %tmp4, %tmp_52
  %tmp_34 = zext i8 %tmp_33 to i32
  %Tm_6 = xor i8 %tmp_47, %tmp_43
  %tmp_54 = shl i8 %Tm_6, 1
  %tmp_55 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6, i32 7)
  %tmp_39_cast_cast = select i1 %tmp_55, i8 27, i8 0
  %tmp5 = xor i8 %Tmp, %tmp_39_cast_cast
  %tmp_36 = xor i8 %tmp5, %tmp_54
  %tmp_37 = zext i8 %tmp_36 to i32
  %tmp_57 = trunc i32 %tmp_13 to i8
  %tmp_58 = trunc i32 %tmp_22 to i8
  %tmp_59 = trunc i32 %tmp_29 to i8
  %tmp_38 = xor i8 %tmp_58, %tmp_57
  %tmp6 = xor i8 %tmp_38, %temp_3
  %Tmp_1 = xor i8 %tmp6, %tmp_59
  %tmp_60 = shl i8 %tmp_38, 1
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_38, i32 7)
  %tmp_11_1_cast_cast = select i1 %tmp_61, i8 27, i8 0
  %tmp7 = xor i8 %tmp_60, %Tmp_1
  %tmp_12_1 = xor i8 %tmp7, %tmp_11_1_cast_cast
  %tmp_13_1 = zext i8 %tmp_12_1 to i32
  %Tm_2_1 = xor i8 %tmp_59, %tmp_58
  %tmp_62 = shl i8 %Tm_2_1, 1
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_1, i32 7)
  %tmp_18_1_cast_cast = select i1 %tmp_63, i8 27, i8 0
  %tmp8 = xor i8 %tmp_62, %Tmp_1
  %tmp_19_1 = xor i8 %tmp8, %tmp_18_1_cast_cast
  %tmp_20_1 = zext i8 %tmp_19_1 to i32
  %Tm_4_1 = xor i8 %temp_3, %tmp_59
  %tmp_64 = shl i8 %Tm_4_1, 1
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_1, i32 7)
  %tmp_25_1_cast_cast = select i1 %tmp_65, i8 27, i8 0
  %tmp9 = xor i8 %Tmp_1, %tmp_25_1_cast_cast
  %tmp_26_1 = xor i8 %tmp9, %tmp_64
  %tmp_27_1 = zext i8 %tmp_26_1 to i32
  %Tm_6_1 = xor i8 %temp_3, %tmp_57
  %tmp_66 = shl i8 %Tm_6_1, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_1, i32 7)
  %tmp_32_1_cast_cast = select i1 %tmp_68, i8 27, i8 0
  %tmp10 = xor i8 %tmp_66, %Tmp_1
  %tmp11 = xor i8 %tmp_32_1_cast_cast, %temp_3
  %tmp_35_s = xor i8 %tmp11, %tmp10
  %tmp_35_1 = zext i8 %tmp_35_s to i32
  %tmp_69 = trunc i32 %tmp_15 to i8
  %tmp_70 = trunc i32 %tmp_23 to i8
  %tmp_39 = xor i8 %tmp_70, %tmp_69
  %tmp_71 = trunc i32 %tmp_31 to i8
  %tmp12 = xor i8 %tmp_39, %tmp_71
  %Tmp_2 = xor i8 %tmp12, %temp_1
  %tmp_72 = shl i8 %tmp_39, 1
  %tmp_73 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_39, i32 7)
  %tmp_11_2_cast_cast = select i1 %tmp_73, i8 27, i8 0
  %tmp13 = xor i8 %tmp_72, %Tmp_2
  %tmp_12_2 = xor i8 %tmp13, %tmp_11_2_cast_cast
  %tmp_13_2 = zext i8 %tmp_12_2 to i32
  %Tm_2_2 = xor i8 %temp_1, %tmp_70
  %tmp_74 = shl i8 %Tm_2_2, 1
  %tmp_75 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_2, i32 7)
  %tmp_18_2_cast_cast = select i1 %tmp_75, i8 27, i8 0
  %tmp14 = xor i8 %tmp_74, %Tmp_2
  %tmp_19_2 = xor i8 %tmp14, %tmp_18_2_cast_cast
  %tmp_20_2 = zext i8 %tmp_19_2 to i32
  %Tm_4_2 = xor i8 %tmp_71, %temp_1
  %tmp_76 = shl i8 %Tm_4_2, 1
  %tmp_77 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_2, i32 7)
  %tmp_25_2_cast_cast = select i1 %tmp_77, i8 27, i8 0
  %tmp15 = xor i8 %tmp_76, %Tmp_2
  %tmp16 = xor i8 %tmp_25_2_cast_cast, %temp_1
  %tmp_28_s = xor i8 %tmp16, %tmp15
  %tmp_28_2 = zext i8 %tmp_28_s to i32
  %Tm_6_2 = xor i8 %tmp_71, %tmp_69
  %tmp_88 = shl i8 %Tm_6_2, 1
  %tmp_89 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_2, i32 7)
  %tmp_32_2_cast_cast = select i1 %tmp_89, i8 27, i8 0
  %tmp17 = xor i8 %Tmp_2, %tmp_32_2_cast_cast
  %tmp_33_2 = xor i8 %tmp17, %tmp_88
  %tmp_34_2 = zext i8 %tmp_33_2 to i32
  %tmp_90 = trunc i32 %tmp_17 to i8
  %tmp_40 = xor i8 %temp, %tmp_90
  %tmp_93 = trunc i32 %tmp_32 to i8
  %tmp18 = xor i8 %tmp_40, %tmp_93
  %Tmp_3 = xor i8 %tmp18, %temp_2
  %tmp_94 = shl i8 %tmp_40, 1
  %tmp_95 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_40, i32 7)
  %tmp_11_3_cast_cast = select i1 %tmp_95, i8 27, i8 0
  %tmp19 = xor i8 %tmp_94, %Tmp_3
  %tmp_12_3 = xor i8 %tmp19, %tmp_11_3_cast_cast
  %tmp_13_3 = zext i8 %tmp_12_3 to i32
  %Tm_2_3 = xor i8 %temp_2, %temp
  %tmp_96 = shl i8 %Tm_2_3, 1
  %tmp_97 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_2_3, i32 7)
  %tmp_18_3_cast_cast = select i1 %tmp_97, i8 27, i8 0
  %tmp20 = xor i8 %tmp_18_3_cast_cast, %tmp_96
  %tmp21 = xor i8 %Tmp_3, %temp
  %tmp_21_s = xor i8 %tmp21, %tmp20
  %tmp_21_3 = zext i8 %tmp_21_s to i32
  %Tm_4_3 = xor i8 %tmp_93, %temp_2
  %tmp_98 = shl i8 %Tm_4_3, 1
  %tmp_99 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_4_3, i32 7)
  %tmp_25_3_cast_cast = select i1 %tmp_99, i8 27, i8 0
  %tmp22 = xor i8 %tmp_98, %Tmp_3
  %tmp23 = xor i8 %tmp_25_3_cast_cast, %temp_2
  %tmp_28_4 = xor i8 %tmp23, %tmp22
  %tmp_28_3 = zext i8 %tmp_28_4 to i32
  %Tm_6_3 = xor i8 %tmp_93, %tmp_90
  %tmp_100 = shl i8 %Tm_6_3, 1
  %tmp_101 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %Tm_6_3, i32 7)
  %tmp_32_3_cast_cast = select i1 %tmp_101, i8 27, i8 0
  %tmp24 = xor i8 %Tmp_3, %tmp_32_3_cast_cast
  %tmp_33_3 = xor i8 %tmp24, %tmp_100
  %tmp_34_3 = zext i8 %tmp_33_3 to i32
  %tmp_35_3 = xor i32 %tmp_32, %tmp_34_3
  %tmp_102 = trunc i6 %round_read to i4
  %tmp_8 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_102, i4 0)
  %tmp_8_cast = zext i8 %tmp_8 to i32
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_8_cast
  %RoundKey_load = load i32* %RoundKey_addr, align 4
  %tmp25 = xor i32 %tmp_5, %tmp_20
  %tmp_41 = xor i32 %tmp25, %RoundKey_load
  %sum29_0_s = or i8 %tmp_8, 1
  %sum29_0_cast = zext i8 %sum29_0_s to i32
  %RoundKey_addr_1 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_cast
  %RoundKey_load_1 = load i32* %RoundKey_addr_1, align 4
  %tmp26 = xor i32 %tmp_21, %tmp_27
  %tmp_43_0_1 = xor i32 %tmp26, %RoundKey_load_1
  %sum29_0_1 = or i8 %tmp_8, 2
  %sum29_0_1_cast = zext i8 %sum29_0_1 to i32
  %RoundKey_addr_2 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_1_cast
  %RoundKey_load_2 = load i32* %RoundKey_addr_2, align 4
  %tmp27 = xor i32 %tmp_28, %tmp_34
  %tmp_43_0_2 = xor i32 %tmp27, %RoundKey_load_2
  %sum29_0_2 = or i8 %tmp_8, 3
  %sum29_0_2_cast = zext i8 %sum29_0_2 to i32
  %RoundKey_addr_3 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_0_2_cast
  %RoundKey_load_3 = load i32* %RoundKey_addr_3, align 4
  %tmp28 = xor i32 %tmp_35, %tmp_37
  %tmp_43_0_3 = xor i32 %tmp28, %RoundKey_load_3
  %tmp_45 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_43_0_3, i32 %tmp_43_0_2, i32 %tmp_43_0_1, i32 %tmp_41)
  store i128 %tmp_45, i128* %state_addr, align 8
  %tmp_41_1_s = or i8 %tmp_8, 4
  %tmp_41_1_cast = zext i8 %tmp_41_1_s to i32
  %RoundKey_addr_4 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_1_cast
  %RoundKey_load_4 = load i32* %RoundKey_addr_4, align 4
  %tmp29 = xor i32 %tmp_13, %tmp_13_1
  %tmp_43_1 = xor i32 %tmp29, %RoundKey_load_4
  %sum29_1_s = or i8 %tmp_8, 5
  %sum29_1_cast = zext i8 %sum29_1_s to i32
  %RoundKey_addr_5 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_cast
  %RoundKey_load_5 = load i32* %RoundKey_addr_5, align 4
  %tmp30 = xor i32 %tmp_22, %tmp_20_1
  %tmp_43_1_1 = xor i32 %tmp30, %RoundKey_load_5
  %sum29_1_1 = or i8 %tmp_8, 6
  %sum29_1_1_cast = zext i8 %sum29_1_1 to i32
  %RoundKey_addr_6 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_1_cast
  %RoundKey_load_6 = load i32* %RoundKey_addr_6, align 4
  %tmp31 = xor i32 %tmp_29, %tmp_27_1
  %tmp_43_1_2 = xor i32 %tmp31, %RoundKey_load_6
  %sum29_1_2 = or i8 %tmp_8, 7
  %sum29_1_2_cast = zext i8 %sum29_1_2 to i32
  %RoundKey_addr_7 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_1_2_cast
  %RoundKey_load_7 = load i32* %RoundKey_addr_7, align 4
  %tmp_43_1_3 = xor i32 %RoundKey_load_7, %tmp_35_1
  %tmp_56 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_43_1_3, i32 %tmp_43_1_2, i32 %tmp_43_1_1, i32 %tmp_43_1)
  store i128 %tmp_56, i128* %state_addr_1, align 8
  %tmp_41_2_s = or i8 %tmp_8, 8
  %tmp_41_2_cast = zext i8 %tmp_41_2_s to i32
  %RoundKey_addr_8 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_2_cast
  %RoundKey_load_8 = load i32* %RoundKey_addr_8, align 4
  %tmp32 = xor i32 %tmp_15, %tmp_13_2
  %tmp_43_2 = xor i32 %tmp32, %RoundKey_load_8
  %sum29_2_s = or i8 %tmp_8, 9
  %sum29_2_cast = zext i8 %sum29_2_s to i32
  %RoundKey_addr_9 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_cast
  %RoundKey_load_9 = load i32* %RoundKey_addr_9, align 4
  %tmp33 = xor i32 %tmp_23, %tmp_20_2
  %tmp_43_2_1 = xor i32 %tmp33, %RoundKey_load_9
  %sum29_2_1 = or i8 %tmp_8, 10
  %sum29_2_1_cast = zext i8 %sum29_2_1 to i32
  %RoundKey_addr_10 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_1_cast
  %RoundKey_load_10 = load i32* %RoundKey_addr_10, align 4
  %tmp_43_2_2 = xor i32 %RoundKey_load_10, %tmp_28_2
  %sum29_2_2 = or i8 %tmp_8, 11
  %sum29_2_2_cast = zext i8 %sum29_2_2 to i32
  %RoundKey_addr_11 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_2_2_cast
  %RoundKey_load_11 = load i32* %RoundKey_addr_11, align 4
  %tmp34 = xor i32 %tmp_31, %tmp_34_2
  %tmp_43_2_3 = xor i32 %tmp34, %RoundKey_load_11
  %tmp_67 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_43_2_3, i32 %tmp_43_2_2, i32 %tmp_43_2_1, i32 %tmp_43_2)
  store i128 %tmp_67, i128* %state_addr_2, align 8
  %tmp_41_3_s = or i8 %tmp_8, 12
  %tmp_41_3_cast = zext i8 %tmp_41_3_s to i32
  %RoundKey_addr_12 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_41_3_cast
  %RoundKey_load_12 = load i32* %RoundKey_addr_12, align 4
  %tmp35 = xor i32 %tmp_17, %tmp_13_3
  %tmp_43_3 = xor i32 %tmp35, %RoundKey_load_12
  %sum29_3_s = or i8 %tmp_8, 13
  %sum29_3_cast = zext i8 %sum29_3_s to i32
  %RoundKey_addr_13 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_cast
  %RoundKey_load_13 = load i32* %RoundKey_addr_13, align 4
  %tmp_43_3_1 = xor i32 %RoundKey_load_13, %tmp_21_3
  %sum29_3_1 = or i8 %tmp_8, 14
  %sum29_3_1_cast = zext i8 %sum29_3_1 to i32
  %RoundKey_addr_14 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_1_cast
  %RoundKey_load_14 = load i32* %RoundKey_addr_14, align 4
  %tmp_43_3_2 = xor i32 %RoundKey_load_14, %tmp_28_3
  %tmp_78 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_35_3, i32 %tmp_43_3_2, i32 %tmp_43_3_1, i32 %tmp_43_3)
  %sum29_3_2 = or i8 %tmp_8, 15
  %sum29_3_2_cast = zext i8 %sum29_3_2 to i32
  %RoundKey_addr_15 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum29_3_2_cast
  %RoundKey_load_15 = load i32* %RoundKey_addr_15, align 4
  %tmp_43_3_3 = xor i32 %RoundKey_load_15, %tmp_35_3
  br label %.loopexit

.preheader.preheader.0:                           ; preds = %.preheader12.preheader.0
  %RoundKey_addr_16 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 160
  %RoundKey_load_16 = load i32* %RoundKey_addr_16, align 4
  %tmp_79 = xor i32 %RoundKey_load_16, %tmp_5
  %RoundKey_addr_17 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 161
  %RoundKey_load_17 = load i32* %RoundKey_addr_17, align 4
  %tmp_40_0_1 = xor i32 %RoundKey_load_17, %tmp_21
  %RoundKey_addr_18 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 162
  %RoundKey_load_18 = load i32* %RoundKey_addr_18, align 4
  %tmp_40_0_2 = xor i32 %RoundKey_load_18, %tmp_28
  %RoundKey_addr_19 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 163
  %RoundKey_load_19 = load i32* %RoundKey_addr_19, align 4
  %tmp_40_0_3 = xor i32 %RoundKey_load_19, %tmp_35
  %tmp_80 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_40_0_3, i32 %tmp_40_0_2, i32 %tmp_40_0_1, i32 %tmp_79)
  store i128 %tmp_80, i128* %state_addr, align 8
  %RoundKey_addr_20 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 164
  %RoundKey_load_20 = load i32* %RoundKey_addr_20, align 4
  %tmp_40_1 = xor i32 %RoundKey_load_20, %tmp_13
  %RoundKey_addr_21 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 165
  %RoundKey_load_21 = load i32* %RoundKey_addr_21, align 4
  %tmp_40_1_1 = xor i32 %RoundKey_load_21, %tmp_22
  %RoundKey_addr_22 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 166
  %RoundKey_load_22 = load i32* %RoundKey_addr_22, align 4
  %tmp_40_1_2 = xor i32 %RoundKey_load_22, %tmp_29
  %RoundKey_addr_23 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 167
  %RoundKey_load_23 = load i32* %RoundKey_addr_23, align 4
  %tmp_40_1_3 = xor i32 %RoundKey_load_23, %tmp_3
  %tmp_81 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_40_1_3, i32 %tmp_40_1_2, i32 %tmp_40_1_1, i32 %tmp_40_1)
  store i128 %tmp_81, i128* %state_addr_1, align 8
  %RoundKey_addr_24 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 168
  %RoundKey_load_24 = load i32* %RoundKey_addr_24, align 4
  %tmp_40_2 = xor i32 %RoundKey_load_24, %tmp_15
  %RoundKey_addr_25 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 169
  %RoundKey_load_25 = load i32* %RoundKey_addr_25, align 4
  %tmp_40_2_1 = xor i32 %RoundKey_load_25, %tmp_23
  %RoundKey_addr_26 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 170
  %RoundKey_load_26 = load i32* %RoundKey_addr_26, align 4
  %tmp_40_2_2 = xor i32 %RoundKey_load_26, %tmp_1
  %RoundKey_addr_27 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 171
  %RoundKey_load_27 = load i32* %RoundKey_addr_27, align 4
  %tmp_40_2_3 = xor i32 %RoundKey_load_27, %tmp_31
  %tmp_82 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_40_2_3, i32 %tmp_40_2_2, i32 %tmp_40_2_1, i32 %tmp_40_2)
  store i128 %tmp_82, i128* %state_addr_2, align 8
  %RoundKey_addr_28 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 172
  %RoundKey_load_28 = load i32* %RoundKey_addr_28, align 4
  %tmp_40_3 = xor i32 %RoundKey_load_28, %tmp_17
  %RoundKey_addr_29 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 173
  %RoundKey_load_29 = load i32* %RoundKey_addr_29, align 4
  %tmp_40_3_1 = xor i32 %RoundKey_load_29, %tmp
  %RoundKey_addr_30 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 174
  %RoundKey_load_30 = load i32* %RoundKey_addr_30, align 4
  %tmp_40_3_2 = xor i32 %RoundKey_load_30, %tmp_2
  %tmp_83 = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_32, i32 %tmp_40_3_2, i32 %tmp_40_3_1, i32 %tmp_40_3)
  %RoundKey_addr_31 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 175
  %RoundKey_load_31 = load i32* %RoundKey_addr_31, align 4
  %tmp_40_3_3 = xor i32 %RoundKey_load_31, %tmp_32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader.0, %.preheader11.0
  %tmp_84 = phi i128 [ %tmp_83, %.preheader.preheader.0 ], [ %tmp_78, %.preheader11.0 ]
  %storemerge = phi i32 [ %tmp_40_3_3, %.preheader.preheader.0 ], [ %tmp_43_3_3, %.preheader11.0 ]
  %tmp_85 = call i128 @_ssdm_op_PartSet.i128.i128.i32.i32.i32(i128 %tmp_84, i32 %storemerge, i32 96, i32 127)
  store i128 %tmp_85, i128* %state_addr_3, align 8
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
  %tmp_103 = trunc i6 %i_1 to i2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str3) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str3)
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
  %tmp_2 = icmp eq i2 %tmp_103, 0
  %tmp_86 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %temp_1)
  %tmp_108 = trunc i32 %tmp_86 to i8
  %tmp_87 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %temp_2)
  %temp_1_1 = trunc i32 %tmp_87 to i8
  %tmp_88 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %temp_3)
  %temp_2_1 = trunc i32 %tmp_88 to i8
  %tmp_89 = call i32 @_ssdm_op_Mux.ap_auto.256i32.i8(i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22, i8 %temp_0_3)
  %temp_3_1 = trunc i32 %tmp_89 to i8
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %tmp_15 = zext i4 %p_lshr_f_cast to i32
  %Rcon_addr = getelementptr [255 x i8]* @Rcon, i32 0, i32 %tmp_15
  %Rcon_load = load i8* %Rcon_addr, align 1
  %temp_0 = xor i8 %Rcon_load, %tmp_108
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
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str3, i32 %tmp)
  br label %.preheader

; <label>:0                                       ; preds = %.preheader
  ret void
}

define void @Cipher([4 x i128]* %state, [32 x i32]* %Key) {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i128]* %state), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %Key) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @Cipher_str) nounwind
  %RoundKey = alloca [240 x i32], align 4
  call fastcc void @KeyExpansion([240 x i32]* %RoundKey, [32 x i32]* %Key) nounwind
  br label %1

; <label>:1                                       ; preds = %.preheader.preheader.i, %0
  %i_i = phi i3 [ 0, %0 ], [ %i, %.preheader.preheader.i ]
  %i_i_cast2 = zext i3 %i_i to i32
  %exitcond1_i = icmp eq i3 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i = add i3 %i_i, 1
  br i1 %exitcond1_i, label %AddRoundKey.exit.preheader, label %.preheader.preheader.i

AddRoundKey.exit.preheader:                       ; preds = %1
  br label %AddRoundKey.exit

.preheader.preheader.i:                           ; preds = %1
  %tmp_112 = trunc i3 %i_i to i2
  %tmp_i = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_112, i2 0)
  %tmp_i_cast = zext i4 %tmp_i to i32
  %RoundKey_addr = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %tmp_i_cast
  %RoundKey_load = load i32* %RoundKey_addr, align 4
  %state_addr = getelementptr [4 x i128]* %state, i32 0, i32 %i_i_cast2
  %state_load = load i128* %state_addr, align 8
  %tmp_113 = trunc i128 %state_load to i32
  %tmp_84_i = xor i32 %RoundKey_load, %tmp_113
  %sum3_i = or i4 %tmp_i, 1
  %sum3_i_cast = zext i4 %sum3_i to i32
  %RoundKey_addr_59 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_i_cast
  %RoundKey_load_34 = load i32* %RoundKey_addr_59, align 4
  %tmp_113_i = call i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128 %state_load, i32 32, i32 63)
  %tmp_84_1_i = xor i32 %RoundKey_load_34, %tmp_113_i
  %sum3_1_i = or i4 %tmp_i, 2
  %sum3_1_i_cast = zext i4 %sum3_1_i to i32
  %RoundKey_addr_60 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_1_i_cast
  %RoundKey_load_35 = load i32* %RoundKey_addr_60, align 4
  %tmp_115_i = call i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128 %state_load, i32 64, i32 95)
  %tmp_84_2_i = xor i32 %RoundKey_load_35, %tmp_115_i
  %sum3_2_i = or i4 %tmp_i, 3
  %sum3_2_i_cast = zext i4 %sum3_2_i to i32
  %RoundKey_addr_61 = getelementptr [240 x i32]* %RoundKey, i32 0, i32 %sum3_2_i_cast
  %RoundKey_load_36 = load i32* %RoundKey_addr_61, align 4
  %tmp_117_i = call i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128 %state_load, i32 96, i32 127)
  %tmp_84_3_i = xor i32 %RoundKey_load_36, %tmp_117_i
  %tmp_118_i = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %tmp_84_3_i, i32 %tmp_84_2_i, i32 %tmp_84_1_i, i32 %tmp_84_i)
  store i128 %tmp_118_i, i128* %state_addr, align 8
  br label %1

AddRoundKey.exit:                                 ; preds = %AddRoundKey.exit.preheader, %2
  %round = phi i4 [ %tmp, %2 ], [ 1, %AddRoundKey.exit.preheader ]
  %exitcond = icmp eq i4 %round, -6
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %AddRoundKey.exit
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %round_cast1_cast = zext i4 %round to i6
  call fastcc void @SubBytes([4 x i128]* %state, i6 %round_cast1_cast, [240 x i32]* %RoundKey)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp_s) nounwind
  %tmp = add i4 %round, 1
  br label %AddRoundKey.exit

; <label>:3                                       ; preds = %AddRoundKey.exit
  call fastcc void @SubBytes([4 x i128]* %state, i6 10, [240 x i32]* %RoundKey)
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
!27 = metadata !{metadata !28, metadata !34, metadata !39, metadata !44}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"state", metadata !31, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32, metadata !33}
!32 = metadata !{i32 0, i32 0, i32 2}
!33 = metadata !{i32 0, i32 3, i32 1}
!34 = metadata !{i32 32, i32 63, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"state", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!37 = metadata !{metadata !38, metadata !33}
!38 = metadata !{i32 1, i32 1, i32 2}
!39 = metadata !{i32 64, i32 95, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"state", metadata !42, metadata !"unsigned int", i32 0, i32 31}
!42 = metadata !{metadata !43, metadata !33}
!43 = metadata !{i32 2, i32 2, i32 2}
!44 = metadata !{i32 96, i32 127, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"state", metadata !47, metadata !"unsigned int", i32 0, i32 31}
!47 = metadata !{metadata !48, metadata !33}
!48 = metadata !{i32 3, i32 3, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"Key", metadata !53, metadata !"unsigned int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, i32 1}
