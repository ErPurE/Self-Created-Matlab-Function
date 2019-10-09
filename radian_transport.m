function [outputArg1] = radian_transport(inputArg1)
%将角度值转换为弧度制
%例如：
%a = [60 30 180 270]
% radian_transport(a)
%ans =
%   1.0472    0.5236    3.1416    4.7124
outputArg1 = inputArg1.*pi./180;
end

