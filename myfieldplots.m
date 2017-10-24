%%% Script to plot lots of field lines

%% Set up range of initial coordinates for field lines
x_range = linspace(-2,2,4);
y_range = linspace(-2,2,4);
z_range = linspace(1,2,2);


%% Create figure and add lines on top of eachother
figure;
hold on;

%% for each initial coordinate, calculate and plot field lines
for x0 = x_range
    for y0 = y_range
        for z0 = z_range
            [X,Y,Z] = myfieldline(x0,y0,z0,100);
            plot3(X,Y,Z);
        end
    end
end
