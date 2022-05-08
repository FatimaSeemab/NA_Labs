clear
clc
data=[40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
x=0:8;
pc = polyfit(x,data,1); 
plot(x,data,'ro');
val1 = polyval((pc),4.5);
val2 = polyval((pc),8.5);
hold on;
plot(x,polyval(pc,x),'b-');
txt = sprintf('Best fit line y=%.2fx + %.2f',pc(1),pc(2));
legend('Data points',txt);
fprintf("The value at 4.5 is:"+val1+"\n")
fprintf("The value at 8.5 is:"+val2+"\n")
xi=[4.5,8.5];
y1=interp1(x,data,xi(1));
y2=interp1(x,data,xi(2));
fprintf("The value at 4.5 using interp1 is:"+y1+"\n")
fprintf("The value at 8.5 using interp1 is:%d \n",y2)
plot(xi(1),y1,"b*")
plot(xi(1),y2,"g*")