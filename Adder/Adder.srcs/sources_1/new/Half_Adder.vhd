library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is

    Port(
        a: in std_logic;
        b: in std_logic;
        y: out std_logic;
        c: out std_logic
    );
        
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

    y<= ((not a) and b) or (a and (not b));
    c<= a and b;

end Behavioral;
