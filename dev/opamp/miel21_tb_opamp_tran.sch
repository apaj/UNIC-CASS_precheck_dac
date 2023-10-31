v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 780 -110 780 -50 { lab=GND}
N 1000 -100 1000 -50 { lab=GND}
N 930 -190 1000 -190 { lab=output}
N 1000 -190 1000 -160 { lab=output}
N 550 -230 710 -230 { lab=pos}
N 550 -150 710 -150 { lab=neg}
N 550 -60 550 -50 { lab=GND}
N 780 -290 780 -270 { lab=pow}
N 1150 -220 1150 -200 { lab=pow}
N 1150 -140 1150 -120 { lab=GND}
N 780 -290 1150 -290 { lab=pow}
N 1150 -290 1150 -220 { lab=pow}
N 550 -230 550 -220 { lab=pos}
N 550 -160 550 -150 { lab=neg}
N 550 -150 550 -120 { lab=neg}
C {miel21_opamp.sym} 860 -190 0 0 {name=x1}
C {devices/vsource.sym} 550 -90 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 1150 -170 0 0 {name=V2 value=3.3
}
C {devices/res.sym} 1000 -130 0 0 {name=R1
value=1000MEG
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 550 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 780 -50 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1000 -50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1150 -120 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
.tran 100n 300u

.control
set wr_vecnames
set wr_singlescale

run

wrdata miel21_tb_opamp_tran.res pos neg output
.endc
"}
C {devices/lab_pin.sym} 780 -290 0 0 {name=l5 sig_type=std_logic lab=pow}
C {devices/lab_pin.sym} 550 -230 0 0 {name=l6 sig_type=std_logic lab=pos

}
C {devices/lab_pin.sym} 550 -130 0 0 {name=l7 sig_type=std_logic lab=neg
}
C {devices/lab_pin.sym} 1000 -190 2 0 {name=l8 sig_type=std_logic lab=output}
C {devices/vsource.sym} 550 -190 0 0 {name=V3 value="sin(0 1m 10k)"
}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Aleksandar Pajkanovic"}
