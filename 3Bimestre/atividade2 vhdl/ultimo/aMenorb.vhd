-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas

-- Definir entidade
entity aMenorb is
port (
		A2, B2 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida2    : out std_logic);  -- Saída A>B
		
end aMenorb;  -- Fim da definição da entidade "Vhdl1"

-- ########## Arquitetura ##########
architecture circuit of aMenorb is

signal s : std_logic_vector(3 downto 0); --4bits

begin
-- ######################################################################
s <= A2 & B2;  -- Concatena os sinais A e B em s, criando um barramento de 4 bits

process (s)
begin
   
	  -- ### A < B ###
	case s is
		when "0001" | "0010" | "0011" | "0110" | "0111" | "1011" =>
			saida2 <= '1';  -- Define a variável aMenorB como '1' quando s corresponde a uma das condições especificadas
		when others =>
			saida2 <= '0';  -- Define a variável aMenorB como '0' para todas as outras condições
	end case;

end process;	
	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"


