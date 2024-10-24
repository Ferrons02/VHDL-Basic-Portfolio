library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity MegaOperation is
    Port(
        input_a: in std_logic_vector(31 DOWNTO 0);
        input_b: in std_logic_vector(31 DOWNTO 0);
        input_c: in std_logic_vector(31 DOWNTO 0);
        result: out std_logic_vector(31 DOWNTO 0);
        clk: in std_logic;
        reset: in std_logic
    );
end MegaOperation;

architecture Behavioral of MegaOperation is
    component adder is
	   Port (
	       input_a: in unsigned(31 DOWNTO 0);
	       input_b: in unsigned(31 DOWNTO 0);
	       result: out unsigned(31 DOWNTO 0)
	   );
    end component;
    component multiplier is
	   Port (
	       input_a: in unsigned(31 DOWNTO 0);
	       input_b: in unsigned(31 DOWNTO 0);
	       result: out unsigned(31 DOWNTO 0)
	   );
    end component;
    
    signal addin1, addin2, result_u: unsigned(31 DOWNTO 0);
    signal inc, c1, c2, c3: unsigned(31 DOWNTO 0);
    signal ina, inb, mulin1a, mulin1b, mulin2a, mulin2b, mulout1, mulout2: unsigned(31 DOWNTO 0);    
    signal inter_turn: std_logic:='0';
     
begin
    
    mul1: multiplier
    port map(
        input_a=> mulin1a,
        input_b=> mulin1b,
        result=> mulout1
    );
   
    mul2: multiplier
    port map(
        input_a=> mulin2a,
        input_b=> mulin2b,
        result=> mulout2
    );
    
    sum: adder
    port map(
        input_a=> addin1,
        input_b=> addin2,
        result=> result_u
    );
       
    ina<= unsigned(input_a);
    inb<= unsigned(input_b);
    inc<= unsigned(input_c);
    addin2<=c3;
   
    c_line: process(clk,reset)
    begin
        if reset='1' then            
            c1<=(Others=>'0');
            c2<=(Others=>'0');
            c3<=(Others=>'0');         
        elsif rising_edge(clk) then
            c3<=c2;
            c2<=c1;
            c1<=inc;            
        end if;
    end process;
    
    interleaving: process(clk,reset)
    begin
        if reset='1' then
            inter_turn<='0';
            mulin1a<=(Others=>'0');
            mulin1b<=(Others=>'0');
            mulin2a<=(Others=>'0');
            mulin2b<=(Others=>'0');
            addin1<=(Others=>'0');
        elsif rising_edge(clk) then
            if inter_turn='0' then
                inter_turn<='1';
                addin1<=mulout1;
                mulin1a<=ina;
                mulin1b<=inb;              
            elsif inter_turn='1' then
                inter_turn<='0';
                addin1<=mulout2;
                mulin2a<=ina;
                mulin2b<=inb;
            end if;
        end if;
    end process;
    
    sommatore: process(clk,reset)
    begin
        if reset='1' then
            result<=(Others=>'0');
        elsif rising_edge(clk) then
            result<= std_logic_vector(result_u);
        end if;
    end process;
    
end Behavioral;
