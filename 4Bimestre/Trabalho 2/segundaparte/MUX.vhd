library ieee;
use ieee.std_logic_1164.all;

entity MUX is
    port (
        entrada : in std_logic_vector(1 downto 0);
        clock_MUX : in std_logic;
        clock_saida: out std_logic
    );
end MUX;

architecture megahertz of MUX is    
    -- Componentes
    component DIVISOR_50MHz is
        port (
            clock_in  : in  std_logic;
            clock_out : buffer std_logic
        );
    end component;

    component DIVISOR_25MHz is
        port (
            clock_in  : in  std_logic;
            clock_out : buffer std_logic
        );
    end component;

    component DIVISOR_10MHz is
        port (
            clock_in  : in  std_logic;
            clock_out : buffer std_logic
        );
    end component;

    component DIVISOR_5MHz is
        port (
            clock_in  : in  std_logic;
            clock_out : buffer std_logic
        );
    end component;

    -- Signals adicionais, se necessário
    signal clock_saida_5, clock_saida_10, clock_saida_25, clock_saida_50 : std_logic;

begin
    DIVISOR_5MHz_inst : DIVISOR_5MHz
        port map (
            clock_in  => clock_MUX,
            clock_out => clock_saida_5
        );

    DIVISOR_10MHz_inst : DIVISOR_10MHz
        port map (
            clock_in  => clock_MUX,
            clock_out => clock_saida_10
        );

    DIVISOR_25MHz_inst : DIVISOR_25MHz
        port map (
            clock_in  => clock_MUX,
            clock_out => clock_saida_25
        );

    DIVISOR_50MHz_inst : DIVISOR_50MHz
        port map (
            clock_in  => clock_MUX,
            clock_out => clock_saida_50
        );

    processo_mux: process(entrada)
    begin
        -- Inicializa clock_saida como '0' por padrão
        --clock_saida <= '0';

        if entrada = "00" then
            clock_saida <= clock_saida_5;
            
        elsif entrada = "01" then
            clock_saida <= clock_saida_10;
            
        elsif entrada = "10" then
            clock_saida <= clock_saida_25;
            
        elsif entrada = "11" then
            clock_saida <= clock_saida_50;
        end if;
    end process processo_mux;

end megahertz;
