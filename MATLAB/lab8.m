%Newton’s Forward Difference Formula MATLAB Program
clear
clc
x=[140	150	160	170	180]; % inputting values of x 
fx=[3.685	4.854	6.302	8.076	10.225]; % inputting values of y
dt=zeros(5,10); % function 
for i=1:5
    dt(i,1)=x(i);% for loop 
    dt(i,2)=fx(i); % calling function 
end 
h = x(2)-x(1) % finding the value of h
n=4; % number of iterations 
for j=3:10
    for i=1:n
        dt(i,j) = (dt(i+1,j-1)-dt(i,j-1))/h
    end
n=n-1;
end 

xp=142; % defining the value of xp 
s=(xp-x(1))/h; % calculating number of intervals 
f0 = fx(1);
f01 = dt(1,3);
f02 = dt(1,(3+1));
f03 = dt((1),(3+2));
f04 = dt((1),(3+3));
% polynomial = (f0)+("a"+f01)*h+("a"+"(a-1)"*f02)*h^2 + ("a"+"(a-1)".*"(a-2)"*f03)*h^3+("a"+"(a-1)"+"(a-2)"+"(a-3)"*f04)*h^4
% using the forward interpolation formula
fp = (f0)+(s*f01)*h+(s*(s-1)*f02)*h^2 + (s*(s-1)*(s-2)*f03)*h^3+(s*(s-1)*(s-2)*(s-3)*f04)*h^4
%% 
clear
clc
syms z
x=[140	150	160	170	180]; % inputting values of x 
fx=[3.685	4.854	6.302	8.076	10.225]; % inputting values of y
dt=zeros(5,10); % function 
for i=1:5
    dt(i,1)=x(i);% for loop 
    dt(i,2)=fx(i); % calling function 
end 
h = x(2)-x(1) % finding the value of h
n=4; % number of iterations 
for j=3:10
    for i=1:n
        dt(i,j) = (dt(i+1,j-1)-dt(i,j-1))/h;
    end
n=n-1;
end 
s=(z-x(1))/h 
f0 = fx(1);
f01 = dt(1,3);
f02 = dt(1,(3+1));
f03 = dt((1),(3+2));
f04 = dt((1),(3+3));
% using the forward interpolation formula
polynomial = (f0)+(s*f01)*h+(s*(s-1)*f02)*h^2+(s*(s-1)*(s-2)*f03)*h^3+(s*(s-1)*(s-2)*(s-3)*f04)*h^4
%% Task 2
%Newton’s Forward Difference Formula MATLAB Program
x=[0	50	100	150	200	250]; % inputting values of x 
fx=[0	60	80	110	90	0]; % inputting values of y
dt=zeros(6,10); % function 
for i=1:6 
    dt(i,1)=x(i);% for loop 
    dt(i,2)=fx(i); % calling function 
end 
n=5; % number of iterations 
for j=3:10
for i=1:n
dt(i,j)=dt(i+1,j-1)-dt(i,j-1)
end
n=n-1;
end 
h=x(2)-x(1) % finding the value of h
xp=(min(x)+max(x))/2; % defining the value of xp 
for i=1:5
q=(xp-x(i))/h; % calculating number of intervals 
if (q>0&&q<1)
p=q;
 end
 end
 p
l=xp-(p*h)
 for i=1:5 
 if(l==x(i))
 r=i;
 end
 end % calculating different value of y
 f0=fx(r);
 f01=dt(r,3); 
 f02=dt(r,(3+1));
 f03=dt((r),(3+2));
 f04=dt((r),(3+3));
% using the forward interpolation formula 
 fp=(f0)+((p*f01)+(p*(p-1)*f02)/(2)) + ((p*(p-1)*(p-2)*f03)/(6))+((p*(p-1)*(p-2)*(p-3)*f04)/(24))