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
entity midi_math is
    port(
		clk_port			   : in  std_logic;	--1 MHz serial clock
		--from BROM sine lookup
		yval_port              : in  std_logic_vector(15 downto 0);
		
		--from datapath
		velocity_port          : in  std_logic_vector(7 downto 0);
		
		--to datapath
    	raddr_vel_port         : out std_logic_vector(4 downto 0); --addresses to read velocity
    	
    	--to BROM
    	raddr_yval_port        : out std_logic_vector(15 downto 0); -- address (time) for the sine y value 

    	--to SPI transmitter
    	new_data_port          : out std_logic;
    	result_port            : out std_logic_vector(15 downto 0));
end midi_math;

--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of midi_math is
--=============================================================================
--Signal Declarations: 
--=============================================================================
--address of note (0 to 24) to be sent to velocity register in datapath
signal noteaddr : unsigned( 4 downto 0) := (others => '0');

--phasecount is like current global time (for all notes)
signal phasecount : unsigned( 11 downto 0) := (others => '0');

--TCnotes goes high when all 25 notes have been run through
--TCphase goes high when phasecount overflows
signal TCnotes,TCphase : std_logic := '0';

--delay signal to account for sine wave BROM lookup delay 
signal delay : std_logic := '1';




--signals for calculating the output wave value
signal numerator : unsigned(15 downto 0) := (others => '0');
signal denominator : unsigned(4 downto 0) := "00000";
signal mult_const : unsigned(3 downto 0) := (others => '0');
signal multnumerator : unsigned(19 downto 0) := (others => '0');
signal bitshifts : integer := 0;
signal result : unsigned(11 downto 0) := (others => '0');

--the phases of the individual notes
signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24 : unsigned(23 downto 0) := (others => '0');

type regfile is array(0 to 24) of unsigned(11 downto 0);


--register of frequencies(skiprates), held constant

signal skiprates_reg  : regfile:= ("000000110110","000000111000","000000111100","000001000000","000001000100","000001001000",
    "000001001100","000001010000","000001010110","000001011010","000001100000","000001100110","000001101100",
    "000001110010","000001111000","000010000000","000010001000","000010010000","000010011000","000010100000",
    "000010101010","000010110100","000010111110","000011001010","000011010110");


