-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas


-- Definir entidade
entity circuito is
port (
    a0, a1, b0, b1 : in std_logic;   -- 1 bits cada entrada
    aMaiorB, aEqualsB, aMenorB : out std_logic);  -- Saída A>B
      	    
end entity components;


-- ########## Arquitetura ##########
architecture circuit of components is
--#### components #### 
 
component porta_and2 is
port (
    a2, b2 : in std_logic;   -- 1 bits cada entrada
    saida_and2 : out std_logic);  -- Saída A>B      	    
end entity porta_and2; 


component porta_and3 is
port (
    a3, b3, c3: in std_logic;   -- 1 bits cada entrada
    saida_and3 : out std_logic);  -- Saída A>B      	    
end entity porta_and3; 


component porta_and4 is
port (
    a4, b4, c4, d5: in std_logic;   -- 1 bits cada entrada
    saida_and4 : out std_logic);  -- Saída A>B      	    
end entity porta_and4; 


component porta_or2 is
port (
    aOR1, bOR1 : in std_logic;   -- 1 bits cada entrada
    saida_or : out std_logic);  -- Saída A>B
      	    
end entity porta_or2; 
  
 
component porta_or4 is
port (
    aOR2, bOR2 : in std_logic;   -- 1 bits cada entrada
    saida_or4 : out std_logic);  -- Saída A>B
      	    
end entity porta_or4;  
 
 
-- sinais
signal s_and1, s_and2, s_and3 , s_and4, s_and5, s_and6, s_and7, s_and8, s_and9: std_logic;
signal s_or1, s_or2 : std_logic;
 
 
begin
-- ######################################################################

end architecture Comparador2Bits_Arq;
