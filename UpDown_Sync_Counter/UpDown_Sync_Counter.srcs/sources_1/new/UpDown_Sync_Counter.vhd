library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_STD.ALL;

entity UpDownSyncCounter is
    Generic(
        COUNT_WIDTH : integer := 4
    );
    Port (
        reset : in std_logic;
        clk : in std_logic;
        inc_count : in std_logic;
        dec_count : in std_logic;
        count : out std_logic_vector(COUNT_WIDTH-1 DOWNTO 0) -- Signed
    );
end UpDownSyncCounter;

architecture Behavioral of UPDownSyncCounter is

component ff_d is 
	Port(
		reset	: in std_logic;
		clk		: in std_logic;

		d 	:	in std_logic;
		q 	: out std_logic
	);
end component;

signal conteggio_now, conteggio_new: unsigned (COUNT_WIDTH-1 DOWNTO 0):= (Others=>'0');
signal selettore: std_logic_vector (1 DOWNTO 0);

begin	
	count<= std_logic_vector(conteggio_now);
	selettore(1)<=inc_count;
	selettore(0)<=dec_count;
	
	istanze: for a in COUNT_WIDTH-1 DOWNTO 0 generate
	   ff_dx: ff_d
	   Port map(
	       reset=>reset,
	       clk=>clk,
	       d=>conteggio_new(a),
	       q=>conteggio_now(a)
	   );
	end generate;	
	
	with selettore select conteggio_new<= conteggio_now+1 when "10",
	   conteggio_now-1 when "01",
	   conteggio_now when Others;
	
end Behavioral;