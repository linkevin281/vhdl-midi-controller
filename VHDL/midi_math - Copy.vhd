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
		
		yval_port              : in  std_logic_vector(15 downto 0);
		velocity_port          : in  std_logic_vector(7 downto 0);
		
    	raddr_vel_port         : out std_logic_vector(4 downto 0); --addresses to read velocity (register)
    	
    	raddr_yval_port        : out std_logic_vector(15 downto 0); -- read yval (BROM)
    	phasecount_port        : out std_logic_vector( 11 downto 0);
    	
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
signal noteaddr : unsigned( 4 downto 0) := (others => '0');
signal phasecount : unsigned( 11 downto 0) := (others => '0');

signal add, TCnotes,TCphase : std_logic := '0';
signal delay : std_logic := '1';


signal denominator : unsigned(4 downto 0) := "00000";
signal mult_const : signed(3 downto 0) := (others => '0');
signal bitshifts : integer := 0;


signal numerator, top : signed(23 downto 0) := (others => '0');
signal result : signed(11 downto 0) := (others => '0');

signal multnumerator : signed(19 downto 0) := (others => '0');



signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24 : unsigned(23 downto 0) := (others => '0');





type regfile is array(0 to 24) of unsigned(11 downto 0);
type signed_regfile is array(0 to 24) of signed(11 downto 0);
--register of frequencies(skiprates), held constant

signal skiprates_reg  : regfile:= ("000000110110","000000111000","000000111100","000001000000","000001000100","000001001000",
    "000001001100","000001010000","000001010110","000001011010","000001100000","000001100110","000001101100",
    "000001110010","000001111000","000010000000","000010001000","000010010000","000010011000","000010100000",
    "000010101010","000010110100","000010111110","000011001010","000011010110");


--register of times (really just skiprates* current time), these addresses go to the brom
signal phase_reg  : regfile:= ((others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'));

--register of current y values (obtained from the brom)
--the scaled sum across this register is computed to obtain the final output     
signal yvalues_reg  : signed_regfile:= ((others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),
    (others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'));

--=============================================================================
--Processes: 
--=============================================================================
begin

update_y_register : process(clk_port)
begin
--runs through all 25 notes, sends the time value (from phase_reg) to brom (as the read address)
 raddr_yval_port <= "0000" & std_logic_vector(phase_reg(to_integer(noteaddr)));
 
    
	if (rising_edge(clk_port))then
	      --delay signal to account for brom delay
	    delay <= not(delay);
	    TCnotes <= '0';
	    
    	if (delay = '0') then
    	   --get the output from brom, send it to appropriate address in yvalues_reg, increment note
    	   yvalues_reg(to_integer(noteaddr)) <= signed(yval_port(11 downto 0));  
    	   noteaddr <= noteaddr + 1;
    	   
    	   --once ran through all notes, increment the phase count (to adjust phases in the phase_reg)
           if (noteaddr = "11000") then
                TCnotes <= '1';
                noteaddr <= (others => '0');
                --if full wave period elapses, reset the phasecount (time) to 0
                if (phasecount = "111111111111") then
                    phasecount <= (others => '0');
                else
                    phasecount <= phasecount + 1;
                end if;
            end if;
        end if;
    end if;
    
    
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
            
    phase_reg  <= (s0(11 downto 0), s1(11 downto 0), s2(11 downto 0), s3(11 downto 0), s4(11 downto 0), s5(11 downto 0), 
        s6(11 downto 0), s7(11 downto 0), s8(11 downto 0), s9(11 downto 0), s10(11 downto 0), s11(11 downto 0), s12(11 downto 0), s13(11 downto 0), 
        s14(11 downto 0), s15(11 downto 0), s16(11 downto 0), s17(11 downto 0), s18(11 downto 0), s19(11 downto 0), s20(11 downto 0), s21(11 downto 0), 
        s22(11 downto 0), s23(11 downto 0), s24(11 downto 0));     
           
           
           
end process update_y_register;


--synchrounous process to perform calculations for signed amplitude of resultant wave 
summing : process(clk_port)
begin
    --read the velocity for each note (from piano keypresses)
    --velocity returned instantaneosly (hardwired)
    raddr_vel_port <= std_logic_vector(noteaddr);
    
    if (rising_edge(clk_port))then  
    
        --only if the velocity is nonzero, add the corresponding note's current y-value to numerator
        if (delay = '0' and to_integer(unsigned(velocity_port)) > 0) then
            numerator <= numerator + velocity_port*(yvalues_reg(to_integer(noteaddr)));
            --increment denominator for scaling purposes
            denominator <= denominator + 1;
            
        elsif (TCnotes = '1') then
                --multiply by constant (first part of division
               top <= numerator;
               numerator <= (others => '0');
               denominator <= (others => '0');
               result <= multnumerator(bitshifts + 11 downto bitshifts);
        end if;
    	
    end if;

end process summing;

-- process instead of division (replaces numerator/denominator)
--determine the bitshifts and multiplicative constant for division asynchronously
division_setup : process(denominator)
begin
        --determine bitshifting and multiplication for strenght reduction
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
                      
            when others => mult_const <= "0001";
                           bitshifts <= 0;
            end case;
            
         multnumerator <= numerator*mult_const;
       

end process division_setup;


result_port <= "00000" & std_logic(not(result(11))) & std_logic_vector(result(10 downto 1));

new_data_port <= TCnotes;
phasecount_port <= std_logic_vector(phasecount);
end behavioral_architecture;
