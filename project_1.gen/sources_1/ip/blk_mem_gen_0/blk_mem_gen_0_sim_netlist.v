// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Mar 24 20:21:17 2026
// Host        : DESKTOP-3MP1EO2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado/FPGA_project/DDS/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [9:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [9:0]douta;
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
  wire [9:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.31075 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "10" *) 
  (* C_READ_WIDTH_B = "10" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[9:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[9:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26496)
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
