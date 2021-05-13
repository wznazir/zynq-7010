//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Sep  6 13:30:00 2020
//Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
//Command     : generate_target EBAZ4205_wrapper.bd
//Design      : EBAZ4205_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module EBAZ4205_wrapper
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
    ENET0_GMII_RX_CLK_0,
    ENET0_GMII_RX_DV_0,
    ENET0_GMII_TXD_0,
    ENET0_GMII_TX_CLK_0,
    ENET0_GMII_TX_EN_0,
    FCLK_CLK1_0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_0_0_tri_io,
    In0_0,
    MDIO_ETHERNET_0_0_mdc,
    MDIO_ETHERNET_0_0_mdio_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  input ENET0_GMII_RX_CLK_0;
  input ENET0_GMII_RX_DV_0;
  output [3:0]ENET0_GMII_TXD_0;
  input ENET0_GMII_TX_CLK_0;
  output [0:0]ENET0_GMII_TX_EN_0;
  output FCLK_CLK1_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [5:0]GPIO_0_0_tri_io;
  input [3:0]In0_0;
  output MDIO_ETHERNET_0_0_mdc;
  inout MDIO_ETHERNET_0_0_mdio_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire ENET0_GMII_RX_CLK_0;
  wire ENET0_GMII_RX_DV_0;
  wire [3:0]ENET0_GMII_TXD_0;
  wire ENET0_GMII_TX_CLK_0;
  wire [0:0]ENET0_GMII_TX_EN_0;
  wire FCLK_CLK1_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO_0_0_tri_i_0;
  wire [1:1]GPIO_0_0_tri_i_1;
  wire [2:2]GPIO_0_0_tri_i_2;
  wire [3:3]GPIO_0_0_tri_i_3;
  wire [4:4]GPIO_0_0_tri_i_4;
  wire [5:5]GPIO_0_0_tri_i_5;
  wire [0:0]GPIO_0_0_tri_io_0;
  wire [1:1]GPIO_0_0_tri_io_1;
  wire [2:2]GPIO_0_0_tri_io_2;
  wire [3:3]GPIO_0_0_tri_io_3;
  wire [4:4]GPIO_0_0_tri_io_4;
  wire [5:5]GPIO_0_0_tri_io_5;
  wire [0:0]GPIO_0_0_tri_o_0;
  wire [1:1]GPIO_0_0_tri_o_1;
  wire [2:2]GPIO_0_0_tri_o_2;
  wire [3:3]GPIO_0_0_tri_o_3;
  wire [4:4]GPIO_0_0_tri_o_4;
  wire [5:5]GPIO_0_0_tri_o_5;
  wire [0:0]GPIO_0_0_tri_t_0;
  wire [1:1]GPIO_0_0_tri_t_1;
  wire [2:2]GPIO_0_0_tri_t_2;
  wire [3:3]GPIO_0_0_tri_t_3;
  wire [4:4]GPIO_0_0_tri_t_4;
  wire [5:5]GPIO_0_0_tri_t_5;
  wire [3:0]In0_0;
  wire MDIO_ETHERNET_0_0_mdc;
  wire MDIO_ETHERNET_0_0_mdio_i;
  wire MDIO_ETHERNET_0_0_mdio_io;
  wire MDIO_ETHERNET_0_0_mdio_o;
  wire MDIO_ETHERNET_0_0_mdio_t;

  EBAZ4205 EBAZ4205_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .ENET0_GMII_RX_CLK_0(ENET0_GMII_RX_CLK_0),
        .ENET0_GMII_RX_DV_0(ENET0_GMII_RX_DV_0),
        .ENET0_GMII_TXD_0(ENET0_GMII_TXD_0),
        .ENET0_GMII_TX_CLK_0(ENET0_GMII_TX_CLK_0),
        .ENET0_GMII_TX_EN_0(ENET0_GMII_TX_EN_0),
        .FCLK_CLK1_0(FCLK_CLK1_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_0_0_tri_i({GPIO_0_0_tri_i_5,GPIO_0_0_tri_i_4,GPIO_0_0_tri_i_3,GPIO_0_0_tri_i_2,GPIO_0_0_tri_i_1,GPIO_0_0_tri_i_0}),
        .GPIO_0_0_tri_o({GPIO_0_0_tri_o_5,GPIO_0_0_tri_o_4,GPIO_0_0_tri_o_3,GPIO_0_0_tri_o_2,GPIO_0_0_tri_o_1,GPIO_0_0_tri_o_0}),
        .GPIO_0_0_tri_t({GPIO_0_0_tri_t_5,GPIO_0_0_tri_t_4,GPIO_0_0_tri_t_3,GPIO_0_0_tri_t_2,GPIO_0_0_tri_t_1,GPIO_0_0_tri_t_0}),
        .In0_0(In0_0),
        .MDIO_ETHERNET_0_0_mdc(MDIO_ETHERNET_0_0_mdc),
        .MDIO_ETHERNET_0_0_mdio_i(MDIO_ETHERNET_0_0_mdio_i),
        .MDIO_ETHERNET_0_0_mdio_o(MDIO_ETHERNET_0_0_mdio_o),
        .MDIO_ETHERNET_0_0_mdio_t(MDIO_ETHERNET_0_0_mdio_t));
  IOBUF GPIO_0_0_tri_iobuf_0
       (.I(GPIO_0_0_tri_o_0),
        .IO(GPIO_0_0_tri_io[0]),
        .O(GPIO_0_0_tri_i_0),
        .T(GPIO_0_0_tri_t_0));
  IOBUF GPIO_0_0_tri_iobuf_1
       (.I(GPIO_0_0_tri_o_1),
        .IO(GPIO_0_0_tri_io[1]),
        .O(GPIO_0_0_tri_i_1),
        .T(GPIO_0_0_tri_t_1));
  IOBUF GPIO_0_0_tri_iobuf_2
       (.I(GPIO_0_0_tri_o_2),
        .IO(GPIO_0_0_tri_io[2]),
        .O(GPIO_0_0_tri_i_2),
        .T(GPIO_0_0_tri_t_2));
  IOBUF GPIO_0_0_tri_iobuf_3
       (.I(GPIO_0_0_tri_o_3),
        .IO(GPIO_0_0_tri_io[3]),
        .O(GPIO_0_0_tri_i_3),
        .T(GPIO_0_0_tri_t_3));
  IOBUF GPIO_0_0_tri_iobuf_4
       (.I(GPIO_0_0_tri_o_4),
        .IO(GPIO_0_0_tri_io[4]),
        .O(GPIO_0_0_tri_i_4),
        .T(GPIO_0_0_tri_t_4));
  IOBUF GPIO_0_0_tri_iobuf_5
       (.I(GPIO_0_0_tri_o_5),
        .IO(GPIO_0_0_tri_io[5]),
        .O(GPIO_0_0_tri_i_5),
        .T(GPIO_0_0_tri_t_5));
  IOBUF MDIO_ETHERNET_0_0_mdio_iobuf
       (.I(MDIO_ETHERNET_0_0_mdio_o),
        .IO(MDIO_ETHERNET_0_0_mdio_io),
        .O(MDIO_ETHERNET_0_0_mdio_i),
        .T(MDIO_ETHERNET_0_0_mdio_t));
endmodule
