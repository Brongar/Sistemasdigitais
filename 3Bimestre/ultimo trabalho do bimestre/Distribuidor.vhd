library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Distribuidor is
    Port (
        D_8: in STD_LOGIC_VECTOR(7 downto 0);
        d0, d1, d2, d3, d4, d5, d6, d7: out STD_LOGIC
    );
end Distribuidor;


architecture oitoBits_UmBits of Distribuidor is
begin
    -- Distribuindo os bits de D para as saídas
    d0 <= D_8(0);
    d1 <= D_8(1);
    d2 <= D_8(2);
	 d3 <= D_8(3);
	 d4 <= D_8(4);
	 d5 <= D_8(5);
	 d6 <= D_8(6);
	 d7 <= D_8(7);
end oitoBits_UmBits;