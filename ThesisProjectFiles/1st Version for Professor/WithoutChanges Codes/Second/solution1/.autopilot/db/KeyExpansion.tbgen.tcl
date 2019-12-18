set moduleName KeyExpansion
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 32 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 32 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 32 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 32 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 32 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 32 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 32 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 5 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "534", "Max" : "534"}
	, {"Name" : "Interval", "Min" : "534", "Max" : "534"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 32 }  { RoundKey_q0 mem_dout 0 32 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 32 }  { RoundKey_q1 mem_dout 0 32 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 32 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 32 } } }
}
