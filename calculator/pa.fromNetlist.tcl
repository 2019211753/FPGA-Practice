
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name key_board -dir "C:/Users/Administrator/Desktop/calculator/planAhead_run_3" -part xc4vsx25ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Administrator/Desktop/calculator/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Administrator/Desktop/calculator} }
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
