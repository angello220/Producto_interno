-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Feb 25 14:18:25 2019
-- Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {D:/UsmDrive/Respaldos/Desing
--               PP/Funciona_Todo_Integers_Fractions_Any/HDL/Throughput/Dot_Product/Dot_Product.srcs/sources_1/ip/Prod/Prod_stub.vhdl}
-- Design      : Prod
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Prod is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 23 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end Prod;

architecture stub of Prod is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[23:0],B[23:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_14,Vivado 2018.2.1";
begin
end;
