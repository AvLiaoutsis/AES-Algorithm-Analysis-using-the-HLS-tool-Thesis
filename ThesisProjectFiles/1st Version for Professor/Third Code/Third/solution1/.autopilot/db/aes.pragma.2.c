# 1 "C:/Users/Lincoln/Desktop/ThesisSuccess/Third/solution1/.autopilot/db/aes.pragma.1.c"
# 1 "C:/Users/Lincoln/Desktop/ThesisSuccess/Third/solution1/.autopilot/db/aes.pragma.1.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 148 "<built-in>" 3
# 1 "<command line>" 1





# 1 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
# 289 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 427 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "C:/Users/Lincoln/Desktop/ThesisSuccess/Third/solution1/.autopilot/db/aes.pragma.1.c" 2
# 1 "CCodedFiles/3rd/aes.c"
# 1 "CCodedFiles/3rd/aes.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 148 "<built-in>" 3
# 1 "<command line>" 1





# 1 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
# 289 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 427 "C:/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "CCodedFiles/3rd/aes.c" 2


int word[4][120];

const int Sbox[16][16] = {
  {0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b,
   0xfe, 0xd7, 0xab, 0x76},
  {0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf,
   0x9c, 0xa4, 0x72, 0xc0},
  {0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1,
   0x71, 0xd8, 0x31, 0x15},
  {0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2,
   0xeb, 0x27, 0xb2, 0x75},
  {0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3,
   0x29, 0xe3, 0x2f, 0x84},
  {0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39,
   0x4a, 0x4c, 0x58, 0xcf},
  {0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f,
   0x50, 0x3c, 0x9f, 0xa8},
  {0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21,
   0x10, 0xff, 0xf3, 0xd2},
  {0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d,
   0x64, 0x5d, 0x19, 0x73},
  {0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14,
   0xde, 0x5e, 0x0b, 0xdb},
  {0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62,
   0x91, 0x95, 0xe4, 0x79},
  {0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea,
   0x65, 0x7a, 0xae, 0x08},
  {0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f,
   0x4b, 0xbd, 0x8b, 0x8a},
  {0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9,
   0x86, 0xc1, 0x1d, 0x9e},
  {0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9,
   0xce, 0x55, 0x28, 0xdf},
  {0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f,
   0xb0, 0x54, 0xbb, 0x16}
};
const int invSbox[16][16] = {
  {0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e,
   0x81, 0xf3, 0xd7, 0xfb},
  {0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44,
   0xc4, 0xde, 0xe9, 0xcb},
  {0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b,
   0x42, 0xfa, 0xc3, 0x4e},
  {0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49,
   0x6d, 0x8b, 0xd1, 0x25},
  {0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc,
   0x5d, 0x65, 0xb6, 0x92},
  {0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57,
   0xa7, 0x8d, 0x9d, 0x84},
  {0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05,
   0xb8, 0xb3, 0x45, 0x06},
  {0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03,
   0x01, 0x13, 0x8a, 0x6b},
  {0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce,
   0xf0, 0xb4, 0xe6, 0x73},
  {0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8,
   0x1c, 0x75, 0xdf, 0x6e},
  {0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e,
   0xaa, 0x18, 0xbe, 0x1b},
  {0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe,
   0x78, 0xcd, 0x5a, 0xf4},
  {0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59,
   0x27, 0x80, 0xec, 0x5f},
  {0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f,
   0x93, 0xc9, 0x9c, 0xef},
  {0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c,
   0x83, 0x53, 0x99, 0x61},
  {0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63,
   0x55, 0x21, 0x0c, 0x7d}
};


const int Rcon0[30] = {
  0x01, 0x02, 0x04, 0x08,
  0x10, 0x20, 0x40, 0x80,
  0x1b, 0x36, 0x6c, 0xd8,
  0xab, 0x4d, 0x9a, 0x2f,
  0x5e, 0xbc, 0x63, 0xc6,
  0x97, 0x35, 0x6a, 0xd4,
  0xb3, 0x7d, 0xfa, 0xef,
  0xc5, 0x91,
};

int KeySchedule (int, int *);
int SubByte (int);
void ByteSub_ShiftRow (int *, int);
void InversShiftRow_ByteSub (int *, int);
int MixColumn_AddRoundKey (int *, int, int);
int AddRoundKey_InversMixColumn (int *, int, int);
int AddRoundKey (int *, int, int);

