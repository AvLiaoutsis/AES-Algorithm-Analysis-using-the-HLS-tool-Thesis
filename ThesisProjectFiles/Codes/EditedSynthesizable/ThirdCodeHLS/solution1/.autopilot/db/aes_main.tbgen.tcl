set C_TypeInfoList {{ 
"aes_main" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"statemt": [[], {"array": ["0", [32]]}] }, {"key": [[], {"array": ["0", [32]]}] }, {"out": [[], {"array": ["0", [32]]}] }],["1"],""],
 "1": [ "worda", [[], {"array": ["0", [4,120]]}],""], 
"0": [ "word", {"typedef": [[[], {"scalar": "unsigned int"}],""]}]
}}
set moduleName aes_main
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes_main}
set C_modelType { void 0 }
set C_modelArgList {
	{ statemt int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ key int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ out_r int 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "statemt", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "statemt","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "key", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "key","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
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
	{ key_address0 sc_out sc_lv 5 signal 1 } 
	{ key_ce0 sc_out sc_logic 1 signal 1 } 
	{ key_q0 sc_in sc_lv 32 signal 1 } 
	{ out_r_address0 sc_out sc_lv 5 signal 2 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_r_we0 sc_out sc_logic 1 signal 2 } 
	{ out_r_d0 sc_out sc_lv 32 signal 2 } 
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
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "8", "10"],
		"CDFG" : "aes_main",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MixColumn_AddRoundKe_fu_96"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeySchedule_fu_106"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ByteSub_ShiftRow_fu_118"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ByteSub_ShiftRow_fu_118"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_126"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_126"}],
		"Port" : [
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MixColumn_AddRoundKe_fu_96", "Port" : "statemt"},
					{"ID" : "10", "SubInstance" : "grp_AddRoundKey_fu_126", "Port" : "statemt"},
					{"ID" : "8", "SubInstance" : "grp_ByteSub_ShiftRow_fu_118", "Port" : "statemt"}]},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeySchedule_fu_106", "Port" : "key"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worda", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MixColumn_AddRoundKe_fu_96", "Port" : "worda"},
					{"ID" : "10", "SubInstance" : "grp_AddRoundKey_fu_126", "Port" : "worda"},
					{"ID" : "4", "SubInstance" : "grp_KeySchedule_fu_106", "Port" : "worda"}]},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeySchedule_fu_106", "Port" : "Sbox"},
					{"ID" : "8", "SubInstance" : "grp_ByteSub_ShiftRow_fu_118", "Port" : "Sbox"}]},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeySchedule_fu_106", "Port" : "Rcon0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.worda_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MixColumn_AddRoundKe_fu_96", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "MixColumn_AddRoundKe",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "worda", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MixColumn_AddRoundKe_fu_96.ret_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeySchedule_fu_106", "Parent" : "0", "Child" : ["5", "6", "7"],
		"CDFG" : "KeySchedule",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "worda", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeySchedule_fu_106.Sbox_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeySchedule_fu_106.Rcon0_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeySchedule_fu_106.aes_main_mux_42_3bkb_U0", "Parent" : "4"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ByteSub_ShiftRow_fu_118", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "ByteSub_ShiftRow",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ByteSub_ShiftRow_fu_118.Sbox_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AddRoundKey_fu_126", "Parent" : "0",
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
			{"Name" : "worda", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_main {
		statemt {Type IO LastRead 9 FirstWrite 3}
		key {Type I LastRead 2 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 9}
		worda {Type IO LastRead -1 FirstWrite -1}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}}
	MixColumn_AddRoundKe {
		statemt {Type IO LastRead 3 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		worda {Type I LastRead 3 FirstWrite -1}}
	KeySchedule {
		key {Type I LastRead 2 FirstWrite -1}
		worda {Type IO LastRead 6 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}}
	ByteSub_ShiftRow {
		statemt {Type IO LastRead 8 FirstWrite 8}
		Sbox {Type I LastRead -1 FirstWrite -1}}
	AddRoundKey {
		statemt {Type IO LastRead 3 FirstWrite 3}
		n {Type I LastRead 0 FirstWrite -1}
		worda {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1092", "Max" : "1092"}
	, {"Name" : "Interval", "Min" : "1093", "Max" : "1093"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	statemt { ap_memory {  { statemt_address0 mem_address 1 5 }  { statemt_ce0 mem_ce 1 1 }  { statemt_we0 mem_we 1 1 }  { statemt_d0 mem_din 1 32 }  { statemt_q0 mem_dout 0 32 }  { statemt_address1 mem_address 1 5 }  { statemt_ce1 mem_ce 1 1 }  { statemt_we1 mem_we 1 1 }  { statemt_d1 mem_din 1 32 }  { statemt_q1 mem_dout 0 32 } } }
	key { ap_memory {  { key_address0 mem_address 1 5 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 5 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
