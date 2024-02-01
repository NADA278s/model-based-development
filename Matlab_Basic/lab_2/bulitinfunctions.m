% Create a vector of numbers
% numbersVector = [4, 8, 2, 10, 5, 7];
% if the vactor as an input from user
numbersVector = input('inputyourVector'); 
% Display the original vector
disp('Original Vector:');
disp(numbersVector);

%  Apply built-in functions to the vector
maxValue = max(numbersVector);
minValue = min(numbersVector);
sumValue = sum(numbersVector);

% Display the results
disp(['Maximum value: ', num2str(maxValue)]);
disp(['Minimum value: ', num2str(minValue)]);
disp(['Sum of values: ', num2str(sumValue)]);