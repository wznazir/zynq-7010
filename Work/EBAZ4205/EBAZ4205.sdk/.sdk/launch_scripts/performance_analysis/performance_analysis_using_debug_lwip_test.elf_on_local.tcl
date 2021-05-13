connect -url tcp:127.0.0.1:3121
source D:/7020test/EBAZ4205/EBAZ4205.sdk/EBAZ4205_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
loadhw -hw D:/7020test/EBAZ4205/EBAZ4205.sdk/EBAZ4205_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow D:/7020test/EBAZ4205/EBAZ4205.sdk/lwip_test/Debug/lwip_test.elf
configparams force-mem-access 0
bpadd -addr &main
