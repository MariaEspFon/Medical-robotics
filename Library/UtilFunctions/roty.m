%#codegen
function [ R ] = roty( theta )
%ROTZ Gives rotation matrix about y by theta
R = eye(3);
c = cos(theta);
s = sin(theta);

R = [c 0 s;...
     0 1 0;...
    -s 0 c];



end

