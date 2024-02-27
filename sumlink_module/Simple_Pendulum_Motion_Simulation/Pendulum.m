% Define system parameters
g = 9.81; % acceleration due to gravity (m/s^2)
L_values = [1, 1.5, 2, 2.5, 3]; % lengths of the pendulum (meters)

% Time vector
tspan = [0 10]; % simulation time from 0 to 10 seconds

% Loop through different values of L
for i = 1:length(L_values)
    L = L_values(i);
    
    % Define differential equation
    f = @(t, y) [y(2); -(g/L)*sin(y(1))];
    
    % Initial conditions: [angular displacement, angular velocity]
    y0 = [pi/4; 0]; % 45 degrees initial displacement, zero initial velocity
    
    % Solve the differential equation numerically
    [t, y] = ode45(f, tspan, y0);
    
    % Plot angular displacement
    subplot(length(L_values), 2, 2*i-1);
    plot(t, y(:, 1));
    title(['Angular Displacement (L = ', num2str(L), ' m)']);
    xlabel('Time (s)');
    ylabel('Angular Displacement (rad)');
    
    % Plot angular velocity
    subplot(length(L_values), 2, 2*i);
    plot(t, y(:, 2));
    title(['Angular Velocity (L = ', num2str(L), ' m)']);
    xlabel('Time (s)');
    ylabel('Angular Velocity (rad/s)');
end
