library ieee;
use ieee.std_logic_1164.all;

entity control is
    port (
        seletor, reset, clock_De0nano : in std_logic;        
        clock_contador: out std_logic
    );
end control;
-- Led1 = LSB
-- Led2 = MSB

architecture comportamento_moore of control is	
	
    type estado is (RESET_estado, A, B, C, D);
    signal estado_atual, proximo_estado : estado;

	 -- Componentes
    component MUX is
         port(entrada : in std_logic_vector(1 downto 0);
				  clock_MUX : in std_logic;
				  clock_saida: out std_logic);
    end component;
	 
	 
	 signal saida: std_logic_vector(1 downto 0);
	 signal saida_clock_mux: std_logic;
	 
begin 
	 MUX_inst :   MUX port map(
                 entrada => saida,
					  clock_mux => clock_De0nano,
                 clock_saida => saida_clock_mux);

    -- processo para definição do sincronismo da FSM
    sincrono : process(seletor, reset)
    begin
        -- Se o sinal de reset estiver ativo ('1'), 
		  -- No DE0nano, temos que deixar 0, porque vamos utilizar o botao!!
		  -- A mesma Logica vai funcionar para o seletor.
		  -- para testes no wave, bota '1'.
        -- inicializa o estado atual para RESET.
        if reset = '1' then
			 estado_atual <= RESET_estado;
			 
		-- Atualiza o estado atual para o próximo estado especificado.
		  elsif rising_edge(seletor) then
			 estado_atual <= proximo_estado;
			 
		  end if;

    end process;
    
    -- processo para a lógica combinacional da máquina
	combinacional : process(estado_atual)
	begin
		 -- Inicializa a saída como '00'.
		 saida <= "00";
		 
		 -- Utiliza uma estrutura de caso para definir a lógica combinacional com base no estado atual.
		 case estado_atual is
			  when RESET_estado =>
					saida <= "00";
					proximo_estado <= A;

			  when A =>
					-- Para o estado A, a saída permanece '00'.
					saida <= "00";
					proximo_estado <= B;

			  when B =>
					-- Para o estado B, a saída permanece '01'.
					saida <= "01";
					proximo_estado <= C;

			  when C =>
					-- Para o estado C, a saída é '10'.
					saida <= "10";
					proximo_estado <= D;

			  when D =>
					-- Para o estado D, a saída é '11'.
					saida <= "11";
					proximo_estado <= A;

		 end case;

	end process;
clock_contador <= saida_clock_mux;
end comportamento_moore;