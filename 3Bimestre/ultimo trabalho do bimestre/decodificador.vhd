library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity decodificador is
    Port (
        endereco: in STD_LOGIC;
        Saida_0,Saida_1: out STD_LOGIC
    );
end decodificador;

architecture circuito_decod of decodificador is


begin
	 process(endereco)
		begin
        if endereco = '0' then
            Saida_0 <= '1';
            Saida_1 <= '0';
        else
            Saida_0 <= '0';
            Saida_1 <= '1';
        end if;

    end process;



end circuito_decod;