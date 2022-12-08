library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity motor_puertas is
    Port ( 
           Aviso_puertas : in std_logic;--0 cerrar,1 abrir
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Movimiento_puertas: out std_logic;--0 cerrando, 1 abriendo
           Luz_emergencia_p: out std_logic
           );

end motor_puertas;

architecture Behavioral of motor_puertas is

begin
process(clk,reset)
  begin
  if (reset='1') then
     Luz_emergencia_p<='1'; 
     Movimiento_puertas<='0';
  elsif (rising_edge(clk)) then
          Movimiento_puertas<=Aviso_puertas;

   end if;

  end process;

end Behavioral;
