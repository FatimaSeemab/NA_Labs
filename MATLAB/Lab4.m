clc
clear
close
a=input('Enter the function in the form of variable x:','s');
x(1)=input('Enter Initial Guess:');
error=input('Enter allowed Error:');
root=newton_raphson(a,x(1),error)
disp(root)