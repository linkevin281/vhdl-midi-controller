
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity midi_blk_mem_gen_y_tb is
end midi_blk_mem_gen_y_tb;

architecture testbench of midi_blk_mem_gen_y_tb is

Component blk_mem_gen_y IS
PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
end component blk_mem_gen_y;


component midi_math is
    port(
		clk_port			: in  std_logic;	--1 MHz serial clock
		
		yval_port              : in  signed(9 downto 0);
		skiprate_port          : in  unsigned(9 downto 0);
		velocity_port          : in  unsigned(9 downto 0);
		
    	raddr_vel_port         : out unsigned(4 downto 0); --addresses to read velocity (register)
    	raddr_skiprate_port    : out unsigned(4 downto 0); --read skip rate for pitch (BROM)
    	raddr_yval_port        : out unsigned(12 downto 0); -- read yval (BROM)
    	result_port            : out signed(15 downto 0));
end component midi_math;


--inputs
signal CLK, s_axis_valid : std_logic := '1';

signal input : unsigned(15 downto 0) := (others => '0');
signal output : std_logic_vector(15 downto 0) := (others => '0');

signal skipr, vel : unsigned(9 downto 0) := (others => '0');



--outputs

constant clk_period : time := 10ns;


begin

uut : blk_mem_gen_y PORT MAP(
		aclk => CLK,
    	 s_axis_phase_tvalid => s_axis_valid,         
    	 s_axis_phase_tdata => std_logic_vector(input),
    	 m_axis_data_tdata => output);


math : midi_math PORT MAP(
		clk_port => CLK,
    	          
    	 raddr_vel_port => input,
    	 yval_port => signed(output),
    	 skiprate_port => skipr,
    	 velocity_port => vel);
  
clk_proc : process
BEGIN

  CLK <= '0';
  wait for clk_period/2;   --100 MHz clock

  CLK <= '1';
  wait for clk_period/2;

END PROCESS clk_proc;

stim_proc : process
begin
	
	--give initial data, let it shift out, ends at high 1 idle
    
    wait for 10*clk_period;
    
    
    --first set of ten bits-status of note
    input <=input + 1 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 10 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 100 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 1000 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 1000 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 1000 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 1000 ;
    wait for 10*clk_period;
    s_axis_input <=s_axis_input + 1000 ;
    wait for 10*clk_period;
    
    s_axis_input <="0000000000000000";
    wait for 10*clk_period;
    
    s_axis_input <="0100000000000000";
    wait for 10*clk_period;
    
    s_axis_input <="1000000000000000";
    wait for 10*clk_period;
    
    s_axis_input <="1100000000000000";
    wait for 10*clk_period;
    
    s_axis_input <="1111111111111111";
    wait for 10*clk_period;
    
    
    wait;
end process stim_proc;
end testbench;


