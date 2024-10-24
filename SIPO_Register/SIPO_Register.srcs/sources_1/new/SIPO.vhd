library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO is
    Generic(
        SR_WIDTH : INTEGER:=4
    );
    Port(
			reset		: in std_logic;
			clk			: in std_logic;

			data_in		: in std_logic;

			data_out	: out std_logic_vector(SR_WIDTH-1 DOWNTO 0)

		);

end SIPO;

architecture Behavioral of SIPO is

component ff_d is
    Port(
        reset	: in std_logic;
		clk		: in std_logic;

		d 	:	in std_logic;
		q 	: out std_logic
    );
end component;

signal ingressi: std_logic_vector (SR_WIDTH-1 DOWNTO 0);
signal uscite: std_logic_vector (SR_WIDTH-1 DOWNTO 0);

begin

ingressi(SR_WIDTH-1)<= data_in;
data_out<= uscite;
ingressi(SR_WIDTH-2 DOWNTO 0)<=uscite(SR_WIDTH-1 DOWNTO 1);

Istanze: for a in SR_WIDTH-1 DOWNTO 0 generate
    ff_dx: ff_d 
    Port map(
        reset=>reset,
        clk=>clk,
        d=>ingressi(a),
        q=>uscite(a)
    );
end generate;

end Behavioral;
