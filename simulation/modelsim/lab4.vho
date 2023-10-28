-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/27/2023 00:53:13"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	write_enable : IN std_logic;
	write_data : IN std_logic_vector(31 DOWNTO 0);
	address : IN std_logic;
	irq : OUT std_logic;
	out_wave_export : OUT std_logic
	);
END lab4;

-- Design Ports Information
-- irq	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_wave_export	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_enable	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[18]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[21]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[20]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[17]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[16]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[15]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[7]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[6]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[5]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[12]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[11]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[9]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[8]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[25]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[28]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[27]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[26]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[24]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[23]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[22]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[31]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[30]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[29]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_write_enable : std_logic;
SIGNAL ww_write_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_address : std_logic;
SIGNAL ww_irq : std_logic;
SIGNAL ww_out_wave_export : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \write_enable~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \write_data[30]~input_o\ : std_logic;
SIGNAL \address~input_o\ : std_logic;
SIGNAL \max_angle[31]~0_combout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \current_angle[4]~4_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \current_angle[6]~5_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \current_angle[8]~8_combout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \current_angle[9]~7_combout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \current_angle[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \current_angle[14]~6_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \current_angle[15]~3_combout\ : std_logic;
SIGNAL \current_angle[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \current_angle[31]~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[29]~input_o\ : std_logic;
SIGNAL \current_angle[29]~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[31]~input_o\ : std_logic;
SIGNAL \LessThan1~23_combout\ : std_logic;
SIGNAL \LessThan1~22_combout\ : std_logic;
SIGNAL \write_data[9]~input_o\ : std_logic;
SIGNAL \max_angle[9]~5_combout\ : std_logic;
SIGNAL \write_data[8]~input_o\ : std_logic;
SIGNAL \write_data[10]~input_o\ : std_logic;
SIGNAL \max_angle[10]~6_combout\ : std_logic;
SIGNAL \write_data[11]~input_o\ : std_logic;
SIGNAL \write_data[12]~input_o\ : std_logic;
SIGNAL \LessThan1~29_combout\ : std_logic;
SIGNAL \write_data[14]~input_o\ : std_logic;
SIGNAL \write_data[13]~input_o\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~27_combout\ : std_logic;
SIGNAL \LessThan1~28_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \write_data[15]~input_o\ : std_logic;
SIGNAL \max_angle[15]~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \write_data[7]~input_o\ : std_logic;
SIGNAL \max_angle[7]~3_combout\ : std_logic;
SIGNAL \write_data[5]~input_o\ : std_logic;
SIGNAL \max_angle[5]~4_combout\ : std_logic;
SIGNAL \write_data[6]~input_o\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \write_data[4]~input_o\ : std_logic;
SIGNAL \write_data[2]~input_o\ : std_logic;
SIGNAL \write_data[1]~input_o\ : std_logic;
SIGNAL \write_data[3]~input_o\ : std_logic;
SIGNAL \write_data[0]~input_o\ : std_logic;
SIGNAL \current_angle[3]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \write_data[18]~input_o\ : std_logic;
SIGNAL \write_data[17]~input_o\ : std_logic;
SIGNAL \current_angle[18]~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[19]~input_o\ : std_logic;
SIGNAL \write_data[21]~input_o\ : std_logic;
SIGNAL \write_data[20]~input_o\ : std_logic;
SIGNAL \current_angle[19]~DUPLICATE_q\ : std_logic;
SIGNAL \current_angle[20]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \write_data[16]~input_o\ : std_logic;
SIGNAL \max_angle[16]~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \current_angle[25]~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[22]~input_o\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \current_angle[28]~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[27]~input_o\ : std_logic;
SIGNAL \write_data[28]~input_o\ : std_logic;
SIGNAL \write_data[26]~input_o\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \write_data[25]~input_o\ : std_logic;
SIGNAL \max_angle[25]~feeder_combout\ : std_logic;
SIGNAL \write_data[23]~input_o\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \write_data[24]~input_o\ : std_logic;
SIGNAL \max_angle[24]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~19_combout\ : std_logic;
SIGNAL \LessThan1~25_combout\ : std_logic;
SIGNAL \LessThan1~26_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \LessThan1~21_combout\ : std_logic;
SIGNAL \LessThan1~34_combout\ : std_logic;
SIGNAL \LessThan1~33_combout\ : std_logic;
SIGNAL \LessThan1~31_combout\ : std_logic;
SIGNAL \LessThan1~32_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~24_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.INT_RIGHT~q\ : std_logic;
SIGNAL \min_angle[31]~0_combout\ : std_logic;
SIGNAL \LessThan2~25_combout\ : std_logic;
SIGNAL \min_angle[31]~feeder_combout\ : std_logic;
SIGNAL \LessThan2~24_combout\ : std_logic;
SIGNAL \LessThan2~27_combout\ : std_logic;
SIGNAL \LessThan2~26_combout\ : std_logic;
SIGNAL \LessThan2~28_combout\ : std_logic;
SIGNAL \LessThan2~30_combout\ : std_logic;
SIGNAL \LessThan2~31_combout\ : std_logic;
SIGNAL \LessThan2~29_combout\ : std_logic;
SIGNAL \LessThan2~32_combout\ : std_logic;
SIGNAL \min_angle[19]~feeder_combout\ : std_logic;
SIGNAL \min_angle[20]~feeder_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \min_angle[24]~feeder_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \LessThan2~20_combout\ : std_logic;
SIGNAL \LessThan2~21_combout\ : std_logic;
SIGNAL \LessThan2~22_combout\ : std_logic;
SIGNAL \LessThan2~23_combout\ : std_logic;
SIGNAL \min_angle[8]~3_combout\ : std_logic;
SIGNAL \min_angle[9]~4_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \min_angle[15]~5_combout\ : std_logic;
SIGNAL \current_angle[16]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan2~35_combout\ : std_logic;
SIGNAL \min_angle[14]~6_combout\ : std_logic;
SIGNAL \LessThan2~34_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \min_angle[6]~1_combout\ : std_logic;
SIGNAL \min_angle[5]~feeder_combout\ : std_logic;
SIGNAL \min_angle[4]~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~33_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.SWEEP_LEFT~q\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \periodCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \periodCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \periodCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \periodCount[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \periodCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \periodCount[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \periodCount[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \periodCount[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \periodCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \periodCount[30]~DUPLICATE_q\ : std_logic;
SIGNAL \periodCount[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \current_angle[3]~2_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \current_angle[21]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan2~19_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.INT_LEFT~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.SWEEP_RIGHT~q\ : std_logic;
SIGNAL \irq_process~0_combout\ : std_logic;
SIGNAL \irq~reg0_q\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \current_angle[22]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \out_wave_export~reg0_q\ : std_logic;
SIGNAL periodCount : std_logic_vector(31 DOWNTO 0);
SIGNAL current_angle : std_logic_vector(31 DOWNTO 0);
SIGNAL max_angle : std_logic_vector(31 DOWNTO 0);
SIGNAL min_angle : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_max_angle : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_current_angle : std_logic_vector(31 DOWNTO 3);
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SWEEP_RIGHT~q\ : std_logic;
SIGNAL \ALT_INV_current_state.INT_RIGHT~q\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL ALT_INV_periodCount : std_logic_vector(31 DOWNTO 4);
SIGNAL \ALT_INV_current_angle[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_write_data[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_data[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_address~input_o\ : std_logic;
SIGNAL \ALT_INV_write_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan2~35_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~33_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~33_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~27_combout\ : std_logic;
SIGNAL ALT_INV_min_angle : std_logic_vector(31 DOWNTO 3);
SIGNAL \ALT_INV_LessThan2~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SWEEP_LEFT~q\ : std_logic;
SIGNAL \ALT_INV_current_state.INT_LEFT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
ww_write_enable <= write_enable;
ww_write_data <= write_data;
ww_address <= address;
irq <= ww_irq;
out_wave_export <= ww_out_wave_export;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_max_angle(8) <= NOT max_angle(8);
ALT_INV_current_angle(8) <= NOT current_angle(8);
ALT_INV_max_angle(10) <= NOT max_angle(10);
ALT_INV_current_angle(10) <= NOT current_angle(10);
ALT_INV_max_angle(9) <= NOT max_angle(9);
ALT_INV_current_angle(9) <= NOT current_angle(9);
ALT_INV_max_angle(11) <= NOT max_angle(11);
ALT_INV_current_angle(11) <= NOT current_angle(11);
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
ALT_INV_max_angle(12) <= NOT max_angle(12);
ALT_INV_current_angle(12) <= NOT current_angle(12);
ALT_INV_max_angle(13) <= NOT max_angle(13);
ALT_INV_current_angle(13) <= NOT current_angle(13);
ALT_INV_max_angle(14) <= NOT max_angle(14);
ALT_INV_current_angle(14) <= NOT current_angle(14);
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
ALT_INV_max_angle(0) <= NOT max_angle(0);
ALT_INV_max_angle(1) <= NOT max_angle(1);
ALT_INV_max_angle(2) <= NOT max_angle(2);
ALT_INV_current_angle(3) <= NOT current_angle(3);
ALT_INV_max_angle(3) <= NOT max_angle(3);
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
ALT_INV_max_angle(5) <= NOT max_angle(5);
ALT_INV_current_angle(5) <= NOT current_angle(5);
ALT_INV_max_angle(6) <= NOT max_angle(6);
ALT_INV_current_angle(6) <= NOT current_angle(6);
ALT_INV_max_angle(7) <= NOT max_angle(7);
ALT_INV_current_angle(7) <= NOT current_angle(7);
ALT_INV_max_angle(4) <= NOT max_angle(4);
ALT_INV_current_angle(4) <= NOT current_angle(4);
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
ALT_INV_max_angle(15) <= NOT max_angle(15);
ALT_INV_current_angle(15) <= NOT current_angle(15);
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
ALT_INV_max_angle(16) <= NOT max_angle(16);
ALT_INV_current_angle(16) <= NOT current_angle(16);
ALT_INV_max_angle(17) <= NOT max_angle(17);
ALT_INV_current_angle(17) <= NOT current_angle(17);
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_max_angle(19) <= NOT max_angle(19);
ALT_INV_current_angle(19) <= NOT current_angle(19);
ALT_INV_max_angle(20) <= NOT max_angle(20);
ALT_INV_current_angle(20) <= NOT current_angle(20);
ALT_INV_max_angle(21) <= NOT max_angle(21);
ALT_INV_current_angle(21) <= NOT current_angle(21);
ALT_INV_max_angle(18) <= NOT max_angle(18);
ALT_INV_current_angle(18) <= NOT current_angle(18);
\ALT_INV_current_state.SWEEP_RIGHT~q\ <= NOT \current_state.SWEEP_RIGHT~q\;
\ALT_INV_current_state.INT_RIGHT~q\ <= NOT \current_state.INT_RIGHT~q\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
ALT_INV_periodCount(25) <= NOT periodCount(25);
ALT_INV_periodCount(26) <= NOT periodCount(26);
ALT_INV_periodCount(27) <= NOT periodCount(27);
ALT_INV_periodCount(29) <= NOT periodCount(29);
ALT_INV_periodCount(30) <= NOT periodCount(30);
ALT_INV_periodCount(31) <= NOT periodCount(31);
ALT_INV_periodCount(28) <= NOT periodCount(28);
ALT_INV_periodCount(18) <= NOT periodCount(18);
ALT_INV_periodCount(19) <= NOT periodCount(19);
ALT_INV_periodCount(20) <= NOT periodCount(20);
ALT_INV_periodCount(22) <= NOT periodCount(22);
ALT_INV_periodCount(23) <= NOT periodCount(23);
ALT_INV_periodCount(24) <= NOT periodCount(24);
ALT_INV_periodCount(21) <= NOT periodCount(21);
ALT_INV_periodCount(7) <= NOT periodCount(7);
ALT_INV_periodCount(9) <= NOT periodCount(9);
ALT_INV_periodCount(10) <= NOT periodCount(10);
ALT_INV_periodCount(8) <= NOT periodCount(8);
ALT_INV_periodCount(4) <= NOT periodCount(4);
ALT_INV_periodCount(5) <= NOT periodCount(5);
ALT_INV_periodCount(6) <= NOT periodCount(6);
ALT_INV_periodCount(11) <= NOT periodCount(11);
ALT_INV_periodCount(12) <= NOT periodCount(12);
ALT_INV_periodCount(13) <= NOT periodCount(13);
ALT_INV_periodCount(15) <= NOT periodCount(15);
ALT_INV_periodCount(16) <= NOT periodCount(16);
ALT_INV_periodCount(17) <= NOT periodCount(17);
ALT_INV_periodCount(14) <= NOT periodCount(14);
\ALT_INV_current_angle[29]~DUPLICATE_q\ <= NOT \current_angle[29]~DUPLICATE_q\;
\ALT_INV_current_angle[31]~DUPLICATE_q\ <= NOT \current_angle[31]~DUPLICATE_q\;
\ALT_INV_current_angle[22]~DUPLICATE_q\ <= NOT \current_angle[22]~DUPLICATE_q\;
\ALT_INV_current_angle[28]~DUPLICATE_q\ <= NOT \current_angle[28]~DUPLICATE_q\;
\ALT_INV_current_angle[25]~DUPLICATE_q\ <= NOT \current_angle[25]~DUPLICATE_q\;
\ALT_INV_current_angle[10]~DUPLICATE_q\ <= NOT \current_angle[10]~DUPLICATE_q\;
\ALT_INV_current_angle[3]~DUPLICATE_q\ <= NOT \current_angle[3]~DUPLICATE_q\;
\ALT_INV_current_angle[15]~DUPLICATE_q\ <= NOT \current_angle[15]~DUPLICATE_q\;
\ALT_INV_current_angle[16]~DUPLICATE_q\ <= NOT \current_angle[16]~DUPLICATE_q\;
\ALT_INV_current_angle[19]~DUPLICATE_q\ <= NOT \current_angle[19]~DUPLICATE_q\;
\ALT_INV_current_angle[20]~DUPLICATE_q\ <= NOT \current_angle[20]~DUPLICATE_q\;
\ALT_INV_current_angle[21]~DUPLICATE_q\ <= NOT \current_angle[21]~DUPLICATE_q\;
\ALT_INV_current_angle[18]~DUPLICATE_q\ <= NOT \current_angle[18]~DUPLICATE_q\;
\ALT_INV_periodCount[25]~DUPLICATE_q\ <= NOT \periodCount[25]~DUPLICATE_q\;
\ALT_INV_periodCount[26]~DUPLICATE_q\ <= NOT \periodCount[26]~DUPLICATE_q\;
\ALT_INV_periodCount[30]~DUPLICATE_q\ <= NOT \periodCount[30]~DUPLICATE_q\;
\ALT_INV_periodCount[28]~DUPLICATE_q\ <= NOT \periodCount[28]~DUPLICATE_q\;
\ALT_INV_periodCount[18]~DUPLICATE_q\ <= NOT \periodCount[18]~DUPLICATE_q\;
\ALT_INV_periodCount[21]~DUPLICATE_q\ <= NOT \periodCount[21]~DUPLICATE_q\;
\ALT_INV_periodCount[11]~DUPLICATE_q\ <= NOT \periodCount[11]~DUPLICATE_q\;
\ALT_INV_periodCount[12]~DUPLICATE_q\ <= NOT \periodCount[12]~DUPLICATE_q\;
\ALT_INV_periodCount[13]~DUPLICATE_q\ <= NOT \periodCount[13]~DUPLICATE_q\;
\ALT_INV_periodCount[15]~DUPLICATE_q\ <= NOT \periodCount[15]~DUPLICATE_q\;
\ALT_INV_periodCount[17]~DUPLICATE_q\ <= NOT \periodCount[17]~DUPLICATE_q\;
\ALT_INV_write_data[31]~input_o\ <= NOT \write_data[31]~input_o\;
\ALT_INV_write_data[24]~input_o\ <= NOT \write_data[24]~input_o\;
\ALT_INV_write_data[25]~input_o\ <= NOT \write_data[25]~input_o\;
\ALT_INV_write_data[8]~input_o\ <= NOT \write_data[8]~input_o\;
\ALT_INV_write_data[10]~input_o\ <= NOT \write_data[10]~input_o\;
\ALT_INV_write_data[9]~input_o\ <= NOT \write_data[9]~input_o\;
\ALT_INV_write_data[14]~input_o\ <= NOT \write_data[14]~input_o\;
\ALT_INV_write_data[5]~input_o\ <= NOT \write_data[5]~input_o\;
\ALT_INV_write_data[6]~input_o\ <= NOT \write_data[6]~input_o\;
\ALT_INV_write_data[7]~input_o\ <= NOT \write_data[7]~input_o\;
\ALT_INV_write_data[4]~input_o\ <= NOT \write_data[4]~input_o\;
\ALT_INV_write_data[15]~input_o\ <= NOT \write_data[15]~input_o\;
\ALT_INV_write_data[16]~input_o\ <= NOT \write_data[16]~input_o\;
\ALT_INV_write_data[19]~input_o\ <= NOT \write_data[19]~input_o\;
\ALT_INV_write_data[20]~input_o\ <= NOT \write_data[20]~input_o\;
\ALT_INV_address~input_o\ <= NOT \address~input_o\;
\ALT_INV_write_enable~input_o\ <= NOT \write_enable~input_o\;
\ALT_INV_LessThan2~35_combout\ <= NOT \LessThan2~35_combout\;
\ALT_INV_LessThan2~34_combout\ <= NOT \LessThan2~34_combout\;
\ALT_INV_LessThan1~34_combout\ <= NOT \LessThan1~34_combout\;
\ALT_INV_LessThan1~33_combout\ <= NOT \LessThan1~33_combout\;
\ALT_INV_LessThan1~32_combout\ <= NOT \LessThan1~32_combout\;
\ALT_INV_LessThan1~31_combout\ <= NOT \LessThan1~31_combout\;
\ALT_INV_LessThan1~30_combout\ <= NOT \LessThan1~30_combout\;
\ALT_INV_LessThan1~29_combout\ <= NOT \LessThan1~29_combout\;
\ALT_INV_LessThan1~28_combout\ <= NOT \LessThan1~28_combout\;
\ALT_INV_LessThan1~27_combout\ <= NOT \LessThan1~27_combout\;
\ALT_INV_LessThan1~26_combout\ <= NOT \LessThan1~26_combout\;
\ALT_INV_LessThan1~25_combout\ <= NOT \LessThan1~25_combout\;
\ALT_INV_LessThan2~33_combout\ <= NOT \LessThan2~33_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan0~31_combout\ <= NOT \LessThan0~31_combout\;
\ALT_INV_LessThan0~30_combout\ <= NOT \LessThan0~30_combout\;
\ALT_INV_LessThan0~29_combout\ <= NOT \LessThan0~29_combout\;
\ALT_INV_LessThan0~28_combout\ <= NOT \LessThan0~28_combout\;
\ALT_INV_LessThan0~27_combout\ <= NOT \LessThan0~27_combout\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_LessThan2~32_combout\ <= NOT \LessThan2~32_combout\;
\ALT_INV_LessThan2~31_combout\ <= NOT \LessThan2~31_combout\;
\ALT_INV_LessThan2~30_combout\ <= NOT \LessThan2~30_combout\;
\ALT_INV_LessThan2~29_combout\ <= NOT \LessThan2~29_combout\;
\ALT_INV_LessThan2~28_combout\ <= NOT \LessThan2~28_combout\;
\ALT_INV_LessThan2~27_combout\ <= NOT \LessThan2~27_combout\;
ALT_INV_min_angle(25) <= NOT min_angle(25);
\ALT_INV_LessThan2~26_combout\ <= NOT \LessThan2~26_combout\;
ALT_INV_min_angle(26) <= NOT min_angle(26);
\ALT_INV_LessThan2~25_combout\ <= NOT \LessThan2~25_combout\;
ALT_INV_min_angle(27) <= NOT min_angle(27);
\ALT_INV_LessThan2~24_combout\ <= NOT \LessThan2~24_combout\;
ALT_INV_min_angle(29) <= NOT min_angle(29);
ALT_INV_min_angle(30) <= NOT min_angle(30);
ALT_INV_min_angle(31) <= NOT min_angle(31);
ALT_INV_min_angle(28) <= NOT min_angle(28);
\ALT_INV_LessThan2~23_combout\ <= NOT \LessThan2~23_combout\;
\ALT_INV_LessThan2~22_combout\ <= NOT \LessThan2~22_combout\;
\ALT_INV_LessThan2~21_combout\ <= NOT \LessThan2~21_combout\;
\ALT_INV_LessThan2~20_combout\ <= NOT \LessThan2~20_combout\;
\ALT_INV_LessThan2~19_combout\ <= NOT \LessThan2~19_combout\;
\ALT_INV_LessThan2~18_combout\ <= NOT \LessThan2~18_combout\;
ALT_INV_min_angle(18) <= NOT min_angle(18);
\ALT_INV_LessThan2~17_combout\ <= NOT \LessThan2~17_combout\;
ALT_INV_min_angle(19) <= NOT min_angle(19);
\ALT_INV_LessThan2~16_combout\ <= NOT \LessThan2~16_combout\;
ALT_INV_min_angle(20) <= NOT min_angle(20);
\ALT_INV_LessThan2~15_combout\ <= NOT \LessThan2~15_combout\;
ALT_INV_min_angle(22) <= NOT min_angle(22);
ALT_INV_min_angle(23) <= NOT min_angle(23);
ALT_INV_min_angle(24) <= NOT min_angle(24);
ALT_INV_min_angle(21) <= NOT min_angle(21);
\ALT_INV_LessThan2~14_combout\ <= NOT \LessThan2~14_combout\;
\ALT_INV_LessThan2~13_combout\ <= NOT \LessThan2~13_combout\;
\ALT_INV_LessThan2~12_combout\ <= NOT \LessThan2~12_combout\;
\ALT_INV_LessThan2~11_combout\ <= NOT \LessThan2~11_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
ALT_INV_min_angle(11) <= NOT min_angle(11);
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
ALT_INV_min_angle(13) <= NOT min_angle(13);
ALT_INV_min_angle(12) <= NOT min_angle(12);
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
ALT_INV_min_angle(14) <= NOT min_angle(14);
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
ALT_INV_min_angle(15) <= NOT min_angle(15);
ALT_INV_min_angle(16) <= NOT min_angle(16);
ALT_INV_min_angle(17) <= NOT min_angle(17);
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
ALT_INV_min_angle(7) <= NOT min_angle(7);
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
ALT_INV_min_angle(9) <= NOT min_angle(9);
ALT_INV_min_angle(10) <= NOT min_angle(10);
ALT_INV_min_angle(8) <= NOT min_angle(8);
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_min_angle(3) <= NOT min_angle(3);
ALT_INV_min_angle(4) <= NOT min_angle(4);
ALT_INV_min_angle(5) <= NOT min_angle(5);
ALT_INV_min_angle(6) <= NOT min_angle(6);
\ALT_INV_current_state.SWEEP_LEFT~q\ <= NOT \current_state.SWEEP_LEFT~q\;
\ALT_INV_current_state.INT_LEFT~q\ <= NOT \current_state.INT_LEFT~q\;
\ALT_INV_LessThan1~24_combout\ <= NOT \LessThan1~24_combout\;
\ALT_INV_LessThan1~23_combout\ <= NOT \LessThan1~23_combout\;
\ALT_INV_LessThan1~22_combout\ <= NOT \LessThan1~22_combout\;
ALT_INV_max_angle(29) <= NOT max_angle(29);
ALT_INV_current_angle(29) <= NOT current_angle(29);
ALT_INV_max_angle(30) <= NOT max_angle(30);
ALT_INV_current_angle(30) <= NOT current_angle(30);
ALT_INV_max_angle(31) <= NOT max_angle(31);
ALT_INV_current_angle(31) <= NOT current_angle(31);
\ALT_INV_LessThan1~21_combout\ <= NOT \LessThan1~21_combout\;
\ALT_INV_LessThan1~20_combout\ <= NOT \LessThan1~20_combout\;
\ALT_INV_LessThan1~19_combout\ <= NOT \LessThan1~19_combout\;
\ALT_INV_LessThan1~18_combout\ <= NOT \LessThan1~18_combout\;
ALT_INV_max_angle(22) <= NOT max_angle(22);
ALT_INV_current_angle(22) <= NOT current_angle(22);
\ALT_INV_LessThan1~17_combout\ <= NOT \LessThan1~17_combout\;
ALT_INV_max_angle(23) <= NOT max_angle(23);
ALT_INV_current_angle(23) <= NOT current_angle(23);
\ALT_INV_LessThan1~16_combout\ <= NOT \LessThan1~16_combout\;
ALT_INV_max_angle(24) <= NOT max_angle(24);
ALT_INV_current_angle(24) <= NOT current_angle(24);
\ALT_INV_LessThan1~15_combout\ <= NOT \LessThan1~15_combout\;
ALT_INV_max_angle(26) <= NOT max_angle(26);
ALT_INV_current_angle(26) <= NOT current_angle(26);
ALT_INV_max_angle(27) <= NOT max_angle(27);
ALT_INV_current_angle(27) <= NOT current_angle(27);
ALT_INV_max_angle(28) <= NOT max_angle(28);
ALT_INV_current_angle(28) <= NOT current_angle(28);
ALT_INV_max_angle(25) <= NOT max_angle(25);
ALT_INV_current_angle(25) <= NOT current_angle(25);
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;

-- Location: IOOBUF_X52_Y0_N2
\irq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \irq~reg0_q\,
	devoe => ww_devoe,
	o => ww_irq);

-- Location: IOOBUF_X56_Y0_N19
\out_wave_export~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_wave_export~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_wave_export);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X50_Y0_N92
\write_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_enable,
	o => \write_enable~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\write_data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(30),
	o => \write_data[30]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\address~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address,
	o => \address~input_o\);

-- Location: MLABCELL_X47_Y2_N15
\max_angle[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[31]~0_combout\ = ( !\address~input_o\ & ( \write_enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_write_enable~input_o\,
	dataf => \ALT_INV_address~input_o\,
	combout => \max_angle[31]~0_combout\);

-- Location: FF_X47_Y2_N53
\max_angle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[30]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(30));

-- Location: FF_X43_Y2_N56
\current_angle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(31));

-- Location: LABCELL_X43_Y3_N30
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( current_angle(3) ) + ( VCC ) + ( !VCC ))
-- \Add1~46\ = CARRY(( current_angle(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(3),
	cin => GND,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X43_Y3_N32
\current_angle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(3));

-- Location: LABCELL_X43_Y3_N33
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(4) ) + ( \Add1~46\ ))
-- \Add1~30\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(4) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(4),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~46\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X42_Y3_N33
\current_angle[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[4]~4_combout\ = ( !\Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \current_angle[4]~4_combout\);

-- Location: FF_X43_Y3_N5
\current_angle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \current_angle[4]~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(4));

-- Location: LABCELL_X43_Y3_N36
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( current_angle(5) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~30\ ))
-- \Add1~42\ = CARRY(( current_angle(5) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(5),
	cin => \Add1~30\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X43_Y3_N38
\current_angle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(5));

-- Location: LABCELL_X43_Y3_N39
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(6) ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(6) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(6),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X43_Y3_N6
\current_angle[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[6]~5_combout\ = ( !\Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \current_angle[6]~5_combout\);

-- Location: FF_X43_Y3_N8
\current_angle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[6]~5_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(6));

-- Location: LABCELL_X43_Y3_N42
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\current_state.SWEEP_RIGHT~q\ ) + ( current_angle(7) ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( !\current_state.SWEEP_RIGHT~q\ ) + ( current_angle(7) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(7),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X43_Y3_N44
\current_angle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(7));

-- Location: LABCELL_X43_Y3_N45
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(8) ) + ( \Add1~34\ ))
-- \Add1~74\ = CARRY(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(8) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(8),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~34\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: LABCELL_X43_Y3_N9
\current_angle[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[8]~8_combout\ = !\Add1~73_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~73_sumout\,
	combout => \current_angle[8]~8_combout\);

-- Location: FF_X43_Y3_N11
\current_angle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[8]~8_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(8));

-- Location: LABCELL_X43_Y3_N48
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(9) ) + ( \Add1~74\ ))
-- \Add1~66\ = CARRY(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(9) ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(9),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~74\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: LABCELL_X46_Y3_N15
\current_angle[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[9]~7_combout\ = ( !\Add1~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~65_sumout\,
	combout => \current_angle[9]~7_combout\);

-- Location: FF_X46_Y3_N16
\current_angle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[9]~7_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(9));

-- Location: LABCELL_X43_Y3_N51
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[10]~DUPLICATE_q\ ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[10]~DUPLICATE_q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[10]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X43_Y3_N52
\current_angle[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[10]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N54
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( current_angle(11) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~70\ ))
-- \Add1~62\ = CARRY(( current_angle(11) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(11),
	cin => \Add1~70\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X43_Y3_N56
\current_angle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(11));

-- Location: LABCELL_X43_Y3_N57
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( current_angle(12) ) + ( !\current_state.SWEEP_RIGHT~q\ ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( current_angle(12) ) + ( !\current_state.SWEEP_RIGHT~q\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(12),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X43_Y3_N59
\current_angle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(12));

-- Location: LABCELL_X43_Y2_N0
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( current_angle(13) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( current_angle(13) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(13),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X43_Y2_N2
\current_angle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(13));

-- Location: LABCELL_X43_Y2_N3
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !current_angle(14) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( !current_angle(14) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(14),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X45_Y2_N12
\current_angle[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[14]~6_combout\ = ( !\Add1~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \current_angle[14]~6_combout\);

-- Location: FF_X45_Y2_N13
\current_angle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[14]~6_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(14));

-- Location: LABCELL_X43_Y2_N6
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\current_angle[15]~DUPLICATE_q\ ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~50\ ))
-- \Add1~26\ = CARRY(( !\current_angle[15]~DUPLICATE_q\ ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_angle[15]~DUPLICATE_q\,
	cin => \Add1~50\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X42_Y2_N27
\current_angle[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[15]~3_combout\ = ( !\Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \current_angle[15]~3_combout\);

-- Location: FF_X42_Y2_N28
\current_angle[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[15]~3_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[15]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(16) ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(16) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(16),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X43_Y2_N11
\current_angle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(16));

-- Location: LABCELL_X43_Y2_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(17) ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(17) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(17),
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X43_Y2_N13
\current_angle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(17));

-- Location: LABCELL_X43_Y2_N15
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(18) ) + ( \Add1~18\ ))
-- \Add1~2\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(18) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(18),
	cin => \Add1~18\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X43_Y2_N17
\current_angle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(18));

-- Location: LABCELL_X43_Y2_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(19) ) + ( \Add1~2\ ))
-- \Add1~14\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(19) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(19),
	cin => \Add1~2\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X43_Y2_N20
\current_angle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(19));

-- Location: LABCELL_X43_Y2_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( current_angle(20) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( current_angle(20) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(20),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X43_Y2_N23
\current_angle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(20));

-- Location: LABCELL_X43_Y2_N24
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(21) ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(21) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(21),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X43_Y2_N27
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( current_angle(22) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~6\ ))
-- \Add1~102\ = CARRY(( current_angle(22) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(22),
	cin => \Add1~6\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X43_Y2_N29
\current_angle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(22));

-- Location: LABCELL_X43_Y2_N30
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(23) ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(23) ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	dataf => ALT_INV_current_angle(23),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X43_Y2_N31
\current_angle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(23));

-- Location: LABCELL_X43_Y2_N33
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(24) ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(24) ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	dataf => ALT_INV_current_angle(24),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X43_Y2_N35
\current_angle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(24));

