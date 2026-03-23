// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Mar 19 17:32:31 2026
// Host        : DESKTOP-3MP1EO2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado/FPGA_project/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
