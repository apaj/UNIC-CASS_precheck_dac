v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -1490 360 -1330 { lab=d1}
N 360 -1270 360 -1240 { lab=nsources}
N 360 -1240 660 -1240 { lab=nsources}
N 660 -1270 660 -1240 { lab=nsources}
N 520 -1240 520 -1150 { lab=nsources}
N 660 -1480 660 -1330 { lab=d2}
N 400 -1520 620 -1520 { lab=d1}
N 660 -1490 660 -1480 { lab=d2}
N 360 -1600 360 -1550 { lab=power}
N 360 -1600 880 -1600 { lab=power}
N 880 -1600 880 -1550 { lab=power}
N 660 -1600 660 -1550 { lab=power}
N 660 -1400 800 -1400 { lab=d2}
N 760 -1520 840 -1520 { lab=d2}
N 760 -1520 760 -1400 { lab=d2}
N 880 -1490 880 -1150 { lab=outSingle}
N 860 -1400 880 -1400 { lab=outSingle}
N 230 -1600 360 -1600 { lab=power}
N 180 -1600 230 -1600 { lab=power}
N 220 -1120 480 -1120 { lab=bias}
N 180 -1180 260 -1180 { lab=bias}
N 260 -1180 260 -1120 { lab=bias}
N 760 -1120 840 -1120 { lab=bias}
N 250 -1300 320 -1300 { lab=inPos}
N 700 -1300 770 -1300 { lab=inNeg}
N 360 -1300 450 -1300 { lab=ground}
N 450 -1300 660 -1300 { lab=ground}
N 660 -1520 730 -1520 { lab=power}
N 730 -1600 730 -1520 { lab=power}
N 280 -1520 360 -1520 { lab=power}
N 280 -1600 280 -1520 { lab=power}
N 880 -1520 970 -1520 { lab=power}
N 970 -1600 970 -1520 { lab=power}
N 880 -1600 970 -1600 { lab=power}
N 180 -1090 180 -1040 { lab=ground}
N 180 -1040 880 -1040 { lab=ground}
N 880 -1090 880 -1040 { lab=ground}
N 880 -1120 960 -1120 { lab=ground}
N 960 -1120 960 -1040 { lab=ground}
N 880 -1040 960 -1040 { lab=ground}
N 100 -1120 180 -1120 { lab=ground}
N 100 -1120 100 -1040 { lab=ground}
N 100 -1040 180 -1040 { lab=ground}
N 520 -1120 600 -1120 { lab=ground}
N 600 -1120 600 -1040 { lab=ground}
N 520 -1090 520 -1040 { lab=ground}
N 880 -1350 930 -1350 { lab=outSingle}
N 170 -1010 200 -1010 { lab=ground}
N 200 -1040 200 -1010 { lab=ground}
N 130 -1600 180 -1600 { lab=power}
N 440 -1520 440 -1440 { lab=d1}
N 360 -1440 440 -1440 { lab=d1}
N 180 -1390 180 -1180 { lab=bias}
N 180 -1180 180 -1150 { lab=bias}
N 180 -1540 180 -1530 { lab=#net1}
N 180 -1470 180 -1450 { lab=#net2}
N 110 -1570 160 -1570 { lab=ground}
N 110 -1570 110 -1420 { lab=ground}
N 110 -1420 160 -1420 { lab=ground}
N 110 -1500 160 -1500 { lab=ground}
C {devices/ipin.sym} 250 -1300 0 0 {name=p1 lab=inPos}
C {devices/ipin.sym} 770 -1300 2 0 {name=p2 lab=inNeg}
C {devices/opin.sym} 930 -1350 0 0 {name=p3 lab=outSingle}
C {devices/iopin.sym} 130 -1600 2 0 {name=p4 lab=power}
C {devices/iopin.sym} 170 -1010 2 0 {name=p5 lab=ground}
C {devices/lab_pin.sym} 180 -1240 0 0 {name=l1 sig_type=std_logic lab=bias}
C {devices/lab_pin.sym} 760 -1120 0 0 {name=l2 sig_type=std_logic lab=bias}
C {devices/title.sym} 100 -910 0 0 {name=l3 author="Aleksandar Pajkanovic"}
C {devices/lab_pin.sym} 510 -1300 1 0 {name=l4 sig_type=std_logic lab=ground}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -1520 0 1 {name=M6
L=0.5
W=21
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 640 -1520 0 0 {name=M7
L=0.5
W=21
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -1520 0 0 {name=M8
L=0.5
W=260
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 360 -1390 0 0 {name=l5 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 660 -1380 0 0 {name=l6 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 520 -1210 0 0 {name=l7 sig_type=std_logic lab=nsources}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 -1300 0 0 {name=M1
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -1300 0 1 {name=M2
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 -1120 0 1 {name=M3
L=0.5
W=10
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -1120 0 0 {name=M4
L=0.5
W=10
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 860 -1120 0 0 {name=M5
L=0.5
W=48
nf=8
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
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 180 -1420 0 0 {name=R1
W=0.69
L=6
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 830 -1400 1 0 {name=C1 model=cap_mim_m3_1 W=10 L=14 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 180 -1500 0 0 {name=R2
W=0.69
L=6
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 180 -1570 0 0 {name=R3
W=0.69
L=6
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 110 -1440 0 0 {name=l8 sig_type=std_logic lab=ground}
