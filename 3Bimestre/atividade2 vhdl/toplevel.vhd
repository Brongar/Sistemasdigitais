-- Bibliotecas
library ieee;  -- Inclui a biblioteca padrão do IEEE para VHDL
use ieee.std_logic_1164.all;  -- Usa a biblioteca std_logic_1164 para tipos e operações lógicas


--entrada com 2bits:
--IN1 : in std_logic_vector(1 downto 0);  -- Porta de entrada de 2 bits


-- Definir entidade
entity toplevel is
port (
		IN1 : in std_logic;  -- Porta de entrada IN1 aceita um sinal lógico (std_logic)
		IN2 : in std_logic;  -- Porta de entrada IN2 aceita um sinal lógico (std_logic)
		OUT1: out std_logic  -- Porta de saída OUT1 produz um sinal lógico (std_logic)
	);
end toplevel;  -- Fim da definição da entidade "toplevel"

architecture comportamento of toplevel is
begin

	-- Corpo da arquitetura
	--signal sig_1 : std_logic;  (usado para conectar portas internas no circuito)

	OUT1 <= IN1 and IN2;  -- A saída OUT1 é definida como a operação "E" lógica (AND) entre IN1 e IN2
end architecture comportamento;  -- Fim da definição da arquitetura "comportamento"
