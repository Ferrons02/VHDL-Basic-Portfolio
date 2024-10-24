library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mean is
    Port(
        R: in std_logic_vector (7 DOWNTO 0);
        G: in std_logic_vector (7 DOWNTO 0);
        B: in std_logic_vector (7 DOWNTO 0);
        Output: out std_logic_vector (7 DOWNTO 0)
    );
end Mean;

architecture Behavioral of Mean is

type uscite is array (7 DOWNTO 0) of std_logic_vector (10 DOWNTO 0);

component Adder is

    Port(
        in1: in std_logic_vector (10 DOWNTO 0);
        in2: in std_logic_vector (10 DOWNTO 0);
        cin: in std_logic;
        output: out std_logic_vector (10 DOWNTO 0);
        cout: out std_logic
    );

end component;

signal parz: std_logic_vector (10 DOWNTO 0);
signal sommatot: std_logic_vector (10 DOWNTO 0);
signal resto_out: uscite;
signal resto_in: uscite;
signal appoggio: std_logic_vector (10 DOWNTO 0);
signal u: std_logic_vector:="000";

begin

Adder0Somma: Adder

port map(
    in1 (10 DOWNTO 8)=> u (2 DOWNTO 0),
    in1 (7 DOWNTO 0)=> R (7 DOWNTO 0),
    in2 (10 DOWNTO 8)=> u (2 DOWNTO 0),
    in2 (7 DOWNTO 0)=> G (7 DOWNTO 0),
    cin =>'0',
    output => parz,
    cout => open
);

Adder1Somma: Adder

port map(
    in1 (10 DOWNTO 8)=> u (2 DOWNTO 0),
    in1 (7 DOWNTO 0)=> B (7 DOWNTO 0),
    in2 => parz,
    cin =>'0',
    output => sommatot,
    cout => open
);

Adder7: Adder

port map(
    in1 => sommatot,
    in2 => (10=>'1', 8=>'1', Others=>'0'),
    cin =>'0',
    output => resto_out(7),
    cout => open
);

Output(7) <= not resto_out(6)(10);
appoggio <= (Others=>resto_out(7)(10));
resto_in(7)<= (not appoggio and resto_out(6)) or (appoggio and sommatot);

ISTANZE: for a in 6 DOWNTO 1 generate

    Adderx: Adder
    
    port map(
        in1 => resto_in(a+1),
        in2 => (10 DOWNTO 2+a=>'1', Others=>'0'),
        in2(a) => '1',
        cin =>'0',
        output => resto_out(a),
        cout => open
    );
    
    Output(a) <= not resto_out(a)(10);
    appoggio <= (Others=>resto_out(a)(10));
    resto_in(a)<= (not appoggio and resto_out(a)) or (appoggio and resto_in(a+1));
    
end generate;

Adder0: Adder

port map(
    in1 => resto_in(1),
    in2 => (1=>'0',Others=>'1'),
    cin =>'0',
    output => resto_out(0),
    cout => open
);

Output(0) <= not resto_out(0)(8);

end Behavioral;
