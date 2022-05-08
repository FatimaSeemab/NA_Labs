function root = newton_raphson(a,x,error)
 
    f = inline(a)
    dif=diff(str2sym(a));
    d= inline(dif);
    x(1)=x
    for i=1:100
        x(i+1) = x(i)-(f(x(i))/d(x(i)))
        if abs((x(i+1)-x(i))/x(i))<error,break,end
        x(i) = x(i+1)
    end
    root=x(i)
end