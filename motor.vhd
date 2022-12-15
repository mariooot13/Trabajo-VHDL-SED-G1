
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity motor is
    Port ( Aviso_ascensor : in std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Movimiento_ascensor: out std_logic_vector (1 downto 0);-- 00 parado, 10 para encender led subir y 01 para encender led de bajar, 11 nad
           Luz_emergencia_m: out std_logic
           );
           
end motor;

architecture Behavioral of motor is

begin
process(clk,reset)
  begin
  if (reset='1') then
     Luz_emergencia_m<='1'; --la accion de subir ni de bajar se no se ejecuta
     Movimiento_ascensor<="00";
  elsif (rising_edge(clk)) then
    Movimiento_ascensor<=Aviso_ascensor ;--puede que haya q meter una señal para trabajar con ella
    Luz_emergencia_m<='0';
        
   end if;
   
  end process;
     
end Behavioral;
