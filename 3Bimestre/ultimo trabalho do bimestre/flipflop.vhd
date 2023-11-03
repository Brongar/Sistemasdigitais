library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity flipflop is
    Port (
        D, clock: in STD_LOGIC;
        Q, Q_n: out STD_LOGIC
    );
end flipflop;

--Comportamento da entidade
architecture latch of flipflop is

--sinais intermediarios
signal sq ,sq_n : std_logic;
signal D2,c2: std_logic;

begin
	 D2 <= not (D and clock);
	 C2 <= not ((not D) and clock); 

    sq   <= not (D2 and sq_n);
	 sq_n <= not (c2 and sq);
	 
	 Q <= sq;
	 Q_n <= sq_n;
end latch;