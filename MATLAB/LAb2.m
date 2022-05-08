a = input("First number ");
b = input("Second number ");
disp([" Their sum is " num2str(a+b)])
disp([" Their product is"  num2str(a*b)])

%% TASK 4
clc
for index = 1:3:15 
    disp(index)
end
%% TASK 5
clc
for x = -1:0.1:1
     if x<0.5 && x>=-1
         disp(x.^2)
     elseif x>=0.5 && x<=1
         disp(0.25)
     end
  
end
%% 
clear
clc
A = [1 2 3 4 5;
    2 4 6 8 10;
    1 3 5 7 9;
    2 3 4 5 2;
    1 3 5 2 4]
A'

%% 
A = [9,7,0;0,8,6;7,1,-6]
 size_array=size(A)
 determinant=det(A)
 inverse=inv(A)
 x=-pi:0.01:pi;
 y=cos(x);
 plot(x,y)
 xlabel('x')
 ylabel('y=cos(x)')
  title('Graph of cosine from -pi to pi')


