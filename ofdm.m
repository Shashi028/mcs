clc;
close all;
clear all;
mapping=[-3, -1, -3, 1];
count=1;
for b1=0:1
 for b2=0:1
  for b3=0:1
   for b4=0:1
    b=[b1,b2,b3,b4];
    B(count,:)=b;
    if (b1==0)&&(b2==0)
     map(:,1)=mapping(1);
    elseif (b1==0)&&(b2==1)
     map(:,1)=mapping(2);
    elseif (b1==1)&&(b2==0)
     map(:,1)=mapping(3);
    else
     map(:,1)=mapping(4);
    endif
    if (b3==0)&&(b4==0)
     map(:,2)=mapping(1);
    elseif (b3==0)&&(b4==0)
     map(:,2)=mapping(1);
    elseif (b3==1)&&(b4==0)
     map(:,2)=mapping(2);
    elseif (b3==1)&&(b4==0)
     map(:,2)=mapping(3);
    else
     map(:,2)=mapping(4);
    endif
    Map(count,:)=map;
    count=count+1;
   endfor
  endfor
 endfor
endfor
B
Map
####################################################
count=1;
bit_pattern = randi([0,1],1,64)
figure()
stem(bit_pattern)
title('input block of 64 serial bits')
for i=1:4:61
 b=[bit_pattern(i),bit_pattern(i+1),bit_pattern(i+2),bit_pattern(i+3)]
 givenB(count,:)=b;
 for j=1:16
 if b==B(j,:)
  k=j;
  break
 endif
 endfor
 resp_map(count,:)=(Map(k,:));
 count=count+1;
endfor
givenB
resp_map
figure()
stem(Map(:,1))
title('real component of symbols')
figure()
stem(Map(:,2))
title('imaginary component of symbols')
####################################################
fo=24000000;
to=1/fo;
t=0.01*to:0.01*to:8*to;
carr_real=cos(2*pi*fo*t);
carr_imaj=sin(2*pi*fo*t);
figure();
plot(carr_real)
hold on
plot(carr_imaj)
title('primary and quadrature carrier')
figure()
for i=1:16
 channel_real=resp_map(i,1)*carr_real;
 channel_imaj=resp_map(i,2)*carr_imaj;
 channel=channel_real+channel_imaj;
 subplot(4,4,i)
 plot(channel)
endfor
title('sample carrier modulation of the 16 symbols')


