-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Feb 17 11:48:25 2019
-- Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top UartPort -prefix
--               UartPort_ UartPort_sim_netlist.vhdl
-- Design      : UartPort
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort_data_sync is
  port (
    rx_bit : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    ckin : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \spacing_counter_reg[0]\ : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rx : in STD_LOGIC
  );
end UartPort_data_sync;

architecture STRUCTURE of UartPort_data_sync is
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \in_sync_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \in_sync_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^rx_bit\ : STD_LOGIC;
  signal stable_out_i_1_n_0 : STD_LOGIC;
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sync_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sync_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \sync_counter[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stable_out_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sync_counter[1]_i_1\ : label is "soft_lutpair1";
begin
  rx_bit <= \^rx_bit\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7740404044"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_0\,
      I1 => \out\(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \spacing_counter_reg[0]\,
      I5 => in0(0),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBB80808088"
    )
        port map (
      I0 => \state_next__0\(1),
      I1 => \out\(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \spacing_counter_reg[0]\,
      I5 => in0(1),
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0150"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_1\(2),
      I1 => \^rx_bit\,
      I2 => \FSM_sequential_state_reg[2]_1\(1),
      I3 => \FSM_sequential_state_reg[2]_1\(0),
      O => \state_next__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBB80808088"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\(0),
      I1 => \out\(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \spacing_counter_reg[0]\,
      I5 => in0(2),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_1\(0),
      I1 => \FSM_sequential_state_reg[2]_1\(1),
      I2 => \FSM_sequential_state_reg[2]_1\(2),
      I3 => \^rx_bit\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\in_sync_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => '1',
      D => \in_sync_sr_reg_n_0_[1]\,
      Q => \in_sync_sr_reg_n_0_[0]\,
      R => '0'
    );
\in_sync_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => '1',
      D => rx,
      Q => \in_sync_sr_reg_n_0_[1]\,
      R => '0'
    );
stable_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^rx_bit\,
      I1 => sync_counter(0),
      I2 => sync_counter(1),
      O => stable_out_i_1_n_0
    );
stable_out_reg: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => '1',
      D => stable_out_i_1_n_0,
      Q => \^rx_bit\,
      R => '0'
    );
\sync_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => sync_counter(1),
      I1 => \in_sync_sr_reg_n_0_[0]\,
      I2 => sync_counter(0),
      O => \sync_counter[0]_i_1_n_0\
    );
\sync_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \in_sync_sr_reg_n_0_[0]\,
      I1 => sync_counter(0),
      I2 => sync_counter(1),
      O => \sync_counter[1]_i_1_n_0\
    );
\sync_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \sync_counter[0]_i_1_n_0\,
      Q => sync_counter(0),
      R => '0'
    );
\sync_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \sync_counter[1]_i_1_n_0\,
      Q => sync_counter(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort_uart_baud_tick_gen is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ckin : in STD_LOGIC
  );
end UartPort_uart_baud_tick_gen;

