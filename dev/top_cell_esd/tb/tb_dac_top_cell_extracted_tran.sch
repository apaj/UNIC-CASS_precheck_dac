v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1340 -2090 1340 -2070 { lab=vsw1}
N 1340 -1830 1340 -1820 { lab=vsw2}
N 1340 -1590 1340 -1580 { lab=vsw3}
N 1340 -1350 1340 -1340 { lab=vsw4}
N 1340 -1520 1340 -1500 { lab=GND}
N 1340 -1280 1340 -1260 { lab=GND}
N 1340 -1760 1340 -1730 { lab=GND}
N 1340 -2010 1340 -1980 { lab=GND}
N 2050 -1760 2080 -1760 { lab=vsw1}
N 2050 -1720 2080 -1720 { lab=vsw3}
N 2050 -1740 2080 -1740 { lab=vsw2}
N 1340 -1850 1340 -1830 { lab=vsw2}
N 1340 -1610 1340 -1590 { lab=vsw3}
N 1340 -1360 1340 -1350 { lab=vsw4}
N 1340 -2100 1340 -2090 { lab=vsw1}
N 2080 -1600 2080 -1570 { lab=GND}
N 2080 -1570 2080 -1560 { lab=GND}
N 2080 -1560 2080 -1500 { lab=GND}
N 2150 -1560 2150 -1540 { lab=GND}
N 2080 -1540 2150 -1540 { lab=GND}
N 2220 -1580 2220 -1540 { lab=GND}
N 2150 -1540 2220 -1540 { lab=GND}
N 2040 -1760 2050 -1760 { lab=vsw1}
N 2040 -1740 2050 -1740 { lab=vsw2}
N 2040 -1720 2050 -1720 { lab=vsw3}
N 2040 -1680 2080 -1680 { lab=vsw4}
N 2040 -1700 2330 -1700 { lab=vout}
N 2330 -1700 2340 -1700 { lab=vout}
N 2040 -1600 2080 -1600 { lab=GND}
N 2040 -1620 2150 -1620 { lab=#net1}
N 2040 -1640 2220 -1640 { lab=#net2}
N 2040 -1660 2300 -1660 { lab=#net3}
N 2300 -1600 2300 -1540 { lab=GND}
N 2220 -1540 2300 -1540 { lab=GND}
N 2300 -1540 2400 -1540 { lab=GND}
N 2340 -1700 2400 -1700 { lab=vout}
N 2400 -1700 2420 -1700 { lab=vout}
N 2420 -1700 2420 -1660 { lab=vout}
N 2420 -1600 2420 -1540 { lab=GND}
N 2400 -1540 2420 -1540 { lab=GND}
C {devices/vsource.sym} 1340 -2040 0 0 {name=vsw1 value="pulse(0, 3.3, 20ms, 1ns, 1ns, 10ms, 20ms)"
}
C {devices/vsource.sym} 1340 -1790 0 0 {name=vsw2 value="pulse(0, 3.3, 20ms, 1ns, 1ns, 20ms, 40ms)"}
C {devices/vsource.sym} 1340 -1550 0 0 {name=vsw3 value="pulse(0, 3.3, 20ms, 1ns, 1ns, 40ms, 80ms)"}
C {devices/vsource.sym} 1340 -1310 0 0 {name=vsw4 value="pulse(0, 3.3, 20ms, 1ns, 1ns, 80ms, 160ms)"}
C {devices/gnd.sym} 1340 -1260 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1340 -1500 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1340 -1730 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1340 -1980 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 490 -840 0 0 {name=NGSPICE
only_toplevel=true
value="
.lib \\"/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.param mc_mm_switch=0
.param mc_pr_switch=0
*** ANALYSIS TO DO

.tran 0.1 500m 0.001m
.save vout
.save i(x1.Vo1)
.save x1.op_amp_in
.save vsw1 vsw2 vsw3 vsw4

.control
set wr_vecnames
set wr_singlescale

run
******** results filename  ************ nodes to write
wrdata $DEV_PATH/res/dac_top_cell_extracted_vout_tran_vol.res vout
wrdata $DEV_PATH/res/dac_top_cell_extracted_vsw1_tran_vol.res vsw1
wrdata $DEV_PATH/res/dac_top_cell_extracted_vsw2_tran_vol.res vsw2
wrdata $DEV_PATH/res/dac_top_cell_extracted_vsw3_tran_vol.res vsw3
wrdata $DEV_PATH/res/dac_top_cell_extracted_vsw4_tran_vol.res vsw4
.endc
"}
C {devices/lab_wire.sym} 1340 -2100 1 0 {name=l8 sig_type=std_logic lab=vsw1}
C {devices/lab_wire.sym} 1340 -1850 1 0 {name=l9 sig_type=std_logic lab=vsw2}
C {devices/lab_wire.sym} 1340 -1610 1 0 {name=l10 sig_type=std_logic lab=vsw3}
C {devices/lab_wire.sym} 1340 -1360 1 0 {name=l11 sig_type=std_logic lab=vsw4}
C {devices/res.sym} 2420 -1630 0 0 {name=Rout1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 2080 -1760 2 0 {name=l2 sig_type=std_logic lab=vsw1}
C {devices/lab_wire.sym} 2080 -1740 2 0 {name=l3 sig_type=std_logic lab=vsw2}
C {devices/lab_wire.sym} 2080 -1720 2 0 {name=l13 sig_type=std_logic lab=vsw3}
C {devices/gnd.sym} 2080 -1500 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 2150 -1590 0 0 {name=Vsup value=3.3}
C {devices/vsource.sym} 2220 -1610 0 0 {name=Vbias07 value=0.7}
C {dac_top_cell.sym} 1890 -1680 0 0 {name=x1}
C {devices/lab_wire.sym} 2080 -1680 2 0 {name=l16 sig_type=std_logic lab=vsw4}
C {devices/vsource.sym} 2300 -1630 0 0 {name=Vbias18 value=1.8}
C {devices/lab_wire.sym} 2420 -1700 1 0 {name=l1 sig_type=std_logic lab=vout}
