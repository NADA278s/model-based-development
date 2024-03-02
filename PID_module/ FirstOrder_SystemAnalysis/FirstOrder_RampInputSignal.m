% Definition of the system parameters
% Gain 
K = 1;
R = 10e3; % Resistance value
C = 1e-7; % Capacitance value
% Time Constant calculation
T = R*C;
% Transfer function numerator and denominator coefficients
num =  [0 K]; % Coefficients of the numerator of the transfer function
den = [T 1]; % Coefficients of the denominator of the transfer function
% Creating the transfer function G(s)
G = tf(num, den);
% Time vector for simulation
t = 0:1:10; % Time from 0 to 10 with step size 1
% Input signal (ramp)
u_ramp =  0.1 * t;
% Simulating the response of the system to the ramp input
[y_ramp, t_ramp] = lsim(G, u_ramp, t);
% Plotting the response of the system to the ramp input
subplot(2, 1, 1); % Creating subplot for the response
plot(t_ramp, y_ramp);
xlabel('Time'); % Label for x-axis
ylabel('Output'); % Label for y-axis
title('System Response to Ramp Input'); % Title for the plot
% Plotting the step response of the system
subplot(2, 1, 2); % Creating subplot for the step response
step(G);
title('Step Response of the System'); % Title for the plot
% Additional: Displaying step response information
stepinfo(G)