architecture STRUCTURE of UartPort_uart_baud_tick_gen is
  signal acc : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of acc : signal is "true";
  signal \acc[12]_i_2_n_0\ : STD_LOGIC;
  signal \acc[12]_i_3_n_0\ : STD_LOGIC;
  signal \acc[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc[4]_i_3_n_0\ : STD_LOGIC;
  signal \acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc[8]_i_3_n_0\ : STD_LOGIC;
  signal \acc[8]_i_4_n_0\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_acc_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_acc_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute KEEP : string;
  attribute KEEP of \acc_reg[0]\ : label is "yes";
  attribute KEEP of \acc_reg[10]\ : label is "yes";
  attribute KEEP of \acc_reg[11]\ : label is "yes";
  attribute KEEP of \acc_reg[12]\ : label is "yes";
  attribute KEEP of \acc_reg[13]\ : label is "yes";
  attribute KEEP of \acc_reg[14]\ : label is "yes";
  attribute KEEP of \acc_reg[15]\ : label is "yes";
  attribute KEEP of \acc_reg[16]\ : label is "yes";
  attribute KEEP of \acc_reg[17]\ : label is "yes";
  attribute KEEP of \acc_reg[18]\ : label is "yes";
  attribute KEEP of \acc_reg[19]\ : label is "yes";
  attribute KEEP of \acc_reg[1]\ : label is "yes";
  attribute KEEP of \acc_reg[2]\ : label is "yes";
  attribute KEEP of \acc_reg[3]\ : label is "yes";
  attribute KEEP of \acc_reg[4]\ : label is "yes";
  attribute KEEP of \acc_reg[5]\ : label is "yes";
  attribute KEEP of \acc_reg[6]\ : label is "yes";
  attribute KEEP of \acc_reg[7]\ : label is "yes";
  attribute KEEP of \acc_reg[8]\ : label is "yes";
  attribute KEEP of \acc_reg[9]\ : label is "yes";
begin
  \out\(0) <= acc(19);
\acc[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(11),
      O => \acc[12]_i_2_n_0\
    );
\acc[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(9),
      O => \acc[12]_i_3_n_0\
    );
\acc[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(3),
      O => \acc[4]_i_2_n_0\
    );
\acc[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(2),
      O => \acc[4]_i_3_n_0\
    );
\acc[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(8),
      O => \acc[8]_i_2_n_0\
    );
\acc[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(7),
      O => \acc[8]_i_3_n_0\
    );
\acc[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(6),
      O => \acc[8]_i_4_n_0\
    );
\acc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => acc(0),
      Q => acc(0),
      R => '0'
    );
\acc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(10),
      Q => acc(10),
      R => '0'
    );
\acc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(11),
      Q => acc(11),
      R => '0'
    );
\acc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(12),
      Q => acc(12),
      R => '0'
    );
\acc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[8]_i_1_n_0\,
      CO(3) => \acc_reg[12]_i_1_n_0\,
      CO(2) => \acc_reg[12]_i_1_n_1\,
      CO(1) => \acc_reg[12]_i_1_n_2\,
      CO(0) => \acc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => acc(11),
      DI(1) => '0',
      DI(0) => acc(9),
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3) => acc(12),
      S(2) => \acc[12]_i_2_n_0\,
      S(1) => acc(10),
      S(0) => \acc[12]_i_3_n_0\
    );
\acc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(13),
      Q => acc(13),
      R => '0'
    );
\acc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(14),
      Q => acc(14),
      R => '0'
    );
\acc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(15),
      Q => acc(15),
      R => '0'
    );
\acc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(16),
      Q => acc(16),
      R => '0'
    );
\acc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[12]_i_1_n_0\,
      CO(3) => \acc_reg[16]_i_1_n_0\,
      CO(2) => \acc_reg[16]_i_1_n_1\,
      CO(1) => \acc_reg[16]_i_1_n_2\,
      CO(0) => \acc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => acc(16 downto 13)
    );
\acc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(17),
      Q => acc(17),
      R => '0'
    );
\acc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(18),
      Q => acc(18),
      R => '0'
    );
\acc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(19),
      Q => acc(19),
      R => '0'
    );
\acc_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[16]_i_1_n_0\,
      CO(3) => \NLW_acc_reg[19]_i_1_CO_UNCONNECTED\(3),
      CO(2) => p_1_in(19),
      CO(1) => \NLW_acc_reg[19]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \acc_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_acc_reg[19]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_1_in(18 downto 17),
      S(3 downto 2) => B"01",
      S(1 downto 0) => acc(18 downto 17)
    );
\acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(1),
      Q => acc(1),
      R => '0'
    );
\acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(2),
      Q => acc(2),
      R => '0'
    );
\acc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(3),
      Q => acc(3),
      R => '0'
    );
\acc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(4),
      Q => acc(4),
      R => '0'
    );
\acc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[4]_i_1_n_0\,
      CO(2) => \acc_reg[4]_i_1_n_1\,
      CO(1) => \acc_reg[4]_i_1_n_2\,
      CO(0) => \acc_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => acc(3 downto 2),
      DI(0) => '0',
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => acc(4),
      S(2) => \acc[4]_i_2_n_0\,
      S(1) => \acc[4]_i_3_n_0\,
      S(0) => acc(1)
    );
\acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(5),
      Q => acc(5),
      R => '0'
    );
\acc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(6),
      Q => acc(6),
      R => '0'
    );
\acc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(7),
      Q => acc(7),
      R => '0'
    );
\acc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(8),
      Q => acc(8),
      R => '0'
    );
\acc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[4]_i_1_n_0\,
      CO(3) => \acc_reg[8]_i_1_n_0\,
      CO(2) => \acc_reg[8]_i_1_n_1\,
      CO(1) => \acc_reg[8]_i_1_n_2\,
      CO(0) => \acc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => acc(8 downto 6),
      DI(0) => '0',
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3) => \acc[8]_i_2_n_0\,
      S(2) => \acc[8]_i_3_n_0\,
      S(1) => \acc[8]_i_4_n_0\,
      S(0) => acc(5)
    );
\acc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => p_1_in(9),
      Q => acc(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \UartPort_uart_baud_tick_gen__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ckin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \UartPort_uart_baud_tick_gen__parameterized0\ : entity is "uart_baud_tick_gen";
end \UartPort_uart_baud_tick_gen__parameterized0\;

architecture STRUCTURE of \UartPort_uart_baud_tick_gen__parameterized0\ is
  signal acc : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of acc : signal is "true";
  signal \acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \acc[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc[4]_i_3_n_0\ : STD_LOGIC;
  signal \acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc[8]_i_3_n_0\ : STD_LOGIC;
  signal \acc[8]_i_4_n_0\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \acc_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \acc_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \acc_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \acc_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \acc_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \acc_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_acc_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_acc_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute KEEP : string;
  attribute KEEP of \acc_reg[0]\ : label is "yes";
  attribute KEEP of \acc_reg[10]\ : label is "yes";
  attribute KEEP of \acc_reg[11]\ : label is "yes";
  attribute KEEP of \acc_reg[12]\ : label is "yes";
  attribute KEEP of \acc_reg[13]\ : label is "yes";
  attribute KEEP of \acc_reg[14]\ : label is "yes";
  attribute KEEP of \acc_reg[15]\ : label is "yes";
  attribute KEEP of \acc_reg[16]\ : label is "yes";
  attribute KEEP of \acc_reg[17]\ : label is "yes";
  attribute KEEP of \acc_reg[18]\ : label is "yes";
  attribute KEEP of \acc_reg[19]\ : label is "yes";
  attribute KEEP of \acc_reg[1]\ : label is "yes";
  attribute KEEP of \acc_reg[2]\ : label is "yes";
  attribute KEEP of \acc_reg[3]\ : label is "yes";
  attribute KEEP of \acc_reg[4]\ : label is "yes";
  attribute KEEP of \acc_reg[5]\ : label is "yes";
  attribute KEEP of \acc_reg[6]\ : label is "yes";
  attribute KEEP of \acc_reg[7]\ : label is "yes";
  attribute KEEP of \acc_reg[8]\ : label is "yes";
  attribute KEEP of \acc_reg[9]\ : label is "yes";
begin
  \out\(0) <= acc(19);
\acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(0),
      O => \acc[0]_i_1_n_0\
    );
\acc[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(4),
      O => \acc[4]_i_2_n_0\
    );
\acc[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(3),
      O => \acc[4]_i_3_n_0\
    );
\acc[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(8),
      O => \acc[8]_i_2_n_0\
    );
\acc[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(6),
      O => \acc[8]_i_3_n_0\
    );
\acc[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(5),
      O => \acc[8]_i_4_n_0\
    );
\acc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc[0]_i_1_n_0\,
      Q => acc(0),
      S => SR(0)
    );
\acc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[12]_i_1_n_6\,
      Q => acc(10),
      R => SR(0)
    );
\acc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[12]_i_1_n_5\,
      Q => acc(11),
      R => SR(0)
    );
