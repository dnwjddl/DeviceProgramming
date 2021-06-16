-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/16/2021 19:26:41"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab11 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enter : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab11;

-- Design Ports Information
-- output[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~5_combout\ : std_logic;
SIGNAL \PC[0]~6\ : std_logic;
SIGNAL \PC[1]~7_combout\ : std_logic;
SIGNAL \PC[1]~8\ : std_logic;
SIGNAL \PC[2]~9_combout\ : std_logic;
SIGNAL \PC[2]~10\ : std_logic;
SIGNAL \PC[3]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.s_input~q\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.s_output~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.s_dec~q\ : std_logic;
SIGNAL \state.s_store2~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \state.s_start~feeder_combout\ : std_logic;
SIGNAL \state.s_start~q\ : std_logic;
SIGNAL \state.s_start2~0_combout\ : std_logic;
SIGNAL \state.s_start2~q\ : std_logic;
SIGNAL \state.s_start3~feeder_combout\ : std_logic;
SIGNAL \state.s_start3~q\ : std_logic;
SIGNAL \state.s_fetch~q\ : std_logic;
SIGNAL \state.s_decode~feeder_combout\ : std_logic;
SIGNAL \state.s_decode~q\ : std_logic;
SIGNAL \state.s_decode2~q\ : std_logic;
SIGNAL \state.s_decode3~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s_add~q\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \A[1]~1_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \A[2]~2_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \A[3]~3_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \A[5]~5_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \A[6]~6_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \A[7]~7_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \A[4]~4_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s_jmz~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \PC[3]~12\ : std_logic;
SIGNAL \PC[4]~13_combout\ : std_logic;
SIGNAL \IR[4]~feeder_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \memory_address[0]~0_combout\ : std_logic;
SIGNAL \IR[3]~feeder_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \IR[2]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \IR[1]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \IR[0]~feeder_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.s_store~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \MemWr~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.s_load~q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \output[0]~0_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \output[4]~reg0feeder_combout\ : std_logic;
SIGNAL \output[4]~reg0_q\ : std_logic;
SIGNAL \output[5]~reg0feeder_combout\ : std_logic;
SIGNAL \output[5]~reg0_q\ : std_logic;
SIGNAL \output[6]~reg0feeder_combout\ : std_logic;
SIGNAL \output[6]~reg0_q\ : std_logic;
SIGNAL \output[7]~reg0feeder_combout\ : std_logic;
SIGNAL \output[7]~reg0_q\ : std_logic;
SIGNAL memory_address : std_logic_vector(4 DOWNTO 0);
SIGNAL PC : std_logic_vector(4 DOWNTO 0);
SIGNAL IR : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enter <= enter;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (memory_address(4) & memory_address(3) & memory_address(2) & memory_address(1) & memory_address(0));

\memory|sram|ram_block|auto_generated|q_a\(0) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|sram|ram_block|auto_generated|q_a\(1) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|sram|ram_block|auto_generated|q_a\(2) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|sram|ram_block|auto_generated|q_a\(3) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|sram|ram_block|auto_generated|q_a\(4) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|sram|ram_block|auto_generated|q_a\(5) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|sram|ram_block|auto_generated|q_a\(6) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|sram|ram_block|auto_generated|q_a\(7) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X30_Y24_N23
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]~reg0_q\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[5]~reg0_q\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[6]~reg0_q\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[7]~reg0_q\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N16
\PC[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~5_combout\ = PC(0) $ (VCC)
-- \PC[0]~6\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~5_combout\,
	cout => \PC[0]~6\);

