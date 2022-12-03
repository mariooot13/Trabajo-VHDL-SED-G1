LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decoder IS
PORT (
        PISO_OBJETIVO : IN std_logic_vector(1 DOWNTO 0);
        led : OUT std_logic_vector(6 DOWNTO 0)
	);
END ENTITY decoder;

ARCHITECTURE dataflow OF decoder IS
BEGIN
		WITH PISO_OBJETIVO SELECT
            led <=  "0000001" WHEN "00",
                    "1001111" WHEN "01",
                    "0010010" WHEN "10",
                    "0000110" WHEN "11",
                    "1111110" WHEN others;
                
END ARCHITECTURE dataflow;
