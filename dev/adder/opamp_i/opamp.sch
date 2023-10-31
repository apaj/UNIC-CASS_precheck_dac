v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1880 -1190 2120 -1190 { lab=vin}
N 2120 -1190 2120 -1100 { lab=vin}
N 1880 -1100 2120 -1100 { lab=vin}
N 1880 -1010 2120 -1010 { lab=vin}
N 2120 -1100 2120 -1010 { lab=vin}
N 1880 -920 2120 -920 { lab=vin}
N 2120 -1010 2120 -920 { lab=vin}
N 2120 -1100 2180 -1100 { lab=vin}
N 1750 -1190 1820 -1190 { lab=#net1}
N 1750 -1100 1820 -1100 { lab=#net2}
N 1760 -1010 1820 -1010 { lab=#net3}
N 1760 -920 1820 -920 { lab=#net4}
N 2240 -1100 2400 -1100 { lab=vin}
N 2710 -1100 2710 -860 { lab=vin_n}
N 2920 -860 2920 -810 { lab=vss_opamp}
N 3480 -1140 3570 -1140 { lab=vout}
N 2180 -1100 2240 -1100 { lab=vin}
N 2270 -1650 2270 -1100 { lab=vin}
N 2270 -1650 2930 -1650 { lab=vin}
N 2930 -1650 2970 -1650 { lab=vin}
N 3030 -1650 3540 -1650 { lab=vout}
N 1580 -920 1760 -920 { lab=#net4}
N 1500 -1010 1760 -1010 { lab=#net3}
N 1430 -1100 1750 -1100 { lab=#net2}
N 1370 -1190 1750 -1190 { lab=#net1}
N 1370 -1190 1370 -1170 { lab=#net1}
N 1430 -1100 1430 -1090 { lab=#net2}
N 1500 -1010 1500 -990 { lab=#net3}
N 1580 -920 1580 -910 { lab=#net4}
N 1370 -1110 1370 -830 { lab=GND}
N 1580 -850 1580 -830 { lab=GND}
N 1500 -930 1500 -830 { lab=GND}
N 1430 -1030 1430 -830 { lab=GND}
N 1370 -830 1580 -830 { lab=GND}
N 1450 -830 1450 -775 { lab=GND}
N 3540 -1650 3560 -1650 { lab=vout}
N 3560 -1650 3560 -1140 { lab=vout}
N 3000 -1700 3000 -1670 { lab=GND}
N 2710 -860 2920 -860 { lab=vss_opamp}
N 1850 -1740 1850 -1210 { lab=GND}
N 1850 -1740 3000 -1740 { lab=GND}
N 3000 -1740 3000 -1700 { lab=GND}
N 1850 -1140 1850 -1120 { lab=GND}
N 1850 -1140 1930 -1140 { lab=GND}
N 1930 -1290 1930 -1140 { lab=GND}
N 1850 -1290 1930 -1290 { lab=GND}
N 1930 -1140 1930 -840 { lab=GND}
N 1850 -1060 1850 -1030 { lab=GND}
N 1850 -1060 1930 -1060 { lab=GND}
N 1850 -970 1850 -940 { lab=GND}
N 1850 -970 1930 -970 { lab=GND}
N 1930 -840 2710 -840 { lab=GND}
N 2710 -860 2710 -840 { lab=GND}
C {devices/code_shown.sym} 0 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.tran 0 100ms 0.1m 
.save vout vin

.control
set wr_vecnames
set wr_singlescale


run
******** results filename  ************ nodes to write
wrdata trans_opamp.res vout vin 
.endc
"}
C {devices/title.sym} 160 50 0 0 {name=l9 author="IME PREZIME"}
C {devices/gnd.sym} 2920 -810 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1370 -1140 0 0 {name=V1 value=1}
C {devices/vsource.sym} 1430 -1060 0 0 {name=V2 value=1}
C {devices/vsource.sym} 1500 -960 0 0 {name=V3 value=0
}
C {devices/vsource.sym} 1580 -880 0 0 {name=V4 value=1}
C {devices/gnd.sym} 1450 -775 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 3570 -1140 2 0 {name=l4 sig_type=std_logic lab=vout}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 1850 -1190 1 0 {name=R1
W=5.73
L=2.8
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 1850 -1100 3 1 {name=R2
W=5.73
L=2.8
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 1850 -1010 3 1 {name=R3
W=5.73
L=2.8
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 1850 -920 3 1 {name=R4
W=5.73
L=2.8
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 3000 -1650 1 0 {name=R5
W=5.73
L=2.8
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 2350 -1100 1 0 {name=l7 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 2350 -1100 1 0 {name=l5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 2710 -1070 1 0 {name=l6 sig_type=std_logic lab=vin_n}
C {devices/lab_pin.sym} 2920 -860 2 0 {name=l10 sig_type=std_logic lab=vss_opamp}