-- Location: LABCELL_X43_Y2_N36
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( current_angle(25) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~94\ ))
-- \Add1~78\ = CARRY(( current_angle(25) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(25),
	cin => \Add1~94\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X43_Y2_N38
\current_angle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(25));

-- Location: LABCELL_X43_Y2_N39
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(26) ) + ( \Add1~78\ ))
-- \Add1~90\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(26) ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(26),
	cin => \Add1~78\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X43_Y2_N41
\current_angle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(26));

-- Location: LABCELL_X43_Y2_N42
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(27) ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(27) ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(27),
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X43_Y2_N43
\current_angle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(27));

-- Location: LABCELL_X43_Y2_N45
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( current_angle(28) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( current_angle(28) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(28),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X43_Y2_N47
\current_angle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(28));

-- Location: LABCELL_X43_Y2_N48
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(29) ) + ( \Add1~82\ ))
-- \Add1~114\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(29) ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(29),
	cin => \Add1~82\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X43_Y2_N50
\current_angle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(29));

-- Location: LABCELL_X43_Y2_N51
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(30) ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(30) ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => ALT_INV_current_angle(30),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X43_Y2_N52
\current_angle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(30));

-- Location: LABCELL_X43_Y2_N54
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( current_angle(31) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(31),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\);

-- Location: FF_X43_Y2_N55
\current_angle[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[31]~DUPLICATE_q\);

-- Location: IOIBUF_X52_Y0_N52
\write_data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(29),
	o => \write_data[29]~input_o\);

-- Location: FF_X46_Y2_N8
\max_angle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[29]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(29));

-- Location: FF_X43_Y2_N49
\current_angle[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[29]~DUPLICATE_q\);

-- Location: IOIBUF_X52_Y0_N35
\write_data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(31),
	o => \write_data[31]~input_o\);

-- Location: FF_X46_Y2_N17
\max_angle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[31]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(31));

