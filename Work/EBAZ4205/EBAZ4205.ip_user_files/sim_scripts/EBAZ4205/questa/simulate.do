onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib EBAZ4205_opt

do {wave.do}

view wave
view structure
view signals

do {EBAZ4205.udo}

run -all

quit -force
