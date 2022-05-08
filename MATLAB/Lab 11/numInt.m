function [integral_value] = numInt(x,y)
   n = length(x);
   for i = 1 : n-1
       d(i) = x(i+1) - x(i);
   end
   disp(d)
   intervalCount=1;
   for j = 1:length(d)-1
       if d(j+1)~=d(j)
           intervalCount=intervalCount+1;
           boundary(j) = j + 1;
       end
   end
   boundary(j+1)=j+1;
   disp(boundary)
   disp(intervalCount)
   boundary=nonzeros(boundary);
   disp(boundary)
   boundary = unique(boundary);
   disp(boundary)

   if boundary(1) - 1 == 1
       integral(1) = (boundary(1)-x(1))/2 * (y(1) + y(boundary(1)));
   elseif boundary(1) - 1 == 2
       integral(1) = (boundary(1) - x(1))/6 * (y(1) + 4*y((boundary(1)+1)/2) + y(boundary(1)));
   elseif boundary(1) - 1 == 3
        integral(1) = 3*(boundary(1) - x(1))/8 * (y(1) + 3*y((boundary(1)+1)/3 - 1) + 3*y((boundary(1)+1)/3 + 1) + y(boundary(1)));
   end
   for k = 2:intervalCount-1
       if boundary(k) - boundary(k-1) == 1
          integral(k) = (x(boundary(k))-x(boundary(k-1)))/2 * (y(boundary(k-1)) + y(boundary(k)));
       elseif boundary(k) - boundary(k-1) == 2
           integral(k) = (x(boundary(k)) - x(boundary(k-1)))/6 * (y(boundary(k-1)) + 4*y((boundary(k)+boundary(k-1))/2) + y(boundary(k)));
       elseif boundary(k) - boundary(k-1) == 3
        integral(k) = 3*(x(boundary(k)) - x(boundary(k-1)))/24 * (y(boundary(k-1)) + 3*y(fix((boundary(k)+boundary(k-1))/2)) + 3*y(fix((boundary(k)+boundary(k-1))/2) + 1) + y(boundary(k)));
       end
   end
   if n - boundary(length(boundary)) == 1
       integral(k+1) = (x(n)-x(boundary(length(boundary))))/2 * (y(n) + y(boundary(length(boundary))));
   elseif n - boundary(length(boundary)) == 2
       integral(1) = (x(n)-boundary(length(boundary)))/6 * (y(n) + 4*y((n+boundary(length(boundary)))/2) + y(boundary(length(boundary))));
   elseif n - boundary(length(boundary)) == 3
        integral(1) = 3*(x(n)-boundary(length(boundary)))/24 * (y(n) + 3*y((fix((n + boundary(length(boundary)))/2))) +3*y((fix((n + boundary(length(boundary)))/2))+1) + y(boundary(length(boundary))));
   end
   disp(integral)
   integral_value = sum(integral);
