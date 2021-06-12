Library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab03 IS
	PORT(clock: IN STD_LOGIC;
			resetn: IN STD_LOGIC;
			input: IN STD_LOGIC_VECTOR(7 downto 0);
			LA: IN STD_LOGIC;
			S: IN STD_LOGIC;
			B: OUT STD_LOGIC_VECTOR(3 downto 0);
			DONE: OUT STD_LOGIC);
END lab03;

ARCHITECTURE Behavior OF lab03 IS
SIGNAL state: STD_LOGIC_VECTOR(1 downto 0);
SIGNAL counter: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL A: STD_LOGIC_VECTOR(7 downto 0);

BEGIN
	PROCESS (resetn, clock)
	BEGIN
		IF resetn = '0' THEN
			state <= "00";
			counter <= "0000";
		ELSIF(clock'EVENT AND clock = '1') THEN
			CASE state IS
			WHEN "00" =>
				IF LA = '1' THEN
					state <= "01";
				ELSE
					state <= "00";
				END IF;
			WHEN "01" =>
				A <= input;
				IF S = '1' THEN
					state <= "10";
				ELSE
					state <= "01";
				END IF;
			WHEN "10" =>
				IF (A /= "00000000") THEN
					IF A(0) = '1' THEN
						counter <= counter + 1;
					END IF;
					A(0) <= A(1);
					A(1) <= A(2);
					A(2) <= A(3);
					A(3) <= A(4);
					A(4) <= A(5);
					A(5) <= A(6);
					A(6) <= A(7);
					A(7) <= '0';
				ELSE
					state <= "11";
				END IF;
			WHEN others => 
				state <= "11";
			END CASE;
		END IF;
	END PROCESS;
	B <= Counter;
	DonE <= '1' WHEN state = "11" else '0';
END Behavior;
		