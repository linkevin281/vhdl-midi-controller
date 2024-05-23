--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;


--=============================================================================
--Entity Declaration:
--=============================================================================
entity midi_datapath is
    port(
		clk_port			: in  std_logic; --1 MHz serial clock
    	midi_port           : in  std_logic; --midi signal 
    	
    	--signals from controller
    	TCbaud_port        : in  std_logic; --monopulse high on baud period (after 1/2 period delay)
		add_port	       : in std_logic;
		update_port	       : in std_logic;
		reset_port	       : in std_logic;
		check_en_port	   : in std_logic;
		velshift_en_port   : in std_logic;
		valshift_en_port   : in std_logic;
		statshift_en_port  : in std_logic;
		
		--signal from math
        veladdr_port       : in std_logic_vector(4 downto 0);
        
        --signals to controller
        note_on_port        : out  std_logic;
        note_off_port       : out  std_logic;
		delete_port 	    : out  std_logic;	
		store_port	        : out std_logic;
		
		--signal to math
		velocity_port       : out std_logic_vector(7 downto 0));
end midi_datapath;

--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of midi_datapath is
--=============================================================================
--Signal Declarations: 
--=============================================================================
--for shifting 
signal note_status, note_value, note_velocity :std_logic_vector(9 downto 0) := (others =>'0');

--logic signals
signal note_on,  note_off, well_formed : std_logic := '0';

type regfile is array(0 to 24) of std_logic_vector(7 downto 0);

--register file of velocities, updated with every midi signal input
signal velocities_reg : regfile:= ((others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'));

signal location_mem : integer := 0;


--=============================================================================
--Processes: 
--=============================================================================
begin

shiftregisters : process(clk_port)
begin
	if rising_edge(clk_port) then
	--shift values in on TCBaud high
	   if (TCbaud_port = '1') then
           if (velshift_en_port = '1') then
               note_velocity <= midi_port & note_velocity(9 downto 1) ;
           end if;
           
           if (valshift_en_port = '1') then
               note_value <= midi_port & note_value(9 downto 1);
           end if;
           
           if (statshift_en_port = '1') then
               note_status <= midi_port & note_status(9 downto 1);
           end if;
       end if;
       
       --or reset the values
      if (reset_port = '1') then
           note_velocity <= (others => '0');
           note_value <= (others => '0');
           note_status <= (others => '0');
      end if; 
	end if;
end process shiftregisters;


--storing the note velocity for the corresponding note
update_velocity : process(clk_port)
begin


    if rising_edge(clk_port) then
    --map the input note_value to location in velocities register
       location_mem <= to_integer(unsigned(note_value(8 downto 1)))-36;
       --when updating (note being pressed)
    --input note velocity for the correct note value (memory location)
        if (update_port = '1') then
            if (add_port = '1') then
                velocities_reg(location_mem) <= note_velocity(8 downto 1);
            else
                --set that velocity to 0 (note not being played)
                velocities_reg(location_mem) <= (others => '0');
            end if;
        end if;
    end if;

end process update_velocity;


--determine logic for storing new note, deleting a note, or not updating
error_checking_logic : process(note_status, note_velocity, note_value, check_en_port,well_formed,note_on,note_off)
begin
    store_port <= '0';
    delete_port <= '0';
    if (check_en_port = '1') then
        --make sure note value , status , and velocity are not malformed (else do not update)
        if(well_formed = '1') then
          --if turn on signal for note (indicate store to controller)
            if (note_on = '1') then  
                store_port <= '1';
                --or turn off the note (indicate delete )
            elsif (note_off = '1') then
                delete_port <= '1';
            end if;
        end if;
    end if;

    --running signals for the controller (reads velocities, values only if status has note_on or note_off)
    --ignore signals not pertaining to notes
    --"x1001xxxxx
    note_on <= note_status(8) and not(note_status(7)) and not(note_status(6)) and (note_status(5));
    
    --x1000xxxxx
    note_off <= note_status(8) and not(note_status(7)) and not(note_status(6)) and not(note_status(5));
    
    --check if all 3 10-bit series are 1xxxxxxxx0
    well_formed <= not(note_status(0)) and note_status(9)and not(note_value(0)) and note_value(9) and not(note_velocity(0)) and note_velocity(9);

end process error_checking_logic;

note_on_port <= note_on;
note_off_port <= note_off;

--read the velocity at veladdr (for the math module)
velocity_port <= velocities_reg(to_integer(unsigned(veladdr_port)));

end behavioral_architecture;