-- Location: LABCELL_X46_Y2_N15
\LessThan1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~23_combout\ = ( max_angle(31) & ( current_angle(30) & ( (!\current_angle[31]~DUPLICATE_q\) # ((max_angle(30) & (max_angle(29) & !\current_angle[29]~DUPLICATE_q\))) ) ) ) # ( !max_angle(31) & ( current_angle(30) & ( (max_angle(30) & 
-- (!\current_angle[31]~DUPLICATE_q\ & (max_angle(29) & !\current_angle[29]~DUPLICATE_q\))) ) ) ) # ( max_angle(31) & ( !current_angle(30) & ( ((!\current_angle[31]~DUPLICATE_q\) # ((max_angle(29) & !\current_angle[29]~DUPLICATE_q\))) # (max_angle(30)) ) ) ) 
-- # ( !max_angle(31) & ( !current_angle(30) & ( (!\current_angle[31]~DUPLICATE_q\ & (((max_angle(29) & !\current_angle[29]~DUPLICATE_q\)) # (max_angle(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001000100110111111101110100000100000000001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(30),
	datab => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datac => ALT_INV_max_angle(29),
	datad => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	datae => ALT_INV_max_angle(31),
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan1~23_combout\);

-- Location: LABCELL_X46_Y2_N6
\LessThan1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~22_combout\ = ( max_angle(29) & ( current_angle(30) & ( (\current_angle[29]~DUPLICATE_q\ & (max_angle(30) & (!max_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) ) # ( !max_angle(29) & ( current_angle(30) & ( 
-- (!\current_angle[29]~DUPLICATE_q\ & (max_angle(30) & (!max_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) ) # ( max_angle(29) & ( !current_angle(30) & ( (\current_angle[29]~DUPLICATE_q\ & (!max_angle(30) & (!max_angle(31) $ 
-- (\current_angle[31]~DUPLICATE_q\)))) ) ) ) # ( !max_angle(29) & ( !current_angle(30) & ( (!\current_angle[29]~DUPLICATE_q\ & (!max_angle(30) & (!max_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	datab => ALT_INV_max_angle(31),
	datac => ALT_INV_max_angle(30),
	datad => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datae => ALT_INV_max_angle(29),
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan1~22_combout\);

-- Location: IOIBUF_X30_Y0_N1
\write_data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(9),
	o => \write_data[9]~input_o\);

-- Location: LABCELL_X46_Y2_N42
\max_angle[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[9]~5_combout\ = ( !\write_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[9]~input_o\,
	combout => \max_angle[9]~5_combout\);

-- Location: FF_X42_Y3_N20
\max_angle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \max_angle[9]~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(9));

-- Location: IOIBUF_X36_Y0_N52
\write_data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(8),
	o => \write_data[8]~input_o\);

-- Location: FF_X42_Y3_N50
\max_angle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[8]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(8));

-- Location: IOIBUF_X56_Y0_N35
\write_data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(10),
	o => \write_data[10]~input_o\);

-- Location: MLABCELL_X47_Y3_N12
\max_angle[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[10]~6_combout\ = !\write_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_write_data[10]~input_o\,
	combout => \max_angle[10]~6_combout\);

-- Location: FF_X43_Y3_N23
\max_angle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \max_angle[10]~6_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(10));

-- Location: FF_X43_Y3_N53
\current_angle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(10));

-- Location: IOIBUF_X38_Y0_N18
\write_data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(11),
	o => \write_data[11]~input_o\);

-- Location: FF_X43_Y3_N17
\max_angle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[11]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(11));

-- Location: IOIBUF_X34_Y0_N92
\write_data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(12),
	o => \write_data[12]~input_o\);

-- Location: FF_X42_Y3_N26
\max_angle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[12]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(12));

-- Location: LABCELL_X43_Y3_N12
\LessThan1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~29_combout\ = ( current_angle(11) & ( max_angle(12) & ( (current_angle(12) & (max_angle(11) & (!max_angle(10) $ (!current_angle(10))))) ) ) ) # ( !current_angle(11) & ( max_angle(12) & ( (current_angle(12) & (!max_angle(11) & (!max_angle(10) $ 
-- (!current_angle(10))))) ) ) ) # ( current_angle(11) & ( !max_angle(12) & ( (!current_angle(12) & (max_angle(11) & (!max_angle(10) $ (!current_angle(10))))) ) ) ) # ( !current_angle(11) & ( !max_angle(12) & ( (!current_angle(12) & (!max_angle(11) & 
-- (!max_angle(10) $ (!current_angle(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000000000000100100000010010000000000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(10),
	datab => ALT_INV_current_angle(12),
	datac => ALT_INV_current_angle(10),
	datad => ALT_INV_max_angle(11),
	datae => ALT_INV_current_angle(11),
	dataf => ALT_INV_max_angle(12),
	combout => \LessThan1~29_combout\);

-- Location: IOIBUF_X58_Y0_N92
\write_data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(14),
	o => \write_data[14]~input_o\);

-- Location: FF_X42_Y3_N14
\max_angle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[14]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(14));

-- Location: IOIBUF_X34_Y0_N75
\write_data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(13),
	o => \write_data[13]~input_o\);

-- Location: FF_X42_Y3_N59
\max_angle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[13]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(13));

-- Location: LABCELL_X45_Y3_N15
\LessThan1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = ( current_angle(13) & ( (max_angle(13) & (!current_angle(14) $ (!max_angle(14)))) ) ) # ( !current_angle(13) & ( (!max_angle(13) & (!current_angle(14) $ (!max_angle(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(14),
	datac => ALT_INV_max_angle(14),
	datad => ALT_INV_max_angle(13),
	dataf => ALT_INV_current_angle(13),
	combout => \LessThan1~30_combout\);

-- Location: LABCELL_X45_Y3_N36
\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( \LessThan1~29_combout\ & ( \LessThan1~30_combout\ & ( (!max_angle(9) & (((max_angle(8) & current_angle(8))) # (current_angle(9)))) # (max_angle(9) & (current_angle(9) & (max_angle(8) & current_angle(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(9),
	datab => ALT_INV_current_angle(9),
	datac => ALT_INV_max_angle(8),
	datad => ALT_INV_current_angle(8),
	datae => \ALT_INV_LessThan1~29_combout\,
	dataf => \ALT_INV_LessThan1~30_combout\,
	combout => \LessThan1~12_combout\);

-- Location: LABCELL_X42_Y3_N51
\LessThan1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~27_combout\ = ( !max_angle(10) & ( current_angle(10) & ( (!max_angle(11) & (!current_angle(11) & (!current_angle(8) $ (!max_angle(8))))) # (max_angle(11) & (current_angle(11) & (!current_angle(8) $ (!max_angle(8))))) ) ) ) # ( max_angle(10) & ( 
-- !current_angle(10) & ( (!max_angle(11) & (!current_angle(11) & (!current_angle(8) $ (!max_angle(8))))) # (max_angle(11) & (current_angle(11) & (!current_angle(8) $ (!max_angle(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010011001000000001001100100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(11),
	datab => ALT_INV_current_angle(11),
	datac => ALT_INV_current_angle(8),
	datad => ALT_INV_max_angle(8),
	datae => ALT_INV_max_angle(10),
	dataf => ALT_INV_current_angle(10),
	combout => \LessThan1~27_combout\);

-- Location: LABCELL_X42_Y3_N30
\LessThan1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~28_combout\ = ( current_angle(12) & ( (max_angle(12) & (!max_angle(13) $ (current_angle(13)))) ) ) # ( !current_angle(12) & ( (!max_angle(12) & (!max_angle(13) $ (current_angle(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_max_angle(13),
	datac => ALT_INV_max_angle(12),
	datad => ALT_INV_current_angle(13),
	dataf => ALT_INV_current_angle(12),
	combout => \LessThan1~28_combout\);

-- Location: LABCELL_X42_Y3_N21
\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( \LessThan1~27_combout\ & ( \LessThan1~28_combout\ & ( (!max_angle(9) & (!current_angle(9) & (!max_angle(14) $ (!current_angle(14))))) # (max_angle(9) & (current_angle(9) & (!max_angle(14) $ (!current_angle(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(9),
	datab => ALT_INV_max_angle(14),
	datac => ALT_INV_current_angle(9),
	datad => ALT_INV_current_angle(14),
	datae => \ALT_INV_LessThan1~27_combout\,
	dataf => \ALT_INV_LessThan1~28_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X42_Y3_N15
\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( current_angle(13) & ( current_angle(14) & ( ((max_angle(12) & (max_angle(13) & !current_angle(12)))) # (max_angle(14)) ) ) ) # ( !current_angle(13) & ( current_angle(14) & ( (((max_angle(12) & !current_angle(12))) # 
-- (max_angle(14))) # (max_angle(13)) ) ) ) # ( current_angle(13) & ( !current_angle(14) & ( (max_angle(12) & (max_angle(13) & (max_angle(14) & !current_angle(12)))) ) ) ) # ( !current_angle(13) & ( !current_angle(14) & ( (max_angle(14) & (((max_angle(12) & 
-- !current_angle(12))) # (max_angle(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000011000000010000000001111111001111110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(12),
	datab => ALT_INV_max_angle(13),
	datac => ALT_INV_max_angle(14),
	datad => ALT_INV_current_angle(12),
	datae => ALT_INV_current_angle(13),
	dataf => ALT_INV_current_angle(14),
	combout => \LessThan1~10_combout\);

-- Location: LABCELL_X42_Y3_N27
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( current_angle(13) & ( current_angle(14) & ( (max_angle(13) & (!max_angle(14) & (!max_angle(12) $ (current_angle(12))))) ) ) ) # ( !current_angle(13) & ( current_angle(14) & ( (!max_angle(13) & (!max_angle(14) & (!max_angle(12) $ 
-- (current_angle(12))))) ) ) ) # ( current_angle(13) & ( !current_angle(14) & ( (max_angle(13) & (max_angle(14) & (!max_angle(12) $ (current_angle(12))))) ) ) ) # ( !current_angle(13) & ( !current_angle(14) & ( (!max_angle(13) & (max_angle(14) & 
-- (!max_angle(12) $ (current_angle(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000000100000000110000000010000000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(12),
	datab => ALT_INV_max_angle(13),
	datac => ALT_INV_max_angle(14),
	datad => ALT_INV_current_angle(12),
	datae => ALT_INV_current_angle(13),
	dataf => ALT_INV_current_angle(14),
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X42_Y3_N42
\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( \LessThan1~8_combout\ & ( current_angle(10) & ( (!\LessThan1~10_combout\ & ((!max_angle(11)) # (current_angle(11)))) ) ) ) # ( !\LessThan1~8_combout\ & ( current_angle(10) & ( !\LessThan1~10_combout\ ) ) ) # ( 
-- \LessThan1~8_combout\ & ( !current_angle(10) & ( (!\LessThan1~10_combout\ & ((!max_angle(10) & (current_angle(11) & !max_angle(11))) # (max_angle(10) & ((!max_angle(11)) # (current_angle(11)))))) ) ) ) # ( !\LessThan1~8_combout\ & ( !current_angle(10) & ( 
-- !\LessThan1~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000011100010000000011111111000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(10),
	datab => ALT_INV_current_angle(11),
	datac => ALT_INV_max_angle(11),
	datad => \ALT_INV_LessThan1~10_combout\,
	datae => \ALT_INV_LessThan1~8_combout\,
	dataf => ALT_INV_current_angle(10),
	combout => \LessThan1~11_combout\);

-- Location: IOIBUF_X38_Y0_N52
\write_data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(15),
	o => \write_data[15]~input_o\);

-- Location: LABCELL_X43_Y4_N48
\max_angle[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[15]~2_combout\ = !\write_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_write_data[15]~input_o\,
	combout => \max_angle[15]~2_combout\);

-- Location: FF_X43_Y4_N50
\max_angle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \max_angle[15]~2_combout\,
	clrn => \reset~input_o\,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(15));

-- Location: FF_X42_Y2_N29
\current_angle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[15]~3_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(15));

-- Location: LABCELL_X43_Y4_N51
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( current_angle(15) & ( !max_angle(15) ) ) # ( !current_angle(15) & ( max_angle(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(15),
	dataf => ALT_INV_current_angle(15),
	combout => \LessThan1~3_combout\);

-- Location: IOIBUF_X54_Y0_N18
\write_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(7),
	o => \write_data[7]~input_o\);

-- Location: LABCELL_X43_Y4_N0
\max_angle[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[7]~3_combout\ = ( !\write_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[7]~input_o\,
	combout => \max_angle[7]~3_combout\);

-- Location: FF_X43_Y4_N2
\max_angle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \max_angle[7]~3_combout\,
	clrn => \reset~input_o\,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(7));

-- Location: IOIBUF_X54_Y0_N35
\write_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(5),
	o => \write_data[5]~input_o\);

-- Location: LABCELL_X43_Y4_N42
\max_angle[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[5]~4_combout\ = ( !\write_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[5]~input_o\,
	combout => \max_angle[5]~4_combout\);

-- Location: FF_X43_Y4_N44
\max_angle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \max_angle[5]~4_combout\,
	clrn => \reset~input_o\,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(5));

-- Location: IOIBUF_X36_Y0_N35
\write_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(6),
	o => \write_data[6]~input_o\);

-- Location: FF_X43_Y4_N23
\max_angle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(6));

-- Location: LABCELL_X43_Y4_N18
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( current_angle(6) & ( current_angle(7) & ( (!max_angle(7) & (!max_angle(6) & (!max_angle(5) $ (!current_angle(5))))) ) ) ) # ( !current_angle(6) & ( current_angle(7) & ( (!max_angle(7) & (max_angle(6) & (!max_angle(5) $ 
-- (!current_angle(5))))) ) ) ) # ( current_angle(6) & ( !current_angle(7) & ( (max_angle(7) & (!max_angle(6) & (!max_angle(5) $ (!current_angle(5))))) ) ) ) # ( !current_angle(6) & ( !current_angle(7) & ( (max_angle(7) & (max_angle(6) & (!max_angle(5) $ 
-- (!current_angle(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000100000100000000000010000010000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(7),
	datab => ALT_INV_max_angle(5),
	datac => ALT_INV_max_angle(6),
	datad => ALT_INV_current_angle(5),
	datae => ALT_INV_current_angle(6),
	dataf => ALT_INV_current_angle(7),
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X43_Y4_N15
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( current_angle(6) & ( current_angle(7) & ( (!max_angle(7) & (((!max_angle(5) & !current_angle(5))) # (max_angle(6)))) ) ) ) # ( !current_angle(6) & ( current_angle(7) & ( (max_angle(6) & (!max_angle(5) & (!current_angle(5) & 
-- !max_angle(7)))) ) ) ) # ( current_angle(6) & ( !current_angle(7) & ( ((!max_angle(7)) # ((!max_angle(5) & !current_angle(5)))) # (max_angle(6)) ) ) ) # ( !current_angle(6) & ( !current_angle(7) & ( (!max_angle(7)) # ((max_angle(6) & (!max_angle(5) & 
-- !current_angle(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000000111111111101010101000000000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(6),
	datab => ALT_INV_max_angle(5),
	datac => ALT_INV_current_angle(5),
	datad => ALT_INV_max_angle(7),
	datae => ALT_INV_current_angle(6),
	dataf => ALT_INV_current_angle(7),
	combout => \LessThan1~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\write_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(4),
	o => \write_data[4]~input_o\);

-- Location: FF_X43_Y4_N47
\max_angle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(4));

-- Location: IOIBUF_X32_Y0_N18
\write_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(2),
	o => \write_data[2]~input_o\);

-- Location: FF_X43_Y4_N11
\max_angle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(2));

-- Location: IOIBUF_X32_Y0_N52
\write_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(1),
	o => \write_data[1]~input_o\);

-- Location: FF_X43_Y4_N5
\max_angle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(1));

-- Location: IOIBUF_X38_Y0_N35
\write_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(3),
	o => \write_data[3]~input_o\);

-- Location: FF_X43_Y4_N14
\max_angle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(3));

-- Location: IOIBUF_X32_Y0_N35
\write_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(0),
	o => \write_data[0]~input_o\);

-- Location: FF_X43_Y4_N29
\max_angle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(0));

