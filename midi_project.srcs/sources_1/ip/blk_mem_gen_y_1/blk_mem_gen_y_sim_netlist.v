// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon May 30 11:40:22 2022
// Host        : mecha-6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/midi_project/midi_project.srcs/sources_1/ip/blk_mem_gen_y_1/blk_mem_gen_y_sim_netlist.v
// Design      : blk_mem_gen_y
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_y,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_y
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [15:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [11:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "12" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "12" *) 
  (* C_PHASE_ANGLE_WIDTH = "12" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_y_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[11:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[11:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[11:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "12" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "1" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "12" *) 
(* C_PHASE_ANGLE_WIDTH = "12" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "16" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_y_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [15:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [11:0]debug_axi_pinc_in;
  output [11:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [11:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire event_s_phase_tlast_missing;
  wire [11:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [11:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [14:11]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[15] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[13] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[12] = \^m_axis_data_tdata [11];
  assign m_axis_data_tdata[11:0] = \^m_axis_data_tdata [11:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "12" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "12" *) 
  (* C_PHASE_ANGLE_WIDTH = "12" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_y_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[11:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[11:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[11:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({\^m_axis_data_tdata [11],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[14:11],\^m_axis_data_tdata [10:0]}),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_phase_tdata[11:0]}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ktqd2THQGn8YKEKjHmCAuHzBq3xDko1LE2WILHAGGlAsoJE2lsm9wyWJAmzDje1h9Y6q5x4JhkBH
76i2MkitLg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
cmy3f5U2B+45wdX32DxkZp/dYVYSVk7KrN49v9UNsPiAF1Swlt3axSF9TIRsYMRma4iWj6dTpBow
pUOe7gFw8Ik64g4q6PW3UmRaOYXBIQ2lcja0CvikBXSIN+Ny60szNNV+1bY0n0Cy+xvPfjBu3AvX
VvfN8mq2akLdwgANjFY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qmLsD6b5BJ9wRvJgP6zOWqxOIn2An5FofpNqQOfWKtsT26p8adwXfTNgQyMxFFuMJv/ohvIJHlUT
HpeKOy1N93vOqgv4no425WFjHpIjYfTq910QC+gJG0tCQoSiL1QDSSKjMXAQi3biJotAqD1+TzN6
ipDqLZapnIh/DQqrK4HVDQYV2MWMWNibL1eavq9Oextlfp5/02OCg3Zuf5Nb1DBDn1+ZR/A/bwSm
1w77Q/HDUecZ2NccTkQVC2eWUaMfVdD3E1saDGJeHXYSRLfBMiLixpsggbVswgQjSN/hnZMqS7UR
7kfwjLcClOS2KnnH8TXKwIKDZEa80OjL5NXLAQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GhDuP0y4dEI26r/0g4dplUPPaSnnmeRj6u+f1JWzGA+o8dz8YW4wArlIoqAZNNmV8acs3OjR2C34
s3agd4mqsxXuGagfaRMwJNMuy17+k/XXa7gcZOIEw8UdLobSlXTqFV/ZhNjmYiMDthXlO1sSe28k
2/thPZYg+V4MDvzekNRCsEpxWX+stRW2NbqGyO0f0KIMQO8CenYWHhUJIdPJZbsW3JuV4AMHVxU1
K31b2y9K1rS4OWBSg5HcODUIcK+th6EssjVBAAFfo6lZyxYpXlpj1d6etW6VgyGsdDikyRbpTIDP
XpJretflvXsx9sPDyD59nla0U6cQUT/r0myNNg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p2S95qg8fuykMhuLm4pxRzzAi5shdc+87o2h9wwF4sDV9Oy3szkF+UhDLH+3gChhaCq4fUfNWbvW
Y55KRCqgv+QYUODV4IRYbS8bxG0NxhSRQd0P9zXhTwZSWIuLB1X/oI6e7jX8p2kgn9juMOKUOAQq
9G7PaYJ9qSFQxvvy+zJZX+qgpTI8xf8+HLtIRJ4YtJ3DwjZyBER9GMsM96Nwt2rhcOEQdjL/HASN
QDjb5yPaiK912unQ8p9+MdtcVKOw73w9ToepL1dy3NbqmKbmW8ftAyOLgIaoO3x0A6ResGpJeFg0
yT1dUtgX8B0ZOvcsuHbbexQdFMrkTLB7cIMUNg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
seiT4S2D/2Zm4/60PTLQgJWGm3aj8ArT2kxtnU7+EF0t5eYSD4sFeda6YPHXn98a5g4HAwx8XJCy
gniy7x53wsUUSfxeLFgG9hSHjp/58Y/lacLP5bnauYseCYcRvi122ciwxn5gz6Qy7Gzne2BeY8gK
ExWFyJy6MOrWYuCGww0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MOiQHZHGr/34BiMxjOdcj+m96mZq7SmZJL+uqIvi5unmL08wkXbvolAs/7saOPJIS6o81xCQ9EN4
8oXp5vVFZPD994NQrvKPMwH8e6aliGjRpDSpcStQnOO28Imp+oKV4+VccKm5AmzSZ6+3mk21hSiC
pbCt0hp/xpP1esWkHVByhkox/8SwC8+WTI/tqFrlszwSARB/1eDt6z+jvhkT1gldSwg4/6GxB4ig
xkG1MuVbt6e277Zn8gZTmD0IynVqbyvqy68DOL6hQFVaGjQ+DzrnSwEb5k/gmUO72jNbK9UOWM0p
j8qPwTDOWJZYmyuLhT8xsFgyy5E9HCVXn/gr6A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
US1uQKJvzX9/L1DrWRXVTZfB0bdHIPqa5qR1YTiDUzT/i5B+rD5oPucu+D5WP1kcIAUb5wtzaOzY
eMh3Z3QEc9CcOG+JrLo1IeLvbrlVsahS/3i0pFxYc7uJnLO7I4srEFoaZGeNzQskRLjOxaXYtR85
J/kNFd6LhVL0L/FDAP/I2wYmvOERtN3mIz/z0XULW6yBOgir2ZMB3GFK5I5T/PSqZDovcAUEzISG
x4dMSftjK/fvHrsDk1HHr9dYddNBoMxVsjOca+4AMiaNYnMm1PyqJNDv2ecIbB2X+XGDusp2c5He
+FqfAghK3VC2DKYxaS4Ab9648VJcxq/HcVWMpA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AEjL5F1xpwSfGgBFENzpQNUOx8W5WNWbtv8lBlOJAcjHJ0XqlUMUyZW+kHFWWpNVzipC/H8CFFxQ
uL7+b2Efe7g+ly2JIl0seNCcEIejcuDTdW1BJuf5Yi5JFZuxfvza0rzYu7COkTLTh2nCg8BatLx4
/jQ7bY/779WbR+sr7CVkkVQMcv5n8Jl4ZvmjGvGZ6W4wA89CxZtQa7YhOwvZBE843BzCF1UXzmOK
KJ5yKHF3zpiAydvVDmkUfFaRH3EhoLtX8oRVgXKEFl/EM3Ubtj7qWEyoqdkYZ2vekdMZo6nlMZ8i
bP/+WRXpCF6Y2hPlgylIG5PAMWB/Sih1gzrYEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43888)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
