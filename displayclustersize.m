clc;
close all;
clear all;

sector=input("enter the type of sectoring: ");
SI=input("enter SI: ");

if (sector==360)
  io=6;
  n=4;
  N=sqrt(SI*io)/3;

  elseif(sector==120)
  io=2;
  n=4;
  N=sqrt(SI*io)/3;

  elseif(sector==60)
  io=1;
  n=4;
  N=sqrt(SI*io)/3;
  else
  disp("enter correct value: ")
endif

 if (N<3&&N>=1)
   disp("cluster size N=3")
   elseif (N>=3&&N<4)
   disp("cluster size N=4")
   elseif (N>=4&&N<7)
   disp("cluster size N=7")
 else
   disp("cluster size N=12")
 endif

