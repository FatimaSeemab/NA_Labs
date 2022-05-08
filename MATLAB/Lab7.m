clear
clc
data=[40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
x=0:8;
pc = polyfit(x,data,2); 
plot(x,data,'ro');
disp("The acceleration is: " +pc(1))
disp("The velocity is: "+pc(2))
disp("The height is: "+pc(3))
t_value = polyval(pc,2.5);
root=roots(pc);
disp("The value at time 2.5 is: "+t_value)
disp("Y is zero at: "+root)
der = polyder(pc);
max_height_time = roots(der);
disp("The polynomial will give the maximum height at: "+ max_height_time)
max_height=polyval(pc,max_height_time);
disp("The polynomial maximum height is: "+ max_height)
hold on;
plot(x,polyval(pc,x,data),'b-');
txt = sprintf('Best fit line y=%.2fx^2 + %.2fx+%.2f',pc(1),pc(2),pc(3));
legend('Data points',txt);