\acc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[12]_i_1_n_4\,
      Q => acc(12),
      R => SR(0)
    );
\acc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[8]_i_1_n_0\,
      CO(3) => \acc_reg[12]_i_1_n_0\,
      CO(2) => \acc_reg[12]_i_1_n_1\,
      CO(1) => \acc_reg[12]_i_1_n_2\,
      CO(0) => \acc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[12]_i_1_n_4\,
      O(2) => \acc_reg[12]_i_1_n_5\,
      O(1) => \acc_reg[12]_i_1_n_6\,
      O(0) => \acc_reg[12]_i_1_n_7\,
      S(3 downto 0) => acc(12 downto 9)
    );
\acc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[16]_i_1_n_7\,
      Q => acc(13),
      R => SR(0)
    );
\acc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[16]_i_1_n_6\,
      Q => acc(14),
      R => SR(0)
    );
\acc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[16]_i_1_n_5\,
      Q => acc(15),
      R => SR(0)
    );
\acc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[16]_i_1_n_4\,
      Q => acc(16),
      R => SR(0)
    );
\acc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[12]_i_1_n_0\,
      CO(3) => \acc_reg[16]_i_1_n_0\,
      CO(2) => \acc_reg[16]_i_1_n_1\,
      CO(1) => \acc_reg[16]_i_1_n_2\,
      CO(0) => \acc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[16]_i_1_n_4\,
      O(2) => \acc_reg[16]_i_1_n_5\,
      O(1) => \acc_reg[16]_i_1_n_6\,
      O(0) => \acc_reg[16]_i_1_n_7\,
      S(3 downto 0) => acc(16 downto 13)
    );
\acc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[19]_i_2_n_7\,
      Q => acc(17),
      R => SR(0)
    );
\acc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[19]_i_2_n_6\,
      Q => acc(18),
      R => SR(0)
    );
\acc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[19]_i_2_n_1\,
      Q => acc(19),
      R => SR(0)
    );
\acc_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[16]_i_1_n_0\,
      CO(3) => \NLW_acc_reg[19]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \acc_reg[19]_i_2_n_1\,
      CO(1) => \NLW_acc_reg[19]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \acc_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_acc_reg[19]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \acc_reg[19]_i_2_n_6\,
      O(0) => \acc_reg[19]_i_2_n_7\,
      S(3 downto 2) => B"01",
      S(1 downto 0) => acc(18 downto 17)
    );
\acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[4]_i_1_n_7\,
      Q => acc(1),
      R => SR(0)
    );
\acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[4]_i_1_n_6\,
      Q => acc(2),
      R => SR(0)
    );
\acc_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[4]_i_1_n_5\,
      Q => acc(3),
      S => SR(0)
    );
\acc_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[4]_i_1_n_4\,
      Q => acc(4),
      S => SR(0)
    );
\acc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[4]_i_1_n_0\,
      CO(2) => \acc_reg[4]_i_1_n_1\,
      CO(1) => \acc_reg[4]_i_1_n_2\,
      CO(0) => \acc_reg[4]_i_1_n_3\,
      CYINIT => acc(0),
      DI(3 downto 2) => acc(4 downto 3),
      DI(1 downto 0) => B"00",
      O(3) => \acc_reg[4]_i_1_n_4\,
      O(2) => \acc_reg[4]_i_1_n_5\,
      O(1) => \acc_reg[4]_i_1_n_6\,
      O(0) => \acc_reg[4]_i_1_n_7\,
      S(3) => \acc[4]_i_2_n_0\,
      S(2) => \acc[4]_i_3_n_0\,
      S(1 downto 0) => acc(2 downto 1)
    );
\acc_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[8]_i_1_n_7\,
      Q => acc(5),
      S => SR(0)
    );
\acc_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[8]_i_1_n_6\,
      Q => acc(6),
      S => SR(0)
    );
\acc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[8]_i_1_n_5\,
      Q => acc(7),
      R => SR(0)
    );
\acc_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[8]_i_1_n_4\,
      Q => acc(8),
      S => SR(0)
    );
