library ieee;
use ieee.std_logic_1164.all;

entity maquina_estados_mealy is
    port (
        entrada : in std_logic;
        clk, reset : in std_logic;
        saida, controle : out std_logic
    );
end maquina_estados_mealy;

-- Início Arquitetura
architecture comportamento_mealy of maquina_estados_mealy is
    type estado is (A, B);
    signal estado_atual, proximo_estado : estado;
	
begin  

    --** Os dois processos ocorrem de forma simultânea **

    -- Processo para definição do sincronismo da FSM
    sincrono : process(clk, reset, proximo_estado)
    begin
        -- Se o sinal de reset estiver ativo ('1'),
        -- inicializa o estado atual para A.
        if reset = '1' then
            estado_atual <= A;
        -- Se ocorrer uma borda de subida no sinal de clock,
        -- atualiza o estado atual para o próximo estado especificado.
        elsif rising_edge(clk) then
            estado_atual <= proximo_estado;
        end if;
    end process;

    -- Processo para a lógica combinacional da máquina
    combinacional : process(estado_atual, entrada)
    begin
        -- Utiliza uma estrutura de caso para definir a lógica combinacional com base no estado atual.
        case estado_atual is
            when A =>
                -- Para o estado A:
                -- Se a entrada for '1', a saída permanece '0' e transiciona para o estado B.
                -- Caso contrário, a saída permanece '0' e volta para o próprio estado A.
                if entrada = '1' then
                    saida <= '0';
						  controle <= '0';
                    proximo_estado <= B;
                else
                    saida <= '0';
                    proximo_estado <= A;
                end if;

            when B =>
                -- Para o estado B:
                -- Se a entrada for '1', a saída é '1' e permanece no estado B.
                -- Caso contrário, a saída é '0' e volta para o estado A.
                if entrada = '1' then
                    saida <= '1';
						  controle <= '1';
                    proximo_estado <= B;
                else
                    saida <= '0';
                    proximo_estado <= A;
                end if;
        end case;
    end process;

end comportamento_mealy;
