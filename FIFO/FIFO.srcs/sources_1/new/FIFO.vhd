library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity FIFO is
    Generic(
        FIFO_WIDTH : integer := 8;
        FIFO_DEPTH : integer := 16
    );
    Port(
        reset : in std_logic;
        clk : in std_logic;
        din : in std_logic_vector(FIFO_WIDTH-1 DOWNTO 0);
        dout : out std_logic_vector(FIFO_WIDTH-1 DOWNTO 0);
        rd_en : in std_logic;
        wr_en : in std_logic;
        full : out std_logic;
        empty : out std_logic
    );
end FIFO;

architecture Behavioral of FIFO is

type content is array (FIFO_DEPTH-1 DOWNTO 0) of std_logic_vector(FIFO_WIDTH-1 DOWNTO 0);
signal mem: content;
signal pointer: integer:=-1;
signal uscita: std_logic_vector(dout'RANGE);
signal full_app: std_logic:='0';
signal empty_app: std_logic:='1';

begin
    
    dout<=uscita;
    full<=full_app;
    empty<=empty_app;
    
    process(clk,reset)
    begin
        if reset='1' then
            pointer<=-1;
            full_app<='0';
            empty_app<='1';
        elsif rising_edge(clk) then
            if pointer=FIFO_DEPTH-1 then
                full_app<='1';
            elsif pointer<FIFO_DEPTH-1 then
                full_app<='0';
            end if;
            if pointer=-1 then
                empty_app<='1';
            elsif pointer>-1 then
                empty_app<='0';
            end if;
            if wr_en='0' and rd_en='1' and empty_app='0' then
                uscita<=mem(pointer);
                pointer<=pointer-1;
            end if;
            if wr_en='1' and rd_en='0' and full_app='0' then
                pointer<=pointer+1;
                for i in FIFO_DEPTH-1 DOWNTO 1 loop                   
                    mem(i)<=mem(i-1);
                end loop;
                mem(0)<=din;
            end if;
            if wr_en='1' and rd_en='1' then
                if full_app='1' then
                    uscita<=mem(pointer-1);
                    pointer<=pointer-1;
                elsif empty_app='1' then
                    pointer<=pointer+1;
                    for i in FIFO_DEPTH-1 DOWNTO 1 loop
                        mem(i)<=mem(i-1);
                    end loop;
                    mem(0)<=din;
                end if;
            end if;           
        end if;
    end process;
end Behavioral;