\acc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[4]_i_1_n_0\,
      CO(3) => \acc_reg[8]_i_1_n_0\,
      CO(2) => \acc_reg[8]_i_1_n_1\,
      CO(1) => \acc_reg[8]_i_1_n_2\,
      CO(0) => \acc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => acc(8),
      DI(2) => '0',
      DI(1 downto 0) => acc(6 downto 5),
      O(3) => \acc_reg[8]_i_1_n_4\,
      O(2) => \acc_reg[8]_i_1_n_5\,
      O(1) => \acc_reg[8]_i_1_n_6\,
      O(0) => \acc_reg[8]_i_1_n_7\,
      S(3) => \acc[8]_i_2_n_0\,
      S(2) => acc(7),
      S(1) => \acc[8]_i_3_n_0\,
      S(0) => \acc[8]_i_4_n_0\
    );
\acc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \acc_reg[12]_i_1_n_7\,
      Q => acc(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort_uart_tx is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_busy : out STD_LOGIC;
    tx : out STD_LOGIC;
    tx_start : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rset : in STD_LOGIC;
    ckin : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end UartPort_uart_tx;

architecture STRUCTURE of UartPort_uart_tx is
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal tx_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tx_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "TX_START:01,TX_SEND:10,TX_STOP:11,TX_IDLE:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "TX_START:01,TX_SEND:10,TX_STOP:11,TX_IDLE:00";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003E3F3230"
    )
        port map (
      I0 => state(0),
      I1 => \out\(0),
      I2 => state(0),
      I3 => state(1),
      I4 => \FSM_sequential_state[0]_i_2__0_n_0\,
      I5 => rset,
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      I3 => state(1),
      I4 => tx_start,
      O => \FSM_sequential_state[0]_i_2__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003EC0"
    )
        port map (
      I0 => state(1),
      I1 => \out\(0),
      I2 => state(0),
      I3 => state(1),
      I4 => rset,
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1),
      R => '0'
    );
\acc[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => SR(0)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9D40"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \out\(0),
      I3 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D3F32000"
    )
        port map (
      I0 => counter(0),
      I1 => state(0),
      I2 => state(1),
      I3 => \out\(0),
      I4 => counter(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70FFF0F08000000"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => state(0),
      I3 => state(1),
      I4 => \out\(0),
      I5 => counter(2),
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => rset
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => rset
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => rset
    );
tx_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8FF"
    )
        port map (
      I0 => tx_INST_0_i_1_n_0,
      I1 => counter(2),
      I2 => tx_INST_0_i_2_n_0,
      I3 => state(1),
      I4 => state(0),
      O => tx
    );
tx_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data_reg(7),
      I1 => tx_data_reg(6),
      I2 => counter(1),
      I3 => tx_data_reg(5),
      I4 => counter(0),
      I5 => tx_data_reg(4),
      O => tx_INST_0_i_1_n_0
    );
tx_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data_reg(3),
      I1 => tx_data_reg(2),
      I2 => counter(1),
      I3 => tx_data_reg(1),
      I4 => counter(0),
      I5 => tx_data_reg(0),
      O => tx_INST_0_i_2_n_0
    );
tx_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => tx_busy
    );
\tx_data_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => tx_start,
      I1 => state(1),
      I2 => state(0),
      O => \tx_data_reg[7]_i_1_n_0\
    );
\tx_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(0),
      Q => tx_data_reg(0),
      R => rset
    );
\tx_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(1),
      Q => tx_data_reg(1),
      R => rset
    );
\tx_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(2),
      Q => tx_data_reg(2),
      R => rset
    );
\tx_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(3),
      Q => tx_data_reg(3),
      R => rset
    );
\tx_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(4),
      Q => tx_data_reg(4),
      R => rset
    );
\tx_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(5),
      Q => tx_data_reg(5),
      R => rset
    );
\tx_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(6),
      Q => tx_data_reg(6),
      R => rset
    );
