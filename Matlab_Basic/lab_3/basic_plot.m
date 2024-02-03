% Create a vector of values for x ranging from -2*pi to 2*pi with 180 points
x = linspace(-2*pi, 2*pi, 180);

% Calculate the corresponding y values for sin(x) and cos(x)
y1 = sin(x);
y2 = cos(x);

% Plot the sine wave in red and the cosine wave in blue
plot(x, y1, 'r', x, y2, 'b');

% Label the y-axis as 'the value'
ylabel('y_axis');

% Label the x-axis as 'time'
xlabel('x_axis');

% Add a title to the plot
title('Sine and Cosine Waves');

% Add a legend to distinguish between the sine and cosine waves
legend('sin(x)', 'cos(x)');
