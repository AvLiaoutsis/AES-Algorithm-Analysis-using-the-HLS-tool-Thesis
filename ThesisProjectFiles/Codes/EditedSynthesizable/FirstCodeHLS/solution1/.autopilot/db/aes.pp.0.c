# 1 "CCodedFiles/1st/aes.c"
# 1 "CCodedFiles/1st/aes.c" 1
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
# 1 "CCodedFiles/1st/aes.c" 2
/*
 * Copyright 2012, Homer Hsing <homer.hsing@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


# 1 "CCodedFiles/1st/sbox.h" 1
/*
 * Copyright 2012, Homer Hsing <homer.hsing@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


static unsigned char table_0[] = { 99,99,165,198,124,124,132,248,119,119,153,238,123,123,141,246,242,242,13,255,107,107,189,214,111,111,177,222,197,197,84,145,48,48,80,96,1,1,3,2,103,103,169,206,43,43,125,86,254,254,25,231,215,215,98,181,171,171,230,77,118,118,154,236,202,202,69,143,130,130,157,31,201,201,64,137,125,125,135,250,250,250,21,239,89,89,235,178,71,71,201,142,240,240,11,251,173,173,236,65,212,212,103,179,162,162,253,95,175,175,234,69,156,156,191,35,164,164,247,83,114,114,150,228,192,192,91,155,183,183,194,117,253,253,28,225,147,147,174,61,38,38,106,76,54,54,90,108,63,63,65,126,247,247,2,245,204,204,79,131,52,52,92,104,165,165,244,81,229,229,52,209,241,241,8,249,113,113,147,226,216,216,115,171,49,49,83,98,21,21,63,42,4,4,12,8,199,199,82,149,35,35,101,70,195,195,94,157,24,24,40,48,150,150,161,55,5,5,15,10,154,154,181,47,7,7,9,14,18,18,54,36,128,128,155,27,226,226,61,223,235,235,38,205,39,39,105,78,178,178,205,127,117,117,159,234,9,9,27,18,131,131,158,29,44,44,116,88,26,26,46,52,27,27,45,54,110,110,178,220,90,90,238,180,160,160,251,91,82,82,246,164,59,59,77,118,214,214,97,183,179,179,206,125,41,41,123,82,227,227,62,221,47,47,113,94,132,132,151,19,83,83,245,166,209,209,104,185,0,0,0,0,237,237,44,193,32,32,96,64,252,252,31,227,177,177,200,121,91,91,237,182,106,106,190,212,203,203,70,141,190,190,217,103,57,57,75,114,74,74,222,148,76,76,212,152,88,88,232,176,207,207,74,133,208,208,107,187,239,239,42,197,170,170,229,79,251,251,22,237,67,67,197,134,77,77,215,154,51,51,85,102,133,133,148,17,69,69,207,138,249,249,16,233,2,2,6,4,127,127,129,254,80,80,240,160,60,60,68,120,159,159,186,37,168,168,227,75,81,81,243,162,163,163,254,93,64,64,192,128,143,143,138,5,146,146,173,63,157,157,188,33,56,56,72,112,245,245,4,241,188,188,223,99,182,182,193,119,218,218,117,175,33,33,99,66,16,16,48,32,255,255,26,229,243,243,14,253,210,210,109,191,205,205,76,129,12,12,20,24,19,19,53,38,236,236,47,195,95,95,225,190,151,151,162,53,68,68,204,136,23,23,57,46,196,196,87,147,167,167,242,85,126,126,130,252,61,61,71,122,100,100,172,200,93,93,231,186,25,25,43,50,115,115,149,230,96,96,160,192,129,129,152,25,79,79,209,158,220,220,127,163,34,34,102,68,42,42,126,84,144,144,171,59,136,136,131,11,70,70,202,140,238,238,41,199,184,184,211,107,20,20,60,40,222,222,121,167,94,94,226,188,11,11,29,22,219,219,118,173,224,224,59,219,50,50,86,100,58,58,78,116,10,10,30,20,73,73,219,146,6,6,10,12,36,36,108,72,92,92,228,184,194,194,93,159,211,211,110,189,172,172,239,67,98,98,166,196,145,145,168,57,149,149,164,49,228,228,55,211,121,121,139,242,231,231,50,213,200,200,67,139,55,55,89,110,109,109,183,218,141,141,140,1,213,213,100,177,78,78,210,156,169,169,224,73,108,108,180,216,86,86,250,172,244,244,7,243,234,234,37,207,101,101,175,202,122,122,142,244,174,174,233,71,8,8,24,16,186,186,213,111,120,120,136,240,37,37,111,74,46,46,114,92,28,28,36,56,166,166,241,87,180,180,199,115,198,198,81,151,232,232,35,203,221,221,124,161,116,116,156,232,31,31,33,62,75,75,221,150,189,189,220,97,139,139,134,13,138,138,133,15,112,112,144,224,62,62,66,124,181,181,196,113,102,102,170,204,72,72,216,144,3,3,5,6,246,246,1,247,14,14,18,28,97,97,163,194,53,53,95,106,87,87,249,174,185,185,208,105,134,134,145,23,193,193,88,153,29,29,39,58,158,158,185,39,225,225,56,217,248,248,19,235,152,152,179,43,17,17,51,34,105,105,187,210,217,217,112,169,142,142,137,7,148,148,167,51,155,155,182,45,30,30,34,60,135,135,146,21,233,233,32,201,206,206,73,135,85,85,255,170,40,40,120,80,223,223,122,165,140,140,143,3,161,161,248,89,137,137,128,9,13,13,23,26,191,191,218,101,230,230,49,215,66,66,198,132,104,104,184,208,65,65,195,130,153,153,176,41,45,45,119,90,15,15,17,30,176,176,203,123,84,84,252,168,187,187,214,109,22,22,58,44, };
# 18 "CCodedFiles/1st/aes.c" 2






typedef unsigned int word;
# 61 "CCodedFiles/1st/aes.c"
void encrypt_128_key_expand_inline_no_branch(word state[4], word key[4]) {
    int nr = 10;
    int i;
    word k0 = key[0], k1 = key[1], k2 = key[2], k3 = key[3];
    state[0] ^= k0;
    state[1] ^= k1;
    state[2] ^= k2;
    state[3] ^= k3;
    word *t0 = (word *)table_0;
    word p0, p1, p2, p3;
    unsigned char *b;
    unsigned char rcon = 1;

    for(i=1; i<nr; i++) {
        word temp = k3;
        temp = (temp >> 8) | (temp << 24);
        { unsigned char *b = (unsigned char *)&temp; b[0] = table_0[b[0]*4]; b[1] = table_0[b[1]*4]; b[2] = table_0[b[2]*4]; b[3] = table_0[b[3]*4]; };
        temp ^= rcon;
        int j = (char)rcon;
        j <<= 1;
        j ^= (j >> 8) & 0x1B; // if (rcon&0x80 != 0) then (j ^= 0x1B)
        rcon = (unsigned char)j;
        k0 ^= temp;
        k1 ^= k0;
        k2 ^= k1;
        k3 ^= k2;
        word z0 = k0, z1 = k1, z2 = k2, z3 = k3;
        b = (unsigned char *)state; { p0 = t0[b[0]]; p1 = t0[b[1]]; p2 = t0[b[2]]; p3 = t0[b[3]]; }; { p0 = (p0 << 8) | (p0 >> 24); p1 = (p1 << 16) | (p1 >> 16); p2 = (p2 >> 8) | (p2 << 24); };
        z0 ^= p0, z3 ^= p1, z2 ^= p2, z1 ^= p3;
        b += 4; { p0 = t0[b[0]]; p1 = t0[b[1]]; p2 = t0[b[2]]; p3 = t0[b[3]]; }; { p0 = (p0 << 8) | (p0 >> 24); p1 = (p1 << 16) | (p1 >> 16); p2 = (p2 >> 8) | (p2 << 24); };
        z1 ^= p0, z0 ^= p1, z3 ^= p2, z2 ^= p3;
        b += 4; { p0 = t0[b[0]]; p1 = t0[b[1]]; p2 = t0[b[2]]; p3 = t0[b[3]]; }; { p0 = (p0 << 8) | (p0 >> 24); p1 = (p1 << 16) | (p1 >> 16); p2 = (p2 >> 8) | (p2 << 24); };
        z2 ^= p0, z1 ^= p1, z0 ^= p2, z3 ^= p3;
        b += 4; { p0 = t0[b[0]]; p1 = t0[b[1]]; p2 = t0[b[2]]; p3 = t0[b[3]]; }; { p0 = (p0 << 8) | (p0 >> 24); p1 = (p1 << 16) | (p1 >> 16); p2 = (p2 >> 8) | (p2 << 24); };
        state[0] = z0 ^ p3;
        state[1] = z1 ^ p2;
        state[2] = z2 ^ p1;
        state[3] = z3 ^ p0;
    }
    word temp = k3;
    temp = (temp >> 8) | (temp << 24);
    { unsigned char *b = (unsigned char *)&temp; b[0] = table_0[b[0]*4]; b[1] = table_0[b[1]*4]; b[2] = table_0[b[2]*4]; b[3] = table_0[b[3]*4]; };
    temp ^= rcon;
    k0 ^= temp;
    k1 ^= k0;
    k2 ^= k1;
    k3 ^= k2;
    unsigned char *a = (unsigned char *)state, *t = table_0;
    b = (unsigned char *)&k0;
    b[0] ^= t[a[0]*4], b[1] ^= t[a[5]*4], b[2] ^= t[a[10]*4], b[3] ^= t[a[15]*4];
    b = (unsigned char *)&k1;
    b[0] ^= t[a[4]*4], b[1] ^= t[a[9]*4], b[2] ^= t[a[14]*4], b[3] ^= t[a[3]*4];
    b = (unsigned char *)&k2;
    b[0] ^= t[a[8]*4], b[1] ^= t[a[13]*4], b[2] ^= t[a[2]*4], b[3] ^= t[a[7]*4];
    b = (unsigned char *)&k3;
    b[0] ^= t[a[12]*4], b[1] ^= t[a[1]*4], b[2] ^= t[a[6]*4], b[3] ^= t[a[11]*4];
    state[0] = k0;
    state[1] = k1;
    state[2] = k2;
    state[3] = k3;

}
