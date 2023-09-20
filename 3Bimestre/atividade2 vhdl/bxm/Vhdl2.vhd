-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas


--entrada com 2bits:
--IN1 : in std_logic_vector(1 downto 0);  -- Porta de entrada de 2 bits
--	IN1 : in std_logic;  -- Porta de entrada IN1 aceita um sinal lógico (std_logic) 1bit

-- Definir entidade
entity Vhdl1 is
port (
		A, B, C, D : in std_logic;
		aMaiorB    : out std_logic;  -- Porta de saída OUT1 produz um sinal lógico (std_logic)
		aEqualsB   : out std_logic;
		aMenorB    : out std_logic
		
	);
end Vhdl1;  -- Fim da definição da entidade "toplevel"


-- ##########  Arquitetura para A>B:  ##########
architecture a_greater_than_b of Vhdl1 is
-- sinais para a > b:
signal bd_not : STD_LOGIC;
signal AplusC_not : STD_LOGIC;
signal ac_not : STD_LOGIC;
signal last_plus : STD_LOGIC;

-- sinais para a = b:
signal not_abcd  : STD_LOGIC;
signal not_ac_bd : STD_LOGIC;
signal abcd      : STD_LOGIC;
signal ac_not_bd : STD_LOGIC;

-- sinais para a < b:
signal ca_not : STD_LOGIC;
signal db_not : STD_LOGIC;
signal CPlusA_not : STD_LOGIC;
signal multiply : STD_LOGIC;

begin
    -- Implementa as expressões lógicas BD', C' + A e AC'
    bd_not <= B and not D;
    AplusC_not <= not C or A;
    ac_not <= A and not C;
    
    -- Implementa a expressão lógica final aMaiorB
    last_plus <= bd_not and AplusC_not;
	 aMaiorB <= last_plus or ac_not;
   
	 -- Arquitetura para A=B
	 not_abcd <= not A and not B and not C and not D;
	 not_ac_bd   <= not A and B and not C and D;
	 abcd     <= A and B and C and D;
	 ac_not_bd   <= A and not B and C and not D;
	
	 aEqualsB <= not_abcd or not_ac_bd or abcd or ac_not_bd;
	
	 -- Arquitetura para A<B
	 
	 ca_not <= not A and C;
	 db_not <= not B and D;
	 CPlusA_not <= not A or C;
	 multiply <= db_not and CPlusA_not;
	 
	 aMenorB <= ca_not or multiply;
	
	
end architecture a_greater_than_b;  -- Fim da definição da arquitetura "comportamento"
