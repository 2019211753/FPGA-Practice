
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name BCD -dir "D:/EDA/BCD/planAhead_run_3" -part xc4vsx25ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/EDA/BCD/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/EDA/BCD} }
set_property target_constrs_file "cons.ucf" [current_fileset -constrset]
add_files [list {cons.ucf}] -fileset [get_property constrset [current_run]]
link_design
