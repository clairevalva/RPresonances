function [X,Y, T] = meshcirc_wt(spacing, r, cx, cy, numt)
    % returns meshgrid with points inside a circle of radius r, centered at (cx, cy), spacing given
    ttt = 0:(1 / numt):1;
    %define initial grid
    lowlim = -1*r;
    ll = lowlim:spacing:r;
    [X,Y,T]=meshgrid(ll, ll, ttt);

    % eliminate things outside
    ifXY = (X.*X + Y.*Y) > r;
    X(ifXY) = NaN;
    Y(ifXY) = NaN;
    T(ifXY) = NaN;
    X = X + cx;
    Y = Y + cy;
end