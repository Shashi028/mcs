clc;
close all;
clear all;
sector=input("Enter the type of sectoring: ");

if (sector==360)
  N=12;
  io=6;
  n=4;
  SI=((3*N).^0.5).^n/io;

  elseif (sector==120)
  N=7;
  io=2;
  n=4;
  SI=((3*N).^0.5).^n/io;

  elseif (sector==60)
  N=7;
  io=1;
  n=4;
  SI=((3*N).^0.5).^n/io;

  else
    printr("enter correct value");

endif

SIdb=10*log10(SI);
disp(SIdb);




