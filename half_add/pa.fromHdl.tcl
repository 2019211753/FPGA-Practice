
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name half_add -dir "D:/EDA/half_add/planAhead_run_1" -part xc4vsx25ff668-10
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Half_Add.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Half_Add.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Half_Add $srcset
add_files [list {Half_Add.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc4vsx25ff668-10
