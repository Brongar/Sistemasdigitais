-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas



-- Definir entidade
entity Condicionais is
port (
		A, B : in std_logic_vector(1 downto 0); --2bits cada entrada
		aMaiorB    : out std_logic;  -- Saída A>B
		aEqualsB   : out std_logic;  -- Saída A=B
		aMenorB    : out std_logic); -- Saída A=B
		
end Condicionais;  -- Fim da definição da entidade "Vhdl1"


-- ########## Arquitetura ##########
architecture circuit of Condicionais is

signal s : std_logic_vector(3 downto 0); --4bits

begin
-- ######################################################################
s <= A & B;  -- Concatena os sinais A e B em s, criando um barramento de 4 bits

process (s)
begin
	  -- ### A > B ###
	case s is
		 when "0100" | "1000" | "1001" | "1100" | "1101" | "1110" =>
			aMaiorB <= '1';  -- Define a variável aMaiorB como '1' quando s corresponde a uma das condições especificadas
		 when others =>
			aMaiorB <= '0';  -- Define a variável aMaiorB como '0' para todas as outras condições
	end case;
	  
	  -- ### A = B ###
	case s is
		 when "0000" | "0101" | "1010" | "1111" =>
			aEqualsB <= '1';  -- Define a variável aEqualsB como '1' quando s corresponde a uma das condições especificadas
		 when others =>
			aEqualsB <= '0';  -- Define a variável aEqualsB como '0' para todas as outras condições
	end case;
	  
	  -- ### A < B ###
	case s is
		when "0001" | "0010" | "0011" | "0110" | "0111" | "1011" =>
			aMenorB <= '1';  -- Define a variável aMenorB como '1' quando s corresponde a uma das condições especificadas
		when others =>
			aMenorB <= '0';  -- Define a variável aMenorB como '0' para todas as outras condições
	end case;

end process;	
	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"


