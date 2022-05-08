clear 
clc
p = input("Please enter the value of x at which u want to differentiate : ");
x = [0 0.1 0.2 0.3 0.4 0.5 0.6];
y = [0 0.16 0.32 0.56 0.84 0.96 1.23];
h = input("Please enter the value of h: ");
% disp(x(4))
if p== x(1) 
   if h==0.1
%        Three point start points end point formula
       solution = (1/(2*h))*(-3*y(1)+4*y(2)-1*y(3))
   end
elseif p== x(7)
%        Three point end point formula
   if h==0.1
       solution = (1/(2*-h))*(-3*y(7)+4*y(6)-y(5))
   end
elseif p== x(4) 
    if h==0.1
%        Three point mid point formula
       solution = (1/(2*h))*(y(1)-y(7))
    end 
end


