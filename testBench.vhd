library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


ENTITY testBench is
end entity testBench;



architecture test of testBench is



component lab4 is 
    port (
         CLOCK_50           : in  std_logic;
         reset               : in std_logic;
         
         write_enable       : in std_logic;
         write_data         : in std_logic_vector(31 downto 0);
         
         address                  : in std_logic;
         
         irq                      : out std_logic;
         out_wave_export      : out std_logic
     );
end component;


signal clk_sig            :std_logic := '0';
signal reset_sig         :std_logic := '0';

signal write_enable_sig :std_logic := '0';                                          
signal write_data_sig   :std_logic_vector(31 downto 0) :=(OTHERS => '0');  --Neutral(center)
signal address_sig      :std_logic := '0';    
signal irq_sig              :std_logic :='0';
signal out_wave_export  :std_logic := '0';

constant period     : time := 20ns;
SIGNAL sim_done 	       : boolean := false;
CONSTANT RESULTS_DELAY_c : integer := 4; -- depends on your design

begin


UUT: lab4 port map(
     
     CLOCK_50         =>  clk_sig,
     reset             =>  reset_sig,  
     
     write_enable     =>  write_enable_sig,  
     write_data       =>  write_data_sig,
     
     address               =>     address_sig,
     
     irq                    => irq_sig,
     out_wave_export    => out_wave_export

);


-- Clk process
clk_sig <= NOT clk_sig AFTER PERIOD/2 WHEN (NOT sim_done) ELSE '0';


verification: process
begin
wait until clk_sig = '1';
WAIT UNTIL (clk_sig = '1');
-- reset process
reset_sig <= '1'; 

WAIT UNTIL (irq_sig = '1');

address_sig <='1';
write_enable_sig <= '1';

write_data_sig <= x"0000C350";--max 50k = 135 degrees
wait for 100ns;
write_enable_sig <= '0';
   

WAIT UNTIL (irq_sig = '1');

address_sig <='0';
write_enable_sig <= '1';
write_data_sig <= x"000186A0";--min 100k = 34 degrees
wait for 100ns;

wait until clk_sig = '1';
write_enable_sig <= '0';


-- Disable all signals 
WAIT UNTIL (clk_sig = '1');
WAIT FOR RESULTS_DELAY_c * PERIOD;
		
sim_done <= true;
		
-- Wait here forever
WAIT;

end process;





end architecture test;