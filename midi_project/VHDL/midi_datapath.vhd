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
		clk_port			: in  std_logic;	--1 MHz serial clock
    	midi_port           : in  std_logic; --midi signal (looking for 0 after 1 idle)
    	TCbaud_port         : in  std_logic; --high during middle of baud period (except for 1st bit)
		
		
		veladdr_port       : in std_logic_vector(4 downto 0);
		add_port	       : in std_logic;
		update_port	       : in std_logic;
		reset_port	       : in std_logic;
		
		check_en_port	   : in std_logic;

		velshift_en_port   : in std_logic;
		valshift_en_port   : in std_logic;
		statshift_en_port  : in std_logic;
		
		well_formed_port    : out  std_logic;
        note_on_port         : out  std_logic;
        note_off_port         : out  std_logic;
		delete_port 	    : out  std_logic;	--controller signals
		store_port	        : out std_logic;
		velocity_port       : out std_logic_vector(7 downto 0);
		status_port         : out std_logic_vector(7 downto 0));
end midi_datapath;

--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of midi_datapath is
--=============================================================================
--Signal Declarations: 
--=============================================================================
signal note_status :std_logic_vector( 9 downto 0) := (others =>'0');
signal note_value : std_logic_vector(9 downto 0) := (others =>'0');
signal note_velocity :std_logic_vector( 9 downto 0) := (others =>'0');

signal note_on,  note_off, well_formed : std_logic := '0';

type regfile is array(0 to 24) of std_logic_vector(7 downto 0);
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
               note_velocity <= note_velocity(8 downto 0) & midi_port ;
           end if;
           
           if (valshift_en_port = '1') then
               note_value <= note_value(8 downto 0) & midi_port;
           end if;
           
           if (statshift_en_port = '1') then
               note_status <= note_status(8 downto 0) & midi_port;
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
    --when updating nots being played
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


--determine logic for storing new note or deleting a note
note_logic : process(check_en_port, note_on, note_off, well_formed)
begin
store_port <= '0';
delete_port <= '0';
if (check_en_port = '1') then
    --make sure note value , status , and velocity are not malformed (else do not update)
    if(well_formed = '1') then
      --if turn on signal for note (indicate store )
        if (note_on = '1') then  
            store_port <= '1';
            --or turn off the note (indicate delete )
        elsif (note_off = '1') then
            delete_port <= '1';
        end if;
    end if;
end if;



end process note_logic;


location_mem <= to_integer(unsigned(note_value(8 downto 1)))-36;
--"x1000xxxxx
--note_on <= note_status(8) and not(note_status(7)) and not(note_status(6)) and not(note_status(5));
note_on <= note_status(1) and not(note_status(2)) and not(note_status(3)) and (note_status(4));
--x1001xxxxx
--note_off <= note_status(8) and not(note_status(7)) and not(note_status(6)) and note_status(5);
note_off <= note_status(1) and not(note_status(2)) and not(note_status(3)) and not(note_status(4));

--check if all 3 10-bit series are 0xxxxxxxx1
well_formed <= not(note_status(9)) and note_status(0)and not(note_value(9)) and note_value(0) and not(note_status(9)) and note_status(0);
--read the velocity at veladdr (for the math module)
velocity_port <= velocities_reg(to_integer(unsigned(veladdr_port)));
well_formed_port <= well_formed;
note_on_port <= note_on;
note_off_port <= note_off;
status_port <= note_status(8 downto 1);
end behavioral_architecture;