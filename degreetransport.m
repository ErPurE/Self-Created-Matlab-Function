function [outputArgl] = degreetransport(inputArgl)
%将度分秒转换成度的小数 
%每一行分别输入度分秒
%example:
%inputArgl=[30 30 30 ; 15 30 0 ; 30 15 0]
%degreetransport(inputArgl)
%outputArgl=[30.5083 ; 15.5000 ; 30.2500]
input_size = size(inputArgl);
for i = 1:input_size(1,1)
    outputArgl(i,1) = inputArgl(i,1) + inputArgl(i,2) / 60 + inputArgl(i,3) / 3600;
end