\tx_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \tx_data_reg[7]_i_1_n_0\,
      D => tx_data(7),
      Q => tx_data_reg(7),
      R => rset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort_uart_rx is
  port (
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready_reg : out STD_LOGIC;
    rx_ready_pre : out STD_LOGIC;
    ckin : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rset : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_ready_sync : in STD_LOGIC
  );
end UartPort_uart_rx;

architecture STRUCTURE of UartPort_uart_rx is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal rx_bit : STD_LOGIC;
  signal \^rx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal rx_sync_inst_n_1 : STD_LOGIC;
  signal rx_sync_inst_n_2 : STD_LOGIC;
  signal rx_sync_inst_n_3 : STD_LOGIC;
  signal spacing_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \spacing_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \spacing_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \spacing_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \spacing_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \spacing_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
  rx_data(7 downto 0) <= \^rx_data\(7 downto 0);
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \state_next__0\(2)
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFEFFF"
    )
        port map (
      I0 => spacing_counter(0),
      I1 => spacing_counter(1),
      I2 => spacing_counter(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => rx_sync_inst_n_3,
      Q => \state__0\(0),
      R => rset
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => rx_sync_inst_n_2,
      Q => \state__0\(1),
      R => rset
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => rx_sync_inst_n_1,
      Q => \state__0\(2),
      R => rset
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2F00000080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \rx_data[7]_i_2_n_0\,
      I2 => \out\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \bit_counter_reg_n_0_[0]\,
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4CFF00008000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \rx_data[7]_i_2_n_0\,
      I3 => \out\(0),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \bit_counter_reg_n_0_[1]\,
      O => \bit_counter[1]_i_1_n_0\
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF70F000008000"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \state__0\(1),
      I3 => \rx_data[7]_i_2_n_0\,
      I4 => \bit_counter[2]_i_2_n_0\,
      I5 => \bit_counter_reg_n_0_[2]\,
      O => \bit_counter[2]_i_1_n_0\
    );
\bit_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \out\(0),
      O => \bit_counter[2]_i_2_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \bit_counter[0]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[0]\,
      R => rset
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \bit_counter[1]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[1]\,
      R => rset
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \bit_counter[2]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[2]\,
      R => rset
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \rx_data[7]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \out\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \rx_data[7]_i_1_n_0\
    );
\rx_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => spacing_counter(2),
      I1 => spacing_counter(1),
      I2 => spacing_counter(0),
      O => \rx_data[7]_i_2_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(1),
      Q => \^rx_data\(0),
      R => rset
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(2),
      Q => \^rx_data\(1),
      R => rset
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(3),
      Q => \^rx_data\(2),
      R => rset
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(4),
      Q => \^rx_data\(3),
      R => rset
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(5),
      Q => \^rx_data\(4),
      R => rset
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(6),
      Q => \^rx_data\(5),
      R => rset
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => \^rx_data\(7),
      Q => \^rx_data\(6),
      R => rset
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => \rx_data[7]_i_1_n_0\,
      D => rx_bit,
      Q => \^rx_data\(7),
      R => rset
    );
rx_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => rx_ready_sync,
      O => rx_ready_reg
    );
rx_ready_sync_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => rx_ready_pre
    );
rx_sync_inst: entity work.UartPort_data_sync
     port map (
      \FSM_sequential_state_reg[0]\ => rx_sync_inst_n_3,
      \FSM_sequential_state_reg[0]_0\(0) => \state_next__0\(2),
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state[2]_i_4_n_0\,
      \FSM_sequential_state_reg[1]\ => rx_sync_inst_n_2,
      \FSM_sequential_state_reg[2]\ => rx_sync_inst_n_1,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state[0]_i_2_n_0\,
      \FSM_sequential_state_reg[2]_1\(2 downto 0) => \state__0\(2 downto 0),
      ckin => ckin,
      in0(2 downto 0) => \state__0\(2 downto 0),
      \out\(0) => \out\(0),
      rx => rx,
      rx_bit => rx_bit,
      \spacing_counter_reg[0]\ => \FSM_sequential_state[2]_i_5_n_0\
    );
