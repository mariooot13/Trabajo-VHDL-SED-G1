library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity DivisorFrecuencia is
	
	 Generic (
		  FREQ_ENTRADA		: INTEGER := 100000000; --La frecuencia de la fpga Artix7 es de 100000000 pero podemos variar este parámetro para otras placas con distinta frecuencia de reloj
		  FREQ_SALIDA		: INTEGER := 500000000 --Frecuencia que deseamos obtener de SALIDA en Hz.(En este caso queremos que la f de salida sea la mitad de la f de entrada)
		 );
    
	 Port 	(
		  		  clk_entrada		: in   std_logic; 
             	  reset			    : in   std_logic; 
             	  clk_salida		: out  std_logic
		 );
			 
end DivisorFrecuencia;


architecture Behavioral of DivisorFrecuencia is

signal salida: STD_LOGIC:='1';
signal contador: INTEGER:=0;
signal razon: INTEGER;
signal cuenta: INTEGER;

---Razón de Proporción = CLKdeEntrada/FrecuenciaDeseada 
---Cuenta = (Razón/2) - 1

begin	

	process (razon, reset, clk_entrada) --Proceso que calcula el número de ciclos que se deben contar para obtener
				     -- frecuencia deseada.
		begin			
			razon <= (FREQ_ENTRADA)/(FREQ_SALIDA);
			cuenta <= (razon/2)-1;
	end process;
		

	process (reset, clk_entrada, cuenta) --Proceso divisor de frecuencia asíncrono.
		begin
			if (reset = '1') then
				contador <= 0;
				salida <= '0';
			elsif rising_edge(clk_entrada) then
				if (contador = cuenta) then
					salida <= NOT(salida);
					contador <= 0;
				else
					contador <= contador + 1;
				end if;
			end if;
	end process;
     
   clk_salida <= salida;

end Behavioral;
