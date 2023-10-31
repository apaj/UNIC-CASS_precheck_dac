v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 880 -610 990 -610 { lab=iref}
N 840 -580 840 -530 { lab=iref}
N 840 -550 910 -550 { lab=iref}
N 910 -610 910 -550 { lab=iref}
N 980 -460 1030 -460 { lab=sourceM3M4}
N 980 -460 980 -410 { lab=sourceM3M4}
N 1030 -460 1120 -460 { lab=sourceM3M4}
N 1120 -460 1120 -410 { lab=sourceM3M4}
N 980 -350 980 -300 { lab=iout}
N 1120 -350 1120 -300 { lab=iout_n}
N 840 -710 840 -640 { lab=vsup}
N 710 -710 840 -710 { lab=vsup}
N 870 -380 870 -350 { lab=vsw}
N 870 -380 940 -380 { lab=vsw}
N 1160 -380 1260 -380 { lab=vbias}
N 1260 -380 1260 -350 { lab=vbias}
N 670 -710 710 -710 { lab=vsup}
N 840 -710 1030 -710 { lab=vsup}
N 1030 -650 1030 -640 { lab=sourceM2}
N 1030 -580 1030 -550 { lab=sourceM3M4}
N 1030 -490 1030 -460 { lab=sourceM3M4}
N 770 -610 840 -610 { lab=vsup}
N 770 -710 770 -610 { lab=vsup}
N 1030 -610 1080 -610 { lab=vsup}
N 1080 -730 1080 -610 { lab=vsup}
N 950 -730 1080 -730 { lab=vsup}
N 950 -730 950 -710 { lab=vsup}
N 980 -380 1120 -380 { lab=vsup}
N 1080 -380 1120 -380 { lab=vsup}
N 1080 -610 1080 -380 { lab=vsup}
N 1030 -550 1030 -490 { lab=sourceM3M4}
N 650 -710 670 -710 { lab=vsup}
N 860 -350 870 -350 { lab=vsw}
N 980 -300 980 -290 { lab=iout}
N 1120 -300 1120 -290 { lab=iout_n}
N 1260 -350 1260 -340 { lab=vbias}
N 1260 -340 1270 -340 { lab=vbias}
N 840 -530 840 -510 { lab=iref}
N 1240 -660 1240 -640 { lab=parR}
N 1370 -660 1370 -640 { lab=parR}
N 1240 -580 1370 -580 { lab=sourceM2}
N 1240 -720 1370 -720 { lab=vsup}
N 1240 -650 1370 -650 { lab=parR}
N 1200 -690 1220 -690 { lab=vgnd}
N 1200 -690 1200 -610 { lab=vgnd}
N 1200 -610 1220 -610 { lab=vgnd}
N 1390 -610 1420 -610 { lab=vgnd}
N 1420 -690 1420 -610 { lab=vgnd}
N 1390 -690 1420 -690 { lab=vgnd}
N 1420 -650 1500 -650 { lab=vgnd}
N 1500 -650 1500 -520 { lab=vgnd}
N 1200 -520 1500 -520 { lab=vgnd}
N 1200 -610 1200 -520 { lab=vgnd}
N 1030 -650 1150 -650 { lab=sourceM2}
N 1150 -650 1150 -530 { lab=sourceM2}
N 1150 -530 1320 -530 { lab=sourceM2}
N 1320 -580 1320 -530 { lab=sourceM2}
N 1500 -520 1500 -500 { lab=vgnd}
N 1500 -500 1600 -500 { lab=vgnd}
N 800 -460 840 -460 { lab=iref}
N 840 -510 840 -460 { lab=iref}
N 710 -460 740 -460 { lab=iref}
N 740 -460 800 -460 { lab=iref}
N 1030 -710 1140 -710 { lab=vsup}
N 1140 -780 1140 -710 { lab=vsup}
N 1140 -780 1280 -780 { lab=vsup}
N 1280 -780 1280 -720 { lab=vsup}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -610 0 1 {name=M1
L=1
W=1
nf=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1010 -610 0 0 {name=M2
L=1
W=4
nf=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 960 -380 0 0 {name=M3
L=1
W=4
nf=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1140 -380 0 1 {name=M4
L=1
W=4
nf=1
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
C {devices/iopin.sym} 650 -710 2 0 {name=p6 lab=vsup}
C {devices/iopin.sym} 1600 -500 1 0 {name=p1 lab=vgnd}
C {devices/iopin.sym} 710 -460 2 0 {name=p2 lab=iref}
C {devices/iopin.sym} 860 -350 2 0 {name=p3 lab=vsw}
C {devices/iopin.sym} 980 -290 1 0 {name=p4 lab=iout}
C {devices/iopin.sym} 1120 -290 1 0 {name=p5 lab=iout_n}
C {devices/iopin.sym} 1270 -340 0 0 {name=p7 lab=vbias}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1240 -690 0 0 {name=R1
W=0.69
L=13
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1240 -610 0 0 {name=R2
W=0.69
L=13
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1370 -690 0 1 {name=R3
W=0.69
L=13
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1370 -610 0 1 {name=R4
W=0.69
L=13
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1030 -490 0 0 {name=l1 sig_type=std_logic lab=sourceM3M4}
C {devices/lab_pin.sym} 1150 -570 0 0 {name=l2 sig_type=std_logic lab=sourceM2}
C {devices/lab_pin.sym} 1300 -650 1 0 {name=l3 sig_type=std_logic lab=parR}