-- Location: LCCOMB_X24_Y20_N18
\PC[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~7_combout\ = (PC(1) & (!\PC[0]~6\)) # (!PC(1) & ((\PC[0]~6\) # (GND)))
-- \PC[1]~8\ = CARRY((!\PC[0]~6\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~6\,
	combout => \PC[1]~7_combout\,
	cout => \PC[1]~8\);

-- Location: LCCOMB_X24_Y20_N20
\PC[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~9_combout\ = (PC(2) & (\PC[1]~8\ $ (GND))) # (!PC(2) & (!\PC[1]~8\ & VCC))
-- \PC[2]~10\ = CARRY((PC(2) & !\PC[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~8\,
	combout => \PC[2]~9_combout\,
	cout => \PC[2]~10\);

-- Location: LCCOMB_X24_Y20_N22
\PC[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~11_combout\ = (PC(3) & (!\PC[2]~10\)) # (!PC(3) & ((\PC[2]~10\) # (GND)))
-- \PC[3]~12\ = CARRY((!\PC[2]~10\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~10\,
	combout => \PC[3]~11_combout\,
	cout => \PC[3]~12\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y20_N0
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (IR(7) & (IR(6) & (IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(6),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X28_Y20_N12
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (IR(7) & (!IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X28_Y24_N1
\enter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LCCOMB_X28_Y20_N28
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\state.s_input~q\ & !\enter~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datac => \state.s_input~q\,
	datad => \enter~input_o\,
	combout => \Selector6~1_combout\);

-- Location: FF_X28_Y20_N29
\state.s_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_input~q\);

-- Location: LCCOMB_X28_Y20_N10
\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~19_combout\);

-- Location: FF_X28_Y20_N11
\state.s_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_output~q\);

-- Location: LCCOMB_X28_Y20_N6
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\state.s_jmz~q\) # ((\state.s_output~q\) # ((\state.s_input~q\ & \enter~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_input~q\,
	datab => \enter~input_o\,
	datac => \state.s_jmz~q\,
	datad => \state.s_output~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X28_Y20_N26
\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!IR(7) & (IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~22_combout\);

-- Location: FF_X28_Y20_N27
\state.s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_dec~q\);

-- Location: FF_X28_Y20_N19
\state.s_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_store~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store2~q\);

-- Location: LCCOMB_X28_Y20_N18
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\state.s_dec~q\) # ((\state.s_add~q\) # ((\state.s_store2~q\) # (\state.s_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_dec~q\,
	datab => \state.s_add~q\,
	datac => \state.s_store2~q\,
	datad => \state.s_load~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (!\Selector5~0_combout\ & (!\Selector5~2_combout\ & !\Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~2_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X29_Y20_N28
\state.s_start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start~feeder_combout\ = \Selector5~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~3_combout\,
	combout => \state.s_start~feeder_combout\);

-- Location: FF_X29_Y20_N29
\state.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start~q\);

-- Location: LCCOMB_X29_Y20_N20
\state.s_start2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start2~0_combout\ = !\state.s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start~q\,
	combout => \state.s_start2~0_combout\);

-- Location: FF_X29_Y20_N21
\state.s_start2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start2~q\);

-- Location: LCCOMB_X29_Y20_N22
\state.s_start3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start3~feeder_combout\ = \state.s_start2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start2~q\,
	combout => \state.s_start3~feeder_combout\);

-- Location: FF_X29_Y20_N23
\state.s_start3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start3~q\);

-- Location: FF_X29_Y20_N17
\state.s_fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_start3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_fetch~q\);

-- Location: LCCOMB_X29_Y20_N10
\state.s_decode~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_decode~feeder_combout\ = \state.s_fetch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_fetch~q\,
	combout => \state.s_decode~feeder_combout\);

-- Location: FF_X29_Y20_N11
\state.s_decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_decode~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode~q\);

-- Location: FF_X28_Y20_N23
\state.s_decode2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_decode~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode2~q\);

-- Location: FF_X28_Y20_N3
\state.s_decode3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_decode2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode3~q\);

-- Location: LCCOMB_X28_Y20_N24
\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~20_combout\);

-- Location: FF_X28_Y20_N25
\state.s_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_add~q\);

