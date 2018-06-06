
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name clock_pll_300MHz -dir "C:/Users/Jungho/workspace-xilinx/clock_pll_300MHz/planAhead_run_2" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Jungho/workspace-xilinx/clock_pll_300MHz/clock_pll_300MHz.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Jungho/workspace-xilinx/clock_pll_300MHz} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "clock_pll_300MHz.ucf" [current_fileset -constrset]
add_files [list {clock_pll_300MHz.ucf}] -fileset [get_property constrset [current_run]]
link_design
