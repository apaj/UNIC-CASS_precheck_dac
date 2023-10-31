#!/bin/bash

#echo "export DEV_PATH=/opt/uniccass/dev" >> ~/.bashrc

cd $DEV_PATH/netlists/
pwd
tb=tb_dac_"$1"_"$2".spice
echo $tb
ngspice -b $tb

if [ $1 == "top_cell_post" ] ; then
ngspice -b tb_dac_top_cell_tran.spice
fi

pwd
cd $DEV_PATH/python
if [ $2 == "tran" ] ; then
  if [ $1 == "top_cell" ] ; then
    #python3 show_tran_vol_res.py top_cell_vout $2 &
    #python3 show_tran_vol_res.py top_cell_vsw1 $2 &
    #python3 show_tran_vol_res.py top_cell_vsw2 $2 &
    #python3 show_tran_vol_res.py top_cell_vsw3 $2 &
    #python3 show_tran_vol_res.py top_cell_vsw4 $2 &
    python3 show_tran_vol_n_res.py $1 $2
  elif [ $1 == "top_cell_post" ] ; then
    python3 show_tran_vol_post_res.py $1 $2
  elif [ $1 == "top_cell_esd" ] ; then
    python3 show_tran_vol_n_res.py $1 $2
  elif [ $1 == "top_cell_with_opamp" ] ; then
    python3 show_tran_vol_res.py top_cell_with_opamp_vout $2 &
    python3 show_tran_vol_res.py top_cell_with_opamp_vsw1 $2 &
    python3 show_tran_vol_res.py top_cell_with_opamp_vsw2 $2 &
    python3 show_tran_vol_res.py top_cell_with_opamp_vsw3 $2 &
    python3 show_tran_vol_res.py top_cell_with_opamp_vsw4 $2 &
  else 
   python3 show_tran_cur_res.py $1 $2 &
   python3 show_tran_vol_res.py $1 $2 &
  fi
fi
if [ $2 == "op" ] ; then
  python3 make_csv_2.py $1 $2 &
fi
if [ $2 == "dc" ] ; then
  python3 show_dc_res.py $1 $2 &
fi


if [ $2 == "top_tran" ] ; then
  python3 show_dc_res.py top_cell_vout $2 &
  python3 show_dc_res.py top_cell_vsw1 $2 &
  python3 show_dc_res.py top_cell_vsw2 $2 &
  python3 show_dc_res.py top_cell_vsw3 $2 &
  python3 show_dc_res.py top_cell_vsw4 $2 &
fi
#echo "$DEV_PATH/netlists/tb_dac_$1_$2.spice"
