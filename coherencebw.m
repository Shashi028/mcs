clc;
close all;
clear all;
fc=input("Enter the value of frequency correlation: ");
sigma=input("Enter the value of sigma: ");
if fc>=0.9
  Bc=1/(50*sigma);
  disp(Bc);
elseif (fc>=0.5 && fc<0.9)
  Bc=1/(5*sigma);
  disp(Bc);
endif
Bs=input("Enter the value of signal bandwidth :");
TsIP=input("Enter the value of symbol period: ");
Ts=TsIP*10^-6;
if Bs < Bc && Ts>sigma
  disp("this is a type of flat fading");
else
  disp("This is a type of selective fading");
end


