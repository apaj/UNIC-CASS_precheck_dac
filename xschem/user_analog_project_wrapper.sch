v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3800 -100 4040 -100 { lab=vssa1}
N 3800 -120 4040 -120 { lab=io_analog[7]}
N 3800 -140 4040 -140 { lab=io_analog[6]}
N 3800 -160 4040 -160 { lab=io_analog[5]}
N 3800 -180 4040 -180 { lab=io_analog[4]}
N 3800 -200 4040 -200 { lab=io_analog[3]}
N 3800 -220 4040 -220 { lab=io_analog[2]}
N 3800 -240 4040 -240 { lab=io_analog[1]}
N 3800 -260 4040 -260 { lab=io_analog[0]}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} 4040 -140 2 0 {name=l2 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_pin.sym} 4040 -100 2 0 {name=l3 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 4040 -160 2 0 {name=l5 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4040 -220 2 0 {name=l6 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 4040 -120 2 0 {name=l7 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 4040 -180 2 0 {name=l4 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 4040 -260 2 0 {name=l1 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_pin.sym} 4040 -240 2 0 {name=l8 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 4040 -200 2 0 {name=l9 sig_type=std_logic lab=io_analog[3]}
C {tb/dac_top_cell.sym} 3650 -180 0 0 {name=x1}
