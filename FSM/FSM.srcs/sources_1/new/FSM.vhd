library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EdgeDetector is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        signal_in : in std_logic;
        upEdge : out std_logic;
        downEdge : out std_logic
    );
end EdgeDetector;

architecture Behavioral of EdgeDetector is

type state is (IDLE, WAITING_UP, WAITING_DOWN, UP_DETECTED, DOWN_DETECTED);
signal stato,next_stato: state:=IDLE;
signal uscite_app: std_logic_vector(1 DOWNTO 0);

begin

    upEdge<= uscite_app(1);
    downEdge<= uscite_app(0);

    RST: process (clk,reset)
    begin
        if reset='1' then
            stato<=IDLE;
        elsif rising_edge(clk) then
            stato<=next_stato;
        end if;              
    end process;
    
    NEXT_STATE: process(stato,signal_in)       
    begin
        case stato is
            when IDLE=> 
                if signal_in='0' then
                    next_stato<=WAITING_UP;
                elsif signal_in='1' then
                    next_stato<=WAITING_DOWN;
                end if;
            when WAITING_UP=>
                if signal_in='0' then
                    next_stato<=WAITING_UP;
                elsif signal_in='1' then
                    next_stato<=UP_DETECTED;
                end if;
            when WAITING_DOWN=>
                if signal_in='0' then
                    next_stato<=DOWN_DETECTED;
                elsif signal_in='1' then
                    next_stato<=WAITING_DOWN;
                end if;
            when UP_DETECTED=>
                if signal_in='0' then
                    next_stato<=DOWN_DETECTED;
                elsif signal_in='1' then
                    next_stato<=WAITING_DOWN;
                end if;
            when DOWN_DETECTED=>
                if signal_in='0' then
                    next_stato<=WAITING_UP;
                elsif signal_in='1' then
                    next_stato<=UP_DETECTED;
                end if;
            when others=> null;          
        end case;
    end process;
    
    OUTPUT_STATE: process(stato,signal_in)
    begin
        case stato is
            when IDLE=> 
                uscite_app<="00";
            when WAITING_UP=>
                uscite_app<="00";
            when WAITING_DOWN=>
                uscite_app<="00";
            when UP_DETECTED=>
                uscite_app<="10";
            when DOWN_DETECTED=>
                uscite_app<="01";
            when others=> null;          
        end case;
    end process;

end Behavioral;
