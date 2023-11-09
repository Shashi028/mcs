clc;
close all;
clear all;
N=input("Enter the number users: ")
m=ceil(log2(N));
w=1;
H=[w,w;w,-w];
for i=1:m-1
  H=kron(H,[1,1;1,-1]);
end
disp(H)
orthogonal = true;
for i=1:N
  for j=i+1:N
    inner_product=sum(H(:,i).*H(:,j));
    if inner_product ~= 0
      orthogonal = false;
      break;
    endif
  endfor
endfor

if ~orthogonal
end
if orthogonal
  disp("The walsh codes are orthogonal")
else
  disp("The walsh codes are not orthogonal")
end
for i=1:N
  for j=1:N
    u=H(i,: );
    v=H(j,: );
    sum=0;
    for k=1:length(u)
      sum=sum+(u(k)*v(k));
      O(i,j)=sum/(length(u));
    endfor
    endfor
  endfor
display(O)
