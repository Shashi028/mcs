clc;
close all;
clear all;
v=input("enter velocity in m/s: ");
f=input("enter frequency in Hz: ");
lambda=(3*10^8)/f;
t=0;
fd=(v/lambda)*cos(t);
bd=2*fd
printf("Maximum doppler shift in Hz is")
display(fd)
printf("Maximum doppler spread in Hz is")
display(bd)
tc=0.423/fd;
printf("Coherence time in seconds is ")
display(tc);
bs=input("Enter signal bandwidth: ");
ts=input("Enter symbol time period in seconds: ")
if (tc<ts && bd>bs)
  display("It is a fast fading channel: ");
elseif (tc>ts && bd<bs)
  display("It is a slow fading channel");
endif

