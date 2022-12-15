library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity Comparador is
    Port ( clk: in std_logic;
        reset: in std_logic;
        Aviso_ascensor: in std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
        Aviso_motor_puerta: in std_logic;--0 cerrar,1 abrir
        --Piso_objetivo: out std_logic_vector(1 downto 0);--Memoria boton
        Piso_actual: out std_logic_vector(1 downto 0)
        );
end Comparador;

architecture Behavioral of Comparador is
   
    begin
        logica:process(clk,reset)
        variable  contador: unsigned(1 downto 0):="00";
        
    		begin
            if reset= '1' then
            	contador := (others => '0');
            elsif rising_edge(clk) then
             	if Aviso_motor_puerta = '0' and Aviso_ascensor = "10" then
                   if contador = "11" then
                 	  contador := contador;
                    else
                	contador := contador + 1;
                    end if;
                elsif Aviso_motor_puerta = '0' and Aviso_ascensor = "01" then
                    if contador = "00" then
                        contador := contador;
                    else
					contador := contador - 1;
                    end if;
        	 	 else 
                 	contador := contador;
                end if;
             end if;
             Piso_actual <= std_logic_vector(contador);
       
	end process;
