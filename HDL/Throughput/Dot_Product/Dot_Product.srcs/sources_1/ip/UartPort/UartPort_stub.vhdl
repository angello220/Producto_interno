-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Feb 17 11:48:25 2019
-- Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top UartPort -prefix
--               UartPort_ UartPort_stub.vhdl
-- Design      : UartPort
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UartPort is
  Port ( 
    ckin : in STD_LOGIC;
    rset : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    tx_start : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_busy : out STD_LOGIC
  );

end UartPort;

architecture stub of UartPort is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ckin,rset,rx,rx_data[7:0],rx_ready,tx,tx_start,tx_data[7:0],tx_busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart,Vivado 2018.2.1";
begin
end;
