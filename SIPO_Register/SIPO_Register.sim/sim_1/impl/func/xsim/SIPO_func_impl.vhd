-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 17 11:10:48 2023
-- Host        : xXGambellaraXx running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marco/Desktop/Progetti_Vivado/SIPO_Register/SIPO_Register.sim/sim_1/impl/func/xsim/SIPO_func_impl.vhd
-- Design      : SIPO
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ff_d is
  port (
    output_IBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    q_int_reg_0 : in STD_LOGIC;
    ck_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end ff_d;

architecture STRUCTURE of ff_d is
begin
q_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => q_int_reg_0,
      Q => output_IBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SIPO is
  port (
    input : in STD_LOGIC;
    ck : in STD_LOGIC;
    rst : in STD_LOGIC;
    output : inout STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SIPO : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of SIPO : entity is "e4d97d0e";
  attribute I : integer;
  attribute I of SIPO : entity is 8;
end SIPO;

architecture STRUCTURE of SIPO is
  signal ck_IBUF : STD_LOGIC;
  signal ck_IBUF_BUFG : STD_LOGIC;
  signal output_IBUF : STD_LOGIC_VECTOR ( 8 to 8 );
  signal q_int_reg_i_1_n_0 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
begin
ck_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => ck_IBUF,
      O => ck_IBUF_BUFG
    );
ck_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ck,
      O => ck_IBUF
    );
ff_d_I: entity work.ff_d
     port map (
      ck_IBUF_BUFG => ck_IBUF_BUFG,
      output_IBUF(0) => output_IBUF(8),
      q_int_reg_0 => q_int_reg_i_1_n_0,
      rst_IBUF => rst_IBUF
    );
\output[0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(0)
    );
\output[1]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(1)
    );
\output[2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(2)
    );
\output[3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(3)
    );
\output[4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(4)
    );
\output[5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(5)
    );
\output[6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(6)
    );
\output[7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output(7)
    );
\output[8]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => output_IBUF(8),
      O => output(8)
    );
q_int_reg_i_1: unisim.vcomponents.IBUF
     port map (
      I => input,
      O => q_int_reg_i_1_n_0
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
