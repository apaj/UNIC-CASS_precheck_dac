v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1380 -670 1380 -655 { lab=GND}
N 1380 -900 1380 -870 { lab=gate}
N 1500 -900 1580 -900 { lab=gate}
N 1620 -870 1620 -800 { lab=GND}
N 1620 -900 1680 -900 { lab=GND}
N 1680 -900 1680 -820 { lab=GND}
N 1620 -820 1680 -820 { lab=GND}
N 1620 -1020 1620 -930 { lab=drain}
N 1780 -820 1780 -800 { lab=GND}
N 1780 -1020 1780 -880 { lab=#net1}
N 1620 -1020 1670 -1020 { lab=drain}
N 1730 -1020 1780 -1020 { lab=#net1}
N 1380 -810 1380 -730 { lab=gate}
N 1380 -900 1440 -900 { lab=gate}
N 1380 -870 1380 -810 { lab=gate}
N 1440 -900 1500 -900 { lab=gate}
C {devices/gnd.sym} 1380 -657.5 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1620 -800 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1380 -900 0 0 {name=l6 sig_type=std_logic lab=gate}
C {devices/code_shown.sym} 768.75 -1037.5 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0

.control
ac dec 10 1 1000G
set wr_vecnames
set wr_singlescale

wrdata miel21_tb_nmos_unitygain_single.res db(i(v2)/i(v1))
.endc
"}
C {devices/gnd.sym} 1780 -800 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1620 -1020 0 0 {name=l4 sig_type=std_logic lab=drain}
C {devices/vsource.sym} 1780 -850 0 0 {name=V2 value=3.3}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1600 -900 0 0 {name=M1
L=0.5
W=1
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 1380 -700 0 0 {name=V1 value=1.8}
C {devices/isource.sym} 1700 -1020 1 0 {name=I0 value="0 ac 1"}
