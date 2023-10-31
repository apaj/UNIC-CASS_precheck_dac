v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 480 -140 480 -120 { lab=GND}
N 480 -230 480 -200 { lab=in}
N 670 -230 670 -210 { lab=out}
N 670 -150 670 -120 { lab=GND}
N 480 -230 550 -230 { lab=in}
N 610 -230 670 -230 { lab=out}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO
.dc V1 -5 5 0.01

.control
set wr_vecnames
set wr_singlescale
run
******** results filename  ************ nodes to write
save in out i(V1)
plot v(out) i(V1)
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="IME PREZIME"}
C {sky130_fd_pr/diode.sym} 670 -180 2 0 {name=D1
model=diode_pw2nd_05v5
area=1
}
C {devices/gnd.sym} 670 -120 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 480 -170 0 0 {name=V1 value=3}
C {devices/gnd.sym} 480 -120 0 0 {name=l2 lab=GND}
C {devices/res.sym} 580 -230 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 670 -230 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 480 -230 0 0 {name=l3 sig_type=std_logic lab=in}
