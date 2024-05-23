


--TESTBNECH FOR INTEGRATED MIDI SYSTEM
--=============================================================
--=============================================================
--Library Declarations
--=============================================================
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

 --=============================================================
--Testbench Entity Declaration
--=============================================================
ENTITY midi_main_tb IS
END midi_main_tb;

--=============================================================
--Testbench declarations
--=============================================================
ARCHITECTURE testbench OF midi_main_tb IS 


signal clk_ext : std_logic := '0';
signal midi : std_logic := '1';


component midi_shell is
	Port ( 	
			CLK_EXT           : in std_logic;	
			midi_input_port   	        : in std_logic;	
			dac_data_out_port           : out std_logic;
			data_valid_port              :out std_logic	);  	
end component; 

constant clk_period : time := 10ns;

begin 



uut: midi_shell port map(	  
 CLK_EXT    => clk_ext,	
midi_input_port   	=> midi);	

       
-- Clock process definitions
clk_process :process
begin
    clk_ext <= '0';
    wait for clk_period/2;
    clk_ext <= '1';
    wait for clk_period/2;
    
end process clk_process;

stim_proc : process
begin
	
	--give initial data, let it shift out, ends at high 1 idle
    
    wait for 10000*clk_period;
    
    
    
    --first set of ten bits-status of note
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 32000*clk_period;
    
    
    --value of note
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 32000*clk_period;
    
    
    --velocity of note
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '0';
    wait for 3200*clk_period;
    midi <= '1';
    wait for 3200*clk_period;
    
    wait for 10000*clk_period;
    
 
    wait for clk_period;

    
    
--    wait for 10*clk_period;
    
    
--    --first set of ten bits-status of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --value of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --velocity of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
    
--    wait for 52*clk_period;
    
--       --first set of ten bits-status of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --value of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --velocity of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
    
--    wait for 52*clk_period;
    
--       --first set of ten bits-status of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --value of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --velocity of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
    
--    wait for 52*clk_period;
    
--    --now delete the 2nd note
--    --first set of ten bits-status of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --value of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 320*clk_period;
    
    
--    --velocity of note
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '1';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '0';
--    wait for 32*clk_period;
--    midi <= '1';
    
--    wait for 52*clk_period;
   
    
  
--    wait for clk_period;
   
    

  
    
    wait;
end process stim_proc;



END;

