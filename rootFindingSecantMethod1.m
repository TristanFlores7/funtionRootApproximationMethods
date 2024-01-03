%Tristan Flores
%Solution to computer exercise 3.3.7

% The function is f(x) = x^3 + 2x^2 + 10x - 20
% x0 = 2, x1 = 1. f(x0) = 16, f(x1) = -7
% According to the secant method:
% f(n) = xn-1 - f(xn-1)[(xn-1 - xn-2) / (f(xn-1) - f(xn-2))]

x0 = 2; %intital xn-2 value (x0)
x1 = 1; %intital xn-1 value (x1)

Fx0 = 16; %intital f(xn-2) value f(x0))
Fx1 = -7; %intital f(xn-1) value f(x1))
disp("          xn-2               f(xn-2)               xn-1               f(xn-1)               xn               f(xn)");

for i = 0:1:5

    %secant method iteration
    xn = x1 - (Fx1 * ((x1 - x0) / (Fx1 - Fx0)));
    Fxn = (xn)^3 + 2 * (xn)^2 + 10 * (xn) - 20;

    %output
    output = [x0, Fx0, x1, Fx1, xn, Fxn];
    disp(output);
   
    %reinitialization of variables
    x0 = x1;
    x1 = xn;
    Fx0 = Fx1;
    Fx1 = Fxn;

end