-- Vhdl test bench created from schematic D:\EDA\half_add\Half_Add.sch - Fri Oct 08 17:05:05 2021
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Half_Add_Half_Add_sch_tb IS
END Half_Add_Half_Add_sch_tb;
ARCHITECTURE behavioral OF Half_Add_Half_Add_sch_tb IS 

   COMPONENT Half_Add
   PORT( A	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          SO	:	OUT	STD_LOGIC; 
          CO	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL A	:	STD_LOGIC := '0';
   SIGNAL B	:	STD_LOGIC := '1';
   SIGNAL SO	:	STD_LOGIC;
   SIGNAL CO	:	STD_LOGIC;

BEGIN

   UUT: Half_Add PORT MAP(
		A => A, 
		B => B, 
		SO => SO, 
		CO => CO
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		A <= '0';
		B <= '0';
		wait for 10 ns;
		A <= '1';
		B <= '0';
		wait for 10 ns;
		A <= '1';
		B <= '1';
		wait for 10ns;
		A <= '0';
		B <= '1';
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
