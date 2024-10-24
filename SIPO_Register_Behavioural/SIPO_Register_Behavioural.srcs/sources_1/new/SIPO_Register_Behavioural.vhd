library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ShiftRegisterSIPOv2 is
    
    Port(
        reset : in std_logic;
        clk : in std_logic;
        data_in : in std_logic;

        data_out : out std_logic_vector (3 DOWNTO 0)
    );
end ShiftRegisterSIPOv2;

architecture Behavioral of ShiftRegisterSIPOv2 is

signal uscite_app: std_logic_vector(data_out'RANGE);

begin

    data_out<=uscite_app;

    process (clk,reset)
    begin
        if reset='1' then
            uscite_app<=(Others=>'0');
        elsif rising_edge(clk) then
            uscite_app<= data_in&uscite_app(3 DOWNTO 1);
        end if;
    end process;

end Behavioral;
