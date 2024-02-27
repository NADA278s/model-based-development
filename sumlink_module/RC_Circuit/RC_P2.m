% Define system parameters
R = 1000; % 1 kohm
C = 1e-6; % 1 µF
Vin = @(t) 5 * sin(2*pi*t); % Input voltage function: 5*sin(2*pi*t)

% Solve the differential equation
tspan = [0 0.1]; % Time span for simulation
initial_voltage = 0; % Initial voltage across the capacitor
[t, Vout] = ode45(@(t, V) (1/(R*C)) * (Vin(t) - V), tspan, initial_voltage);

% Plot Voltage over time
plot(t, Vout);
xlabel('Time (s)');
ylabel('Voltage across Capacitor (V)');
title('Voltage across Capacitor vs Time');
grid on;
