library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity lab05 is
	port(clk, reset: IN std_logic;
		  w : in std_logic;
		  x : in std_logic;
		  y : in std_logic;
		  z : in std_logic;
		  ld_inc_out : out std_logic;
		  condition_sel_out: out std_logic_vector(1 downto 0);
		  next_address_out: out std_logic_vector(1 downto 0);
		  q_out: out std_logic_vector(6 downto 0);
		  control_data: out std_logic_vector(2 downto 0));
end lab05;

architecture rt1 of lab05 is
	signal address : std_logic_vector(1 downto 0);
	signal next_address : std_logic_vector(1 downto 0);
	signal condition_sel : std_logic_vector(1 downto 0);
	
	signal ld_inc : std_logic;
	signal key_sw : std_logic_vector(3 downto 0);
	signal key_en, key_en1, key_reset : std_logic;
	signal key_w, key_x, key_y, key_z : std_logic;
	signal q: std_logic_vector(6 downto 0);
	
	type ROM is array(0 to 3) of std_logic_vector(6 downto 0);
	constant rom_7x4: ROM := (
	"0000001",
	"0001010",
	"0110100",
	"1011111"
	);
	
	begin
	key_en <= w or x or y or z;
	key_latch: process(clk)
	begin
		if clk'event and clk = '1' then
			key_en1 <= key_en;
			if (key_reset = '1') then
				key_sw <= "0000";
			elsif (key_en = '1' and key_en1 = '0')then
				key_sw <= w&x&y&z;
			end if;
		end if;
	end process;

	key_w <= w;
	key_x <= x;
	key_y <= y;
	key_z <= z;

	reg: process(clk, reset)
	begin
		if reset = '1' then
			address <= "00";
		elsif clk'event and clk='1' then
			if ld_inc = '1' then
				address <= next_address;
			else
				address <= address +1;
			end if;
		end if;
	end process;

	con_mux: process(condition_sel, key_w, key_x, key_y, key_z)
	begin
		CASE condition_sel is
			when "00" => ld_inc <= key_w;
			when "01" => ld_inc <= key_x;
			when "10" => ld_inc <= key_y;
			when "11" => ld_inc <= key_z;
		end case;
	end process;

q <= rom_7x4(to_integer(unsigned(address)));

ld_inc_out <= ld_inc;
condition_sel_out <= condition_sel;
next_address_out <= next_address;
next_address <= q(6 downto 5);
condition_sel <= q(4 downto 3);
control_data <= q(2 downto 0);
q_out <= q;
end rt1;
