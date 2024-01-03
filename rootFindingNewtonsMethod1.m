%Tristan Flores
%Solution to computer exercise 3.2.4

%the function: 2x(1−x^2+x)ln(x) = x^2 − 1
%can be written as 0 = 2x(1−x^2+x)ln(x) - x^2 + 1 on the interval [0, 1]
%the derivitive of this function is -2(x - 1)((3x + 1)ln(x) + x + 1) = 0
%using a first guess (0.6) from the interval, we can apply NM

format long;

x = 0.4; %first guess

for i = 0:1:10
    f = (2*x*(1 - (x^2) + x)*log(x)) - (x^2) + 1; %f(x)
    g = -2*(x - 1)*((3*x + 1)*log(x) + x + 1); %f'(x)
    output = [i, x, f];
    disp(output);
    x = (x - (f/g)); %first iteration
   
end