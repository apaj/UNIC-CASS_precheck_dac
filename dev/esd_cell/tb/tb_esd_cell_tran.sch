v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 820 -260 1000 -260 { lab=#net1}
N 820 -200 840 -200 { lab=GND}
N 840 -200 840 -160 { lab=GND}
N 840 -160 1000 -160 { lab=GND}
N 1000 -200 1000 -160 { lab=GND}
N 960 -180 960 -160 { lab=GND}
N 820 -240 960 -240 { lab=pad}
N 820 -220 850 -220 { lab=gate}
N 910 -220 920 -220 { lab=GND}
N 920 -220 920 -160 { lab=GND}
C {devices/code_shown.sym} 10 -370 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.tran 10u 5m
.save pad gate

.control
set wr_vecnames
set wr_singlescale

run
******** results filename  ************ nodes to write
wrdata $DEV_PATH/res/tb_esd_cell_tran.res pad gate
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {esd_cell.sym} 670 -230 0 0 {name=x1}
C {devices/vsource.sym} 1000 -230 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 960 -210 0 0 {name=V2 value="sine(0 50 1k 0 0 0)"}
C {devices/res.sym} 880 -220 3 0 {name=R1
value=100MEG
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 920 -160 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 940 -240 1 0 {name=l2 sig_type=std_logic lab=pad}
C {devices/lab_pin.sym} 830 -220 1 0 {name=l3 sig_type=std_logic lab=gate}
