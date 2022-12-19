LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity convertidor_piso is
	PORT(
		clk : in STD_LOGIC;
		rst : in  STD_LOGIC;
		
		boton_seleccionado: IN std_logic_vector(3 DOWNTO 0);
		boton_seleccionado_convertido: OUT std_logic_vector(1 DOWNTO 0)
		);
end convertidor_piso;

architecture dataflow of convertidor_piso is

COMPONENT antirrebote_vector
	PORT (
		CLK : in  STD_LOGIC;
		RST : in  STD_LOGIC;
      vector_IN : in  STD_LOGIC_VECTOR (3 downto 0);
		vector_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
 END COMPONENT;
 
 signal boton_selec_antirrebote:std_logic_vector(3 DOWNTO 0);

begin

inst_antirrebote_vector:antirrebote_vector port map(
		CLK => clk,
		RST => rst,
		vector_IN => boton_seleccionado,
		vector_OUT => boton_selec_antirrebote
		);
		
	WITH boton_selec_antirrebote SELECT
				boton_seleccionado_convertido <= "00" WHEN "0001",
													"01" WHEN "0010",
													"10" WHEN "0100",
													"11" WHEN others;
end dataflow;
