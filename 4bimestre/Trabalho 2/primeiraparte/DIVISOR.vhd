library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIVISOR is
    port (
        clock_in  : in  STD_LOGIC;
        clock_out : buffer STD_LOGIC
    );
end DIVISOR;

architecture DIVISOR_arch of DIVISOR is
    signal counter : integer range 0 to 49999999 := 0;  
    signal prescaler : integer := 50000000;  -- Prescaler para obter 1 Hz
begin
    process(clock_in)
    begin
        if rising_edge(clock_in) then
            if counter = prescaler - 1 then
                clock_out <= not clock_out;
                counter   <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end DIVISOR_arch;
