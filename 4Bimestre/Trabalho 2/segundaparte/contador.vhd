library ieee;
use ieee.std_logic_1164.all;
use  ieee.std_logic_arith.all;

entity contador is
	port (
			clk, reset : in std_logic;
			saida1, saida2, saida3, saida4 : out std_logic_vector(3 downto 0));
			
end contador;

architecture comportamento_contador of contador is

	signal cont1, cont2, cont3, cont4 : integer;
	
		

begin
		
		
	-- accountant process
	-- cont4 LSB
	-- cont1	MSB
	nome: process(clk, reset)
		begin
		 
			if  reset = '1' then
				cont1 <= 0;
				cont2 <= 0;
				cont3 <= 0;
				cont4 <= 0;
			else
				if rising_edge(clk) then
					cont4 <= cont4 + 1;
					if cont4 = 9 then --10
						cont4 <= 0;
						cont3 <= cont3 + 1;
						
						if cont3 = 9 then
							cont3 <= 0;
							cont2 <= cont2 + 1;
						
							if cont2 = 9 then
								cont2 <= 0;
								cont1 <= cont1 + 1;
								
								if cont1 = 9 then
									cont1 <= 0;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
	
	end process;
	
	-- converte decimal para binario    -- 4 bits
	saida1 <= conv_std_logic_vector(cont1, 4); -- MSB
	saida2 <= conv_std_logic_vector(cont2, 4);
	saida3 <= conv_std_logic_vector(cont3, 4);
	saida4 <= conv_std_logic_vector(cont4, 4); --LSB
	
end comportamento_contador;