--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sun Oct 31 19:55:47 2021
--Host        : Wahab-R5 running 64-bit major release  (build 9200)
--Command     : generate_target LCD_controller_bd_wrapper.bd
--Design      : LCD_controller_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LCD_controller_bd_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENET0_GMII_RX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_RX_DV_0 : in STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENET0_GMII_TX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_TX_EN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK1 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    MDIO_ETHERNET_0_0_mdc : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_io : inout STD_LOGIC;
    data_out_to_pins_n_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out_to_pins_p_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    diff_clk_to_pins_0_clk_n : out STD_LOGIC;
    diff_clk_to_pins_0_clk_p : out STD_LOGIC;
    mipi_phy_if_0_clk_hs_n : out STD_LOGIC;
    mipi_phy_if_0_clk_hs_p : out STD_LOGIC;
    mipi_phy_if_0_clk_lp_n : out STD_LOGIC;
    mipi_phy_if_0_clk_lp_p : out STD_LOGIC;
    mipi_phy_if_0_data_hs_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_hs_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_lp_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_lp_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_clk_hs_n : out STD_LOGIC;
    mipi_phy_if_1_clk_hs_p : out STD_LOGIC;
    mipi_phy_if_1_clk_lp_n : out STD_LOGIC;
    mipi_phy_if_1_clk_lp_p : out STD_LOGIC;
    mipi_phy_if_1_data_hs_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_hs_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_lp_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_lp_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end LCD_controller_bd_wrapper;

architecture STRUCTURE of LCD_controller_bd_wrapper is
  component LCD_controller_bd is
  port (
    ENET0_GMII_RX_DV_0 : in STD_LOGIC;
    ENET0_GMII_RX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENET0_GMII_TX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENET0_GMII_TX_EN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK1 : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    MDIO_ETHERNET_0_0_mdc : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_o : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_t : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_i : in STD_LOGIC;
    mipi_phy_if_0_clk_hs_n : out STD_LOGIC;
    mipi_phy_if_0_clk_hs_p : out STD_LOGIC;
    mipi_phy_if_0_clk_lp_n : out STD_LOGIC;
    mipi_phy_if_0_clk_lp_p : out STD_LOGIC;
    mipi_phy_if_0_data_hs_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_hs_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_lp_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_0_data_lp_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out_to_pins_p_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out_to_pins_n_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    diff_clk_to_pins_0_clk_n : out STD_LOGIC;
    diff_clk_to_pins_0_clk_p : out STD_LOGIC;
    mipi_phy_if_1_clk_hs_n : out STD_LOGIC;
    mipi_phy_if_1_clk_hs_p : out STD_LOGIC;
    mipi_phy_if_1_clk_lp_n : out STD_LOGIC;
    mipi_phy_if_1_clk_lp_p : out STD_LOGIC;
    mipi_phy_if_1_data_hs_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_hs_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_lp_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_1_data_lp_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component LCD_controller_bd;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal MDIO_ETHERNET_0_0_mdio_i : STD_LOGIC;
  signal MDIO_ETHERNET_0_0_mdio_o : STD_LOGIC;
  signal MDIO_ETHERNET_0_0_mdio_t : STD_LOGIC;
begin
LCD_controller_bd_i: component LCD_controller_bd
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      ENET0_GMII_RXD(3 downto 0) => ENET0_GMII_RXD(3 downto 0),
      ENET0_GMII_RX_CLK_0 => ENET0_GMII_RX_CLK_0,
      ENET0_GMII_RX_DV_0 => ENET0_GMII_RX_DV_0,
      ENET0_GMII_TXD(3 downto 0) => ENET0_GMII_TXD(3 downto 0),
      ENET0_GMII_TX_CLK_0 => ENET0_GMII_TX_CLK_0,
      ENET0_GMII_TX_EN_0(0) => ENET0_GMII_TX_EN_0(0),
      FCLK_CLK1 => FCLK_CLK1,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      MDIO_ETHERNET_0_0_mdc => MDIO_ETHERNET_0_0_mdc,
      MDIO_ETHERNET_0_0_mdio_i => MDIO_ETHERNET_0_0_mdio_i,
      MDIO_ETHERNET_0_0_mdio_o => MDIO_ETHERNET_0_0_mdio_o,
      MDIO_ETHERNET_0_0_mdio_t => MDIO_ETHERNET_0_0_mdio_t,
      data_out_to_pins_n_0(3 downto 0) => data_out_to_pins_n_0(3 downto 0),
      data_out_to_pins_p_0(3 downto 0) => data_out_to_pins_p_0(3 downto 0),
      diff_clk_to_pins_0_clk_n => diff_clk_to_pins_0_clk_n,
      diff_clk_to_pins_0_clk_p => diff_clk_to_pins_0_clk_p,
      mipi_phy_if_0_clk_hs_n => mipi_phy_if_0_clk_hs_n,
      mipi_phy_if_0_clk_hs_p => mipi_phy_if_0_clk_hs_p,
      mipi_phy_if_0_clk_lp_n => mipi_phy_if_0_clk_lp_n,
      mipi_phy_if_0_clk_lp_p => mipi_phy_if_0_clk_lp_p,
      mipi_phy_if_0_data_hs_n(2 downto 0) => mipi_phy_if_0_data_hs_n(2 downto 0),
      mipi_phy_if_0_data_hs_p(2 downto 0) => mipi_phy_if_0_data_hs_p(2 downto 0),
      mipi_phy_if_0_data_lp_n(2 downto 0) => mipi_phy_if_0_data_lp_n(2 downto 0),
      mipi_phy_if_0_data_lp_p(2 downto 0) => mipi_phy_if_0_data_lp_p(2 downto 0),
      mipi_phy_if_1_clk_hs_n => mipi_phy_if_1_clk_hs_n,
      mipi_phy_if_1_clk_hs_p => mipi_phy_if_1_clk_hs_p,
      mipi_phy_if_1_clk_lp_n => mipi_phy_if_1_clk_lp_n,
      mipi_phy_if_1_clk_lp_p => mipi_phy_if_1_clk_lp_p,
      mipi_phy_if_1_data_hs_n(2 downto 0) => mipi_phy_if_1_data_hs_n(2 downto 0),
      mipi_phy_if_1_data_hs_p(2 downto 0) => mipi_phy_if_1_data_hs_p(2 downto 0),
      mipi_phy_if_1_data_lp_n(2 downto 0) => mipi_phy_if_1_data_lp_n(2 downto 0),
      mipi_phy_if_1_data_lp_p(2 downto 0) => mipi_phy_if_1_data_lp_p(2 downto 0)
    );
MDIO_ETHERNET_0_0_mdio_iobuf: component IOBUF
     port map (
      I => MDIO_ETHERNET_0_0_mdio_o,
      IO => MDIO_ETHERNET_0_0_mdio_io,
      O => MDIO_ETHERNET_0_0_mdio_i,
      T => MDIO_ETHERNET_0_0_mdio_t
    );
end STRUCTURE;
