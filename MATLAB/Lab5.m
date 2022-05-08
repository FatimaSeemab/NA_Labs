clc
clear
close
a=input('Enter the function in the form of variable x:','s');
x(1)=input('Enter Lower Guess:');
x(2)=input('Enter Upper Guess:');
error=input('Enter allowed Error:');
roots = false_position(a,x(1),x(2),error);
disp(roots)
