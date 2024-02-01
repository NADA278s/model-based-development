function [meanValue, stdValue] = lab_2_computeStatistics (inputVector)
    meanValue = mean(inputVector);
    stdValue = std(inputVector);
    fprintf('meanValue : %d \n stdValue: %d' , meanValue ,stdValue);
end 
