//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Jan 13 20:56:48 2019
//Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
//Command     : generate_target EBAZ4205.bd
//Design      : EBAZ4205
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "EBAZ4205,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=EBAZ4205,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "EBAZ4205.hwdef" *) 
module EBAZ4205
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GMII_ETHERNET_0_0_col,
    GMII_ETHERNET_0_0_crs,
    GMII_ETHERNET_0_0_rx_clk,
    GMII_ETHERNET_0_0_rx_dv,
    GMII_ETHERNET_0_0_rx_er,
    GMII_ETHERNET_0_0_rxd,
    GMII_ETHERNET_0_0_tx_clk,
    GMII_ETHERNET_0_0_tx_en,
    GMII_ETHERNET_0_0_tx_er,
    GMII_ETHERNET_0_0_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 COL" *) input GMII_ETHERNET_0_0_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 CRS" *) input GMII_ETHERNET_0_0_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 RX_CLK" *) input GMII_ETHERNET_0_0_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 RX_DV" *) input GMII_ETHERNET_0_0_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 RX_ER" *) input GMII_ETHERNET_0_0_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 RXD" *) input [7:0]GMII_ETHERNET_0_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 TX_CLK" *) input GMII_ETHERNET_0_0_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 TX_EN" *) output [0:0]GMII_ETHERNET_0_0_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 TX_ER" *) output [0:0]GMII_ETHERNET_0_0_tx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0_0 TXD" *) output [7:0]GMII_ETHERNET_0_0_txd;

  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_GMII_ETHERNET_0_COL;
  wire processing_system7_0_GMII_ETHERNET_0_CRS;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_RXD;
  wire processing_system7_0_GMII_ETHERNET_0_RX_CLK;
  wire processing_system7_0_GMII_ETHERNET_0_RX_DV;
  wire processing_system7_0_GMII_ETHERNET_0_RX_ER;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_TXD;
  wire processing_system7_0_GMII_ETHERNET_0_TX_CLK;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_EN;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_ER;

  assign GMII_ETHERNET_0_0_tx_en[0] = processing_system7_0_GMII_ETHERNET_0_TX_EN;
  assign GMII_ETHERNET_0_0_tx_er[0] = processing_system7_0_GMII_ETHERNET_0_TX_ER;
  assign GMII_ETHERNET_0_0_txd[7:0] = processing_system7_0_GMII_ETHERNET_0_TXD;
  assign processing_system7_0_GMII_ETHERNET_0_COL = GMII_ETHERNET_0_0_col;
  assign processing_system7_0_GMII_ETHERNET_0_CRS = GMII_ETHERNET_0_0_crs;
  assign processing_system7_0_GMII_ETHERNET_0_RXD = GMII_ETHERNET_0_0_rxd[7:0];
  assign processing_system7_0_GMII_ETHERNET_0_RX_CLK = GMII_ETHERNET_0_0_rx_clk;
  assign processing_system7_0_GMII_ETHERNET_0_RX_DV = GMII_ETHERNET_0_0_rx_dv;
  assign processing_system7_0_GMII_ETHERNET_0_RX_ER = GMII_ETHERNET_0_0_rx_er;
  assign processing_system7_0_GMII_ETHERNET_0_TX_CLK = GMII_ETHERNET_0_0_tx_clk;
  EBAZ4205_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(processing_system7_0_GMII_ETHERNET_0_COL),
        .ENET0_GMII_CRS(processing_system7_0_GMII_ETHERNET_0_CRS),
        .ENET0_GMII_RXD(processing_system7_0_GMII_ETHERNET_0_RXD),
        .ENET0_GMII_RX_CLK(processing_system7_0_GMII_ETHERNET_0_RX_CLK),
        .ENET0_GMII_RX_DV(processing_system7_0_GMII_ETHERNET_0_RX_DV),
        .ENET0_GMII_RX_ER(processing_system7_0_GMII_ETHERNET_0_RX_ER),
        .ENET0_GMII_TXD(processing_system7_0_GMII_ETHERNET_0_TXD),
        .ENET0_GMII_TX_CLK(processing_system7_0_GMII_ETHERNET_0_TX_CLK),
        .ENET0_GMII_TX_EN(processing_system7_0_GMII_ETHERNET_0_TX_EN),
        .ENET0_GMII_TX_ER(processing_system7_0_GMII_ETHERNET_0_TX_ER),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
endmodule
