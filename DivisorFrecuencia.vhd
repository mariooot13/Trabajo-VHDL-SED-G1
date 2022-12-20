library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DivisorFrecuencia is
    generic (
        FREQ_IN  : integer;
        FREQ_OUT : integer
	);
    port (
        CLK_IN  : in  std_logic; 
        RESET_N : in  std_logic; 
        CLK_OUT : out std_logic
 );
end DivisorFrecuencia;

architecture Behavioral of DivisorFrecuencia is
    signal clk_out_i   : std_logic;
    signal contador : integer;
    signal razon    : integer;
    signal cuenta   : integer;
begin	
	process (RESET_N, CLK_IN)
	    constant SEMIPERIOD : positive := FREQ_IN / (2 * FREQ_OUT);
	    subtype count_t is integer range 0 to SEMIPERIOD - 1;
	    variable count : count_t;
	begin
        if RESET_N = '0' then
            count := 0;
			clk_out_i <= '0';
        elsif rising_edge(CLK_IN) then
            count := (count + 1) mod SEMIPERIOD;
            if count = 0 then
                clk_out_i <= not clk_out_i;
            end if;
        end if;
	end process;
     
    CLK_OUT <= clk_out_i;
end Behavioral;
