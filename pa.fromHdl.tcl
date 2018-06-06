
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name clock_pll_275MHz -dir "C:/Users/Jungho/workspace-xilinx/clock_pll_275MHz/planAhead_run_1" -part xc6slx9tqg144-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "clock_pll_275MHz.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/pll_clock.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clock_pll_275MHz.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top clock_pll_275MHz $srcset
add_files [list {clock_pll_275MHz.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-2
