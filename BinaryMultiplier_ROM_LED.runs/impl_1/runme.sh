#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/mohsin/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/home/mohsin/Xilinx/Vivado/2022.1/bin
else
  PATH=/home/mohsin/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/home/mohsin/Xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mohsin/PLD/Lab5_2/Lab5_2.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log Lab5_2verilog.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Lab5_2verilog.tcl -notrace


