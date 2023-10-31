v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -50 -10 50 -10 { lab=#net1}
N -90 20 -90 40 { lab=#net1}
N -90 40 -0 40 { lab=#net1}
N -0 -10 -0 40 { lab=#net1}
N -90 -60 -90 -40 { lab=vsup}
N -90 -60 90 -60 { lab=vsup}
N 90 -60 90 -40 { lab=vsup}
N -90 40 -90 70 { lab=#net1}
N -90 130 -90 160 { lab=#net2}
N -90 160 90 160 { lab=#net2}
N 90 130 90 160 { lab=#net2}
N 90 20 90 70 { lab=#net3}
N 130 100 160 100 { lab=#net4}
N 160 100 160 190 { lab=#net4}
N -200 190 160 190 { lab=#net4}
N -200 100 -130 100 { lab=#net5}
N -0 160 0 230 { lab=#net2}
N -0 290 0 320 { lab=vgnd}
N -140 -10 -90 -10 { lab=vsup}
N -140 -60 -140 -10 { lab=vsup}
N -140 -60 -90 -60 { lab=vsup}
N 90 -10 140 -10 { lab=vsup}
N 140 -60 140 -10 { lab=vsup}
N 90 -60 140 -60 { lab=vsup}
N -90 100 90 100 { lab=vgnd}
N -0 100 -0 120 { lab=vgnd}
N -0 -80 -0 -60 { lab=vsup}
N -380 100 -340 100 { lab=in_pos}
N -380 190 -340 190 { lab=in_neg}
N 90 40 140 40 { lab=#net3}
N 200 40 230 40 { lab=vout}
N -0 260 20 260 { lab=vgnd}
N 20 100 20 260 { lab=vgnd}
N -0 320 20 320 { lab=vgnd}
N 20 260 20 320 { lab=vgnd}
N -280 100 -200 100 { lab=#net5}
N -280 190 -200 190 { lab=#net4}
N -230 100 -230 250 { lab=#net5}
N -180 190 -180 250 { lab=#net4}
N -230 310 -230 320 { lab=vg1}
N -230 320 -180 320 { lab=vg1}
N -180 310 -180 320 { lab=vg1}
N -120 260 -120 280 { lab=vg2}
N -120 260 -110 260 { lab=vg2}
N -50 260 -40 260 { lab=#net6}
C {pmos4.sym} 70 -10 0 0 {name=M1 model=pmos w=5u l=0.18u m=1}
C {pmos4.sym} -70 -10 0 1 {name=M2 model=pmos w=5u l=0.18u m=1}
C {nmos4.sym} 110 100 0 1 {name=M3 model=nmos w=5u l=0.18u m=1}
C {nmos4.sym} -110 100 0 0 {name=M4 model=nmos w=5u l=0.18u m=1}
C {nmos4.sym} -20 260 0 0 {name=M5 model=nmos w=5u l=0.18u m=1}
C {iopin.sym} 0 120 1 0 {name=p1 lab=vgnd}
C {iopin.sym} 0 -80 0 0 {name=p2 lab=vsup}
C {capa.sym} -310 100 3 0 {name=C1
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -310 190 3 0 {name=C2
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -380 190 2 0 {name=p4 lab=in_neg}
C {iopin.sym} -380 100 2 0 {name=p3 lab=in_pos}
C {capa.sym} 170 40 3 0 {name=C3
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 230 40 0 0 {name=p5 lab=vout}
C {res.sym} -80 260 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -230 280 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -180 280 2 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {iopin.sym} -200 320 1 0 {name=p6 lab=vg1}
C {iopin.sym} -120 280 1 0 {name=p7 lab=vg2}
