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
t = 0:0.01:10; % Time from 0 to 10 with step size 0.01
% Input signal (parabolic)
u_parabolic = 0.01 * t.^2; % Parabolic input signal
% Simulating the response of the system to the parabolic input
[y_parabolic, t_parabolic] = lsim(G, u_parabolic, t);
% Plotting the response of the system to the parabolic input
subplot(2, 1, 1); % Creating subplot for the response
plot(t_parabolic, y_parabolic);
xlabel('Time'); % Label for x-axis
ylabel('Output'); % Label for y-axis
title('System Response to Parabolic Input'); % Title for the plot
% Plotting the step response of the system
subplot(2, 1, 2); % Creating subplot for the step response
step(G);
title('Step Response of the System'); % Title for the plot
% Additional: Displaying step response information
stepinfo(G)
