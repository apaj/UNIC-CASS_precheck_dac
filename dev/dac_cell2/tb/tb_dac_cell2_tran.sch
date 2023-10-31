v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1260 -480 1260 -470 { lab=GND}
N 1190 -380 1190 -360 { lab=GND}
N 1140 -420 1140 -400 { lab=#net1}
N 1140 -340 1140 -320 { lab=GND}
N 1140 -500 1140 -480 { lab=#net2}
N 1190 -460 1190 -450 { lab=#net3}
N 1190 -390 1190 -380 { lab=GND}
N 1110 -500 1140 -500 { lab=#net2}
N 1110 -520 1190 -520 { lab=#net4}
N 1110 -540 1260 -540 { lab=#net5}
N 1110 -560 1340 -560 { lab=Vsw}
N 1340 -560 1340 -540 { lab=Vsw}
N 1110 -580 1400 -580 { lab=GND}
N 1400 -580 1400 -570 { lab=GND}
N 1110 -600 1480 -600 { lab=#net6}
N 1480 -600 1480 -590 { lab=#net6}
N 1480 -590 1480 -580 { lab=#net6}
N 1400 -570 1400 -510 { lab=GND}
N 1480 -520 1480 -490 { lab=GND}
N 1400 -510 1400 -480 { lab=GND}
N 1400 -490 1480 -490 { lab=GND}
N 1110 -620 1560 -620 { lab=#net7}
N 1560 -560 1560 -490 { lab=GND}
N 1480 -490 1560 -490 { lab=GND}
N 1340 -540 1340 -420 { lab=Vsw}
N 1340 -360 1340 -340 { lab=GND}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.tran 0.1 150m 0.001m
.save i(V4) i(V5) Vsw
.save Vsw

.control
set wr_vecnames
set wr_singlescale

run
******** results filename  ************ nodes to write
wrdata $DEV_PATH/res/dac_cell2_tran_cur.res i(V4) i(V5)
wrdata $DEV_PATH/res/dac_cell2_tran_vol.res Vsw
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {devices/vsource.sym} 1560 -590 0 0 {name=V1 value=3.3
}
C {devices/gnd.sym} 1400 -480 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1340 -390 0 0 {name=V2 value="pulse(0, 3.3, 20ms, 1ns, 1ns, 10ms, 20ms)"}
C {devices/vsource.sym} 1260 -510 0 0 {name=V3 value=0.7}
C {devices/gnd.sym} 1260 -470 0 0 {name=l4 lab=GND}
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
C {devices/res.sym} 1480 -550 0 0 {name=R4
value=150k

footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1340 -340 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1340 -540 0 0 {name=l3 sig_type=std_logic lab=Vsw}
C {dac_cell2.sym} 960 -560 0 0 {name=x2}
