
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name key_board -dir "C:/Xilinx/key_board/planAhead_run_2" -part xc4vsx25ff668-10
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top main $srcset
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {key_scan.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_div.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {main.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc4vsx25ff668-10
