----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2022 10:37:14
-- Design Name: 
-- Module Name: decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decoder IS
PORT (
        --clk:in std_logic;
        PISO_OBJETIVO : IN std_logic_vector(3 DOWNTO 0);
        display : OUT std_logic_vector(6 DOWNTO 0);
        anodo: out std_logic_vector( 7 downto 0)
	);
END ENTITY decoder;

ARCHITECTURE dataflow OF decoder IS

begin

    process(PISO_OBJETIVO)
    begin
    anodo<="11111110";
    case PISO_OBJETIVO  is
     when "0001"=>
        display<="0000001";
     when "0010"=>
        display<="1001111";
       when "0100"=>
        display<="0010010";
        when "1000"=>
        display<="0000110";
        when others=>
     display<="1111110"; 
      
      end case;

    end process;
    
END ARCHITECTURE dataflow;
