library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is

    Port(
        a: in std_logic;
        b: in std_logic;
        cin: in std_logic;
        y: out std_logic;
        cout: out std_logic
    );
    
end Full_Adder;

architecture Behavioral of Full_Adder is

    component Half_Adder is

        Port(
            a: in std_logic;
            b: in std_logic;
            y: out std_logic;
            c: out std_logic
        );
    
    end component;

    signal y1: std_logic;
    signal c1: std_logic;
    signal c2: std_logic;

begin

    Half_Adder1: Half_Adder
    
    port map(
        a=>a,
        b=>b,
        y=>y1,
        c=>c1
    );

    Half_Adder2: Half_Adder
    
    port map(
        a=>y1,
        b=>cin,
        y=>y,
        c=>c2
    );
    
    Half_Adder3: Half_Adder
    
    port map(
        a=>c1,
        b=>c2,
        y=>cout,
        c=>open
    );

end Behavioral;
