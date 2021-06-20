function [a, b, c] = phi_t_01(t, x1, x2, x3)
    % defines the flow
    a = exp(t)*x1;
    b = exp(-1*t)*x2;
    c = x3; 
end