--register of phases (addresses, really just skiprates*phasecount), which go to the BROM sine wave lookip
signal phase_reg  : regfile:= ((others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'));

--register of current y values for all notes as if they are being played (obtained from the sine wave lookup)  
signal yvalues_reg  : regfile:= ((others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'));

--=============================================================================
--Processes: 
--=============================================================================
begin
--process to run through all 25 notes, calculate their appropriate running waveform-values 
update_y_register : process(clk_port, noteaddr,phase_reg)
begin
--runs through all 25 notes, sends the time value (from phase_reg) to brom (as the read address)
 raddr_yval_port <= "0000" & std_logic_vector(phase_reg(to_integer(noteaddr)));
 
    
	if (rising_edge(clk_port))then
	    --delay signal to account for brom delay
	    delay <= not(delay);
	    TCnotes <= '0';
	   
    	if (delay = '0') then
    	   --after delay, BROM returns value to yval_port, send it to register
    	   --switch msb of yval_port (shifts wave up by 1/2 amplitude)
    	   yvalues_reg(to_integer(noteaddr)) <= unsigned(not(yval_port(11)) & yval_port(10 downto 0));  
    	   noteaddr <= noteaddr + 1; 
    	   --once ran through all notes, increment global time (phasecount) 
           if (noteaddr = "11000") then
                TCnotes <= '1';
                noteaddr <= (others => '0');
                --if full wave period elapses, reset phasecount (time) to 0
                if (phasecount = "111111111111") then
                    phasecount <= (others => '0');
                else
                    phasecount <= phasecount + 1;
                end if;
            end if;
        end if;
   
    
    
    
    
    --taking lsbs into reg ensures proper overflowing        
    phase_reg  <= (s0(11 downto 0), s1(11 downto 0), s2(11 downto 0), s3(11 downto 0), s4(11 downto 0), s5(11 downto 0), 
        s6(11 downto 0), s7(11 downto 0), s8(11 downto 0), s9(11 downto 0), s10(11 downto 0), s11(11 downto 0), s12(11 downto 0), s13(11 downto 0), 
        s14(11 downto 0), s15(11 downto 0), s16(11 downto 0), s17(11 downto 0), s18(11 downto 0), s19(11 downto 0), s20(11 downto 0), s21(11 downto 0), 
        s22(11 downto 0), s23(11 downto 0), s24(11 downto 0));     
  end if;           
end process update_y_register;


--synchrounous process to perform calculations for signed amplitude of resultant wave 
calculate_result : process(clk_port,noteaddr)
begin
    --read velocity for each note (from piano keypresses)
    --velocity returned instantaneosly (hardwired)
    raddr_vel_port <= std_logic_vector(noteaddr);
    
    if (rising_edge(clk_port))then  
    
        --if the velocity is nonzero, add corresponding note's current y-value to numerator
        if (delay = '0' and to_integer(unsigned(velocity_port)) > 0) then
             numerator <= numerator + (yvalues_reg(to_integer(noteaddr)));
            --increment denominator for scaling purposes
            denominator <= denominator + 1;
            
        elsif (TCnotes = '1') then
               --reset running numerator, denominator
               numerator <= (others => '0');
               denominator <= (others => '0');
               
               --update the result (bitshifting the multnumerator to complete strength reduction)
               result <= multnumerator(bitshifts + 11 downto bitshifts);
        end if;
    	
    end if;

end process calculate_result;

-- process instead of division (replaces numerator/denominator)
--determine the bitshifts and multiplicative constant for division asynchronously
division_setup : process(denominator,numerator, mult_const)
begin
        --determine bitshifting and multiplication for strength reduction
        mult_const <= "0001";
        bitshifts <= 0;
        case (denominator) is
            --1/2
            when "00010" => bitshifts <= 1;
            --1/3 = around 5/16
            when "00011" => mult_const <= "0101";
                      bitshifts <= 4;
            --1/4          
            when "00100" =>  bitshifts <= 2;
            
            --1/5 = around 3/16
            when "00101" => mult_const <= "0011";
                      bitshifts <= 4;
                      
            --1/6 = around 11/64          
            when "00110" => mult_const <= "1011";
                      bitshifts <= 6;
            --1/7 = around 9/64
            when "00111" => mult_const <= "1001";
                      bitshifts <= 6;
            --1/8          
            when "01000" => bitshifts <= 3;
            
            --1/9 = around 7/64
            when "01001" => mult_const <= "0111";
                      bitshifts <= 6;
                      
            --1/10 = around 3/32          
            when "01010" => mult_const <= "0011";
                       bitshifts <= 5;
                       
            --1/11 = around 3/32          
            when "01011" => mult_const <= "0011";
                       bitshifts <= 5;
                       
           --1/12 = around 5/64          
            when "01100" => mult_const <= "0101";
                       bitshifts <= 6;
            --1/13 = around 5/64          
            when "01101" => mult_const <= "0101";
                       bitshifts <= 6;
                       
            --1/14 = around 1/16          
            when "01110" => mult_const <= "0001";
                       bitshifts <= 4;           
            --1/15 = around 1/16          
            when "01111" => mult_const <= "0001";
                       bitshifts <= 4;           
            --1/16       
            when "10000" => mult_const <= "0001";
                       bitshifts <= 4;                
                       
                                           
            when others => mult_const <= "0001";
                           bitshifts <= 0;
            end case;
         --multiply the numerator for strength reduction   
         multnumerator <= numerator*mult_const;
       

end process division_setup;
--intermediate signals for phases (fixed skip rates correspond to pitches, phasecount is time elapsed since start of wave period)
    s0 <= skiprates_reg(0)*phasecount;
    s1 <= skiprates_reg(1)*phasecount;
    s2 <= skiprates_reg(2)*phasecount;
    s3 <= skiprates_reg(3)*phasecount;
    s4 <= skiprates_reg(4)*phasecount;
    s5 <= skiprates_reg(5)*phasecount;
    s6 <= skiprates_reg(6)*phasecount;
    s7 <= skiprates_reg(7)*phasecount;
    s8 <= skiprates_reg(8)*phasecount;
    s9 <= skiprates_reg(9)*phasecount;
    s10 <= skiprates_reg(10)*phasecount;
    s11 <= skiprates_reg(11)*phasecount;
    s12 <= skiprates_reg(12)*phasecount;
    s13 <= skiprates_reg(13)*phasecount;
    s14 <= skiprates_reg(14)*phasecount;
    s15 <= skiprates_reg(15)*phasecount;
    s16 <= skiprates_reg(16)*phasecount;
    s17 <= skiprates_reg(17)*phasecount;
    s18 <= skiprates_reg(18)*phasecount;
    s19 <= skiprates_reg(19)*phasecount;
    s20 <= skiprates_reg(20)*phasecount;
    s21 <= skiprates_reg(21)*phasecount;
    s22 <= skiprates_reg(22)*phasecount;
    s23 <= skiprates_reg(23)*phasecount;
    s24 <= skiprates_reg(24)*phasecount;



--rightshift by 1 bit to ensure no amplitude overflow
--pad with leading zeros for spi transmitter
result_port <= "00000"  & std_logic_vector(result(11 downto 1));

--monopulse signal for spi transmitter to begin transmission
new_data_port <= TCnotes;

end behavioral_architecture;
