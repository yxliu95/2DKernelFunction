Purpose: The program is designed for computation of the 2D kernel functions。

Auther: Yuxiang Liu ( Contact me: yxliu17@mail.ustc.edu.cn )

Address: Department of Earth and Space Sciences, Southern University of Science and Technology, Shenzhen, 518055, China.

Installation guide:
The program runs on Linux system (Program has been tested successfully on Linux CentOS 7 ). 
For package energy-map, modify the “lapaclib” in Makefile to LAPACK on your computer and compile directly with the “make” instruction. 
The installation processes take time less than 10 seconds.

Input for 2DKernel function:
The input file is inputt.dat inputdt.dat maxt.dat mint.dat parameter.dat rickert.dat
rickert.dat is the file for source time function.
inputt.dat inputdt.dat maxt.dat mint.dat parameter.dat are model parameters generated by write_parameter.m write_source.m write_topo.m topo.m





