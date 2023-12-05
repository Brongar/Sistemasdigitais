library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIVISOR_5MHz is
    port (
        clock_in  : in  STD_LOGIC;
        clock_out : buffer STD_LOGIC
    );
end DIVISOR_5MHz;

architecture DIVISOR_arch of DIVISOR_5MHz is
    signal counter : integer range 0 to 4999999 := 0;  --4999999
    signal prescaler : integer :=  5000000;  -- Prescaler para obter 1 Hz
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
