library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (        
        botao_seletor, reset_top, clock_top : in std_logic;
        saida_display: out std_logic_vector(3 downto 0);
        saida_mux_7bit: out std_logic_vector(6 downto 0);
		  saida_contador: out std_logic_vector(27 downto 0)
        --saida_teste: out std_logic_vector(3 downto 0)
    );
end toplevel;

architecture top_level_arch of toplevel is 

    -------- Contador --------
    component contador is
        port (
            clk, reset : in std_logic;
            saida1, saida2, saida3, saida4 : out std_logic_vector(3 downto 0)
        );
    end component;
    
    -------- Control --------
    component control is
        port (
            seletor, reset, clock_De0nano : in std_logic;        
            clock_contador: out std_logic
        );
    end component;
    
    signal saida_mux_DC:  std_logic_vector (1 downto 0);
    signal A, B, C, D, saida_4bits:    std_logic_vector(3 downto 0);
    signal A_7, B_7, C_7, D_7, saida_mux_7: std_logic_vector (6 downto 0);
    
    signal clock_final: std_logic;
     
    -------- BCD --------
    component modulo_BCD is
        Port ( entrada : in std_logic_vector (3 downto 0);
               saida : out std_logic_vector (6 downto 0));
    end component;
     
    -------- controlador_display --------
    component controlador_display is
        Port ( clock : in STD_LOGIC;
               s_mux : out STD_LOGIC_VECTOR (1 downto 0);
               saida : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
     
    -------- MUX4_1 --------
    component MUX4_1 is
        Port ( entrada_A, entrada_B, entrada_C, entrada_D : in STD_LOGIC_VECTOR (6 downto 0);
               saida : out STD_LOGIC_VECTOR (6 downto 0);
               seletor : in STD_LOGIC_VECTOR (1 downto 0));
    end component;
     
    -------- Começo --------        
    begin
        
        contador_inst : contador
            port map (
                clk  => clock_final,
                reset => reset_top,
                saida1 => A,
                saida2 => B,
                saida3 => C,
                saida4 => D           
            );
        
        control_inst : control
            port map (
                seletor => botao_seletor,
                reset   => reset_top,
                clock_De0nano => clock_top,
                clock_contador=> clock_final
            );
                 
        ------ Entrada de 4 bits para Display de 7 segmentos ------        
         BCD_inst_A :  modulo_BCD
            port map (
                 entrada => A,
                 saida => A_7             
            );
         BCD_inst_B :  modulo_BCD
            port map (
                 entrada => B,
                 saida => B_7             
            );
         BCD_inst_C :  modulo_BCD
            port map (
                 entrada => C,
                 saida => C_7             
            );
         BCD_inst_D :  modulo_BCD
            port map (
                 entrada => D,
                 saida => D_7             
            );
                 
         -- controlador do display ---
         Display_Control_inst :  controlador_display
            port map (
                 clock => clock_top,
                 s_mux => saida_mux_DC,
                 saida => saida_4bits
            );
         ---- MUX4_1 ----
         MUX4_1_inst : MUX4_1
            port map(
                entrada_A => A_7,
                entrada_B => B_7,
                entrada_C => C_7,
                entrada_D => D_7,
                seletor => saida_mux_DC,
                saida => saida_mux_7 
            );
				
			saida_mux_7bit <= saida_mux_7;
			saida_display  <= saida_4bits;
			saida_contador <= A_7 & B_7 & C_7 & D_7;
 end top_level_arch;
