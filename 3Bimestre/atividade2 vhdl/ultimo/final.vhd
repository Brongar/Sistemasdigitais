-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas

-- Definir entidade
entity final is
port (
		A, B       : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida_aMaiorb, saida_aEqualsb, saida_aMenorb   : out std_logic);  -- Saída A>B
		
end final;  




-- ########## Arquitetura ##########
architecture circuit of final is


component aMaiorb is
port (
		A0, B0 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida0 : out std_logic);  -- Saída A>B
		
end component;

component aEqualsb is
port (
		A1, B1 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida1    : out std_logic);  -- Saída A>B
		
end component;


component aMenorb is
port (
		A2, B2 : in std_logic_vector(1 downto 0); --2bits cada entrada
		saida2    : out std_logic);  -- Saída A>B
		
end component; 



--signal s_mux0, s_mux1, s_mux2: std_logic;


begin

Mux0 : aMaiorb port map(
	A0 	 => A(1 downto 0), 
	B0 	 => B(1 downto 0), 
	saida0 => saida_aMaiorb);

	
Mux1 : aEqualsb port map(
	A1 	 => A(1 downto 0), 
	B1 	 => B(1 downto 0), 
	saida1 => saida_aEqualsb);	
	
Mux2 : aMenorb port map(
	A2 	 => A(1 downto 0), 
	B2 	 => B(1 downto 0), 
	saida2 => saida_aMenorb);	

	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"


