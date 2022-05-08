clear
clc
x = [ 0.0 0.2 0.4 0.6 0.8 1.0];
y = [ 0.0 7.78	10.68	8.37 3.97 0.00];
xi = 0.90;
[result,yi,p] = newtint(x,y,xi,2)
yi = poly2sym(yi);
yi = diff(yi);
yi = diff(yi);
yi = inline(yi)
EI = 1;
value = yi(0.90)

