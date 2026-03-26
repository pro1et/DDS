// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Mar 24 20:21:17 2026
// Host        : DESKTOP-3MP1EO2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26512)
`pragma protect data_block
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
G5eVxsJkbA==
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
