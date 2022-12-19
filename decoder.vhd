LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decoder IS
PORT (
        clk:in std_logic;
        PISO_OBJETIVO : IN std_logic_vector(1 DOWNTO 0);
        led : OUT std_logic_vector(6 DOWNTO 0);
        anodo: out std_logic_vector( 7 downto 0)
	);
END ENTITY decoder;

ARCHITECTURE dataflow OF decoder IS

begin

    process(clk ,PISO_OBJETIVO)
    begin
    anodo<="11111110";
    if rising_edge (clk) then
    case PISO_OBJETIVO  is
     when "00"=>
        led<="0000001";
      when "01"=>
        led<="1001111";
       when "10"=>
        led<="0010010";
        when "11"=>
        led<="0000110";
      
      end case;
      end if;
    end process;
    
END ARCHITECTURE dataflow;
