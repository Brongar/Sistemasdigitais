library ieee;
use ieee.std_logic_1164.all;

entity maquina_estados_moore is
	port (
			entrada : in std_logic;
			clk, reset : in std_logic;
			saida : out std_logic);
			
end maquina_estados_moore;

architecture comportamento_moore of maquina_estados_moore is

type estado is (A, B, C);
signal estado_atual, proximo_estado : estado;

begin 

	-- processo para definição do sincronismo da FSM
sincrono : process(clk, reset, proximo_estado)
begin
    -- Se o sinal de reset estiver ativo ('1'), 
    -- inicializa o estado atual para A.
    if(reset = '1') then
        estado_atual <= A;
    -- Se ocorrer uma borda de subida no sinal de clock,
    -- atualiza o estado atual para o próximo estado especificado.
    elsif(rising_edge(clk)) then
        estado_atual <= proximo_estado;
    end if;
end process;
	
	
	
	
	-- processo para a lógica combinacional da máquina
combinacional : process(estado_atual, entrada)
begin
    -- Inicializa a saída como '0'.
    saida <= '0';
    
    -- Utiliza uma estrutura de caso para definir a lógica combinacional com base no estado atual.
    case(estado_atual) is
        when A =>
            -- Para o estado A, a saída permanece '0'.
            saida <= '0';
            
            -- Se a entrada for '1', transiciona para o estado B; caso contrário, permanece em A.
            if(entrada = '1') then
                proximo_estado <= B;
            else
                proximo_estado <= A;
            end if;
                
        when B =>
            -- Para o estado B, a saída permanece '0'.
            saida <= '0';
            
            -- Se a entrada for '1', transiciona para o estado C; caso contrário, volta para A.
            if(entrada = '1') then
                proximo_estado <= C;
            else
                proximo_estado <= A;
            end if;
            
        when C =>
            -- Para o estado C, a saída é '1'.
            saida <= '1';
            
            -- Se a entrada for '1', permanece em C; caso contrário, volta para A.
            if(entrada = '1') then
                proximo_estado <= C;
            else
                proximo_estado <= A;
            end if;
    
    end case;
end process;
end comportamento_moore;