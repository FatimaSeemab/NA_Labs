clear
t = 0:0.001:10;
i=length(t);
m=68.1;
cd=0.25;
g=9.8;
for f=1:i
    v(f)=sqrt((g*m)/cd)*tanh(sqrt((g*cd)/m)*t(f));
end
disp(t)
disp(v)
result = trapz(t,v);
fprintf("The distance at time t=10 is %0.8f",result)