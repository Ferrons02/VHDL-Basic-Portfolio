
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO_reg is
    Port(
        input: in std_logic_vector (7 DOWNTO 0);
        output: out std_logic_vector (7 DOWNTO 0);
        clk: in std_logic;
        clr: in std_logic
    );
    
end PIPO_reg;

architecture Behavioral of PIPO_reg is

component ff_d is
    
    Port(
        reset	: in std_logic;
		clk		: in std_logic;

		d 	:	in std_logic;
		q 	: out std_logic
    );
    
end component;

signal d_in: std_logic_vector (7 DOWNTO 0);
signal d_out: std_logic_vector (7 DOWNTO 0);

begin

ISTANZE: for a in 7 DOWNTO 0 generate

ff_dn: ff_d

Port Map(
    reset=> clr,
    clk=> clk,
    d=> d_in (a),
    q=> d_out (a)
);

d_in(a)<= input(a);
output(a)<= d_out(a);

end generate;

end Behavioral;
