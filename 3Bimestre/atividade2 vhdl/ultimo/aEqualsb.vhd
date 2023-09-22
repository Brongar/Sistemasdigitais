-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas

-- Definir entidade
entity aEqualsb is
port (
		A1, B1 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida1    : out std_logic);  -- Saída A>B
		
end aEqualsb;  -- Fim da definição da entidade "Vhdl1"

-- ########## Arquitetura ##########
architecture circuit of aEqualsb is

signal s : std_logic_vector(3 downto 0); --4bits

begin
-- ######################################################################
s <= A1 & B1;  -- Concatena os sinais A e B em s, criando um barramento de 4 bits

process (s)
begin
  -- ### A = B ###
	case s is
		 when "0000" | "0101" | "1010" | "1111" =>
			saida1 <= '1';  -- Define a variável aEqualsB como '1' quando s corresponde a uma das condições especificadas
		 when others =>
			saida1 <= '0';  -- Define a variável aEqualsB como '0' para todas as outras condições
	end case;  

end process;	
	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"


