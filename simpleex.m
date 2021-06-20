% will define and simulate example 5.1 from:
% S. Dyatlov and C. Guillarmou 2016 Pollicott–Ruelle Resonances for Open Systems

% manifold U is the disk times S_1
% however, the flow is really on the disk bc it independent of that really
% also note the stable/unstable bundles

ptsS1 = 100;

[X, Y, T] = meshcirc_wt(0.05, 1, 0, 0, 100);
Z = (1:ptsS1)/ptsS1;

% do a simple test to see if this works
[a,b,c] = phi_t_01(0.2, X(1), Y(1), Z(1));
test_param_01(0.02, X(60), Y(60), Z(1));

init_shape = size(T);

T = flatten(T);
X = flatten(X);
Y = flatten(Y);

[A, B, C] = arrayfun(@phi_t_01, T, X, Y, X);

A = reshape(A, init_shape);
B = reshape(B, init_shape);
C = reshape(C, init_shape);

% SHOULD CHECK LEAVING CONDITIONS
% ALSO COLORCODE AND MAKE VIDEO?

figure('position', [1, 1, 1000, 1000], 'visible', 'off')
plot(squeeze(A(10,10,:)), squeeze(B(10,10,:)));
h = circleplt(0,0,1);
xlim([-1.1,1.1]);
ylim([-1.1,1.1]);  
axis off

savename = "figs/test_flow_01.png";

print('-dpng','-r300',savename)


% lams = -1 - l + i*k; % l \in \bbN_0, k \in \bbZ
% lams are spanned by COME BACK, when can test nicely!
