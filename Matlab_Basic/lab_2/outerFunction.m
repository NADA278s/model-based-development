function outerFunction()
    function result = innerFunction(input1, input2)
        result = input1 + input2;
end
input1 = 5;
    input2 = 7;
    result = innerFunction(input1, input2);
    fprintf('Result from innerFunction: %d\n', result);
end 