int encrypt (int statemt[32], int key[32], int type,int out[32])
{_ssdm_SpecArrayDimSize(statemt,32);_ssdm_SpecArrayDimSize(key,32);_ssdm_SpecArrayDimSize(out,32);
  int main_result;
  int round_val;
  int nb;
  int i;
  const int out_enc_statemt[16] =
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };
_ssdm_SpecConstant(out_enc_statemt);
# 103 "CCodedFiles/3rd/aes.c"


  KeySchedule(type, key);
      round_val = 0;
      nb = 4;

  AddRoundKey (statemt, type, 0);

  for (i = 1; i <= round_val + 9; ++i)
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

 // printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
 {
   out[i]=statemt[i];

    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);

  return 0;
}

/*int decrypt (int statemt[32], int key[32], int type)
{
  int i;

  const int out_dec_statemt[16] =
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    {
    case 128128:
      round_val = 10;
      nb = 4;
      break;
    }

  AddRoundKey (statemt, type, round_val);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round_val - 1; i >= 1; --i)
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);

  return 0;
}*/

/*  **************** key expand ************************ */
int KeySchedule (int type, int key[32])
{_ssdm_SpecArrayDimSize(key,32);
  int nk, nb, round_val;
  int i, j, temp[4];

  switch (type)
    {
    case 128128:
      nk = 4;
      nb = 4;
      round_val = 10;
      break;

    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round_val + 1); ++j)
    {

/* RotByte */
      if ((j % nk) == 0)
 {
   temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
   temp[1] = SubByte (word[2][j - 1]);
   temp[2] = SubByte (word[3][j - 1]);
   temp[3] = SubByte (word[0][j - 1]);
 }
      if ((j % nk) != 0)
 {
   temp[0] = word[0][j - 1];
   temp[1] = word[1][j - 1];
   temp[2] = word[2][j - 1];
   temp[3] = word[3][j - 1];
 }
      if (nk > 6 && j % nk == 4)
 for (i = 0; i < 4; ++i)
   temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
 word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
}

/* ********* ByteSub & ShiftRow ********* */
void ByteSub_ShiftRow (int statemt[32], int nb)
{_ssdm_SpecArrayDimSize(statemt,32);
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}

int SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
}

/* ********* InversShiftRow & ByteSub ********* */
void InversShiftRow_ByteSub (int statemt[32], int nb)
{_ssdm_SpecArrayDimSize(statemt,32);
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}

/* ******** MixColumn ********** */
int MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{_ssdm_SpecArrayDimSize(statemt,32);
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
 ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
 ret[j * 4] ^= (x ^ 283);
      else
 ret[j * 4] ^= x;
      ret[j * 4] ^=
 statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
 ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
 ret[1 + j * 4] ^= (x ^ 283);
      else
 ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
 statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
 ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
 ret[2 + j * 4] ^= (x ^ 283);
      else
 ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
 statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
 ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
 ret[3 + j * 4] ^= (x ^ 283);
      else
 ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
 statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    }
  return 0;
}

/* ******** InversMixColumn ********** */
int AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{_ssdm_SpecArrayDimSize(statemt,32);
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
 x = (statemt[i + j * 4] << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[i + j * 4];
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[i + j * 4];
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 ret[i + j * 4] = x;

 x = (statemt[(i + 1) % 4 + j * 4] << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[(i + 1) % 4 + j * 4];
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[(i + 1) % 4 + j * 4];
 ret[i + j * 4] ^= x;

 x = (statemt[(i + 2) % 4 + j * 4] << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[(i + 2) % 4 + j * 4];
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[(i + 2) % 4 + j * 4];
 ret[i + j * 4] ^= x;

 x = (statemt[(i + 3) % 4 + j * 4] << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x = (x << 1);
 if ((x >> 8) == 1)
   x ^= 283;
 x ^= statemt[(i + 3) % 4 + j * 4];
 ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
      statemt[3 + i * 4] = ret[3 + i * 4];
    }
  return 0;
}

/* ******** AddRoundKey ********** */
int AddRoundKey (int statemt[32], int type, int n)
{_ssdm_SpecArrayDimSize(statemt,32);
  int j, nb;

  switch (type)
    {
    case 128128:
    case 192128:
    case 256128:
      nb = 4;
      break;

    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  return 0;
}


void aes_main (int statemt[32], int key[32],int out[32])
{_ssdm_SpecArrayDimSize(statemt,32);_ssdm_SpecArrayDimSize(key,32);_ssdm_SpecArrayDimSize(out,32);



  encrypt (statemt, key, 128128,out);
  //decrypt (statemt, key, 128128);

}
