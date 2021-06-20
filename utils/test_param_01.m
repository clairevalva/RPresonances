function [aa] = test_param_01(t, x1, x2, x3)
    a = exp(2*t)*x1*x1;
    b = exp(-2*t)*x2*x2;
    aa = (a + b <= 1);
end