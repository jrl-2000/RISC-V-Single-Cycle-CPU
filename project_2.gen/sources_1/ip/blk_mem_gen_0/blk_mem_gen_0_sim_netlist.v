// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec  5 20:04:15 2022
// Host        : DESKTOP-PDDHOTE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/c9A3r/project_2/project_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.386699 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19728)
`pragma protect data_block
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
2eE2xilk
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
