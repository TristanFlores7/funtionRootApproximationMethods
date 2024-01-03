%Tristan Flores
%Solution to computer exercise 3.2.4

%the function: 0.5*x^2 + x + 1 - e^x
%the derivative of the function: x + 1 - e^x

format long;

x = 1; %first guess

for i = 0:1:50
    f = 0.5*x^2 + x + 1 - exp(x); %f(x)
    g =  x + 1 - exp(x); %f'(x)
    output = [i, x, f];
    disp(output);
    x = (x - (f/g)); %first iteration
   
end