function [Bx,By,Bz] = myfield(x,y,z)

% Use this function by typing:
%
% function [Bx,By,Bz] = myfield(x,y,z);
%
% This function calculates the field vector at coordinates (x,y,z)

%% Choose which field function you want to use
field_definition = 3;

%% The 'switch' function lets you easily select different cases
switch field_definition
    case 0
        %% This example is the field of Paper 7/1 Q2(i)
        Bx = -y;
        By = x;
        Bz = 0;
    case 1
        %% define a new field here
        Bx = x;
        By = y;
        Bz = -2*z;
    case 2
        Bx = y / (x*x + y*y);
        By = -x / (x*x + y*y);
        Bz = 0;
    case 3
        Bx = x*x*y;
        By = 3*x*y*y;
        Bz = 0;
end

%% If a vector component is a constant, make it the same size as the input coordinates
if length(Bx)==1
    Bx = Bx*ones(size(x));
end
if length(By)==1
    By = By*ones(size(y));
end
if length(Bz)==1
    Bz = Bz*ones(size(z));
end
