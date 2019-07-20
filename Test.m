%% Release memory, clear screen, and figure
clear;clc;clf

%%
L = 2; % Radius of hexagon in meter
N = [1e3,1e4]; % Number of random points to be generated
% Calling function
[xs1,ys1] = UniformDistributedPointsInHexagon(L,N(1));
[xs2,ys2] = UniformDistributedPointsInHexagon(L,N(2));

%% Plotting results
subplot(121);
plot(xs1,ys1,'.');
axis square;
title('N = 1000')

subplot(122);
plot(xs2,ys2,'.');
axis square;
title('N = 1000000')