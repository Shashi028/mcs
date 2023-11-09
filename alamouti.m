clc;
close all;
clear all;
nt=2;
nr=2;
r=eye(nt*nr);
disp(r);
h=zeros(nt,nr);
ch=randn(nt*nr,1)/sqrt(2)+i*randn(nt*nr,1)/sqrt(2);
h=reshape(r*ch,nt,nr);
disp("channel matrix :")
h
#data(D)
d=[1+3i,1-3i];
snr=10;
sig=sqrt(0.5/10^(snr/10));
n=sig*(randn(nr,nt)+j*randn(nr,nt));
disp("random noise")
n
x=[d(1) -conj(d(2));d(2) conj(d(1))];
disp("alamounti data")
x
r=h*x+n;
disp("received message")
r
s0=conj(h(1,1))*r(1,1)+h(1,2)*conj(r(1,2))+conj(h(2,1))*r(2,1)+h(2,2)*conj(r(2,2));
s1=conj(h(1,2))*r(1,1)-h(1,1)*conj(r(1,2))+conj(h(2,2))*r(2,1)-h(2,1)*conj(r(2,2));
s=[s0 s1];
disp("combiner output")
s
