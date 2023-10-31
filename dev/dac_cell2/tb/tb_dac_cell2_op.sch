v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1420 -620 1420 -610 { lab=#net1}
N 1420 -550 1420 -520 { lab=GND}
N 1300 -560 1300 -550 { lab=V2}
N 1300 -490 1300 -470 { lab=GND}
N 1260 -520 1260 -510 { lab=#net2}
N 1260 -450 1260 -440 { lab=GND}
N 1190 -380 1190 -360 { lab=GND}
N 1140 -420 1140 -400 { lab=#net3}
N 1140 -340 1140 -320 { lab=GND}
N 1120 -500 1140 -500 { lab=#net4}
N 1140 -500 1140 -480 { lab=#net4}
N 1260 -530 1260 -520 { lab=#net2}
N 1190 -390 1190 -380 { lab=GND}
N 1110 -500 1120 -500 { lab=#net4}
N 1110 -540 1260 -540 { lab=#net2}
N 1260 -540 1260 -530 { lab=#net2}
N 1110 -560 1300 -560 { lab=V2}
N 1110 -580 1340 -580 { lab=GND}
N 1110 -620 1420 -620 { lab=#net1}
N 1190 -460 1190 -450 { lab=#net5}
N 1110 -600 1380 -600 { lab=#net6}
N 1110 -520 1190 -520 { lab=#net7}
N 1340 -580 1340 -520 { lab=GND}
N 1380 -600 1380 -590 { lab=#net6}
N 1380 -530 1380 -520 { lab=GND}
N 1350 -520 1380 -520 { lab=GND}
N 1350 -530 1350 -520 { lab=GND}
N 1340 -530 1350 -530 { lab=GND}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.op 
.save V2 @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[id]


.control
set wr_vecnames
set wr_singlescale

run
******** results filename  ************ nodes to write
wrdata $DEV_PATH/res/dac_cell2_op.res V2 @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[id]
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {devices/vsource.sym} 1420 -580 0 0 {name=V1 value=3.3
}
C {devices/gnd.sym} 1420 -520 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1340 -520 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1300 -520 0 0 {name=V2 value=3}
C {devices/gnd.sym} 1300 -470 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1260 -480 0 0 {name=V3 value=0.7}
C {devices/gnd.sym} 1260 -440 0 0 {name=l4 lab=GND}
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
C {devices/res.sym} 1380 -560 0 0 {name=R4
value=10k

footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1180 -560 0 0 {name=l7 sig_type=std_logic lab=V2}
C {dac_cell2.sym} 960 -560 0 0 {name=x2}
