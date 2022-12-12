// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec  5 20:04:14 2022
// Host        : DESKTOP-PDDHOTE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
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
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
