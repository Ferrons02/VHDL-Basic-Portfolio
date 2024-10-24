library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port (
        reset : in std_logic;
        clk : in std_logic;
        t_on : in std_logic_vector(8-1 DOWNTO 0); -- UNSIGNED
        t_total : in std_logic_vector(8-1 DOWNTO 0); -- UNSIGNED
        pwm_out : out std_logic
    );
end PWM;

architecture Behavioral of PWM is

signal uscita: std_logic;
signal count,ton_app,tot_app: unsigned(t_on'RANGE):=(Others=>'0');

begin

pwm_out<=uscita;

process(clk,reset)
begin
    if reset='1' then
        count<=(Others=>'0');
        ton_app<=unsigned(t_on);
        tot_app<=unsigned(t_total);
        uscita<='1';
    elsif rising_edge(clk) then
        count<=count+1;
        if count=tot_app then
            count<=(Others=>'0');
            ton_app<=unsigned(t_on);
            tot_app<=unsigned(t_total);
            uscita<='1';
        elsif count=ton_app then
            uscita<='0';
        end if;             
    end if;
end process;

end Behavioral;
