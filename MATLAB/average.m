
function average=f(x)
L=length(x);
sum=0
for i=1:L
    sum=sum+x(i);
average=sum/L;
end