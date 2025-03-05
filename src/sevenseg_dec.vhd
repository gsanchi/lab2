----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 09:11:33 PM
-- Design Name: 
-- Module Name: sevenseg_dec - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_dec is
--  Port ( );
end sevenseg_dec;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 09:52:34 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

    component sevenseg_decoder is
      port(
            i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
      );
    end component;
    
    --create signals
    signal i_Hex_tb : STD_LOGIC_VECTOR (3 downto 0):= (others => '0');
    signal o_seg_n_tb : std_logic_vector (6 downto 0);
    

begin
    -- PORT MAPS -----
   sevendeg_decoder_inst : sevenseg_decoder 
   port map(
			i_Hex => i_Hex_tb,
			o_seg_n => o_seg_n_tb                    
    
    );


    test_process : process
    begin
    i_Hex_tb <= x"0"; wait for 10 ns;
            assert o_seg_n_tb = "1111110" report "Error on input 0" severity failure;
--    i_Hex_tb <= x"1"; wait for 10 ns;
--            assert o_seg_n_tb = "0110000" report "Error on input 1" severity failure;
--    i_Hex_tb <= x"2"; wait for 10 ns;
--            assert o_seg_n_tb = "1101101" report "Error on input 2" severity failure;
--    i_Hex_tb <= x"3"; wait for 10 ns;
--            assert o_seg_n_tb = "1111001" report "Error on input 3" severity failure;
--    i_Hex_tb <= x"4"; wait for 10 ns;
--            assert o_seg_n_tb = "0110011" report "Error on input 4" severity failure;
--    i_Hex_tb <= x"5"; wait for 10 ns;
--            assert o_seg_n_tb = "1011011" report "Error on input 5" severity failure;        
--    i_Hex_tb <= x"6"; wait for 10 ns;
--            assert o_seg_n_tb = "1011111" report "Error on input 6" severity failure;        
--    i_Hex_tb <= x"7"; wait for 10 ns;
--            assert o_seg_n_tb = "1110000" report "Error on input 7" severity failure;        
--    i_Hex_tb <= x"8"; wait for 10 ns;
--            assert o_seg_n_tb = "1111111" report "Error on input 8" severity failure;        
--    i_Hex_tb <= x"9"; wait for 10 ns;
--            assert o_seg_n_tb = "1110011" report "Error on input 9" severity failure;
--    i_Hex_tb <= x"A"; wait for 10 ns;
--            assert o_seg_n_tb = "1110111" report "Error on input 10" severity failure;        
--    i_Hex_tb <= x"B"; wait for 10 ns;
--            assert o_seg_n_tb = "0011111" report "Error on input 11" severity failure;        
--    i_Hex_tb <= x"C"; wait for 10 ns;
--            assert o_seg_n_tb = "0001101" report "Error on input 12" severity failure;        
--    i_Hex_tb <= x"D"; wait for 10 ns;
--            assert o_seg_n_tb = "0110000" report "Error on input 13" severity failure;        
--    i_Hex_tb <= x"E"; wait for 10 ns;
--            assert o_seg_n_tb = "1001111" report "Error on input 14" severity failure;        
--    i_Hex_tb <= x"F"; wait for 10 ns;
--            assert o_seg_n_tb = "1000111" report "Error on input 15" severity failure;        
            
      for i in 0 to 15 loop
          o_seg_n_tb <= std_logic_vector(to_unsigned(i, 4));
          wait for 10 ns;
      end loop;            
                    
      wait; --wait forever
    end process;

end test_bench;
