v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1500 -810 1500 -795 { lab=GND}
N 1500 -900 1500 -870 { lab=gate}
N 1500 -900 1580 -900 { lab=gate}
N 1620 -870 1620 -800 { lab=GND}
N 1620 -900 1680 -900 { lab=GND}
N 1680 -900 1680 -820 { lab=GND}
N 1620 -820 1680 -820 { lab=GND}
N 1780 -921.25 1780 -798.75 { lab=GND}
N 1620 -1020 1620 -930 { lab=drain}
N 1620 -1020 1780 -1020 { lab=drain}
N 1780 -1020 1780 -980 { lab=drain}
C {devices/vsource.sym} 1500 -840 0 0 {name=V1 value=3.3
}
C {devices/vsource.sym} 1780 -950 0 0 {name=V2 value=3.3
}
C {devices/gnd.sym} 1500 -797.5 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1620 -800 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1500 -900 0 0 {name=l6 sig_type=std_logic lab=gate}
C {devices/code_shown.sym} 1118.75 -1227.5 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
.save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]

.control
dc V1 0 1.5 0.01 V2 0.1 1 0.1
set wr_vecnames
set wr_singlescale
wrdata miel21_tb_nmos_transfer_param_VDS.res @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
.endc
"}
C {devices/gnd.sym} 1780 -800 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1620 -1020 0 0 {name=l4 sig_type=std_logic lab=drain}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1600 -900 0 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
