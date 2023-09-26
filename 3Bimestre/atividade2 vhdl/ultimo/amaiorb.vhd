-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas

-- Definir entidade
entity amaiorb is
port (
		A0, B0 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida0    : out std_logic);  -- Saída A>B
		
end amaiorb;  -- Fim da definição da entidade "amaiorb"

-- ########## Arquitetura ##########
architecture circuit of amaiorb is

signal s : std_logic_vector(3 downto 0); --4bits

begin
-- #################################################.+#####################
s <= A0 & B0;  -- Concatena os sinais A e B em s, criando um barramento de 4 bits

process (s)
begin
	  -- ### A > B ###
	case s is
		 when "0100" | "1000" | "1001" | "1100" | "1101" | "1110" =>
			saida0 <= '1';  -- Define a variável aMaiorB como '1' quando s corresponde a uma das condições especificadas
		 when others =>
			saida0 <= '0';  -- Define a variável aMaiorB como '0' para todas as outras condições
	end case;	  

end process;	
	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"


