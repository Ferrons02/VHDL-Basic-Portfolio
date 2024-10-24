library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder is
    
    Generic(
        width: integer:= 11
    );
    
    Port(
        in1: in std_logic_vector (width-1 DOWNTO 0);
        in2: in std_logic_vector (width-1 DOWNTO 0);
        cin: in std_logic;
        output: out std_logic_vector (width-1 DOWNTO 0);
        cout: out std_logic
    );

end Adder;

architecture Behavioral of Adder is

component Full_Adder is

    Port(
        a: in std_logic;
        b: in std_logic;
        cin: in std_logic;
        y: out std_logic;
        cout: out std_logic
    );

end component;

signal carry: std_logic_vector (width-2 DOWNTO 0);

begin

FAn: Full_Adder

port map(
    a=>in1(width-1),
    b=>in2(width-1),
    cin=>cin,
    cout=>carry(width-2),
    y=>output(width-1)
);

ISTANZE: for a in width-2 DOWNTO 1 generate
    
    FA: Full_Adder
    
    port map(
        a=>in1(a),
        b=>in2(a),
        cin=>carry(a),
        cout=>carry(a-1),
        y=>output(a)        
    );
    
end generate;

FA0: Full_Adder

port map(
    a=>in1(0),
    b=>in2(0),
    cin=>carry(0),
    cout=>cout,
    y=>output(0)
);

end Behavioral;
