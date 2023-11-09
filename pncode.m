clc;
close all;
clear all;
A_init=[1,0,1,0];
A=A_init;
t1=3;
t2=4;
i=1;
while(i<100)
Y(i)=A(4);
a1=xor(A(t1),A(t2));
a2=A(1);
a3=A(2);
a4=A(3);
A_new=[a1,a2,a3,a4];
if A_new==A_init
  count=i;
  break
else
  A=A_new;
  i=i+1;
endif
endwhile
printf("Length of sequence: ");
disp(count)
printf("The sequence  is: ");
disp(Y);
