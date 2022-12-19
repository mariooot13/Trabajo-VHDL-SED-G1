

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity BarridoLed is
    generic(
        CLK_FREQUENCY : positive := 5
    );
    port(
        clk 		  : in  std_logic;
        --reset 		  : in  std_logic;
      	Aviso_puerta : in  std_logic; --1 abrir 0 cerrar
        Estado_puerta: out std_logic;
      LED 		  : out std_logic_vector(5 downto 0) --ceros abierta, unos cerrada
        );
end entity BarridoLed;
		

architecture behavioral of BarridoLed is

begin     
  l:process(clk)--,reset
  variable led_i : std_logic_vector(5 downto 0):= "000000";
      begin
         --if reset = '1' then
          --led_i := "000000"; --abierta la puerta 
         if rising_edge(clk) then
       		 if Aviso_puerta = '0' then
               if led_i(5) /= '1' then
               led_i := led_i(led_i'high - 1 downto 0) & '1';  
        		--i = i +1;
      			end if;
               Estado_puerta <= '0'; --cerrado, me abro NO TOCAR
             elsif Aviso_puerta = '1' then --111111 cerrada la puerta
                 if led_i(0) /= '0' then
                 led_i := '0' & led_i(led_i'high downto 1);
				end if;
               Estado_puerta <= '1'; --abierto, me cierro
			  end if;
		 end if;
      LED<=led_i;
end process;

end architecture;
