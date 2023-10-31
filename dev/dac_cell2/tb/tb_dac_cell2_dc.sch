v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1360 -630 1360 -620 { lab=#net1}
N 1360 -560 1360 -530 { lab=GND}
N 1270 -540 1270 -530 { lab=#net2}
N 1270 -470 1270 -450 { lab=GND}
N 1230 -520 1230 -510 { lab=#net3}
N 1230 -450 1230 -440 { lab=GND}
N 1190 -380 1190 -360 { lab=GND}
N 1140 -420 1140 -400 { lab=#net4}
N 1140 -340 1140 -320 { lab=GND}
N 1120 -500 1140 -500 { lab=#net5}
N 1140 -500 1140 -480 { lab=#net5}
N 1230 -530 1230 -520 { lab=#net3}
N 1290 -570 1290 -560 { lab=GND}
N 1110 -520 1190 -520 { lab=#net6}
N 1190 -460 1190 -450 { lab=#net7}
N 1190 -390 1190 -380 { lab=GND}
N 1110 -500 1120 -500 { lab=#net5}
N 1330 -620 1330 -600 { lab=#net8}
N 1330 -540 1330 -490 { lab=GND}
N 1110 -540 1230 -540 { lab=#net3}
N 1230 -540 1230 -530 { lab=#net3}
N 1110 -560 1270 -560 { lab=#net2}
N 1270 -560 1270 -540 { lab=#net2}
N 1290 -580 1290 -570 { lab=GND}
N 1110 -580 1290 -580 { lab=GND}
N 1290 -580 1310 -580 { lab=GND}
N 1310 -580 1310 -510 { lab=GND}
N 1310 -510 1310 -490 { lab=GND}
N 1310 -490 1330 -490 { lab=GND}
N 1300 -620 1330 -620 { lab=#net8}
N 1300 -620 1300 -610 { lab=#net8}
N 1300 -610 1300 -600 { lab=#net8}
N 1110 -600 1300 -600 { lab=#net8}
N 1110 -620 1160 -620 { lab=#net1}
N 1160 -630 1160 -620 { lab=#net1}
N 1160 -630 1360 -630 { lab=#net1}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.dc V2 0.1 3.3 0.001
.save i(V4) i(V5) 

.control
set wr_vecnames
set wr_singlescale

run
******** results filename  ************ nodes to write
wrdata $DEV_PATH/res/dac_cell1_dc.res i(V4) i(V5)
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {devices/vsource.sym} 1360 -590 0 0 {name=V1 value=3.3
}
C {devices/gnd.sym} 1360 -530 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1290 -560 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1270 -500 0 0 {name=V2 value=3}
C {devices/gnd.sym} 1270 -450 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1230 -480 0 0 {name=V3 value=0.7}
C {devices/gnd.sym} 1230 -440 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1190 -490 0 0 {name=V4 value=0}
C {devices/vsource.sym} 1140 -450 0 0 {name=V5 value=0
}
C {devices/res.sym} 1140 -370 0 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1190 -420 0 0 {name=R2
value=200
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1140 -320 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1190 -360 0 0 {name=l6 lab=GND}
C {devices/res.sym} 1330 -570 0 0 {name=R4
value=150k
k

footprint=1206
device=resistor
m=1}
C {dac_cell2.sym} 960 -560 0 0 {name=x1}
