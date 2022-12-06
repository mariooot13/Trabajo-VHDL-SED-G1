library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity tb_DivisorFrecuencia is
end tb_DivisorFrecuencia;

architecture tb of tb_DivisorFrecuencia is

    component DivisorFrecuencia
    Generic (
		  FREQ_ENTRADA		: INTEGER := 100000000; 
		  FREQ_SALIDA		: INTEGER :=  50000000
		 );
        port (clk_entrada : in std_logic;
              reset       : in std_logic;
              clk_salida  : out std_logic);
    end component;

    signal clk_entrada : std_logic;
    signal reset       : std_logic;
    signal clk_salida  : std_logic;
	constant TbPeriod : time := 10ns; -- EDIT Put right period here 
begin

    dut : DivisorFrecuencia
    port map (clk_entrada => clk_entrada,
              reset       => reset,
              clk_salida  => clk_salida);
              CLK_process :process
        begin
          clk_entrada <= '1';
          wait for TbPeriod/2;
          clk_entrada <= '0';
          wait for TbPeriod/2;
       end process;
       
    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        reset <= '0';
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_DivisorFrecuencia of tb_DivisorFrecuencia is
    for tb
    end for;
end cfg_tb_DivisorFrecuencia;
