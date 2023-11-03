library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity conjuntoff is
    Port (
        D8: in STD_LOGIC_VECTOR(7 downto 0);
        Clock8, SX, SY, W: in STD_LOGIC;
        Q8: out STD_LOGIC_VECTOR(7 downto 0)
    );
end conjuntoff;

architecture flipflopDmod of conjuntoff is

-- Circuito para 1 flip-flop tipo D
component flipflop is
    port (
        D, clock: in STD_LOGIC;
        Q, Q_n: out STD_LOGIC
    );
end component;

-- Componente Distribuidor de bits (8 -> 1)
component Distribuidor is
    port (
        D_8: in STD_LOGIC_VECTOR(7 downto 0);
        d0, d1, d2, d3, d4, d5, d6, d7: out STD_LOGIC
    );
end component;

-- Componente coletor de bits (1 -> 8)
component coletor is
    port (
        d00, d11, d22, d33, d44, d55, d66, d77: in STD_LOGIC;
        Q_88: out STD_LOGIC_VECTOR(7 downto 0)
    );
end component;

signal w_out, sxsy_out, Q_88_out: STD_LOGIC_VECTOR(7 downto 0); 
signal sxsy_out_1bit, cond: std_logic;


signal d0_in, d1_in, d2_in, d3_in, d4_in, d5_in, d6_in, d7_in: std_logic;
signal d0_out, d1_out, d2_out, d3_out, d4_out, d5_out, d6_out, d7_out: std_logic;


begin

	process(SX, SY, Clock8, W,sxsy_out_1bit)
		begin
			 if W = '1' then
				  w_out <= (others => '0'); -- Repetir '0' oito vezes
			 else
				  w_out <= (others => '1'); -- Repetir '1' oito vezes
			 end if;
			 
			 sxsy_out_1bit <= SX and SY;
			 if sxsy_out_1bit = '0' then
				  sxsy_out <= (others => '0'); -- Repetir '0' oito vezes
			 else
				  sxsy_out <= (others => '1'); -- Repetir '1' oito vezes
			 end if;
			 
			 cond <= Clock8 and sxsy_out_1bit and W;
		end process;

	
	--Entrada
	
	entrada : Distribuidor port map(		 	 
		 D_8 => D8,
		 d0 => d0_in,
		 d1 => d1_in,
		 d2 => d2_in,
		 d3 => d3_in,
		 d4 => d4_in,
		 d5 => d5_in,
		 d6 => d6_in,
		 d7 => d7_in
		);		
		
	flipflop_0: flipflop port map(	
		D => d0_in,
		clock => cond,
		Q => d0_out
	);
			
	flipflop_1: flipflop port map(	
		D => d1_in,
		clock => cond,
		Q => d1_out
	);	
		
	flipflop_2: flipflop port map(	
		D => d2_in,
		clock => cond,
		Q => d2_out
	);
			
	flipflop_3: flipflop port map(	
		D => d3_in,
		clock => cond,
		Q => d3_out
	);
			
	flipflop_4: flipflop port map(	
		D => d4_in,
		clock => cond,
		Q => d4_out
	);
	flipflop_5: flipflop port map(	
		D => d5_in,
		clock => cond,
		Q => d5_out
	);
	flipflop_6: flipflop port map(	
		D => d6_in,
		clock => cond,
		Q => d6_out
	);
	flipflop_7: flipflop port map(	
		D => d7_in,
		clock => cond,
		Q => d7_out
	);
	
	saida: coletor port map(
	d00=> d0_out,
	d11=> d1_out,
	d22=> d2_out,
	d33=> d3_out,
	d44=> d4_out,
	d55=> d5_out,
	d66=> d6_out,
	d77=> d7_out,
	Q_88=> Q_88_out	
	);
		
	--process (Q_88_out, SXSY_out, w_out)
		--begin
	Q8 <= Q_88_out and SXSY_out and w_out;
	
		
    
end flipflopDmod;