-- Location: FF_X43_Y3_N31
\current_angle[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N6
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( max_angle(0) & ( \current_angle[3]~DUPLICATE_q\ & ( !max_angle(3) ) ) ) # ( !max_angle(0) & ( \current_angle[3]~DUPLICATE_q\ & ( (!max_angle(3)) # ((!max_angle(2) & !max_angle(1))) ) ) ) # ( !max_angle(0) & ( 
-- !\current_angle[3]~DUPLICATE_q\ & ( (!max_angle(2) & (!max_angle(1) & !max_angle(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000011111111110000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_max_angle(2),
	datac => ALT_INV_max_angle(1),
	datad => ALT_INV_max_angle(3),
	datae => ALT_INV_max_angle(0),
	dataf => \ALT_INV_current_angle[3]~DUPLICATE_q\,
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X43_Y4_N45
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \LessThan1~5_combout\ & ( (!\LessThan1~6_combout\ & ((!\LessThan1~4_combout\) # ((!current_angle(4)) # (!max_angle(4))))) ) ) # ( !\LessThan1~5_combout\ & ( (!\LessThan1~6_combout\ & ((!\LessThan1~4_combout\) # 
-- ((!current_angle(4) & !max_angle(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000111000001010000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~4_combout\,
	datab => ALT_INV_current_angle(4),
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => ALT_INV_max_angle(4),
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \LessThan1~7_combout\);

-- Location: IOIBUF_X40_Y0_N1
\write_data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(18),
	o => \write_data[18]~input_o\);

-- Location: FF_X45_Y3_N35
\max_angle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[18]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(18));

-- Location: IOIBUF_X34_Y0_N58
\write_data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(17),
	o => \write_data[17]~input_o\);

-- Location: FF_X45_Y3_N8
\max_angle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[17]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(17));

-- Location: FF_X43_Y2_N16
\current_angle[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[18]~DUPLICATE_q\);

-- Location: IOIBUF_X56_Y0_N1
\write_data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(19),
	o => \write_data[19]~input_o\);

-- Location: FF_X45_Y3_N5
\max_angle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[19]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(19));

-- Location: IOIBUF_X40_Y81_N35
\write_data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(21),
	o => \write_data[21]~input_o\);

-- Location: FF_X45_Y3_N59
\max_angle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(21));

-- Location: IOIBUF_X38_Y0_N1
\write_data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(20),
	o => \write_data[20]~input_o\);

-- Location: FF_X45_Y3_N41
\max_angle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[20]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(20));

