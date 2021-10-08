-- Vhdl test bench created from schematic D:\EDA\half_add\All_Add.sch - Fri Oct 08 19:17:49 2021
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
ENTITY All_Add_All_Add_sch_tb IS
END All_Add_All_Add_sch_tb;
ARCHITECTURE behavioral OF All_Add_All_Add_sch_tb IS 

   COMPONENT All_Add
   PORT( CIN	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          A	:	IN	STD_LOGIC; 
          COUT	:	OUT	STD_LOGIC; 
          SUM	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL CIN	:	STD_LOGIC :='0';
   SIGNAL B	:	STD_LOGIC :='0';
   SIGNAL A	:	STD_LOGIC :='0';
   SIGNAL COUT	:	STD_LOGIC;
   SIGNAL SUM	:	STD_LOGIC;

BEGIN

   UUT: All_Add PORT MAP(
		CIN => CIN, 
		B => B, 
		A => A, 
		COUT => COUT, 
		SUM => SUM
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		A <= '0';
		B <= '0';
		CIN <= '0';
		wait for 10 ns;
		
		A <= '0';
		B <= '0';
		CIN <= '1';
		wait for 10 ns;
		
		A <= '0';
		B <= '1';
		CIN <= '0';
		wait for 10 ns;
		
		A <= '0';
		B <= '1';
		CIN <= '1';
		wait for 10 ns;
		
		A <= '1';
		B <= '0';
		CIN <= '0';
		wait for 10 ns;
		
		A <= '1';
		B <= '0';
		CIN <= '1';
		wait for 10 ns;
		
		A <= '1';
		B <= '1';
		CIN <= '0';
		wait for 10 ns;
		
		A <= '1';
		B <= '1';
		CIN <= '1';
		wait for 10 ns;

   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
