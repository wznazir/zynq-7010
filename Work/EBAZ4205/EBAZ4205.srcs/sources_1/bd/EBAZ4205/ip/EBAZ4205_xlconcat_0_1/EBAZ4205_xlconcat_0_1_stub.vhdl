-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 16 19:13:58 2019
-- Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/7020test/EBAZ4205/EBAZ4205.srcs/sources_1/bd/EBAZ4205/ip/EBAZ4205_xlconcat_0_1/EBAZ4205_xlconcat_0_1_stub.vhdl
-- Design      : EBAZ4205_xlconcat_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EBAZ4205_xlconcat_0_1 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end EBAZ4205_xlconcat_0_1;

architecture stub of EBAZ4205_xlconcat_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[3:0],dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
begin
end;
