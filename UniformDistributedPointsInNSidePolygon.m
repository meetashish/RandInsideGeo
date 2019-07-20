function [x,y] = UniformDistributedPointsInNSidePolygon(n,a,N)


k = a*sin((n - 2)*pi/(2*n))*log(tan((n + 2)*pi/(4*n)))...
    - log(tan((n - 2)*pi/(4*n)));

u1 = rand(1,N);

theta = (-(n - 2)*pi)/(2*n)...
        + 2*atan(exp(k*u1/(a*sin((n - 2)*pi/(2*n))))...
        + log(tan((n - 2)*pi/(4*n))));

R = (a*sin((n - 2)*pi/(2*n)))./(sin(theta + (n - 2)*pi/(2*n)));

% fT = 1/k*a*sin((n - 2)*pi/(2*n))*(log(tan(theta + (n + 2)*pi/(2))) - log(tan((n - 2)*pi/(4*n))));
% fR = R./k;

u2 = rand(1,N);
r = R.*sqrt(u2);

u3 = rand(1,N);
u = floor(n*u3);

rr = r;
thetaa = theta + u*2*pi/n;

x = rr.*cos(thetaa);
y = rr.*sin(thetaa);