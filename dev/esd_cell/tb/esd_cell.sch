v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 480 -280 480 -230 { lab=pad}
N 480 -250 640 -250 { lab=pad}
N 700 -250 800 -250 { lab=gate}
N 800 -250 800 -230 { lab=gate}
N 800 -280 800 -250 { lab=gate}
N 480 -380 480 -340 { lab=vsup}
N 480 -380 800 -380 { lab=vsup}
N 800 -380 800 -340 { lab=vsup}
N 480 -170 480 -150 { lab=vgnd}
N 480 -150 800 -150 { lab=vgnd}
N 800 -170 800 -150 { lab=vgnd}
N 800 -250 880 -250 { lab=gate}
N 400 -250 480 -250 { lab=pad}
N 650 -420 650 -380 { lab=vsup}
N 670 -230 670 -150 { lab=vgnd}
N 190 -250 400 -250 { lab=pad}
N 270 -280 270 -250 { lab=pad}
N 320 -280 320 -250 { lab=pad}
N 370 -280 370 -250 { lab=pad}
N 420 -280 420 -250 { lab=pad}
N 270 -380 270 -340 { lab=vsup}
N 270 -380 480 -380 { lab=vsup}
N 320 -380 320 -340 { lab=vsup}
N 370 -380 370 -340 { lab=vsup}
N 420 -380 420 -340 { lab=vsup}
N 270 -170 270 -150 { lab=vgnd}
N 270 -150 480 -150 { lab=vgnd}
N 320 -170 320 -150 { lab=vgnd}
N 370 -170 370 -150 { lab=vgnd}
N 420 -170 420 -150 { lab=vgnd}
N 270 -250 270 -230 { lab=pad}
N 320 -250 320 -230 { lab=pad}
N 370 -250 370 -230 { lab=pad}
N 420 -250 420 -230 { lab=pad}
N 650 -150 650 -110 { lab=vgnd}
C {devices/title.sym} 160 50 0 0 {name=l9 author="Darko - Jovan"}
C {sky130_fd_pr/diode.sym} 480 -310 0 0 {name=D1
model=diode_pd2nw_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 800 -310 0 0 {name=D3
model=diode_pd2nw_05v5
area=0.203e+18
}
C {sky130_fd_pr/diode.sym} 800 -200 0 0 {name=D4
model=diode_pw2nd_05v5
area=0.203e+18
}
C {sky130_fd_pr/res_high_po.sym} 670 -250 3 0 {name=R1
W=0.35
L=10
model=res_high_po
spiceprefix=X
mult=1}
C {devices/iopin.sym} 650 -410 3 0 {name=p1 lab=vsup
}
C {devices/iopin.sym} 200 -250 2 0 {name=p2 lab=pad}
C {devices/iopin.sym} 650 -110 1 0 {name=p3 lab=vgnd
}
C {devices/iopin.sym} 870 -250 0 0 {name=p4 lab=gate}
C {sky130_fd_pr/diode.sym} 480 -200 0 0 {name=D8
model=diode_pw2nd_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 370 -310 0 0 {name=D2
model=diode_pd2nw_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 420 -310 0 0 {name=D5
model=diode_pd2nw_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 320 -310 0 0 {name=D6
model=diode_pd2nw_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 270 -310 0 0 {name=D7
model=diode_pd2nw_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 420 -200 0 0 {name=D9
model=diode_pw2nd_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 370 -200 0 0 {name=D10
model=diode_pw2nd_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 320 -200 0 0 {name=D11
model=diode_pw2nd_11v0
area=10e+18
}
C {sky130_fd_pr/diode.sym} 270 -200 0 0 {name=D12
model=diode_pw2nd_11v0
area=10e+18
}
