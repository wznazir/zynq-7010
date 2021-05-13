connect -url tcp:127.0.0.1:3121
source D:/7020test/EBAZ4205/EBAZ4205.sdk/EBAZ4205_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB 00000000000000" && level==0} -index 1
fpga -file D:/7020test/EBAZ4205/EBAZ4205.sdk/EBAZ4205_wrapper_hw_platform_0/EBAZ4205_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
loadhw -hw D:/7020test/EBAZ4205/EBAZ4205.sdk/EBAZ4205_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow D:/7020test/EBAZ4205/EBAZ4205.sdk/lwip_test_bsp_xgpiops_intr_example_1/Debug/lwip_test_bsp_xgpiops_intr_example_1.elf
configparams force-mem-access 0
bpadd -addr &main
