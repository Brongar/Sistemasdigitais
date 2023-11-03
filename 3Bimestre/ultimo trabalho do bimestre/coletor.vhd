library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity coletor is
    Port (
		  d00, d11, d22, d33, d44, d55, d66, d77: in STD_LOGIC;
        Q_88: out STD_LOGIC_VECTOR(7 downto 0)
        
    );
end coletor;


architecture UmBits_OitoBits of coletor is
begin
    -- coletando os bits de D para a saída
    Q_88 <= d77 & d66 & d55 & d44 & d33 & d22 & d11 & d00;
end UmBits_OitoBits;