-- Location: LCCOMB_X26_Y20_N0
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(1)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(0)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\Add1~0_combout\ & (A(0) $ (VCC))) # (!\Add1~0_combout\ & (A(0) & VCC))
-- \Add1~2\ = CARRY((\Add1~0_combout\ & A(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => A(0),
	datad => VCC,
	combout => \Add1~1_combout\,
	cout => \Add1~2\);

-- Location: LCCOMB_X26_Y20_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (A(1) & ((\Add1~3_combout\ & (\Add1~2\ & VCC)) # (!\Add1~3_combout\ & (!\Add1~2\)))) # (!A(1) & ((\Add1~3_combout\ & (!\Add1~2\)) # (!\Add1~3_combout\ & ((\Add1~2\) # (GND)))))
-- \Add1~5\ = CARRY((A(1) & (!\Add1~3_combout\ & !\Add1~2\)) # (!A(1) & ((!\Add1~2\) # (!\Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => \Add1~3_combout\,
	datad => VCC,
	cin => \Add1~2\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y20_N8
\A[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[1]~1_combout\ = (\state.s_load~q\ & ((\memory|sram|ram_block|auto_generated|q_a\(1)))) # (!\state.s_load~q\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \Add1~4_combout\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \A[1]~1_combout\);

-- Location: IOIBUF_X30_Y24_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X25_Y20_N22
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\state.s_add~q\) # ((\state.s_input~q\) # ((\state.s_dec~q\) # (\state.s_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datab => \state.s_input~q\,
	datac => \state.s_dec~q\,
	datad => \state.s_load~q\,
	combout => \WideOr5~0_combout\);

-- Location: FF_X26_Y20_N9
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[1]~1_combout\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X26_Y20_N2
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(2)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = ((A(2) $ (\Add1~6_combout\ $ (!\Add1~5\)))) # (GND)
-- \Add1~8\ = CARRY((A(2) & ((\Add1~6_combout\) # (!\Add1~5\))) # (!A(2) & (\Add1~6_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(2),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: LCCOMB_X26_Y20_N10
\A[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~2_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(2))) # (!\state.s_load~q\ & ((\Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(2),
	datad => \Add1~7_combout\,
	combout => \A[2]~2_combout\);

-- Location: IOIBUF_X23_Y24_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X26_Y20_N11
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[2]~2_combout\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X25_Y20_N28
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(3)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X26_Y20_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (A(3) & ((\Add1~9_combout\ & (\Add1~8\ & VCC)) # (!\Add1~9_combout\ & (!\Add1~8\)))) # (!A(3) & ((\Add1~9_combout\ & (!\Add1~8\)) # (!\Add1~9_combout\ & ((\Add1~8\) # (GND)))))
-- \Add1~11\ = CARRY((A(3) & (!\Add1~9_combout\ & !\Add1~8\)) # (!A(3) & ((!\Add1~8\) # (!\Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datab => \Add1~9_combout\,
	datad => VCC,
	cin => \Add1~8\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y20_N26
\A[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[3]~3_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(3))) # (!\state.s_load~q\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(3),
	datad => \Add1~10_combout\,
	combout => \A[3]~3_combout\);

-- Location: IOIBUF_X18_Y24_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X25_Y20_N27
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[3]~3_combout\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X28_Y20_N8
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(5)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(4)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X26_Y20_N20
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = ((A(4) $ (\Add1~12_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~14\ = CARRY((A(4) & ((\Add1~12_combout\) # (!\Add1~11\))) # (!A(4) & (\Add1~12_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X26_Y20_N22
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (A(5) & ((\Add1~15_combout\ & (\Add1~14\ & VCC)) # (!\Add1~15_combout\ & (!\Add1~14\)))) # (!A(5) & ((\Add1~15_combout\ & (!\Add1~14\)) # (!\Add1~15_combout\ & ((\Add1~14\) # (GND)))))
-- \Add1~17\ = CARRY((A(5) & (!\Add1~15_combout\ & !\Add1~14\)) # (!A(5) & ((!\Add1~14\) # (!\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(5),
	datab => \Add1~15_combout\,
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X26_Y20_N4
\A[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[5]~5_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(5))) # (!\state.s_load~q\ & ((\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(5),
	datad => \Add1~16_combout\,
	combout => \A[5]~5_combout\);

-- Location: IOIBUF_X23_Y24_N15
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X26_Y20_N5
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[5]~5_combout\,
	asdata => \input[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LCCOMB_X28_Y20_N2
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(6)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(6),
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X26_Y20_N24
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = ((A(6) $ (\Add1~18_combout\ $ (!\Add1~17\)))) # (GND)
-- \Add1~20\ = CARRY((A(6) & ((\Add1~18_combout\) # (!\Add1~17\))) # (!A(6) & (\Add1~18_combout\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(6),
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X26_Y20_N6
\A[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[6]~6_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(6))) # (!\state.s_load~q\ & ((\Add1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(6),
	datad => \Add1~19_combout\,
	combout => \A[6]~6_combout\);

-- Location: IOIBUF_X23_Y24_N1
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: FF_X26_Y20_N7
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[6]~6_combout\,
	asdata => \input[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X25_Y20_N14
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(7)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(7),
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = A(7) $ (\Add1~20\ $ (\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => A(7),
	datad => \Add1~21_combout\,
	cin => \Add1~20\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X26_Y20_N28
\A[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[7]~7_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(7))) # (!\state.s_load~q\ & ((\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(7),
	datad => \Add1~22_combout\,
	combout => \A[7]~7_combout\);

-- Location: IOIBUF_X16_Y24_N8
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: FF_X26_Y20_N29
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[7]~7_combout\,
	asdata => \input[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: M9K_X27_Y20_N0
\memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000C5001FC00A000180005D0007C003F002800060001740080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program_lab11.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:memory|altram:sram|altsyncram:ram_block|altsyncram_u8a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemWr~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N16
\A[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[4]~4_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(4))) # (!\state.s_load~q\ & ((\Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(4),
	datad => \Add1~13_combout\,
	combout => \A[4]~4_combout\);

-- Location: IOIBUF_X18_Y24_N15
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: FF_X25_Y20_N17
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[4]~4_combout\,
	asdata => \input[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X28_Y20_N9
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X28_Y20_N4
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~24_combout\);

-- Location: FF_X28_Y20_N5
\state.s_jmz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_jmz~q\);

-- Location: LCCOMB_X24_Y20_N2
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\state.s_jmz~q\) # (\state.s_fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_jmz~q\,
	datad => \state.s_fetch~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X24_Y20_N23
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~11_combout\,
	asdata => IR(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmz~q\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X24_Y20_N24
\PC[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~13_combout\ = \PC[3]~12\ $ (!PC(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(4),
	cin => \PC[3]~12\,
	combout => \PC[4]~13_combout\);

-- Location: LCCOMB_X25_Y20_N12
\IR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[4]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \IR[4]~feeder_combout\);

-- Location: FF_X25_Y20_N13
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: FF_X24_Y20_N25
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~13_combout\,
	asdata => IR(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmz~q\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X24_Y20_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_decode~q\ & ((IR(4)))) # (!\state.s_decode~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => IR(4),
	datad => \state.s_decode~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X29_Y20_N4
\memory_address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_address[0]~0_combout\ = (!\reset~input_o\ & ((\state.s_decode~q\) # (!\state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_decode~q\,
	datab => \reset~input_o\,
	datad => \state.s_start~q\,
	combout => \memory_address[0]~0_combout\);

-- Location: FF_X24_Y20_N9
\memory_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(4));

-- Location: LCCOMB_X25_Y20_N10
\IR[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[3]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \IR[3]~feeder_combout\);

-- Location: FF_X25_Y20_N11
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X24_Y20_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_decode~q\ & (IR(3))) # (!\state.s_decode~q\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(3),
	datac => PC(3),
	datad => \state.s_decode~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X24_Y20_N11
\memory_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(3));

-- Location: LCCOMB_X25_Y20_N0
\IR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[2]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \IR[2]~feeder_combout\);

-- Location: FF_X25_Y20_N1
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: FF_X24_Y20_N21
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~9_combout\,
	asdata => IR(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmz~q\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X24_Y20_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_decode~q\ & ((IR(2)))) # (!\state.s_decode~q\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datac => IR(2),
	datad => \state.s_decode~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X24_Y20_N5
\memory_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(2));

-- Location: LCCOMB_X25_Y20_N30
\IR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[1]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \IR[1]~feeder_combout\);

-- Location: FF_X25_Y20_N31
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: FF_X24_Y20_N19
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~7_combout\,
	asdata => IR(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmz~q\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X24_Y20_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_decode~q\ & ((IR(1)))) # (!\state.s_decode~q\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datac => IR(1),
	datad => \state.s_decode~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X24_Y20_N27
\memory_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(1));

-- Location: LCCOMB_X25_Y20_N24
\IR[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[0]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \IR[0]~feeder_combout\);

-- Location: FF_X25_Y20_N25
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: FF_X24_Y20_N17
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~5_combout\,
	asdata => IR(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmz~q\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X24_Y20_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_decode~q\ & ((IR(0)))) # (!\state.s_decode~q\ & (PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datac => IR(0),
	datad => \state.s_decode~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X24_Y20_N13
\memory_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(0));

-- Location: FF_X28_Y20_N1
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X28_Y20_N30
\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~23_combout\);

-- Location: FF_X28_Y20_N31
\state.s_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store~q\);

-- Location: LCCOMB_X28_Y20_N16
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s_store~q\) # ((\MemWr~q\ & !\state.s_store2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_store~q\,
	datac => \MemWr~q\,
	datad => \state.s_store2~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X28_Y20_N17
MemWr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemWr~q\);

-- Location: FF_X28_Y20_N15
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X28_Y20_N20
\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!IR(7) & (!IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~21_combout\);

-- Location: FF_X28_Y20_N21
\state.s_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_load~q\);

-- Location: LCCOMB_X25_Y20_N20
\A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(0))) # (!\state.s_load~q\ & ((\Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(0),
	datad => \Add1~1_combout\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X16_Y24_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: FF_X25_Y20_N21
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[0]~0_combout\,
	asdata => \input[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X29_Y20_N6
\output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[0]~0_combout\ = (!\reset~input_o\ & \state.s_output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.s_output~q\,
	combout => \output[0]~0_combout\);

-- Location: FF_X29_Y20_N5
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => A(0),
	sload => VCC,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X30_Y20_N16
\output[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = A(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: FF_X30_Y20_N17
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[1]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X29_Y20_N2
\output[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[2]~reg0feeder_combout\ = A(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(2),
	combout => \output[2]~reg0feeder_combout\);

-- Location: FF_X29_Y20_N3
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[2]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X29_Y20_N12
\output[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = A(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A(3),
	combout => \output[3]~reg0feeder_combout\);

-- Location: FF_X29_Y20_N13
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[3]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: LCCOMB_X29_Y20_N26
\output[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[4]~reg0feeder_combout\ = A(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(4),
	combout => \output[4]~reg0feeder_combout\);

-- Location: FF_X29_Y20_N27
\output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[4]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_q\);

-- Location: LCCOMB_X30_Y20_N10
\output[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[5]~reg0feeder_combout\ = A(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A(5),
	combout => \output[5]~reg0feeder_combout\);

-- Location: FF_X30_Y20_N11
\output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[5]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~reg0_q\);

-- Location: LCCOMB_X30_Y20_N4
\output[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[6]~reg0feeder_combout\ = A(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(6),
	combout => \output[6]~reg0feeder_combout\);

-- Location: FF_X30_Y20_N5
\output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[6]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~reg0_q\);

-- Location: LCCOMB_X29_Y20_N24
\output[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[7]~reg0feeder_combout\ = A(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(7),
	combout => \output[7]~reg0feeder_combout\);

-- Location: FF_X29_Y20_N25
\output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[7]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[7]~reg0_q\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


