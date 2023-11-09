clc;
close all;
clear all;
c=3*(10^8);
Pt=50;
Gt=1;
Gr=2;
d=1000;
f=900*(10^6);
l=1
lambda=c/f;
Pr=(Pt*Gt*Gr*(lambda^2))/(4*4*pi*pi*d*d*l);
dbw=10*(log10(Pr));
dbm=dbw+30;
disp(Pr)
disp(dbw)
disp(dbm)
figure();
plot(d,dbm);
hold on;
plot(d,dbw);
hold on;
