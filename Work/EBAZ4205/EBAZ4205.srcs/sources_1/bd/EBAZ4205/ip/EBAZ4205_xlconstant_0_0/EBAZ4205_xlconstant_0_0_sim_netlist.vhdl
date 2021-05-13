-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 16 18:52:21 2019
-- Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/7020test/EBAZ4205/EBAZ4205.srcs/sources_1/bd/EBAZ4205/ip/EBAZ4205_xlconstant_0_0/EBAZ4205_xlconstant_0_0_sim_netlist.vhdl
-- Design      : EBAZ4205_xlconstant_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EBAZ4205_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EBAZ4205_xlconstant_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EBAZ4205_xlconstant_0_0 : entity is "EBAZ4205_xlconstant_0_0,xlconstant_v1_1_3_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EBAZ4205_xlconstant_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EBAZ4205_xlconstant_0_0 : entity is "xlconstant_v1_1_3_xlconstant,Vivado 2017.4";
end EBAZ4205_xlconstant_0_0;

architecture STRUCTURE of EBAZ4205_xlconstant_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
