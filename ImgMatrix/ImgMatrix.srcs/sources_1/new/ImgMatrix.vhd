
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ImgMatrix is

    Generic (
        IMG_DIM_POW2 : integer := 2
    );
    Port (
        clk : in std_logic;
        reset : in std_logic;
        in_red : in std_logic_vector(7 DOWNTO 0);
        in_green : in std_logic_vector(7 DOWNTO 0);
        in_blue : in std_logic_vector(7 DOWNTO 0);
        in_x_addr : in std_logic_vector(IMG_DIM_POW2-1 DOWNTO 0);
        in_y_addr : in std_logic_vector(IMG_DIM_POW2-1 DOWNTO 0);
        out_gray : out std_logic_vector(7 DOWNTO 0);
        out_x_addr : in std_logic_vector(IMG_DIM_POW2-1 DOWNTO 0);
        out_y_addr : in std_logic_vector(IMG_DIM_POW2-1 DOWNTO 0)
    );

end ImgMatrix;

architecture Behavioral of ImgMatrix is
 
component PIPO_reg is
    Port(
        input: in std_logic_vector (7 DOWNTO 0);
        output: out std_logic_vector (7 DOWNTO 0);
        clk: in std_logic;
        clr: in std_logic
    );
end component;

type mem is array (2**IMG_DIM_POW2-1 DOWNTO 0, 2**IMG_DIM_POW2-1 DOWNTO 0) of std_logic_vector (7 DOWNTO 0);
signal memoria_in, memoria_out: mem;
signal grigio, R, G, B: unsigned (7 DOWNTO 0);
signal inx,iny: unsigned (IMG_DIM_POW2-1 DOWNTO 0);
signal outx,outy: unsigned (IMG_DIM_POW2-1 DOWNTO 0);
signal uscita: std_logic_vector (7 DOWNTO 0);

begin

R<=unsigned(in_red);
G<=unsigned(in_green);
B<=unsigned(in_blue);
grigio<=(R+G+B)/3;
inx<=unsigned(in_x_addr);
iny<=unsigned(in_y_addr);
outx<=unsigned(out_x_addr);
outy<=unsigned(out_y_addr);

Righe: for a in 2**IMG_DIM_POW2-1 DOWNTO 0 generate
    Colonne: for b in 2**IMG_DIM_POW2-1 DOWNTO 0 generate
        regx: PIPO_reg
        port map(
            clk=>clk,
            clr=>reset,
            input=>memoria_in(a,b),
            output=>memoria_out(a,b)
        );
        memoria_in(a,b)<= std_logic_vector(grigio) when to_integer(inx)=b and to_integer(iny)=a else
        memoria_out(a,b); 
    end generate;
end generate;

grigio_out: PIPO_reg 
    port map(
            clk=>clk,
            clr=>reset,
            input=>uscita,
            output=>out_gray
    );
    uscita<=memoria_out(to_integer(outy),to_integer(outx));
        
end Behavioral;