\spacing_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066666662"
    )
        port map (
      I0 => spacing_counter(0),
      I1 => \out\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => rset,
      O => \spacing_counter[0]_i_1_n_0\
    );
\spacing_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A226A6A"
    )
        port map (
      I0 => spacing_counter(1),
      I1 => \out\(0),
      I2 => spacing_counter(0),
      I3 => \state__0\(2),
      I4 => \spacing_counter[1]_i_2_n_0\,
      I5 => rset,
      O => \spacing_counter[1]_i_1_n_0\
    );
\spacing_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \spacing_counter[1]_i_2_n_0\
    );
\spacing_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA2222"
    )
        port map (
      I0 => spacing_counter(2),
      I1 => \out\(0),
      I2 => spacing_counter(1),
      I3 => spacing_counter(0),
      I4 => \spacing_counter[2]_i_2_n_0\,
      I5 => rset,
      O => \spacing_counter[2]_i_1_n_0\
    );
\spacing_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \spacing_counter[2]_i_2_n_0\
    );
\spacing_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \spacing_counter[0]_i_1_n_0\,
      Q => spacing_counter(0),
      R => '0'
    );
\spacing_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \spacing_counter[1]_i_1_n_0\,
      Q => spacing_counter(1),
      R => '0'
    );
\spacing_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ckin,
      CE => '1',
      D => \spacing_counter[2]_i_1_n_0\,
      Q => spacing_counter(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort_uart is
  port (
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_ready : out STD_LOGIC;
    tx_busy : out STD_LOGIC;
    tx : out STD_LOGIC;
    tx_start : in STD_LOGIC;
    rset : in STD_LOGIC;
    ckin : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end UartPort_uart;

architecture STRUCTURE of UartPort_uart is
  signal baud8_tick : STD_LOGIC;
  signal baud_tick : STD_LOGIC;
  signal rx_ready_pre : STD_LOGIC;
  signal rx_ready_sync : STD_LOGIC;
  signal uart_rx_blk_n_8 : STD_LOGIC;
  signal uart_tx_blk_n_0 : STD_LOGIC;
begin
baud8_tick_blk: entity work.UartPort_uart_baud_tick_gen
     port map (
      ckin => ckin,
      \out\(0) => baud8_tick
    );
baud_tick_blk: entity work.\UartPort_uart_baud_tick_gen__parameterized0\
     port map (
      SR(0) => uart_tx_blk_n_0,
      ckin => ckin,
      \out\(0) => baud_tick
    );
rx_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => '1',
      D => uart_rx_blk_n_8,
      Q => rx_ready,
      R => '0'
    );
rx_ready_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => ckin,
      CE => '1',
      D => rx_ready_pre,
      Q => rx_ready_sync,
      R => '0'
    );
uart_rx_blk: entity work.UartPort_uart_rx
     port map (
      ckin => ckin,
      \out\(0) => baud8_tick,
      rset => rset,
      rx => rx,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_ready_pre => rx_ready_pre,
      rx_ready_reg => uart_rx_blk_n_8,
      rx_ready_sync => rx_ready_sync
    );
uart_tx_blk: entity work.UartPort_uart_tx
     port map (
      SR(0) => uart_tx_blk_n_0,
      ckin => ckin,
      \out\(0) => baud_tick,
      rset => rset,
      tx => tx,
      tx_busy => tx_busy,
      tx_data(7 downto 0) => tx_data(7 downto 0),
      tx_start => tx_start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartPort is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UartPort : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UartPort : entity is "UartPort,uart,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UartPort : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of UartPort : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UartPort : entity is "uart,Vivado 2018.2.1";
end UartPort;

architecture STRUCTURE of UartPort is
begin
inst: entity work.UartPort_uart
     port map (
      ckin => ckin,
      rset => rset,
      rx => rx,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_ready => rx_ready,
      tx => tx,
      tx_busy => tx_busy,
      tx_data(7 downto 0) => tx_data(7 downto 0),
      tx_start => tx_start
    );
end STRUCTURE;