-- Location: FF_X43_Y2_N19
\current_angle[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[19]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N22
\current_angle[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[20]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y3_N54
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \current_angle[19]~DUPLICATE_q\ & ( \current_angle[20]~DUPLICATE_q\ & ( (max_angle(19) & (max_angle(20) & (!max_angle(21) $ (\current_angle[21]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[19]~DUPLICATE_q\ & ( 
-- \current_angle[20]~DUPLICATE_q\ & ( (!max_angle(19) & (max_angle(20) & (!max_angle(21) $ (\current_angle[21]~DUPLICATE_q\)))) ) ) ) # ( \current_angle[19]~DUPLICATE_q\ & ( !\current_angle[20]~DUPLICATE_q\ & ( (max_angle(19) & (!max_angle(20) & 
-- (!max_angle(21) $ (\current_angle[21]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[19]~DUPLICATE_q\ & ( !\current_angle[20]~DUPLICATE_q\ & ( (!max_angle(19) & (!max_angle(20) & (!max_angle(21) $ (\current_angle[21]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(19),
	datab => ALT_INV_max_angle(21),
	datac => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datad => ALT_INV_max_angle(20),
	datae => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	dataf => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\write_data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(16),
	o => \write_data[16]~input_o\);

-- Location: LABCELL_X46_Y3_N24
\max_angle[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[16]~1_combout\ = !\write_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_write_data[16]~input_o\,
	combout => \max_angle[16]~1_combout\);

-- Location: FF_X45_Y3_N47
\max_angle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \max_angle[16]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(16));

-- Location: LABCELL_X45_Y3_N27
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( current_angle(16) & ( !max_angle(16) ) ) # ( !current_angle(16) & ( max_angle(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_max_angle(16),
	dataf => ALT_INV_current_angle(16),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X45_Y3_N9
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \LessThan1~1_combout\ & ( current_angle(17) & ( (max_angle(17) & (\LessThan1~0_combout\ & (!max_angle(18) $ (\current_angle[18]~DUPLICATE_q\)))) ) ) ) # ( \LessThan1~1_combout\ & ( !current_angle(17) & ( (!max_angle(17) & 
-- (\LessThan1~0_combout\ & (!max_angle(18) $ (\current_angle[18]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000010000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(18),
	datab => ALT_INV_max_angle(17),
	datac => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_LessThan1~1_combout\,
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X45_Y3_N0
\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( \LessThan1~7_combout\ & ( \LessThan1~2_combout\ & ( (!\LessThan1~3_combout\ & ((!\LessThan1~11_combout\) # (\LessThan1~12_combout\))) ) ) ) # ( !\LessThan1~7_combout\ & ( \LessThan1~2_combout\ & ( (!\LessThan1~3_combout\ & 
-- (((!\LessThan1~11_combout\) # (\LessThan1~9_combout\)) # (\LessThan1~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110111000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~12_combout\,
	datab => \ALT_INV_LessThan1~9_combout\,
	datac => \ALT_INV_LessThan1~11_combout\,
	datad => \ALT_INV_LessThan1~3_combout\,
	datae => \ALT_INV_LessThan1~7_combout\,
	dataf => \ALT_INV_LessThan1~2_combout\,
	combout => \LessThan1~13_combout\);

-- Location: FF_X43_Y2_N37
\current_angle[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[25]~DUPLICATE_q\);

-- Location: IOIBUF_X34_Y0_N41
\write_data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(22),
	o => \write_data[22]~input_o\);

-- Location: FF_X45_Y1_N53
\max_angle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[22]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(22));

-- Location: LABCELL_X45_Y1_N42
\LessThan1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = ( !current_angle(22) & ( max_angle(22) ) ) # ( current_angle(22) & ( !max_angle(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_current_angle(22),
	dataf => ALT_INV_max_angle(22),
	combout => \LessThan1~18_combout\);

-- Location: FF_X43_Y2_N46
\current_angle[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[28]~DUPLICATE_q\);

-- Location: IOIBUF_X50_Y0_N75
\write_data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(27),
	o => \write_data[27]~input_o\);

-- Location: FF_X45_Y1_N14
\max_angle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[27]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(27));

-- Location: IOIBUF_X54_Y0_N52
\write_data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(28),
	o => \write_data[28]~input_o\);

-- Location: FF_X45_Y1_N47
\max_angle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[28]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(28));

-- Location: IOIBUF_X40_Y0_N35
\write_data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(26),
	o => \write_data[26]~input_o\);

-- Location: FF_X45_Y1_N55
\max_angle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[26]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(26));

-- Location: LABCELL_X45_Y1_N54
\LessThan1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = ( max_angle(26) & ( current_angle(26) & ( (!\current_angle[28]~DUPLICATE_q\ & (!max_angle(28) & (!max_angle(27) $ (current_angle(27))))) # (\current_angle[28]~DUPLICATE_q\ & (max_angle(28) & (!max_angle(27) $ 
-- (current_angle(27))))) ) ) ) # ( !max_angle(26) & ( !current_angle(26) & ( (!\current_angle[28]~DUPLICATE_q\ & (!max_angle(28) & (!max_angle(27) $ (current_angle(27))))) # (\current_angle[28]~DUPLICATE_q\ & (max_angle(28) & (!max_angle(27) $ 
-- (current_angle(27))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datab => ALT_INV_max_angle(27),
	datac => ALT_INV_current_angle(27),
	datad => ALT_INV_max_angle(28),
	datae => ALT_INV_max_angle(26),
	dataf => ALT_INV_current_angle(26),
	combout => \LessThan1~15_combout\);

-- Location: IOIBUF_X50_Y0_N41
\write_data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(25),
	o => \write_data[25]~input_o\);

-- Location: LABCELL_X45_Y1_N24
\max_angle[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[25]~feeder_combout\ = ( \write_data[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[25]~input_o\,
	combout => \max_angle[25]~feeder_combout\);

-- Location: FF_X45_Y1_N26
\max_angle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \max_angle[25]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(25));

-- Location: IOIBUF_X50_Y0_N58
\write_data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(23),
	o => \write_data[23]~input_o\);

-- Location: FF_X45_Y1_N8
\max_angle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[23]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(23));

-- Location: LABCELL_X45_Y1_N36
\LessThan1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = ( !current_angle(23) & ( max_angle(23) ) ) # ( current_angle(23) & ( !max_angle(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_current_angle(23),
	dataf => ALT_INV_max_angle(23),
	combout => \LessThan1~17_combout\);

-- Location: IOIBUF_X40_Y0_N18
\write_data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(24),
	o => \write_data[24]~input_o\);

-- Location: LABCELL_X45_Y1_N27
\max_angle[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_angle[24]~feeder_combout\ = ( \write_data[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[24]~input_o\,
	combout => \max_angle[24]~feeder_combout\);

-- Location: FF_X45_Y1_N29
\max_angle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \max_angle[24]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \max_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => max_angle(24));

-- Location: LABCELL_X45_Y1_N48
\LessThan1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = ( !max_angle(24) & ( current_angle(24) ) ) # ( max_angle(24) & ( !current_angle(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_max_angle(24),
	dataf => ALT_INV_current_angle(24),
	combout => \LessThan1~16_combout\);

-- Location: LABCELL_X45_Y1_N18
\LessThan1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~19_combout\ = ( !\LessThan1~17_combout\ & ( !\LessThan1~16_combout\ & ( (!\LessThan1~18_combout\ & (\LessThan1~15_combout\ & (!\current_angle[25]~DUPLICATE_q\ $ (max_angle(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan1~18_combout\,
	datac => \ALT_INV_LessThan1~15_combout\,
	datad => ALT_INV_max_angle(25),
	datae => \ALT_INV_LessThan1~17_combout\,
	dataf => \ALT_INV_LessThan1~16_combout\,
	combout => \LessThan1~19_combout\);

-- Location: LABCELL_X45_Y1_N9
\LessThan1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~25_combout\ = ( current_angle(22) & ( \current_angle[25]~DUPLICATE_q\ & ( (max_angle(25) & (max_angle(23) & !current_angle(23))) ) ) ) # ( !current_angle(22) & ( \current_angle[25]~DUPLICATE_q\ & ( (max_angle(25) & ((!max_angle(23) & 
-- (!current_angle(23) & max_angle(22))) # (max_angle(23) & ((!current_angle(23)) # (max_angle(22)))))) ) ) ) # ( current_angle(22) & ( !\current_angle[25]~DUPLICATE_q\ & ( ((max_angle(23) & !current_angle(23))) # (max_angle(25)) ) ) ) # ( !current_angle(22) 
-- & ( !\current_angle[25]~DUPLICATE_q\ & ( ((!max_angle(23) & (!current_angle(23) & max_angle(22))) # (max_angle(23) & ((!current_angle(23)) # (max_angle(22))))) # (max_angle(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111110111011101010111010100010000010100010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(25),
	datab => ALT_INV_max_angle(23),
	datac => ALT_INV_current_angle(23),
	datad => ALT_INV_max_angle(22),
	datae => ALT_INV_current_angle(22),
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan1~25_combout\);

-- Location: LABCELL_X45_Y1_N15
\LessThan1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~26_combout\ = ( max_angle(24) & ( \current_angle[25]~DUPLICATE_q\ & ( (max_angle(25) & !current_angle(24)) ) ) ) # ( max_angle(24) & ( !\current_angle[25]~DUPLICATE_q\ & ( (!current_angle(24)) # (max_angle(25)) ) ) ) # ( !max_angle(24) & ( 
-- !\current_angle[25]~DUPLICATE_q\ & ( max_angle(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111110101010100000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(25),
	datad => ALT_INV_current_angle(24),
	datae => ALT_INV_max_angle(24),
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan1~26_combout\);

-- Location: LABCELL_X45_Y1_N0
\LessThan1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = ( current_angle(27) & ( current_angle(26) & ( (!\current_angle[28]~DUPLICATE_q\ & max_angle(28)) ) ) ) # ( !current_angle(27) & ( current_angle(26) & ( (!max_angle(27) & (!\current_angle[28]~DUPLICATE_q\ & max_angle(28))) # 
-- (max_angle(27) & ((!\current_angle[28]~DUPLICATE_q\) # (max_angle(28)))) ) ) ) # ( current_angle(27) & ( !current_angle(26) & ( (!\current_angle[28]~DUPLICATE_q\ & (((max_angle(26) & max_angle(27))) # (max_angle(28)))) # (\current_angle[28]~DUPLICATE_q\ & 
-- (max_angle(26) & (max_angle(27) & max_angle(28)))) ) ) ) # ( !current_angle(27) & ( !current_angle(26) & ( (!\current_angle[28]~DUPLICATE_q\ & (((max_angle(28)) # (max_angle(27))) # (max_angle(26)))) # (\current_angle[28]~DUPLICATE_q\ & (max_angle(28) & 
-- ((max_angle(27)) # (max_angle(26))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111000100001111000100110000111100110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(26),
	datab => ALT_INV_max_angle(27),
	datac => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datad => ALT_INV_max_angle(28),
	datae => ALT_INV_current_angle(27),
	dataf => ALT_INV_current_angle(26),
	combout => \LessThan1~20_combout\);

-- Location: LABCELL_X45_Y1_N33
\LessThan1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~21_combout\ = ( !\LessThan1~20_combout\ & ( (!\LessThan1~15_combout\) # ((!\LessThan1~26_combout\ & ((!\LessThan1~25_combout\) # (\LessThan1~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010000000000000000000011111111110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~16_combout\,
	datab => \ALT_INV_LessThan1~25_combout\,
	datac => \ALT_INV_LessThan1~26_combout\,
	datad => \ALT_INV_LessThan1~15_combout\,
	datae => \ALT_INV_LessThan1~20_combout\,
	combout => \LessThan1~21_combout\);

-- Location: LABCELL_X45_Y3_N24
\LessThan1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~34_combout\ = ( current_angle(17) & ( max_angle(16) ) ) # ( !current_angle(17) & ( (!max_angle(17) & max_angle(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_max_angle(17),
	datad => ALT_INV_max_angle(16),
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan1~34_combout\);

-- Location: LABCELL_X45_Y3_N42
\LessThan1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~33_combout\ = ( max_angle(16) & ( current_angle(17) & ( (!\current_angle[18]~DUPLICATE_q\ & (max_angle(18) & current_angle(16))) ) ) ) # ( !max_angle(16) & ( current_angle(17) & ( (max_angle(17) & (!current_angle(16) & 
-- ((!\current_angle[18]~DUPLICATE_q\) # (max_angle(18))))) ) ) ) # ( max_angle(16) & ( !current_angle(17) & ( (!\current_angle[18]~DUPLICATE_q\ & (current_angle(16) & ((max_angle(18)) # (max_angle(17))))) ) ) ) # ( !max_angle(16) & ( !current_angle(17) & ( 
-- (!current_angle(16) & ((!\current_angle[18]~DUPLICATE_q\) # (max_angle(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000000000000100110001000101000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(17),
	datab => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datac => ALT_INV_max_angle(18),
	datad => ALT_INV_current_angle(16),
	datae => ALT_INV_max_angle(16),
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan1~33_combout\);

-- Location: LABCELL_X45_Y2_N27
\LessThan1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~31_combout\ = ( max_angle(15) & ( current_angle(17) & ( (!\current_angle[18]~DUPLICATE_q\ & max_angle(18)) ) ) ) # ( !max_angle(15) & ( current_angle(17) & ( (!\current_angle[18]~DUPLICATE_q\ & (((max_angle(17) & 
-- \current_angle[15]~DUPLICATE_q\)) # (max_angle(18)))) # (\current_angle[18]~DUPLICATE_q\ & (max_angle(17) & (\current_angle[15]~DUPLICATE_q\ & max_angle(18)))) ) ) ) # ( max_angle(15) & ( !current_angle(17) & ( (!max_angle(17) & 
-- (!\current_angle[18]~DUPLICATE_q\ & max_angle(18))) # (max_angle(17) & ((!\current_angle[18]~DUPLICATE_q\) # (max_angle(18)))) ) ) ) # ( !max_angle(15) & ( !current_angle(17) & ( (!\current_angle[18]~DUPLICATE_q\ & (((max_angle(18)) # 
-- (\current_angle[15]~DUPLICATE_q\)) # (max_angle(17)))) # (\current_angle[18]~DUPLICATE_q\ & (max_angle(18) & ((\current_angle[15]~DUPLICATE_q\) # (max_angle(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011011111010001001101110100000100110011010000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(17),
	datab => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datac => \ALT_INV_current_angle[15]~DUPLICATE_q\,
	datad => ALT_INV_max_angle(18),
	datae => ALT_INV_max_angle(15),
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan1~31_combout\);

-- Location: LABCELL_X45_Y3_N30
\LessThan1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~32_combout\ = ( \current_angle[21]~DUPLICATE_q\ & ( \current_angle[19]~DUPLICATE_q\ & ( (max_angle(21) & (!\current_angle[20]~DUPLICATE_q\ & max_angle(20))) ) ) ) # ( !\current_angle[21]~DUPLICATE_q\ & ( \current_angle[19]~DUPLICATE_q\ & ( 
-- ((!\current_angle[20]~DUPLICATE_q\ & max_angle(20))) # (max_angle(21)) ) ) ) # ( \current_angle[21]~DUPLICATE_q\ & ( !\current_angle[19]~DUPLICATE_q\ & ( (max_angle(21) & ((!max_angle(19) & (!\current_angle[20]~DUPLICATE_q\ & max_angle(20))) # 
-- (max_angle(19) & ((!\current_angle[20]~DUPLICATE_q\) # (max_angle(20)))))) ) ) ) # ( !\current_angle[21]~DUPLICATE_q\ & ( !\current_angle[19]~DUPLICATE_q\ & ( ((!max_angle(19) & (!\current_angle[20]~DUPLICATE_q\ & max_angle(20))) # (max_angle(19) & 
-- ((!\current_angle[20]~DUPLICATE_q\) # (max_angle(20))))) # (max_angle(21)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111110111000100000011000100110011111100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_max_angle(19),
	datab => ALT_INV_max_angle(21),
	datac => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	datad => ALT_INV_max_angle(20),
	datae => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	dataf => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	combout => \LessThan1~32_combout\);

-- Location: LABCELL_X45_Y3_N48
\LessThan1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = ( \LessThan1~31_combout\ & ( !\LessThan1~32_combout\ & ( (!\LessThan1~0_combout\) # ((current_angle(16) & (\LessThan1~34_combout\ & !\LessThan1~33_combout\))) ) ) ) # ( !\LessThan1~31_combout\ & ( !\LessThan1~32_combout\ & ( 
-- (!\LessThan1~0_combout\) # ((!\LessThan1~33_combout\) # (current_angle(16))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011101010111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => ALT_INV_current_angle(16),
	datac => \ALT_INV_LessThan1~34_combout\,
	datad => \ALT_INV_LessThan1~33_combout\,
	datae => \ALT_INV_LessThan1~31_combout\,
	dataf => \ALT_INV_LessThan1~32_combout\,
	combout => \LessThan1~14_combout\);

-- Location: LABCELL_X45_Y3_N18
\LessThan1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~24_combout\ = ( \LessThan1~21_combout\ & ( \LessThan1~14_combout\ & ( (!\LessThan1~23_combout\ & ((!\LessThan1~22_combout\) # ((!\LessThan1~13_combout\) # (!\LessThan1~19_combout\)))) ) ) ) # ( !\LessThan1~21_combout\ & ( \LessThan1~14_combout\ 
-- & ( (!\LessThan1~23_combout\ & !\LessThan1~22_combout\) ) ) ) # ( \LessThan1~21_combout\ & ( !\LessThan1~14_combout\ & ( (!\LessThan1~23_combout\ & ((!\LessThan1~22_combout\) # (!\LessThan1~19_combout\))) ) ) ) # ( !\LessThan1~21_combout\ & ( 
-- !\LessThan1~14_combout\ & ( (!\LessThan1~23_combout\ & !\LessThan1~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101010101000100010001000100010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~23_combout\,
	datab => \ALT_INV_LessThan1~22_combout\,
	datac => \ALT_INV_LessThan1~13_combout\,
	datad => \ALT_INV_LessThan1~19_combout\,
	datae => \ALT_INV_LessThan1~21_combout\,
	dataf => \ALT_INV_LessThan1~14_combout\,
	combout => \LessThan1~24_combout\);

-- Location: LABCELL_X46_Y3_N45
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \LessThan1~24_combout\ & ( (!\current_state.SWEEP_RIGHT~q\) # ((!\write_enable~input_o\ & \current_state.INT_RIGHT~q\)) ) ) # ( !\LessThan1~24_combout\ & ( (!\write_enable~input_o\ & \current_state.INT_RIGHT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_state.INT_RIGHT~q\,
	dataf => \ALT_INV_LessThan1~24_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X46_Y3_N47
\current_state.INT_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INT_RIGHT~q\);

-- Location: MLABCELL_X47_Y1_N36
\min_angle[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[31]~0_combout\ = ( \write_enable~input_o\ & ( \address~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_address~input_o\,
	datae => \ALT_INV_write_enable~input_o\,
	combout => \min_angle[31]~0_combout\);

-- Location: FF_X47_Y2_N26
\min_angle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[27]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(27));

-- Location: MLABCELL_X47_Y2_N33
\LessThan2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~25_combout\ = ( current_angle(27) & ( !min_angle(27) ) ) # ( !current_angle(27) & ( min_angle(27) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(27),
	dataf => ALT_INV_current_angle(27),
	combout => \LessThan2~25_combout\);

-- Location: FF_X47_Y2_N44
\min_angle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[28]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(28));

-- Location: MLABCELL_X47_Y2_N3
\min_angle[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[31]~feeder_combout\ = ( \write_data[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[31]~input_o\,
	combout => \min_angle[31]~feeder_combout\);

-- Location: FF_X47_Y2_N5
\min_angle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[31]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(31));

-- Location: FF_X47_Y2_N32
\min_angle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[30]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(30));

-- Location: FF_X47_Y2_N17
\min_angle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[29]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(29));

-- Location: MLABCELL_X47_Y2_N9
\LessThan2~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~24_combout\ = ( \current_angle[29]~DUPLICATE_q\ & ( current_angle(30) & ( (min_angle(30) & (min_angle(29) & (!min_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[29]~DUPLICATE_q\ & ( current_angle(30) & ( 
-- (min_angle(30) & (!min_angle(29) & (!min_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) ) # ( \current_angle[29]~DUPLICATE_q\ & ( !current_angle(30) & ( (!min_angle(30) & (min_angle(29) & (!min_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) ) 
-- # ( !\current_angle[29]~DUPLICATE_q\ & ( !current_angle(30) & ( (!min_angle(30) & (!min_angle(29) & (!min_angle(31) $ (\current_angle[31]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(31),
	datab => ALT_INV_min_angle(30),
	datac => ALT_INV_min_angle(29),
	datad => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datae => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan2~24_combout\);

-- Location: FF_X47_Y2_N8
\min_angle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[25]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(25));

-- Location: MLABCELL_X47_Y2_N45
\LessThan2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~27_combout\ = ( \current_angle[25]~DUPLICATE_q\ & ( !min_angle(25) ) ) # ( !\current_angle[25]~DUPLICATE_q\ & ( min_angle(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min_angle(25),
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan2~27_combout\);

-- Location: FF_X47_Y2_N20
\min_angle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[26]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(26));

-- Location: MLABCELL_X47_Y2_N12
\LessThan2~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~26_combout\ = ( current_angle(26) & ( !min_angle(26) ) ) # ( !current_angle(26) & ( min_angle(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min_angle(26),
	dataf => ALT_INV_current_angle(26),
	combout => \LessThan2~26_combout\);

-- Location: MLABCELL_X47_Y2_N48
\LessThan2~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~28_combout\ = ( !\LessThan2~27_combout\ & ( !\LessThan2~26_combout\ & ( (!\LessThan2~25_combout\ & (\LessThan2~24_combout\ & (!min_angle(28) $ (\current_angle[28]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~25_combout\,
	datab => ALT_INV_min_angle(28),
	datac => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan2~24_combout\,
	datae => \ALT_INV_LessThan2~27_combout\,
	dataf => \ALT_INV_LessThan2~26_combout\,
	combout => \LessThan2~28_combout\);

-- Location: MLABCELL_X47_Y2_N54
\LessThan2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~30_combout\ = ( \current_angle[29]~DUPLICATE_q\ & ( current_angle(30) & ( (!min_angle(31) & ((!min_angle(30)) # ((!min_angle(29)) # (\current_angle[31]~DUPLICATE_q\)))) # (min_angle(31) & (\current_angle[31]~DUPLICATE_q\ & ((!min_angle(30)) # 
-- (!min_angle(29))))) ) ) ) # ( !\current_angle[29]~DUPLICATE_q\ & ( current_angle(30) & ( (!min_angle(31) & ((!min_angle(30)) # (\current_angle[31]~DUPLICATE_q\))) # (min_angle(31) & (!min_angle(30) & \current_angle[31]~DUPLICATE_q\)) ) ) ) # ( 
-- \current_angle[29]~DUPLICATE_q\ & ( !current_angle(30) & ( (!min_angle(31) & (((!min_angle(30) & !min_angle(29))) # (\current_angle[31]~DUPLICATE_q\))) # (min_angle(31) & (!min_angle(30) & (\current_angle[31]~DUPLICATE_q\ & !min_angle(29)))) ) ) ) # ( 
-- !\current_angle[29]~DUPLICATE_q\ & ( !current_angle(30) & ( (!min_angle(31) & \current_angle[31]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010100011100000101010001110100011101010111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(31),
	datab => ALT_INV_min_angle(30),
	datac => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datad => ALT_INV_min_angle(29),
	datae => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan2~30_combout\);

-- Location: MLABCELL_X47_Y2_N21
\LessThan2~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~31_combout\ = ( !\LessThan2~30_combout\ & ( \LessThan2~24_combout\ & ( (!\current_angle[28]~DUPLICATE_q\ & ((!current_angle(27)) # ((min_angle(27)) # (min_angle(28))))) # (\current_angle[28]~DUPLICATE_q\ & (min_angle(28) & ((!current_angle(27)) 
-- # (min_angle(27))))) ) ) ) # ( !\LessThan2~30_combout\ & ( !\LessThan2~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010001110110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(27),
	datab => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datac => ALT_INV_min_angle(28),
	datad => ALT_INV_min_angle(27),
	datae => \ALT_INV_LessThan2~30_combout\,
	dataf => \ALT_INV_LessThan2~24_combout\,
	combout => \LessThan2~31_combout\);

-- Location: MLABCELL_X47_Y2_N36
\LessThan2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~29_combout\ = ( \LessThan2~24_combout\ & ( !\LessThan2~25_combout\ & ( !\current_angle[28]~DUPLICATE_q\ $ (min_angle(28)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datad => ALT_INV_min_angle(28),
	datae => \ALT_INV_LessThan2~24_combout\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \LessThan2~29_combout\);

-- Location: LABCELL_X46_Y3_N0
\LessThan2~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~32_combout\ = ( \LessThan2~31_combout\ & ( \LessThan2~29_combout\ & ( (!min_angle(26) & (!current_angle(26) & ((!\current_angle[25]~DUPLICATE_q\) # (min_angle(25))))) # (min_angle(26) & ((!\current_angle[25]~DUPLICATE_q\) # 
-- ((!current_angle(26)) # (min_angle(25))))) ) ) ) # ( \LessThan2~31_combout\ & ( !\LessThan2~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001011111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	datab => ALT_INV_min_angle(26),
	datac => ALT_INV_min_angle(25),
	datad => ALT_INV_current_angle(26),
	datae => \ALT_INV_LessThan2~31_combout\,
	dataf => \ALT_INV_LessThan2~29_combout\,
	combout => \LessThan2~32_combout\);

-- Location: LABCELL_X45_Y4_N54
\min_angle[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[19]~feeder_combout\ = ( \write_data[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[19]~input_o\,
	combout => \min_angle[19]~feeder_combout\);

-- Location: FF_X45_Y4_N56
\min_angle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[19]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(19));

-- Location: FF_X45_Y4_N32
\min_angle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[18]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(18));

-- Location: LABCELL_X45_Y4_N48
\min_angle[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[20]~feeder_combout\ = ( \write_data[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[20]~input_o\,
	combout => \min_angle[20]~feeder_combout\);

-- Location: FF_X45_Y4_N50
\min_angle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[20]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(20));

-- Location: LABCELL_X45_Y4_N45
\LessThan2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~16_combout\ = ( \current_angle[20]~DUPLICATE_q\ & ( !min_angle(20) ) ) # ( !\current_angle[20]~DUPLICATE_q\ & ( min_angle(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(20),
	dataf => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	combout => \LessThan2~16_combout\);

-- Location: FF_X45_Y4_N38
\min_angle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[22]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(22));

-- Location: FF_X45_Y4_N59
\min_angle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[23]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(23));

-- Location: LABCELL_X45_Y4_N27
\min_angle[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[24]~feeder_combout\ = ( \write_data[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[24]~input_o\,
	combout => \min_angle[24]~feeder_combout\);

-- Location: FF_X45_Y4_N29
\min_angle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[24]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(24));

-- Location: LABCELL_X45_Y4_N6
\LessThan2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~15_combout\ = ( current_angle(24) & ( current_angle(23) & ( (min_angle(23) & (min_angle(24) & (!min_angle(22) $ (current_angle(22))))) ) ) ) # ( !current_angle(24) & ( current_angle(23) & ( (min_angle(23) & (!min_angle(24) & (!min_angle(22) $ 
-- (current_angle(22))))) ) ) ) # ( current_angle(24) & ( !current_angle(23) & ( (!min_angle(23) & (min_angle(24) & (!min_angle(22) $ (current_angle(22))))) ) ) ) # ( !current_angle(24) & ( !current_angle(23) & ( (!min_angle(23) & (!min_angle(24) & 
-- (!min_angle(22) $ (current_angle(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(22),
	datab => ALT_INV_min_angle(23),
	datac => ALT_INV_min_angle(24),
	datad => ALT_INV_current_angle(22),
	datae => ALT_INV_current_angle(24),
	dataf => ALT_INV_current_angle(23),
	combout => \LessThan2~15_combout\);

-- Location: FF_X46_Y3_N32
\min_angle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(21));

-- Location: LABCELL_X46_Y3_N27
\LessThan2~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~20_combout\ = ( min_angle(21) & ( (!\LessThan2~16_combout\ & (\current_angle[21]~DUPLICATE_q\ & \LessThan2~15_combout\)) ) ) # ( !min_angle(21) & ( (!\LessThan2~16_combout\ & (!\current_angle[21]~DUPLICATE_q\ & \LessThan2~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~16_combout\,
	datab => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan2~15_combout\,
	dataf => ALT_INV_min_angle(21),
	combout => \LessThan2~20_combout\);

-- Location: LABCELL_X45_Y4_N18
\LessThan2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~21_combout\ = ( current_angle(23) & ( current_angle(22) & ( (!min_angle(24) & ((!min_angle(22)) # ((!min_angle(23)) # (current_angle(24))))) # (min_angle(24) & (current_angle(24) & ((!min_angle(22)) # (!min_angle(23))))) ) ) ) # ( 
-- !current_angle(23) & ( current_angle(22) & ( (!min_angle(24) & (((!min_angle(22) & !min_angle(23))) # (current_angle(24)))) # (min_angle(24) & (!min_angle(22) & (!min_angle(23) & current_angle(24)))) ) ) ) # ( current_angle(23) & ( !current_angle(22) & ( 
-- (!min_angle(23) & ((!min_angle(24)) # (current_angle(24)))) # (min_angle(23) & (!min_angle(24) & current_angle(24))) ) ) ) # ( !current_angle(23) & ( !current_angle(22) & ( (!min_angle(24) & current_angle(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000110000001111110010000000111110001110000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(22),
	datab => ALT_INV_min_angle(23),
	datac => ALT_INV_min_angle(24),
	datad => ALT_INV_current_angle(24),
	datae => ALT_INV_current_angle(23),
	dataf => ALT_INV_current_angle(22),
	combout => \LessThan2~21_combout\);

-- Location: LABCELL_X46_Y3_N33
\LessThan2~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~22_combout\ = ( !\LessThan2~21_combout\ & ( \LessThan2~15_combout\ & ( (!\current_angle[21]~DUPLICATE_q\ & (((!\current_angle[20]~DUPLICATE_q\) # (min_angle(21))) # (min_angle(20)))) # (\current_angle[21]~DUPLICATE_q\ & (min_angle(21) & 
-- ((!\current_angle[20]~DUPLICATE_q\) # (min_angle(20))))) ) ) ) # ( !\LessThan2~21_combout\ & ( !\LessThan2~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011001111010011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(20),
	datab => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datac => ALT_INV_min_angle(21),
	datad => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan2~21_combout\,
	dataf => \ALT_INV_LessThan2~15_combout\,
	combout => \LessThan2~22_combout\);

-- Location: LABCELL_X46_Y3_N54
\LessThan2~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~23_combout\ = ( \LessThan2~20_combout\ & ( \LessThan2~22_combout\ & ( (!\current_angle[19]~DUPLICATE_q\ & ((!\current_angle[18]~DUPLICATE_q\) # ((min_angle(18)) # (min_angle(19))))) # (\current_angle[19]~DUPLICATE_q\ & (min_angle(19) & 
-- ((!\current_angle[18]~DUPLICATE_q\) # (min_angle(18))))) ) ) ) # ( !\LessThan2~20_combout\ & ( \LessThan2~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000111011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datab => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	datac => ALT_INV_min_angle(19),
	datad => ALT_INV_min_angle(18),
	datae => \ALT_INV_LessThan2~20_combout\,
	dataf => \ALT_INV_LessThan2~22_combout\,
	combout => \LessThan2~23_combout\);

-- Location: MLABCELL_X47_Y3_N54
\min_angle[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[8]~3_combout\ = !\write_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_write_data[8]~input_o\,
	combout => \min_angle[8]~3_combout\);

-- Location: FF_X47_Y3_N56
\min_angle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[8]~3_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(8));

-- Location: FF_X47_Y3_N26
\min_angle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(7));

-- Location: MLABCELL_X47_Y3_N33
\min_angle[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[9]~4_combout\ = ( !\write_data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[9]~input_o\,
	combout => \min_angle[9]~4_combout\);

-- Location: FF_X47_Y3_N35
\min_angle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[9]~4_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(9));

-- Location: FF_X47_Y3_N14
\min_angle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[10]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(10));

-- Location: MLABCELL_X47_Y3_N0
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( current_angle(9) & ( (!min_angle(10) & \current_angle[10]~DUPLICATE_q\) ) ) # ( !current_angle(9) & ( (!min_angle(9) & (!min_angle(10) & \current_angle[10]~DUPLICATE_q\)) # (min_angle(9) & ((!min_angle(10)) # 
-- (\current_angle[10]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(9),
	datab => ALT_INV_min_angle(10),
	datad => \ALT_INV_current_angle[10]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(9),
	combout => \LessThan2~4_combout\);

-- Location: MLABCELL_X47_Y3_N15
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( min_angle(9) & ( (current_angle(9) & (!min_angle(10) $ (\current_angle[10]~DUPLICATE_q\))) ) ) # ( !min_angle(9) & ( (!current_angle(9) & (!min_angle(10) $ (\current_angle[10]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_min_angle(10),
	datac => ALT_INV_current_angle(9),
	datad => \ALT_INV_current_angle[10]~DUPLICATE_q\,
	dataf => ALT_INV_min_angle(9),
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X47_Y3_N27
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( !\LessThan2~4_combout\ & ( \LessThan2~2_combout\ & ( (!min_angle(8) & ((!current_angle(7)) # ((min_angle(7)) # (current_angle(8))))) # (min_angle(8) & (current_angle(8) & ((!current_angle(7)) # (min_angle(7))))) ) ) ) # ( 
-- !\LessThan2~4_combout\ & ( !\LessThan2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010001110101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(8),
	datab => ALT_INV_current_angle(7),
	datac => ALT_INV_current_angle(8),
	datad => ALT_INV_min_angle(7),
	datae => \ALT_INV_LessThan2~4_combout\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \LessThan2~5_combout\);

-- Location: MLABCELL_X47_Y3_N18
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \LessThan2~2_combout\ & ( (!min_angle(8) & (!current_angle(8) & (!min_angle(7) $ (current_angle(7))))) # (min_angle(8) & (current_angle(8) & (!min_angle(7) $ (current_angle(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(8),
	datab => ALT_INV_current_angle(8),
	datac => ALT_INV_min_angle(7),
	datad => ALT_INV_current_angle(7),
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: FF_X45_Y2_N29
\min_angle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[12]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(12));

-- Location: FF_X45_Y2_N44
\min_angle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[17]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(17));

-- Location: FF_X45_Y2_N50
\min_angle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[16]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(16));

-- Location: LABCELL_X43_Y4_N33
\min_angle[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[15]~5_combout\ = !\write_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_data[15]~input_o\,
	combout => \min_angle[15]~5_combout\);

-- Location: FF_X45_Y2_N20
\min_angle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \min_angle[15]~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(15));

-- Location: FF_X43_Y2_N10
\current_angle[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[16]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N54
\LessThan2~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~35_combout\ = ( \current_angle[15]~DUPLICATE_q\ & ( (min_angle(15) & (!min_angle(16) $ (\current_angle[16]~DUPLICATE_q\))) ) ) # ( !\current_angle[15]~DUPLICATE_q\ & ( (!min_angle(15) & (!min_angle(16) $ (\current_angle[16]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(16),
	datac => ALT_INV_min_angle(15),
	datad => \ALT_INV_current_angle[16]~DUPLICATE_q\,
	dataf => \ALT_INV_current_angle[15]~DUPLICATE_q\,
	combout => \LessThan2~35_combout\);

-- Location: LABCELL_X45_Y2_N6
\min_angle[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[14]~6_combout\ = ( !\write_data[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[14]~input_o\,
	combout => \min_angle[14]~6_combout\);

-- Location: FF_X45_Y2_N26
\min_angle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \min_angle[14]~6_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(14));

-- Location: FF_X45_Y2_N5
\min_angle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[13]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(13));

-- Location: FF_X45_Y2_N8
\min_angle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[11]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(11));

-- Location: LABCELL_X45_Y2_N30
\LessThan2~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~34_combout\ = ( current_angle(13) & ( current_angle(11) & ( (min_angle(13) & (min_angle(11) & (!min_angle(14) $ (current_angle(14))))) ) ) ) # ( !current_angle(13) & ( current_angle(11) & ( (!min_angle(13) & (min_angle(11) & (!min_angle(14) $ 
-- (current_angle(14))))) ) ) ) # ( current_angle(13) & ( !current_angle(11) & ( (min_angle(13) & (!min_angle(11) & (!min_angle(14) $ (current_angle(14))))) ) ) ) # ( !current_angle(13) & ( !current_angle(11) & ( (!min_angle(13) & (!min_angle(11) & 
-- (!min_angle(14) $ (current_angle(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(14),
	datab => ALT_INV_current_angle(14),
	datac => ALT_INV_min_angle(13),
	datad => ALT_INV_min_angle(11),
	datae => ALT_INV_current_angle(13),
	dataf => ALT_INV_current_angle(11),
	combout => \LessThan2~34_combout\);

-- Location: LABCELL_X45_Y2_N51
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( \LessThan2~35_combout\ & ( \LessThan2~34_combout\ & ( (!min_angle(12) & (!current_angle(12) & (!min_angle(17) $ (current_angle(17))))) # (min_angle(12) & (current_angle(12) & (!min_angle(17) $ (current_angle(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(12),
	datab => ALT_INV_min_angle(17),
	datac => ALT_INV_current_angle(12),
	datad => ALT_INV_current_angle(17),
	datae => \ALT_INV_LessThan2~35_combout\,
	dataf => \ALT_INV_LessThan2~34_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LABCELL_X45_Y2_N9
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( current_angle(14) & ( !min_angle(14) ) ) # ( !current_angle(14) & ( min_angle(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(14),
	dataf => ALT_INV_current_angle(14),
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X45_Y2_N57
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( current_angle(13) & ( !min_angle(13) ) ) # ( !current_angle(13) & ( min_angle(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min_angle(13),
	dataf => ALT_INV_current_angle(13),
	combout => \LessThan2~8_combout\);

-- Location: LABCELL_X45_Y2_N45
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( \current_angle[16]~DUPLICATE_q\ & ( current_angle(17) & ( (min_angle(17) & (min_angle(16) & (!min_angle(15) $ (\current_angle[15]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[16]~DUPLICATE_q\ & ( current_angle(17) & ( 
-- (min_angle(17) & (!min_angle(16) & (!min_angle(15) $ (\current_angle[15]~DUPLICATE_q\)))) ) ) ) # ( \current_angle[16]~DUPLICATE_q\ & ( !current_angle(17) & ( (!min_angle(17) & (min_angle(16) & (!min_angle(15) $ (\current_angle[15]~DUPLICATE_q\)))) ) ) ) 
-- # ( !\current_angle[16]~DUPLICATE_q\ & ( !current_angle(17) & ( (!min_angle(17) & (!min_angle(16) & (!min_angle(15) $ (\current_angle[15]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(15),
	datab => ALT_INV_min_angle(17),
	datac => \ALT_INV_current_angle[15]~DUPLICATE_q\,
	datad => ALT_INV_min_angle(16),
	datae => \ALT_INV_current_angle[16]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X45_Y2_N15
\LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = ( current_angle(11) & ( !min_angle(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min_angle(11),
	dataf => ALT_INV_current_angle(11),
	combout => \LessThan2~12_combout\);

-- Location: LABCELL_X45_Y2_N21
\LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = ( \LessThan2~6_combout\ & ( \LessThan2~12_combout\ & ( (!\LessThan2~7_combout\ & (!\LessThan2~8_combout\ & ((!min_angle(12)) # (current_angle(12))))) ) ) ) # ( \LessThan2~6_combout\ & ( !\LessThan2~12_combout\ & ( (!min_angle(12) 
-- & (!\LessThan2~7_combout\ & (!\LessThan2~8_combout\ & current_angle(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(12),
	datab => \ALT_INV_LessThan2~7_combout\,
	datac => \ALT_INV_LessThan2~8_combout\,
	datad => ALT_INV_current_angle(12),
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_LessThan2~12_combout\,
	combout => \LessThan2~13_combout\);

-- Location: LABCELL_X45_Y2_N0
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( \current_angle[16]~DUPLICATE_q\ & ( current_angle(17) & ( (!min_angle(16)) # ((!min_angle(17)) # ((min_angle(15) & !\current_angle[15]~DUPLICATE_q\))) ) ) ) # ( !\current_angle[16]~DUPLICATE_q\ & ( current_angle(17) & ( 
-- (!min_angle(17)) # ((!min_angle(16) & (min_angle(15) & !\current_angle[15]~DUPLICATE_q\))) ) ) ) # ( \current_angle[16]~DUPLICATE_q\ & ( !current_angle(17) & ( (!min_angle(17) & ((!min_angle(16)) # ((min_angle(15) & !\current_angle[15]~DUPLICATE_q\)))) ) 
-- ) ) # ( !\current_angle[16]~DUPLICATE_q\ & ( !current_angle(17) & ( (!min_angle(16) & (!min_angle(17) & (min_angle(15) & !\current_angle[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100011001000100011001110110011001110111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(16),
	datab => ALT_INV_min_angle(17),
	datac => ALT_INV_min_angle(15),
	datad => \ALT_INV_current_angle[15]~DUPLICATE_q\,
	datae => \ALT_INV_current_angle[16]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(17),
	combout => \LessThan2~10_combout\);

-- Location: LABCELL_X45_Y2_N36
\LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = ( \LessThan2~6_combout\ & ( !\LessThan2~10_combout\ & ( (!min_angle(14) & (((!current_angle(13)) # (current_angle(14))) # (min_angle(13)))) # (min_angle(14) & (current_angle(14) & ((!current_angle(13)) # (min_angle(13))))) ) ) ) # 
-- ( !\LessThan2~6_combout\ & ( !\LessThan2~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110100001111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min_angle(13),
	datab => ALT_INV_current_angle(13),
	datac => ALT_INV_min_angle(14),
	datad => ALT_INV_current_angle(14),
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_LessThan2~10_combout\,
	combout => \LessThan2~11_combout\);

-- Location: LABCELL_X43_Y1_N36
\min_angle[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[6]~1_combout\ = ( !\write_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[6]~input_o\,
	combout => \min_angle[6]~1_combout\);

-- Location: FF_X43_Y1_N37
\min_angle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[6]~1_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(6));

-- Location: LABCELL_X43_Y1_N54
\min_angle[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[5]~feeder_combout\ = ( \write_data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[5]~input_o\,
	combout => \min_angle[5]~feeder_combout\);

-- Location: FF_X43_Y1_N56
\min_angle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(5));

-- Location: LABCELL_X43_Y1_N27
\min_angle[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_angle[4]~2_combout\ = ( !\write_data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_write_data[4]~input_o\,
	combout => \min_angle[4]~2_combout\);

-- Location: FF_X43_Y1_N29
\min_angle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \min_angle[4]~2_combout\,
	clrn => \reset~input_o\,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(4));

-- Location: FF_X43_Y1_N47
\min_angle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \write_data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \min_angle[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_angle(3));

-- Location: LABCELL_X43_Y1_N12
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( min_angle(3) & ( \current_angle[3]~DUPLICATE_q\ & ( (min_angle(4) & !current_angle(4)) ) ) ) # ( !min_angle(3) & ( \current_angle[3]~DUPLICATE_q\ & ( (!current_angle(4)) # (min_angle(4)) ) ) ) # ( min_angle(3) & ( 
-- !\current_angle[3]~DUPLICATE_q\ & ( (min_angle(4) & !current_angle(4)) ) ) ) # ( !min_angle(3) & ( !\current_angle[3]~DUPLICATE_q\ & ( (min_angle(4) & !current_angle(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min_angle(4),
	datad => ALT_INV_current_angle(4),
	datae => ALT_INV_min_angle(3),
	dataf => \ALT_INV_current_angle[3]~DUPLICATE_q\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X43_Y1_N21
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( min_angle(5) & ( \LessThan2~0_combout\ & ( (!current_angle(6) & ((current_angle(5)) # (min_angle(6)))) # (current_angle(6) & (min_angle(6) & current_angle(5))) ) ) ) # ( !min_angle(5) & ( \LessThan2~0_combout\ & ( 
-- (!current_angle(6)) # (min_angle(6)) ) ) ) # ( min_angle(5) & ( !\LessThan2~0_combout\ & ( (!current_angle(6) & min_angle(6)) ) ) ) # ( !min_angle(5) & ( !\LessThan2~0_combout\ & ( (!current_angle(6) & ((current_angle(5)) # (min_angle(6)))) # 
-- (current_angle(6) & (min_angle(6) & current_angle(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010100000101010101111101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(6),
	datac => ALT_INV_min_angle(6),
	datad => ALT_INV_current_angle(5),
	datae => ALT_INV_min_angle(5),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X46_Y3_N48
\LessThan2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = ( \LessThan2~11_combout\ & ( \LessThan2~1_combout\ & ( (!\LessThan2~13_combout\ & ((!\LessThan2~9_combout\) # ((\LessThan2~5_combout\ & !\LessThan2~3_combout\)))) ) ) ) # ( \LessThan2~11_combout\ & ( !\LessThan2~1_combout\ & ( 
-- (!\LessThan2~13_combout\ & ((!\LessThan2~9_combout\) # (\LessThan2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010000000000000000000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~5_combout\,
	datab => \ALT_INV_LessThan2~3_combout\,
	datac => \ALT_INV_LessThan2~9_combout\,
	datad => \ALT_INV_LessThan2~13_combout\,
	datae => \ALT_INV_LessThan2~11_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~14_combout\);

-- Location: LABCELL_X46_Y3_N6
\LessThan2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~33_combout\ = ( \LessThan2~14_combout\ & ( (\LessThan2~32_combout\ & ((!\LessThan2~28_combout\) # (\LessThan2~23_combout\))) ) ) # ( !\LessThan2~14_combout\ & ( (\LessThan2~32_combout\ & ((!\LessThan2~28_combout\) # ((!\LessThan2~19_combout\ & 
-- \LessThan2~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001110000011000000111000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~19_combout\,
	datab => \ALT_INV_LessThan2~28_combout\,
	datac => \ALT_INV_LessThan2~32_combout\,
	datad => \ALT_INV_LessThan2~23_combout\,
	dataf => \ALT_INV_LessThan2~14_combout\,
	combout => \LessThan2~33_combout\);

-- Location: LABCELL_X46_Y3_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \LessThan2~33_combout\ & ( (\write_enable~input_o\ & \current_state.INT_RIGHT~q\) ) ) # ( !\LessThan2~33_combout\ & ( ((\write_enable~input_o\ & \current_state.INT_RIGHT~q\)) # (\current_state.SWEEP_LEFT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datab => \ALT_INV_current_state.INT_RIGHT~q\,
	datad => \ALT_INV_current_state.SWEEP_LEFT~q\,
	dataf => \ALT_INV_LessThan2~33_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X46_Y3_N44
\current_state.SWEEP_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SWEEP_LEFT~q\);

-- Location: LABCELL_X42_Y2_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( periodCount(4) ) + ( VCC ) + ( !VCC ))
-- \Add0~38\ = CARRY(( periodCount(4) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(4),
	cin => GND,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X42_Y2_N31
\periodCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(4));

-- Location: LABCELL_X42_Y2_N33
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( periodCount(5) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( periodCount(5) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(5),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X42_Y2_N35
\periodCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(5));

-- Location: LABCELL_X42_Y2_N36
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( periodCount(6) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( periodCount(6) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(6),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X42_Y2_N38
\periodCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(6));

-- Location: LABCELL_X42_Y2_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( periodCount(7) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~54\ = CARRY(( periodCount(7) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(7),
	cin => \Add0~30\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X42_Y2_N41
\periodCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(7));

-- Location: LABCELL_X42_Y2_N42
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( periodCount(8) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~42\ = CARRY(( periodCount(8) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(8),
	cin => \Add0~54\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X42_Y2_N43
\periodCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(8));

-- Location: LABCELL_X42_Y2_N6
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( periodCount(6) & ( !periodCount(7) & ( (!periodCount(5) & (!periodCount(8) & !periodCount(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(5),
	datab => ALT_INV_periodCount(8),
	datac => ALT_INV_periodCount(4),
	datae => ALT_INV_periodCount(6),
	dataf => ALT_INV_periodCount(7),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X42_Y2_N45
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( periodCount(9) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~50\ = CARRY(( periodCount(9) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(9),
	cin => \Add0~42\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X42_Y2_N47
\periodCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(9));

-- Location: LABCELL_X42_Y2_N48
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( periodCount(10) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( periodCount(10) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(10),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X42_Y2_N49
\periodCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(10));

-- Location: LABCELL_X42_Y2_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \periodCount[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~26\ = CARRY(( \periodCount[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_periodCount[11]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X42_Y2_N53
\periodCount[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[11]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y2_N54
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \periodCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( \periodCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[12]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X42_Y2_N56
\periodCount[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[12]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y2_N57
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \periodCount[13]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \periodCount[13]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[13]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X42_Y2_N59
\periodCount[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[13]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( periodCount(14) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( periodCount(14) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(14),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X42_Y1_N1
\periodCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(14));

-- Location: LABCELL_X42_Y1_N3
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \periodCount[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~14\ = CARRY(( \periodCount[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_periodCount[15]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X42_Y1_N5
\periodCount[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[15]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( periodCount(16) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( periodCount(16) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(16),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X42_Y1_N8
\periodCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(16));

-- Location: LABCELL_X42_Y1_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \periodCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( \periodCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[17]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X42_Y1_N11
\periodCount[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[17]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N12
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \periodCount[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~82\ = CARRY(( \periodCount[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_periodCount[18]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X42_Y1_N14
\periodCount[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[18]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N15
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( periodCount(19) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( periodCount(19) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(19),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X42_Y1_N17
\periodCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(19));

-- Location: LABCELL_X42_Y1_N18
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( periodCount(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( periodCount(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(20),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X42_Y1_N20
\periodCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(20));

-- Location: LABCELL_X42_Y1_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \periodCount[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~58\ = CARRY(( \periodCount[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_periodCount[21]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X42_Y1_N23
\periodCount[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[21]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N24
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( periodCount(22) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~70\ = CARRY(( periodCount(22) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(22),
	cin => \Add0~58\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X42_Y1_N25
\periodCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(22));

-- Location: LABCELL_X42_Y1_N27
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( periodCount(23) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( periodCount(23) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(23),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X42_Y1_N28
\periodCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(23));

-- Location: LABCELL_X42_Y1_N30
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( periodCount(24) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( periodCount(24) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(24),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X42_Y1_N31
\periodCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(24));

-- Location: LABCELL_X42_Y1_N33
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( periodCount(25) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~110\ = CARRY(( periodCount(25) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(25),
	cin => \Add0~62\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X42_Y1_N35
\periodCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(25));

-- Location: LABCELL_X42_Y1_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( periodCount(26) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( periodCount(26) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(26),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X42_Y1_N38
\periodCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(26));

-- Location: LABCELL_X42_Y1_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( periodCount(27) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( periodCount(27) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(27),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X42_Y1_N40
\periodCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(27));

-- Location: LABCELL_X42_Y1_N42
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \periodCount[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~86\ = CARRY(( \periodCount[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_periodCount[28]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X42_Y1_N44
\periodCount[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[28]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N45
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( periodCount(29) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~98\ = CARRY(( periodCount(29) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(29),
	cin => \Add0~86\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X42_Y1_N46
\periodCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(29));

-- Location: LABCELL_X42_Y1_N48
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( periodCount(30) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( periodCount(30) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(30),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X42_Y1_N50
\periodCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(30));

-- Location: LABCELL_X42_Y1_N51
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( periodCount(31) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(31),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\);

-- Location: FF_X42_Y1_N52
\periodCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(31));

-- Location: LABCELL_X42_Y2_N0
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !periodCount(31) & ( periodCount(14) & ( (!\periodCount[12]~DUPLICATE_q\ & (!\periodCount[13]~DUPLICATE_q\ & (!\periodCount[11]~DUPLICATE_q\ & !periodCount(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_periodCount[12]~DUPLICATE_q\,
	datab => \ALT_INV_periodCount[13]~DUPLICATE_q\,
	datac => \ALT_INV_periodCount[11]~DUPLICATE_q\,
	datad => ALT_INV_periodCount(10),
	datae => ALT_INV_periodCount(31),
	dataf => ALT_INV_periodCount(14),
	combout => \Equal0~2_combout\);

-- Location: FF_X42_Y1_N10
\periodCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(17));

-- Location: LABCELL_X42_Y1_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( periodCount(17) & ( periodCount(19) & ( (!\periodCount[21]~DUPLICATE_q\ & (periodCount(16) & (!periodCount(20) & \periodCount[18]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_periodCount[21]~DUPLICATE_q\,
	datab => ALT_INV_periodCount(16),
	datac => ALT_INV_periodCount(20),
	datad => \ALT_INV_periodCount[18]~DUPLICATE_q\,
	datae => ALT_INV_periodCount(17),
	dataf => ALT_INV_periodCount(19),
	combout => \Equal0~1_combout\);

-- Location: FF_X42_Y1_N34
\periodCount[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[25]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !periodCount(23) & ( !periodCount(24) & ( (!periodCount(22) & !\periodCount[25]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(22),
	datac => \ALT_INV_periodCount[25]~DUPLICATE_q\,
	datae => ALT_INV_periodCount(23),
	dataf => ALT_INV_periodCount(24),
	combout => \Equal0~0_combout\);

-- Location: FF_X42_Y1_N49
\periodCount[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[30]~DUPLICATE_q\);

-- Location: FF_X42_Y1_N37
\periodCount[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[26]~DUPLICATE_q\);

-- Location: FF_X42_Y1_N43
\periodCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(28));

-- Location: FF_X42_Y1_N4
\periodCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(15));

-- Location: LABCELL_X43_Y1_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !periodCount(29) & ( !periodCount(15) & ( (!periodCount(27) & (!\periodCount[30]~DUPLICATE_q\ & (!\periodCount[26]~DUPLICATE_q\ & !periodCount(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(27),
	datab => \ALT_INV_periodCount[30]~DUPLICATE_q\,
	datac => \ALT_INV_periodCount[26]~DUPLICATE_q\,
	datad => ALT_INV_periodCount(28),
	datae => ALT_INV_periodCount(29),
	dataf => ALT_INV_periodCount(15),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X42_Y2_N12
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~0_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~4_combout\ & (periodCount(9) & (\Equal0~2_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => ALT_INV_periodCount(9),
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X42_Y2_N21
\current_angle[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[3]~2_combout\ = ( \Equal0~5_combout\ & ( (!\current_state.SWEEP_RIGHT~q\) # (\current_state.SWEEP_LEFT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_state.SWEEP_LEFT~q\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \current_angle[3]~2_combout\);

-- Location: FF_X43_Y2_N26
\current_angle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(21));

-- Location: FF_X43_Y2_N25
\current_angle[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[21]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y4_N33
\LessThan2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = ( \current_angle[18]~DUPLICATE_q\ & ( !min_angle(18) ) ) # ( !\current_angle[18]~DUPLICATE_q\ & ( min_angle(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min_angle(18),
	dataf => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	combout => \LessThan2~18_combout\);

-- Location: LABCELL_X45_Y4_N15
\LessThan2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~17_combout\ = ( !min_angle(19) & ( \current_angle[19]~DUPLICATE_q\ ) ) # ( min_angle(19) & ( !\current_angle[19]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_min_angle(19),
	dataf => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	combout => \LessThan2~17_combout\);

-- Location: LABCELL_X45_Y4_N0
\LessThan2~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~19_combout\ = ( !\LessThan2~16_combout\ & ( \LessThan2~15_combout\ & ( (!\LessThan2~18_combout\ & (!\LessThan2~17_combout\ & (!\current_angle[21]~DUPLICATE_q\ $ (min_angle(21))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datab => ALT_INV_min_angle(21),
	datac => \ALT_INV_LessThan2~18_combout\,
	datad => \ALT_INV_LessThan2~17_combout\,
	datae => \ALT_INV_LessThan2~16_combout\,
	dataf => \ALT_INV_LessThan2~15_combout\,
	combout => \LessThan2~19_combout\);

-- Location: LABCELL_X46_Y3_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \LessThan2~23_combout\ & ( \LessThan2~14_combout\ & ( (\LessThan2~32_combout\ & \current_state.SWEEP_LEFT~q\) ) ) ) # ( !\LessThan2~23_combout\ & ( \LessThan2~14_combout\ & ( (!\LessThan2~28_combout\ & (\LessThan2~32_combout\ & 
-- \current_state.SWEEP_LEFT~q\)) ) ) ) # ( \LessThan2~23_combout\ & ( !\LessThan2~14_combout\ & ( (\LessThan2~32_combout\ & (\current_state.SWEEP_LEFT~q\ & ((!\LessThan2~19_combout\) # (!\LessThan2~28_combout\)))) ) ) ) # ( !\LessThan2~23_combout\ & ( 
-- !\LessThan2~14_combout\ & ( (!\LessThan2~28_combout\ & (\LessThan2~32_combout\ & \current_state.SWEEP_LEFT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000111000000000000011000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~19_combout\,
	datab => \ALT_INV_LessThan2~28_combout\,
	datac => \ALT_INV_LessThan2~32_combout\,
	datad => \ALT_INV_current_state.SWEEP_LEFT~q\,
	datae => \ALT_INV_LessThan2~23_combout\,
	dataf => \ALT_INV_LessThan2~14_combout\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X46_Y3_N9
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \Selector3~0_combout\ ) # ( !\Selector3~0_combout\ & ( (!\write_enable~input_o\ & \current_state.INT_LEFT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_write_enable~input_o\,
	datad => \ALT_INV_current_state.INT_LEFT~q\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X46_Y3_N11
\current_state.INT_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INT_LEFT~q\);

-- Location: LABCELL_X45_Y3_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \LessThan1~24_combout\ & ( (!\write_enable~input_o\) # (!\current_state.INT_LEFT~q\) ) ) # ( !\LessThan1~24_combout\ & ( (\current_state.SWEEP_RIGHT~q\ & ((!\write_enable~input_o\) # (!\current_state.INT_LEFT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_write_enable~input_o\,
	datac => \ALT_INV_current_state.INT_LEFT~q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	dataf => \ALT_INV_LessThan1~24_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X45_Y3_N14
\current_state.SWEEP_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SWEEP_RIGHT~q\);

-- Location: LABCELL_X46_Y3_N36
\irq_process~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \irq_process~0_combout\ = ( \current_state.INT_LEFT~q\ & ( \LessThan1~24_combout\ & ( (!\write_enable~input_o\) # ((!\current_state.SWEEP_RIGHT~q\) # (\Selector3~0_combout\)) ) ) ) # ( !\current_state.INT_LEFT~q\ & ( \LessThan1~24_combout\ & ( 
-- (!\current_state.SWEEP_RIGHT~q\) # (((!\write_enable~input_o\ & \current_state.INT_RIGHT~q\)) # (\Selector3~0_combout\)) ) ) ) # ( \current_state.INT_LEFT~q\ & ( !\LessThan1~24_combout\ & ( (!\write_enable~input_o\) # (\Selector3~0_combout\) ) ) ) # ( 
-- !\current_state.INT_LEFT~q\ & ( !\LessThan1~24_combout\ & ( ((!\write_enable~input_o\ & \current_state.INT_RIGHT~q\)) # (\Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111101011111010111111001111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datab => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_current_state.INT_RIGHT~q\,
	datae => \ALT_INV_current_state.INT_LEFT~q\,
	dataf => \ALT_INV_LessThan1~24_combout\,
	combout => \irq_process~0_combout\);

-- Location: FF_X46_Y3_N37
\irq~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \irq_process~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irq~reg0_q\);

-- Location: LABCELL_X46_Y1_N33
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( current_angle(27) & ( !periodCount(27) ) ) # ( !current_angle(27) & ( periodCount(27) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(27),
	dataf => ALT_INV_current_angle(27),
	combout => \LessThan0~24_combout\);

-- Location: LABCELL_X46_Y1_N0
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( current_angle(26) & ( !\periodCount[26]~DUPLICATE_q\ ) ) # ( !current_angle(26) & ( \periodCount[26]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[26]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(26),
	combout => \LessThan0~25_combout\);

-- Location: LABCELL_X46_Y1_N45
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( !\current_angle[25]~DUPLICATE_q\ & ( \periodCount[25]~DUPLICATE_q\ ) ) # ( \current_angle[25]~DUPLICATE_q\ & ( !\periodCount[25]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	dataf => \ALT_INV_periodCount[25]~DUPLICATE_q\,
	combout => \LessThan0~26_combout\);

-- Location: LABCELL_X46_Y1_N24
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( \current_angle[31]~DUPLICATE_q\ & ( current_angle(30) & ( (periodCount(31) & (\periodCount[30]~DUPLICATE_q\ & (!periodCount(29) $ (\current_angle[29]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[31]~DUPLICATE_q\ & ( 
-- current_angle(30) & ( (!periodCount(31) & (\periodCount[30]~DUPLICATE_q\ & (!periodCount(29) $ (\current_angle[29]~DUPLICATE_q\)))) ) ) ) # ( \current_angle[31]~DUPLICATE_q\ & ( !current_angle(30) & ( (periodCount(31) & (!\periodCount[30]~DUPLICATE_q\ & 
-- (!periodCount(29) $ (\current_angle[29]~DUPLICATE_q\)))) ) ) ) # ( !\current_angle[31]~DUPLICATE_q\ & ( !current_angle(30) & ( (!periodCount(31) & (!\periodCount[30]~DUPLICATE_q\ & (!periodCount(29) $ (\current_angle[29]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(29),
	datab => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(31),
	datad => \ALT_INV_periodCount[30]~DUPLICATE_q\,
	datae => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan0~23_combout\);

-- Location: LABCELL_X46_Y1_N39
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( !\LessThan0~26_combout\ & ( \LessThan0~23_combout\ & ( (!\LessThan0~24_combout\ & (!\LessThan0~25_combout\ & (!\current_angle[28]~DUPLICATE_q\ $ (\periodCount[28]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~24_combout\,
	datab => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datac => \ALT_INV_periodCount[28]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan0~25_combout\,
	datae => \ALT_INV_LessThan0~26_combout\,
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \LessThan0~27_combout\);

-- Location: MLABCELL_X47_Y3_N3
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \current_angle[20]~DUPLICATE_q\ & ( !periodCount(20) ) ) # ( !\current_angle[20]~DUPLICATE_q\ & ( periodCount(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(20),
	dataf => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	combout => \LessThan0~15_combout\);

-- Location: MLABCELL_X47_Y3_N30
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \current_angle[19]~DUPLICATE_q\ & ( !periodCount(19) ) ) # ( !\current_angle[19]~DUPLICATE_q\ & ( periodCount(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(19),
	dataf => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	combout => \LessThan0~16_combout\);

-- Location: FF_X42_Y1_N22
\periodCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(21));

-- Location: FF_X42_Y1_N13
\periodCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(18));

-- Location: MLABCELL_X47_Y3_N21
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = !periodCount(18) $ (!\current_angle[18]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(18),
	datad => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X43_Y1_N3
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( current_angle(24) & ( current_angle(23) & ( (periodCount(23) & (periodCount(24) & (!current_angle(22) $ (periodCount(22))))) ) ) ) # ( !current_angle(24) & ( current_angle(23) & ( (periodCount(23) & (!periodCount(24) & 
-- (!current_angle(22) $ (periodCount(22))))) ) ) ) # ( current_angle(24) & ( !current_angle(23) & ( (!periodCount(23) & (periodCount(24) & (!current_angle(22) $ (periodCount(22))))) ) ) ) # ( !current_angle(24) & ( !current_angle(23) & ( (!periodCount(23) & 
-- (!periodCount(24) & (!current_angle(22) $ (periodCount(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(23),
	datab => ALT_INV_current_angle(22),
	datac => ALT_INV_periodCount(22),
	datad => ALT_INV_periodCount(24),
	datae => ALT_INV_current_angle(24),
	dataf => ALT_INV_current_angle(23),
	combout => \LessThan0~14_combout\);

-- Location: MLABCELL_X47_Y3_N42
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( !\LessThan0~17_combout\ & ( \LessThan0~14_combout\ & ( (!\LessThan0~15_combout\ & (!\LessThan0~16_combout\ & (!\current_angle[21]~DUPLICATE_q\ $ (periodCount(21))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~15_combout\,
	datab => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~16_combout\,
	datad => ALT_INV_periodCount(21),
	datae => \ALT_INV_LessThan0~17_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~18_combout\);

-- Location: FF_X42_Y2_N52
\periodCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(11));

-- Location: FF_X42_Y2_N55
\periodCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(12));

-- Location: FF_X42_Y2_N58
\periodCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(13));

-- Location: LABCELL_X42_Y3_N0
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( current_angle(16) & ( \periodCount[15]~DUPLICATE_q\ & ( (!current_angle(15) & (periodCount(16) & (!current_angle(17) $ (periodCount(17))))) ) ) ) # ( !current_angle(16) & ( \periodCount[15]~DUPLICATE_q\ & ( (!current_angle(15) & 
-- (!periodCount(16) & (!current_angle(17) $ (periodCount(17))))) ) ) ) # ( current_angle(16) & ( !\periodCount[15]~DUPLICATE_q\ & ( (current_angle(15) & (periodCount(16) & (!current_angle(17) $ (periodCount(17))))) ) ) ) # ( !current_angle(16) & ( 
-- !\periodCount[15]~DUPLICATE_q\ & ( (current_angle(15) & (!periodCount(16) & (!current_angle(17) $ (periodCount(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100000100000000000110000000000010000010000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(15),
	datab => ALT_INV_periodCount(16),
	datac => ALT_INV_current_angle(17),
	datad => ALT_INV_periodCount(17),
	datae => ALT_INV_current_angle(16),
	dataf => \ALT_INV_periodCount[15]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X42_Y3_N6
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( periodCount(14) & ( (!current_angle(14) & (\LessThan0~0_combout\ & (!current_angle(13) $ (periodCount(13))))) ) ) # ( !periodCount(14) & ( (current_angle(14) & (\LessThan0~0_combout\ & (!current_angle(13) $ (periodCount(13))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000000000100100000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(13),
	datab => ALT_INV_periodCount(13),
	datac => ALT_INV_current_angle(14),
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => ALT_INV_periodCount(14),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X42_Y3_N54
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( current_angle(16) & ( \periodCount[15]~DUPLICATE_q\ & ( (!current_angle(17) & (!periodCount(16) & !periodCount(17))) # (current_angle(17) & ((!periodCount(16)) # (!periodCount(17)))) ) ) ) # ( !current_angle(16) & ( 
-- \periodCount[15]~DUPLICATE_q\ & ( (current_angle(17) & !periodCount(17)) ) ) ) # ( current_angle(16) & ( !\periodCount[15]~DUPLICATE_q\ & ( (!current_angle(17) & (!periodCount(17) & ((!periodCount(16)) # (!current_angle(15))))) # (current_angle(17) & 
-- ((!periodCount(16)) # ((!current_angle(15)) # (!periodCount(17))))) ) ) ) # ( !current_angle(16) & ( !\periodCount[15]~DUPLICATE_q\ & ( (!current_angle(17) & (!periodCount(16) & (!current_angle(15) & !periodCount(17)))) # (current_angle(17) & 
-- ((!periodCount(17)) # ((!periodCount(16) & !current_angle(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101000000111111010101010001010101000000001101110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(17),
	datab => ALT_INV_periodCount(16),
	datac => ALT_INV_current_angle(15),
	datad => ALT_INV_periodCount(17),
	datae => ALT_INV_current_angle(16),
	dataf => \ALT_INV_periodCount[15]~DUPLICATE_q\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X42_Y3_N36
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \LessThan0~0_combout\ & ( current_angle(14) & ( (!\LessThan0~11_combout\ & ((!current_angle(13)) # ((periodCount(14)) # (periodCount(13))))) ) ) ) # ( !\LessThan0~0_combout\ & ( current_angle(14) & ( !\LessThan0~11_combout\ ) ) 
-- ) # ( \LessThan0~0_combout\ & ( !current_angle(14) & ( (!\LessThan0~11_combout\ & (periodCount(14) & ((!current_angle(13)) # (periodCount(13))))) ) ) ) # ( !\LessThan0~0_combout\ & ( !current_angle(14) & ( !\LessThan0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000001011000011110000111100001011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(13),
	datab => ALT_INV_periodCount(13),
	datac => \ALT_INV_LessThan0~11_combout\,
	datad => ALT_INV_periodCount(14),
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => ALT_INV_current_angle(14),
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X43_Y3_N18
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~12_combout\ & ( (!periodCount(12) & (!current_angle(12) & ((!current_angle(11)) # (periodCount(11))))) # (periodCount(12) & (((!current_angle(11)) # (!current_angle(12))) # 
-- (periodCount(11)))) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111011100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(11),
	datab => ALT_INV_periodCount(12),
	datac => ALT_INV_current_angle(11),
	datad => ALT_INV_current_angle(12),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: MLABCELL_X47_Y3_N57
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \LessThan0~14_combout\ & ( (!\LessThan0~15_combout\ & (!periodCount(21) $ (\current_angle[21]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~15_combout\,
	datab => ALT_INV_periodCount(21),
	datac => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~19_combout\);

-- Location: FF_X43_Y2_N28
\current_angle[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[22]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N51
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( periodCount(23) & ( periodCount(22) & ( (!periodCount(24) & current_angle(24)) ) ) ) # ( !periodCount(23) & ( periodCount(22) & ( (!current_angle(23) & (!periodCount(24) & current_angle(24))) # (current_angle(23) & 
-- ((!periodCount(24)) # (current_angle(24)))) ) ) ) # ( periodCount(23) & ( !periodCount(22) & ( (!periodCount(24) & (((current_angle(23) & \current_angle[22]~DUPLICATE_q\)) # (current_angle(24)))) # (periodCount(24) & (current_angle(23) & 
-- (\current_angle[22]~DUPLICATE_q\ & current_angle(24)))) ) ) ) # ( !periodCount(23) & ( !periodCount(22) & ( (!periodCount(24) & (((current_angle(24)) # (\current_angle[22]~DUPLICATE_q\)) # (current_angle(23)))) # (periodCount(24) & (current_angle(24) & 
-- ((\current_angle[22]~DUPLICATE_q\) # (current_angle(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111000100001111000101010000111101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(23),
	datab => \ALT_INV_current_angle[22]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(24),
	datad => ALT_INV_current_angle(24),
	datae => ALT_INV_periodCount(23),
	dataf => ALT_INV_periodCount(22),
	combout => \LessThan0~20_combout\);

-- Location: MLABCELL_X47_Y3_N48
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( !\LessThan0~20_combout\ & ( \LessThan0~14_combout\ & ( (!\current_angle[21]~DUPLICATE_q\ & ((!\current_angle[20]~DUPLICATE_q\) # ((periodCount(21)) # (periodCount(20))))) # (\current_angle[21]~DUPLICATE_q\ & (periodCount(21) & 
-- ((!\current_angle[20]~DUPLICATE_q\) # (periodCount(20))))) ) ) ) # ( !\LessThan0~20_combout\ & ( !\LessThan0~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010001100111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[20]~DUPLICATE_q\,
	datab => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(20),
	datad => ALT_INV_periodCount(21),
	datae => \ALT_INV_LessThan0~20_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~21_combout\);

-- Location: MLABCELL_X47_Y3_N6
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \LessThan0~19_combout\ & ( \LessThan0~21_combout\ & ( (!periodCount(19) & (!\current_angle[19]~DUPLICATE_q\ & ((!\current_angle[18]~DUPLICATE_q\) # (periodCount(18))))) # (periodCount(19) & ((!\current_angle[18]~DUPLICATE_q\) # 
-- ((!\current_angle[19]~DUPLICATE_q\) # (periodCount(18))))) ) ) ) # ( !\LessThan0~19_combout\ & ( \LessThan0~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111011111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datab => ALT_INV_periodCount(18),
	datac => ALT_INV_periodCount(19),
	datad => \ALT_INV_current_angle[19]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_LessThan0~21_combout\,
	combout => \LessThan0~22_combout\);

-- Location: LABCELL_X46_Y1_N12
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( \current_angle[31]~DUPLICATE_q\ & ( current_angle(30) & ( (!periodCount(31)) # ((!\periodCount[30]~DUPLICATE_q\) # ((!periodCount(29) & \current_angle[29]~DUPLICATE_q\))) ) ) ) # ( !\current_angle[31]~DUPLICATE_q\ & ( 
-- current_angle(30) & ( (!periodCount(31) & ((!\periodCount[30]~DUPLICATE_q\) # ((!periodCount(29) & \current_angle[29]~DUPLICATE_q\)))) ) ) ) # ( \current_angle[31]~DUPLICATE_q\ & ( !current_angle(30) & ( (!periodCount(31)) # ((!periodCount(29) & 
-- (\current_angle[29]~DUPLICATE_q\ & !\periodCount[30]~DUPLICATE_q\))) ) ) ) # ( !\current_angle[31]~DUPLICATE_q\ & ( !current_angle(30) & ( (!periodCount(29) & (\current_angle[29]~DUPLICATE_q\ & (!periodCount(31) & !\periodCount[30]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111100101111000011110000001000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(29),
	datab => \ALT_INV_current_angle[29]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(31),
	datad => \ALT_INV_periodCount[30]~DUPLICATE_q\,
	datae => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(30),
	combout => \LessThan0~29_combout\);

-- Location: LABCELL_X46_Y1_N54
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( \periodCount[28]~DUPLICATE_q\ & ( \LessThan0~23_combout\ & ( (!\LessThan0~29_combout\ & ((!current_angle(27)) # ((!\current_angle[28]~DUPLICATE_q\) # (periodCount(27))))) ) ) ) # ( !\periodCount[28]~DUPLICATE_q\ & ( 
-- \LessThan0~23_combout\ & ( (!\current_angle[28]~DUPLICATE_q\ & (!\LessThan0~29_combout\ & ((!current_angle(27)) # (periodCount(27))))) ) ) ) # ( \periodCount[28]~DUPLICATE_q\ & ( !\LessThan0~23_combout\ & ( !\LessThan0~29_combout\ ) ) ) # ( 
-- !\periodCount[28]~DUPLICATE_q\ & ( !\LessThan0~23_combout\ & ( !\LessThan0~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010001100000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(27),
	datab => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(27),
	datad => \ALT_INV_LessThan0~29_combout\,
	datae => \ALT_INV_periodCount[28]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \LessThan0~30_combout\);

-- Location: LABCELL_X46_Y1_N18
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \periodCount[28]~DUPLICATE_q\ & ( \LessThan0~23_combout\ & ( (\current_angle[28]~DUPLICATE_q\ & !\LessThan0~24_combout\) ) ) ) # ( !\periodCount[28]~DUPLICATE_q\ & ( \LessThan0~23_combout\ & ( (!\current_angle[28]~DUPLICATE_q\ & 
-- !\LessThan0~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_angle[28]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~24_combout\,
	datae => \ALT_INV_periodCount[28]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \LessThan0~28_combout\);

-- Location: LABCELL_X46_Y1_N51
\LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = ( \LessThan0~30_combout\ & ( \LessThan0~28_combout\ & ( (!current_angle(26) & (((!\current_angle[25]~DUPLICATE_q\) # (\periodCount[26]~DUPLICATE_q\)) # (\periodCount[25]~DUPLICATE_q\))) # (current_angle(26) & 
-- (\periodCount[26]~DUPLICATE_q\ & ((!\current_angle[25]~DUPLICATE_q\) # (\periodCount[25]~DUPLICATE_q\)))) ) ) ) # ( \LessThan0~30_combout\ & ( !\LessThan0~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100010011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_periodCount[25]~DUPLICATE_q\,
	datab => ALT_INV_current_angle(26),
	datac => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	datad => \ALT_INV_periodCount[26]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan0~30_combout\,
	dataf => \ALT_INV_LessThan0~28_combout\,
	combout => \LessThan0~31_combout\);

-- Location: LABCELL_X42_Y3_N9
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( current_angle(12) & ( !periodCount(12) ) ) # ( !current_angle(12) & ( periodCount(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(12),
	dataf => ALT_INV_current_angle(12),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X43_Y3_N3
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( current_angle(3) & ( (!periodCount(4)) # (!current_angle(4)) ) ) # ( !current_angle(3) & ( (!periodCount(4) & !current_angle(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(4),
	datad => ALT_INV_current_angle(4),
	dataf => ALT_INV_current_angle(3),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X43_Y3_N0
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( (!periodCount(6) & ((!current_angle(6)) # ((!periodCount(5)) # (current_angle(5))))) # (periodCount(6) & (!current_angle(6) & ((!periodCount(5)) # (current_angle(5))))) ) ) # ( !\LessThan0~4_combout\ & ( 
-- (!periodCount(6) & ((!current_angle(6)) # ((!periodCount(5) & current_angle(5))))) # (periodCount(6) & (!current_angle(6) & (!periodCount(5) & current_angle(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011101000100010001110100011101000111011101110100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(6),
	datab => ALT_INV_current_angle(6),
	datac => ALT_INV_periodCount(5),
	datad => ALT_INV_current_angle(5),
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X42_Y2_N18
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( current_angle(11) & ( !\periodCount[11]~DUPLICATE_q\ ) ) # ( !current_angle(11) & ( \periodCount[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[11]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(11),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X43_Y4_N57
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \current_angle[10]~DUPLICATE_q\ & ( current_angle(9) & ( (periodCount(10) & !periodCount(9)) ) ) ) # ( !\current_angle[10]~DUPLICATE_q\ & ( current_angle(9) & ( (!periodCount(10) & !periodCount(9)) ) ) ) # ( 
-- \current_angle[10]~DUPLICATE_q\ & ( !current_angle(9) & ( (periodCount(10) & periodCount(9)) ) ) ) # ( !\current_angle[10]~DUPLICATE_q\ & ( !current_angle(9) & ( (!periodCount(10) & periodCount(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000111111110000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(10),
	datad => ALT_INV_periodCount(9),
	datae => \ALT_INV_current_angle[10]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(9),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X43_Y4_N39
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~6_combout\ & ( periodCount(8) & ( (!current_angle(8) & (!current_angle(7) $ (periodCount(7)))) ) ) ) # ( \LessThan0~6_combout\ & ( !periodCount(8) & ( (current_angle(8) & (!current_angle(7) $ (periodCount(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000010100000000000000001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(7),
	datac => ALT_INV_current_angle(8),
	datad => ALT_INV_periodCount(7),
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => ALT_INV_periodCount(8),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X43_Y4_N30
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( current_angle(9) & ( (!periodCount(10) & \current_angle[10]~DUPLICATE_q\) ) ) # ( !current_angle(9) & ( (!periodCount(10) & ((!periodCount(9)) # (\current_angle[10]~DUPLICATE_q\))) # (periodCount(10) & (!periodCount(9) & 
-- \current_angle[10]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(10),
	datac => ALT_INV_periodCount(9),
	datad => \ALT_INV_current_angle[10]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(9),
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X43_Y4_N24
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~6_combout\ & ( !\LessThan0~8_combout\ & ( (!periodCount(8) & (current_angle(8) & ((!current_angle(7)) # (periodCount(7))))) # (periodCount(8) & ((!current_angle(7)) # ((current_angle(8)) # (periodCount(7))))) ) ) ) # ( 
-- !\LessThan0~6_combout\ & ( !\LessThan0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010001011101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(8),
	datab => ALT_INV_current_angle(7),
	datac => ALT_INV_periodCount(7),
	datad => ALT_INV_current_angle(8),
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X43_Y3_N24
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \LessThan0~7_combout\ & ( \LessThan0~9_combout\ & ( (\LessThan0~1_combout\ & (!\LessThan0~2_combout\ & (\LessThan0~5_combout\ & !\LessThan0~3_combout\))) ) ) ) # ( \LessThan0~7_combout\ & ( !\LessThan0~9_combout\ & ( 
-- (\LessThan0~1_combout\ & (!\LessThan0~2_combout\ & !\LessThan0~3_combout\)) ) ) ) # ( !\LessThan0~7_combout\ & ( !\LessThan0~9_combout\ & ( (\LessThan0~1_combout\ & (!\LessThan0~2_combout\ & !\LessThan0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: MLABCELL_X47_Y3_N36
\LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = ( \LessThan0~31_combout\ & ( \LessThan0~10_combout\ & ( (\LessThan0~27_combout\ & ((!\LessThan0~22_combout\) # (\LessThan0~18_combout\))) ) ) ) # ( !\LessThan0~31_combout\ & ( \LessThan0~10_combout\ ) ) # ( \LessThan0~31_combout\ 
-- & ( !\LessThan0~10_combout\ & ( (\LessThan0~27_combout\ & ((!\LessThan0~22_combout\) # ((\LessThan0~18_combout\ & !\LessThan0~13_combout\)))) ) ) ) # ( !\LessThan0~31_combout\ & ( !\LessThan0~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010001000011111111111111110101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~27_combout\,
	datab => \ALT_INV_LessThan0~18_combout\,
	datac => \ALT_INV_LessThan0~13_combout\,
	datad => \ALT_INV_LessThan0~22_combout\,
	datae => \ALT_INV_LessThan0~31_combout\,
	dataf => \ALT_INV_LessThan0~10_combout\,
	combout => \LessThan0~32_combout\);

-- Location: FF_X47_Y3_N37
\out_wave_export~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LessThan0~32_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_wave_export~reg0_q\);

-- Location: LABCELL_X46_Y60_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


