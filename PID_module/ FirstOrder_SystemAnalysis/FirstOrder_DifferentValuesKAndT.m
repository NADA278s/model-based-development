% Define ranges for gain (K) and time constant (T)
K_values = [1, 2, 3]; % Example values for gain
T_values = [1, 2, 3]; % Example values for time constant
% Create subplots for each combination of K and T
figure;
for i = 1:length(K_values)
    for j = 1:length(T_values)
        % Define current gain and time constant
        K = K_values(i);
        T = T_values(j);
        % Create a first-order transfer function with the current parameters
        G = tf(K, [T 1]);
        % Calculate subplot position
        subplot(length(K_values), length(T_values), (i - 1) * length(T_values) + j);
        % Plot the step response of the system
        step(G);
        title(sprintf('K = %d, T = %d', K, T)); % Title for the plot
        xlabel('Time'); % Label for x-axis
        ylabel('Output'); % Label for y-axis
    end
end
