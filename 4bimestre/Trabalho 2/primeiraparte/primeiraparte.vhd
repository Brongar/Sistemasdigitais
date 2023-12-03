library ieee;
use ieee.std_logic_1164.all;

entity primeiraparte is
    port (
        reset, clock : in std_logic;
        led1 , led2 : out std_logic
    );
end primeiraparte;
-- Led1 = LSB
-- Led2 = MSB

architecture comportamento_moore of primeiraparte is
	
	signal clock_out_toplevel: STD_LOGIC;
	signal saida: std_logic_vector(1 downto 0);
	
	
	
	--50MHz
	component DIVISOR is
		port(
			  clock_in  : in  STD_LOGIC;
			  clock_out : buffer STD_LOGIC
			 );
	end component;

	
	
    type estado is (RESET_estado, A, B, C, D);
    signal estado_atual, proximo_estado : estado;

begin 

	clock_ajustado: DIVISOR port map(
		clock_in => clock,
		clock_out => clock_out_toplevel
		);



    -- processo para definição do sincronismo da FSM
    sincrono : process(clock_out_toplevel, reset)
    begin
        -- Se o sinal de reset estiver ativo ('1'), 
        -- inicializa o estado atual para RESET.
        if reset = '0' then
            estado_atual <= RESET_estado;
            
        -- Se ocorrer uma borda de subida no sinal de clock,
        -- atualiza o estado atual para o próximo estado especificado.
        elsif rising_edge(clock_out_toplevel) then
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

-- Atribuição dos LEDs
led1 <= saida(0);
led2 <= saida(1);

end comportamento_moore;