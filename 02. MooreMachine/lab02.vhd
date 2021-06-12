library ieee;
USE ieee.std_logic_1164.all;

ENTITY lab02 IS
	port(clock: IN STD_LOGIC;
			Resetn: IN STD_LOGIC;
			x: IN STD_LOGIC;
			z: OUT STD_LOGIC);
END lab02;

ARCHITECTURE behavioral of lab02 IS
	TYPE state_type IS (s0, s1, s2, s3);
	SIGNAL y: state_type;
	
BEGIN
	PROCESS(Resetn, Clock)
	BEGIN
		IF Resetn = '0' THEN y <= s0;
		ELSIF(Clock' EVENT and Clock= '1') THEN
			CASE y IS
				WHEN s0 =>
					IF x = '0' THEN y<= s0;
					ELSE
						y<=s1;
					END IF;
				WHEN s1 =>
					IF x = '0' THEN y<= s2;
					ELSE
						y<= s1;
					END IF;
				WHEN s2 =>
					IF x = '0' THEN y<= s0;
					ELSE
					 y<= s3;
					END IF;
				WHEN s3 =>
					IF x = '0' THEN y<= s2;
					ELSE
						y<= s1;
					END IF;
				END CASE;
			END IF;
		END PROCESS;
	z <= '1' WHEN y = s3 ELSE '0';
	
END Behavioral;