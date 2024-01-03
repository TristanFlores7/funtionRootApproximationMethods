%Tristan Flores
%Solution to computer exercise 3.1.3

%The root of tan(x) = x can be rewritten as tan(x) - x = 0
%Or f(x) = tan(x) - x, where we're interested in the x value where f(x) = 0
%The initial bounds for bisection are given [4, 5]

a = 1;
b = 2;

f = 1;

disp("                a                  b                   x                  f(x)");


while abs(f) > 0.000000001

    format long;

    x = (b + a) / 2; %mid-point of bound
    f = tan(x) - x; %root finding function

    output = [a, b, x, f];
    disp(output);

    if f < 0.00000000 %statements to adjust bounds for next iteration
        a = x;
    end
    if f > 0.00000000
        b = x;
    end
end