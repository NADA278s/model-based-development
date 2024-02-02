function [squares, cubes, fourthPowers] = applyFunction(varargin)
    numArgs = nargin;
    squares = zeros(1, numArgs);
    cubes = zeros(1, numArgs);
    fourthPowers = zeros(1, numArgs);

    for i = 1:numArgs
        squares(i) = varargin{i}^2;
        cubes(i) = varargin{i}^3;
        fourthPowers(i) = varargin{i}^4;

        fprintf('Input %d: %d, Square: %d, Cube: %d, Fourth Power: %d\n',i, varargin{i}, squares(i), cubes(i), fourthPowers(i));
               
    end
end