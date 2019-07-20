%% Release memory, clear screen, and figure
clear;clc;clf

%%
L = 2; % Radius of hexagon in meter
N = 1e6; % Number of random points to be generated
% Calling function
[X,ys] = UniformDistributedPointsInHexagon(L,N);


x = linspace(-L,L);
ft = zeros(1,length(x));
f1 = 2/(3*L);
f2 = 4/(3*L^2)*(L - abs(x((abs(x) >= L/2 & abs(x) < L))));
ft(abs(x) <= L/2) = f1;
ft(abs(x) >= L/2 & abs(x) < L) = f2;
[fs,F] = EstimateDistribution(X,x);
plot(x,ft,x,fs);