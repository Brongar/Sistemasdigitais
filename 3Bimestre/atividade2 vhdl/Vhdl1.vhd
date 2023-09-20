-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas



-- Definir entidade
entity Vhdl1 is
port (
		A, B, C, D : in std_logic;
		aMaiorB    : out std_logic;  -- Saída A>B
		aEqualsB   : out std_logic;  -- Saída A=B
		aMenorB    : out std_logic); -- Saída A=B
		
end Vhdl1;  -- Fim da definição da entidade "Vhdl1"


-- ##########  Arquitetura  ##########
architecture circuit of Vhdl1 is
-- o "n" ao lado de uma letra, indica que essa entrada está negada (ex: A| = An)

-- sinais para A>B
signal BnDn      			: STD_LOGIC;  -- (B|* D|)
signal AplusCn   			: STD_LOGIC;  -- (A + C|)
signal AnCn      			: STD_LOGIC;  -- (A|* C|)
signal penultimate_plus : STD_LOGIC;  -- (BnDn + AplusCn)

-- sinais para a = b:
signal AnBn_CnDn  : STD_LOGIC; -- (A|B|C|D|)
signal AnB_CnD    : STD_LOGIC; -- (A|BC|D
signal AB_CD      : STD_LOGIC; -- (ABCD)
signal ABn_CDn    : STD_LOGIC; -- (AB|CD|)


-- sinais para a < b:
signal AnC : STD_LOGIC;
signal BnD : STD_LOGIC;
signal CplusAn : STD_LOGIC;
signal multiply : STD_LOGIC;

begin
-- ######################################################################
	 -- Arquitetura para A>B
    -- Implementa a expressão booleana (BD| * (C| + A) + AC|)
    BnDn <= B and not D;
    AplusCn <= not C or A;
    AnCn <= A and not C;  
    penultimate_plus <= BnDn and AplusCn;
	 
	 -- Implementa a expressão lógica final A>B
	 aMaiorB 			<= penultimate_plus or AnCn;
   
-- ######################################################################	
	 -- arquitetura para A=B (A|B|C|D| + A|BC|D + ABCD + AB|CD|)
	 AnBn_CnDn <= not A and not B and not C and not D;
	 AnB_CnD   <= not A and B and not C and D;
	 AB_CD     <= A and B and C and D;
	 ABn_CDn   <= A and not B and C and not D;
	 
	 -- Implementa a expressão lógica final A=B
	 aEqualsB <= AnBn_CnDn or AnB_CnD or AB_CD or ABn_CDn;
	 
-- ######################################################################	
	-- Arquitetura para A<B (A|C + B|D * (A|+C))	
	 
	 AnC <= not A and C;
	 BnD <= not B and D;
	 CplusAn <= not A or C;
	 multiply <= BnD and CplusAn;
	 
	 -- Implementa a expressão lógica final A<B
	 aMenorB <= AnC or multiply;
	
end architecture circuit;  -- Fim da definição da arquitetura "circuit"



