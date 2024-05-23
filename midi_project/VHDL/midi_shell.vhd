--=============================================================================

--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

--=============================================================================
--Entity Declaration:
--=============================================================================
entity midi_shell is
    Port ( 	
			CLK_EXT                     : in std_logic;	
			midi_input_port   	        : in std_logic;	
			dac_data_out_port           : out std_logic;
			data_valid_port             : out std_logic;	
			result_port                 : out std_logic_vector(15 downto 0);
			out_clock_port : out std_logic;
			vel_shift_out : out std_logic;
			val_shift_out : out std_logic;
			stat_shift_out : out std_logic;
			update_out : out std_logic;
			add_out : out std_logic;
			check_out : out std_logic;
			reset_out : out std_logic;
			store_out : out std_logic;
			well_formed_out : out std_logic;
			note_on_out : out std_logic;
			delete_out : out std_logic
			);  				
end midi_shell;

--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of midi_shell is

--=============================================================================
--Sub-Component Declarations:
--=============================================================================
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--System Clock Generation:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
component midi_clock_generation is
    generic (CLOCK_DIVIDER_RATIO : integer := 50);
	port (
        input_clk_port		: in std_logic;
        system_clk_port	    : out std_logic;
        fwd_clk_port : out std_logic
        );
end component midi_clock_generation;




Component midi_controller IS
generic(
		BAUD_COUNT				: integer :=32);
port(
		clk_port			: in  std_logic;	--1 MHz serial clock
    	midi_port           : in  std_logic; --midi signal (looking for 0 after 1 idle)
    	
		delete_port 	    : in  std_logic;	--controller signals
		store_port	        : in std_logic;
		
		add_port	       : out std_logic;
		update_port	       : out std_logic;
		reset_port	       : out std_logic;
		
		check_en_port	   : out std_logic;

		velshift_en_port   : out std_logic;
		valshift_en_port   : out std_logic;
		statshift_en_port  : out std_logic;
		TCbaud_port             : out std_logic);
end component midi_controller;



component midi_datapath is
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
		note_on_out_port    : out  std_logic;
		delete_port 	    : out std_logic;	--controller signals
		store_port	        : out std_logic;
		velocity_port       : out std_logic_vector(7 downto 0));
end component midi_datapath;


component midi_math is
    port(
		clk_port			: in  std_logic;	--1 MHz serial clock
		
		yval_port              : in  signed(15 downto 0);
		velocity_port          : in  std_logic_vector(7 downto 0);
		
    	raddr_vel_port         : out std_logic_vector(4 downto 0); --addresses to read velocity (register)
    	
    	raddr_yval_port        : out std_logic_vector(15 downto 0); -- read yval (BROM)
    	new_data_port          : out std_logic;
    	result_port            : out signed(15 downto 0));
end component midi_math;


Component blk_mem_gen_y IS
PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
end component blk_mem_gen_y;

component midi_spi_transmitter is
	generic(
		TOTAL				: integer := 15);
	port(
	    --1 MHz serial clock
		clk_port				: in  std_logic;	
    	
    	--controller signals
		new_data_port 	       : in  std_logic;	
		spi_cs_port			    : out std_logic;
		data_out                  : out std_logic;
		
        
        --datapath signals
		dac_data_port			: in std_logic_vector(15 downto 0));
end component midi_spi_transmitter; 





--inputs
signal CLK, fwd_clk, delete, store, add ,update, reset, TCbaud: std_logic := '0';

signal note_on, well_formed, statshift, velshift, valshift,check_en : std_logic := '0';
signal midi : std_logic := '1';

--address to read note velocity (25 locations)
signal raddr_vel : std_logic_vector(4 downto 0) := "00000";

--note velocity (8-bit number)
signal velocity : std_logic_vector(7 downto 0) := (others => '0');

--input to brom address
signal raddr_yval : std_logic_vector(15 downto 0) := (others => '0');

--signed y value outputted from brom
signal yval : signed(15 downto 0) := (others => '0');

signal result : signed(15 downto 0) := (others => '0');
signal new_data : std_logic := '0';



signal s_axis_valid : std_logic := '1';



--outputs



begin

clk_division : midi_clock_generation PORT MAP(
        input_clk_port => CLK_EXT,
        system_clk_port => CLK,
        fwd_clk_port => out_clock_port);

controller : midi_controller PORT MAP(
		clk_port => CLK,
    	midi_port => midi_input_port,         
		delete_port => delete,
		store_port => store,
		
		add_port => add,
		update_port => update,
		reset_port => reset,
		
		check_en_port => check_en,
		
		statshift_en_port => statshift,
		velshift_en_port => velshift,
		valshift_en_port => valshift,
		TCbaud_port => TCbaud);
		
		
datapath : midi_datapath PORT MAP(
        --control signals and clk
		clk_port => CLK,
    	         
		delete_port => delete,
		store_port => store,
		add_port => add,
		update_port => update,
		reset_port => reset,
		check_en_port => check_en,
		statshift_en_port => statshift,
		velshift_en_port => velshift,
		valshift_en_port => valshift,
		TCbaud_port => TCbaud,
		
		--midi input
		midi_port => midi_input_port,
		well_formed_port => well_formed,
		note_on_out_port => note_on,
		
		--velocities /address for math
		veladdr_port => raddr_vel,
		velocity_port => velocity);
		
math : midi_math PORT MAP(
		clk_port => CLK,
    	yval_port => yval,         
		velocity_port => velocity,
		
	    raddr_vel_port => raddr_vel,
	    raddr_yval_port => raddr_yval,
	    result_port => result,
	    new_data_port =>new_data);
	    

BROM : blk_mem_gen_y PORT MAP(
		aclk => CLK,
    	 s_axis_phase_tvalid => s_axis_valid,         
    	 s_axis_phase_tdata => std_logic_vector(raddr_yval),
    	 std_logic_vector(m_axis_data_tdata) => yval);
  
  
transmitter : midi_spi_transmitter PORT MAP(
        clk_port => CLK,
        new_data_port => new_data,
        dac_data_port	=> std_logic_vector(result),
        spi_cs_port => data_valid_port,
        data_out => dac_data_out_port);
        
delete_out <= delete;
store_out <= store;
reset_out <= reset;
check_out <= check_en;
vel_shift_out <= velshift;
val_shift_out <= valshift;
stat_shift_out <= statshift;
update_out <= update;
add_out <= add;
well_formed_out <= well_formed;
note_on_out <= note_on;
result_port <= std_logic_vector(result);
end behavioral_architecture;