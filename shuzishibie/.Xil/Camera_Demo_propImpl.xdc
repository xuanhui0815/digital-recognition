set_property SRC_FILE_INFO {cfile:c:/Users/DELL/Desktop/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc rfile:../Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc id:1 order:EARLY scoped_inst:MIPI_Trans_Driver/camera_clock/inst} [current_design]
current_instance MIPI_Trans_Driver/camera_clock/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1