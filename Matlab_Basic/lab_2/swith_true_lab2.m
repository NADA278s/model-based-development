% MATLAB's switch statement doesn't directly support array comparisons. 
% To handle this, you can use isequal or isequaln for array comparisons.
color_code = input('input your code from [0,255,0],[255, 0, 0],[0, 0, 255],[255, 255, 0],[128, 0, 128] :');
switch true
    case isequal(color_code,[0,255,0])
     disp('your color is green')
    case isequal(color_code,[255, 0, 0])
       disp('your color is red')  
    case isequal(color_code,[0, 0, 255])
       disp('your color is blue')   
    case isequal(color_code,[255, 255, 0])
       disp('your color is Yellow')  
    case isequal(color_code,[128, 0, 128])
        disp('your color is Purple') 
    otherwise
        disp('wrong color code please try agin')
end