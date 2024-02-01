myCellArray = {42, 'Hello', 3.14, [1 2; 3 4], };
element1 = myCellArray{1}; 
element2 = myCellArray{2};  
element3 = myCellArray{3}; 
element4 = myCellArray{4} ;
disp(['Element 1 (numeric): ', num2str(element1)]);
disp(['Element 2 (string): ', element2]);
disp(['Element 3 (double): ', num2str(element3)]);
disp(['Element 4 (matrix):' ]);
disp(element4);

