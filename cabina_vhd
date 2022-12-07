library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity Cabina is
    Port ( 
         clk: in std_logic;
        reset: in std_logic;
        Aviso_ascensor: in std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
        Aviso_motor_puerta: in std_logic;--0 cerrar,1 abrir
        --Piso_objetivo: out std_logic_vector(1 downto 0);--Memoria boton
        Piso_actual: out std_logic_vector(1 downto 0);
        --Feedback_puerta:out std_logic
        --Feedback_motor: out std_logic_vector(2 downto 0);
       --cont: out std_logic_vector(1 downto 0)
       Salida_leds_motor: out std_logic_vector(1 downto 0);
       Salida_leds_puertas: out std_logic;
       Luz_emer_motor: out std_logic;
       Luz_emer_puertas: out std_logic
       
    );
    
end Cabina;

architecture Behavioral of Cabina is
    
        component motor 
        port(
            Aviso_ascensor : in std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Movimiento_ascensor: out std_logic_vector (1 downto 0);-- 00 parado, 10 para encender led subir y 01 para encender led de bajar, 11 nad
           Luz_emergencia_m: out std_logic
           
           );
      end component ;
      
      component motor_puertas
            port
             (
                 Aviso_puertas : in std_logic;--0 cerrar,1 abrir
                 clk : in STD_LOGIC;
                 reset : in STD_LOGIC;
                 Movimiento_puertas: out std_logic;--0 cerrando, 1 abriendo
                Luz_emergencia_p: out std_logic
             );
       end component ;
     
     --signal S_Aviso_puertas: std_logic;
     --signal S_Aviso_Ascensor: std_logic_vector(1 downto 0);
     signal contador: unsigned(1 downto 0):="00";
    

       
begin
    inst_motor: motor port map(
         Aviso_ascensor => Aviso_Ascensor,
         clk =>clk, 
         reset => reset,
         Movimiento_ascensor=> Salida_leds_motor,
         Luz_emergencia_m => Luz_emer_motor
         
         );
     inst_motor_puertas: motor_puertas port map(
       Aviso_puertas => Aviso_motor_puerta, 
       clk => clk,
       reset => reset,
       Movimiento_puertas=>Salida_leds_puertas,
       Luz_emergencia_p => Luz_emer_puertas
     );

	logica:process(clk,reset)
    		begin
            if reset= '1' then
            	contador <= (others => '0');
            elsif rising_edge(clk) then
             	if Aviso_motor_puerta = '0' and Aviso_ascensor = "10" then
                	contador <= contador + 1;
                 elsif Aviso_motor_puerta = '0' and Aviso_ascensor = "01" then
					contador <= contador - 1;
        	 	 else 
                 	contador <= contador;
                end if;
             end if;
        
	end process;
    
    Piso_actual <= std_logic_vector(contador);
  

end Behavioral;
