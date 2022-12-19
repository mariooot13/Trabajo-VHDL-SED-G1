library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DivisorFrecuencia is
    generic (
        FREQ_ENTRADA : integer;
        FREQ_SALIDA	 : integer
	);
    port (
        clk_entrada : in  std_logic; 
        reset       : in  std_logic; 
        clk_salida  : out std_logic
 );
end DivisorFrecuencia;

architecture Behavioral of DivisorFrecuencia is
    signal salida   : std_logic;
    signal contador : integer;
    signal razon    : integer;
    signal cuenta   : integer;
begin	
	process (reset, clk_entrada)
	    constant SEMIPERIOD : positive := FREQ_ENTRADA / (2 * FREQ_SALIDA);
	    subtype count_t is integer range 0 to SEMIPERIOD - 1;
	    variable count : count_t;
	begin
        if reset = '1' then
            count := 0;
			salida <= '0';
        elsif rising_edge(clk_entrada) then
            count := (count + 1) mod SEMIPERIOD;
            if count = 0 then
                salida <= NOT(salida);
            end if;
        end if;
	end process;
     
    clk_salida <= salida;
end Behavioral;
