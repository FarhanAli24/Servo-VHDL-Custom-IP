library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY lab4 is
  port (
    CLOCK_50           : in  std_logic;
	 reset	           : in std_logic;
	 
	 write_enable       : in std_logic := '1';
	 write_data         : in std_logic_vector(31 downto 0);
	 
	 address				  : in std_logic;
	 
	 irq					  : out std_logic;
	 out_wave_export	  : out std_logic

	 );
end entity lab4;

architecture rtl of lab4 is



--signal write_enable       : std_logic := '1';
--signal write_data         : std_logic_vector(31 downto 0) :=x"000186A0";--Assign 100k=135 degrees
	 
--signal address				  : std_logic := '1';--write Max register



signal periodMax		  : unsigned(31 downto 0) := x"000F4240";--1M in hex becasue that is equivelent to 20ms period
signal periodCount	  : unsigned(31 downto 0)	:= (others => '0');

signal max_angle	: unsigned(31 downto 0)	:= x"000186A0";
signal min_angle  : unsigned(31 downto 0)	:=x"0000C350"; --min 45 degrees
signal current_angle : unsigned(31 downto 0) := (others => '0');

type state_type is (SWEEP_RIGHT, SWEEP_LEFT, INT_RIGHT, INT_LEFT);
signal state : state_type;
signal current_state : state_type;

  
begin
--IRQ
irq_process: process(CLOCk_50, state)
begin

	if reset = '0' then
	
		irq <= '0';
		
	elsif rising_edge(CLOCK_50) then	
	
		if state = INT_RIGHT or state = INT_LEFT then
			irq <= '1';
		
		else
			irq <= '0';
			
		end if;
	end if;
end process;


--Period Counter
period_counter: process(CLOCk_50, reset, periodCount)
begin
	
	if reset = '0' then
	
		periodCount <= (others => '0');
	
	elsif rising_edge(CLOCK_50) then
	
		if  periodCount = periodMax then
		
			periodCount <= (others => '0');		
			
		else
		
			periodCount <= periodCount + x"2710";--10k --'1';
			
				
		end if;
	end if;
end process;

--Angle Counter
angle_counter: process(CLOCK_50, reset, current_angle,current_state)
begin
	--check state by fsm
	if reset = '0' then
	
		current_angle <= x"0000C350";--50k
	
	elsif rising_edge(CLOCK_50) then
		
		
		if periodCount = periodMax then --periodMax then--make count_angle change per period
		
			if current_state = SWEEP_RIGHT then
				
		
				current_angle <= current_angle + x"1388";--5k--x"000001F4";--increment 500
			
			
			elsif current_state = SWEEP_LEFT then  
			
				current_angle <= current_angle - x"1388";--5k--decrement 500
			end if;
		
		else
			current_angle <= current_angle;
		
	end if;
	end if;
end process;

--pwm wave output
pwm: process(CLOCK_50,reset)
begin

	if reset = '0' then
		out_wave_export <= '0';
	
	elsif rising_edge(CLOCK_50) then
		
		if periodCount < current_angle then
		
			out_wave_export <= '1';
		
		else
	
			out_wave_export <= '0';
			
		end if;
		
	end if;
end process;

--Register Logic
register_logic: process(CLOCK_50, reset)
begin 
	
	if reset = '0' then
	
		max_angle <= x"000186A0";--x"000124F8";--100k
		min_angle <= x"0000C350"; --reseting min to 50,000 which is min angle width
	
	elsif rising_edge(CLOCK_50) then
		
		if write_enable = '1' then
			
	
			if address = '1' then --when address = 1 then write to max_angle register
	
				min_angle <= unsigned(write_data);--set the max servo can turn
		
			else

				max_angle <= unsigned(write_data);--set the min servo can turn
				
			end if;
		else
			min_angle <= min_angle;
			max_angle <= max_angle;
		end if;	

	end if;	
end process;

--Control Logic (FSM)
control_logic: process(CLOCK_50,reset)
	begin
		if reset = '0' then
		
			current_state <= SWEEP_RIGHT;
			
		elsif rising_edge(CLOCK_50) then
				current_state <= state;
		
	
			
		end if;
end process;

process(current_state,write_enable, current_angle, min_angle, max_angle) is
begin

	--state <= current_state;--prevents latch
	
	case current_state is
	
	
		when SWEEP_RIGHT=>	
		
		
				if	current_angle >= max_angle then
					
					state <= INT_RIGHT;
				
				else
					state <= SWEEP_RIGHT;
					
					
					
				end if;
				
		when INT_RIGHT =>
				
				if write_enable = '1' then
					state <= SWEEP_LEFT;
				
				else
					state <= INT_RIGHT;
					
				end if;
		
		when SWEEP_LEFT=>

				if current_angle <= min_angle then
				
					state <= INT_LEFT;
					
				else
				
					state <= SWEEP_LEFT;-- prevents latch
									
				end if;
				
		when INT_LEFT =>
		
			if write_enable = '1' then
					state <= SWEEP_RIGHT;
			else
				
				state <= INT_LEFT;
				
			end if;
			
			
	end case;	
end process;


end architecture rtl;



	



