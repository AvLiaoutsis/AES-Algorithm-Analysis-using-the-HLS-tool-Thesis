set moduleName AddRoundKey
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {AddRoundKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ statemt int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ n int 6 regular  }
	{ word int 32 regular {array 480 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "statemt", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "word", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ statemt_address0 sc_out sc_lv 5 signal 0 } 
	{ statemt_ce0 sc_out sc_logic 1 signal 0 } 
	{ statemt_we0 sc_out sc_logic 1 signal 0 } 
	{ statemt_d0 sc_out sc_lv 32 signal 0 } 
	{ statemt_q0 sc_in sc_lv 32 signal 0 } 
	{ statemt_address1 sc_out sc_lv 5 signal 0 } 
	{ statemt_ce1 sc_out sc_logic 1 signal 0 } 
	{ statemt_we1 sc_out sc_logic 1 signal 0 } 
	{ statemt_d1 sc_out sc_lv 32 signal 0 } 
	{ statemt_q1 sc_in sc_lv 32 signal 0 } 
	{ n sc_in sc_lv 6 signal 1 } 
	{ word_address0 sc_out sc_lv 9 signal 2 } 
	{ word_ce0 sc_out sc_logic 1 signal 2 } 
	{ word_q0 sc_in sc_lv 32 signal 2 } 
	{ word_address1 sc_out sc_lv 9 signal 2 } 
	{ word_ce1 sc_out sc_logic 1 signal 2 } 
	{ word_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "statemt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "statemt", "role": "address0" }} , 
 	{ "name": "statemt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "ce0" }} , 
 	{ "name": "statemt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "we0" }} , 
 	{ "name": "statemt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "d0" }} , 
 	{ "name": "statemt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "q0" }} , 
 	{ "name": "statemt_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "statemt", "role": "address1" }} , 
 	{ "name": "statemt_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "ce1" }} , 
 	{ "name": "statemt_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "we1" }} , 
 	{ "name": "statemt_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "d1" }} , 
 	{ "name": "statemt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "q1" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "word_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "word", "role": "address0" }} , 
 	{ "name": "word_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word", "role": "ce0" }} , 
 	{ "name": "word_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word", "role": "q0" }} , 
 	{ "name": "word_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "word", "role": "address1" }} , 
 	{ "name": "word_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word", "role": "ce1" }} , 
 	{ "name": "word_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "AddRoundKey",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "word", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	AddRoundKey {
		statemt {Type IO LastRead 3 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		word {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	statemt { ap_memory {  { statemt_address0 mem_address 1 5 }  { statemt_ce0 mem_ce 1 1 }  { statemt_we0 mem_we 1 1 }  { statemt_d0 mem_din 1 32 }  { statemt_q0 mem_dout 0 32 }  { statemt_address1 mem_address 1 5 }  { statemt_ce1 mem_ce 1 1 }  { statemt_we1 mem_we 1 1 }  { statemt_d1 mem_din 1 32 }  { statemt_q1 mem_dout 0 32 } } }
	n { ap_none {  { n in_data 0 6 } } }
	word { ap_memory {  { word_address0 mem_address 1 9 }  { word_ce0 mem_ce 1 1 }  { word_q0 mem_dout 0 32 }  { word_address1 mem_address 1 9 }  { word_ce1 mem_ce 1 1 }  { word_q1 mem_dout 0 32 } } }
}
