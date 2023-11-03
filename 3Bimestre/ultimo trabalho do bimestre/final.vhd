library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL; (Comentado pois é preferível usar NUMERIC_STD)

entity final is
    Port (
        D: in STD_LOGIC_VECTOR(7 downto 0);
        Clock, enderecoX, enderecoY, escrever, ler: in STD_LOGIC;
        Saida: out STD_LOGIC_VECTOR(7 downto 0)
    );
end final;

architecture circuito_final of final is
    component conjuntoff is
        Port (
            D8: in STD_LOGIC_VECTOR(7 downto 0);
            Clock8, SX, SY, W: in STD_LOGIC;
            Q8: out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

	 
	 component decodificador is
		 Port (
        endereco: in STD_LOGIC;
        Saida_0,Saida_1: out STD_LOGIC
		);
	 end component;
	 
    signal ler_out, Q_00, Q_01, Q_10, Q_11, Q_0010, Q_0111, QQ: STD_LOGIC_VECTOR(7 downto 0);
	 signal decod_X0, decod_X1, decod_Y0, decod_Y1:  STD_LOGIC;

begin
    process(ler)
    begin
        if ler = '1' then
            ler_out <= (others => '1');
        else
            ler_out <= (others => '0');
        end if;
    end process;

    decod_X:  decodificador port map(
			endereco => enderecoX, 
         Saida_0 => decod_X0,
			Saida_1 => decod_X1
			);
			
	 decod_Y:  decodificador port map(
			endereco => enderecoY, 
         Saida_0 => decod_Y0,
			Saida_1 => decod_Y1
			);

    -- Instâncias de conjuntoff
    flipflop00: conjuntoff port map(
         D8 => D,
         Clock8 => Clock,
         SX => decod_X0,
         SY => decod_Y0,
         W => escrever,
         Q8 => Q_00
    );

    flipflop01: conjuntoff port map(
         D8 => D,
         Clock8 => Clock,
         SX => decod_X0,
         SY => decod_Y1,
         W => escrever,
         Q8 => Q_01
    );

    flipflop10: conjuntoff port map(
         D8 => D,
         Clock8 => Clock,
         SX => decod_X1,
         SY => decod_Y0,
         W => escrever,
         Q8 => Q_10
    );

    flipflop11: conjuntoff port map(
         D8 => D,
         Clock8 => Clock,
         SX => decod_X1,
         SY => decod_Y1,
         W => escrever,
         Q8 => Q_11
    );

    process(Q_00, Q_10, Q_01, Q_11,QQ)
    begin
        Q_0010 <= Q_00 or Q_10;
        Q_0111 <= Q_01 or Q_11;    
        QQ     <= Q_0010 or Q_0111; -- Usando AND para calcular QQ
    end process;

    Saida <= ler_out and QQ;
end circuito_final;
