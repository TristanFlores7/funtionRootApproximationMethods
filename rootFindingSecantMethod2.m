%Tristan Flores
%Solution to computer exercise 3.3.10

% First it should noted that f(x) = tan(x) has roots at x = 0, n * pi
% For this program, we'll choose r = pi
% Next we note that f'(r) = sec^2(pi) = 1, and f''(r) = 2sec^2(pi)tan(pi) = 0
% Finally, to observe error we'll choose x0 = 4, x1 = 3
% It should also be noted that -0.5 * f''(r) / f'(r) is simply equal to 0

x0 = 4; %intital xn-2 value (x0)
x1 = 3; %intital xn-1 value (x1)
Fx0 = tan(x0); %intital f(xn-2) value f(x0))
Fx1 = tan(x1); %intital f(xn-1) value f(x1))
disp("          xn-2                xn-1                xn                f(xn)         err(n)/e(n-1)e(n-2)");

for i = 0:1:5

    %secant method iteration
    xn = x1 - (Fx1 * ((x1 - x0) / (Fx1 - Fx0)));
    Fxn = tan(xn);
    errRatio = abs(pi - xn) / (abs(pi - x0) * abs(pi - x1));
    
    %output
    output = [x0, x1, xn, Fxn, errRatio];
    disp(output);

    %reinitialization of variables
    x0 = x1;
    x1 = xn;
    Fx0 = Fx1;
    Fx1 = Fxn;
end