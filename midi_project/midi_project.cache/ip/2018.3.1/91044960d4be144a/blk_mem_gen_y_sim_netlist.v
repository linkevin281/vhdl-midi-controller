// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon May 30 11:40:21 2022
// Host        : mecha-6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_y_sim_netlist.v
// Design      : blk_mem_gen_y
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_y,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17 U0
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
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17_viv i_synth
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
EINJc2qERDYC9R5smcBWmFFEs8RZeW4TUfNu8rniW6uRGRaqhlpS0I30sL0HZH2L93nb32gsBq2D
ALJ5mDLqSxHBuVfn8bxLzkMmaZxwmSAMmnSBZv3vKOVnKg44SVOKDEqF6p8vpIrTPeFYMgDNPWM1
iMVzJLfuQSECyIe4WUr4+aeRAf+qJmmBWPQRvGDQ6U29lZQy94v+DeRnDjl4deFDGLWgKbRpvq+V
7D24+O/Bs/zwR50EJuZqQl8oL5h2Nahz3r7EaQFEiQ/KyDokG1OXcXbRLqXiOJCH3JQoCLeycu4+
gY59IN88xdMmM6IfY7qpVzG6WstkZwTVJ9ySMA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5J+S0hQKrVmIzCv2gG/8CatavwA8NI5r+ZZlYeOFaHVdlV1dSUiUutvs+X6nnH9USx+deTwcEI/h
jL/lPfQVhneG1PtNJ8/dCH48KbNPXMNqB5REwa3qhlJtlcN7HXH8pdijPeQ7qwWIcVQSu4QXTRGQ
++pocPaDjRnN5XR8H2c8HqRMa7SESEd+mDEmJJ6TAO8Igg6rW0cVB4TGc7UZIeFkCbhF4YEnu8QP
7nXxKi8WKjs1zxKPYP9o2GuRXmeigKBm3q7ZTlm8z1MjCRyu4iRSwttO87QGu5PprPzWgZTuz28+
vnBlunfZYmQu9+pdbJHacxWA6kF1jz/XOQnIeQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44192)
`pragma protect data_block
+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
OsMfoA+ojicSuOiGu6h1g6w=
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
