function [X,Y,Z] = myfieldline(x0,y0,z0,distance)

% Use this function by typing:
%
% [X,Y,Z] = myfieldline(x0,y0,z0,distance);
%
% The vector field is defined in 'myfield.m'
% The starting coordinates are defined by (x0,y0,z0)
% The value 'distance' defines the length of field line to compute

%% Choose N, the number of points to calculate the field line
N = 100;
%% This determines the step size ds
ds = distance/N;

%% Initialise X,Y,Z so they are in memory from the start
X = zeros(N,1);
Y = zeros(N,1);
Z = zeros(N,1);

%% The first point is the starting point you chose
X(1) = x0;
Y(1) = y0;
Z(1) = z0;

%% Now calculate the field line
for c = 2:N
    [Bx,By,Bz] = myfield(X(c-1),Y(c-1),Z(c-1));
    %% Normalise the field vector
    magnitude = sqrt(Bx^2+By^2+Bz^2);
    Bnx = Bx/magnitude;
    Bny = By/magnitude;
    Bnz = Bz/magnitude;
    %%% Implement the equation from part (b) here
    %%% X(c) = ...
    X(c) = X(c-1)+Bnx*ds;
    Y(c) = Y(c-1)+Bny*ds;
    Z(c) = Z(c-1)+Bnz*ds;
end