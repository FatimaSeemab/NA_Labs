x = [0 0.5 1.0 1.5 2.0];
y=[0 0.191	0.341 0.433	0.477];
dt = zeros(5,6);
xnod=3;
for i=1:5
     dt(i,1) = x(i);
     dt(i,2) = y(i);    
end
n=4;
h=x(2)-x(1);
for j=3:6
for i=1:n
 dt(i,j)= (dt((i+1),(j-1))-dt(i,(j-1)))/h;
end
n=n-1;
end
point=1.22;
s = (point-x(xnod))/h;
fp = dt(1,2)+s*h/2*(dt(xnod-1,3)+dt(xnod,3))+s^2*h^2*dt(xnod,4)+(s*(s-1)*h^3)/2*(dt(xnod-2,5)+dt(xnod-1,5))+s*((s^2)-4)*h^4*dt(1,6)