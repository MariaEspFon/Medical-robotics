%#codegen
function TEE = macrorobotTransformEE()
  % Input: void
  % Output: homogeneous transformation Matrix from frame origin of frame E_E to the end of the end-effector frame E_E.
  
    TEE = [cos(pi/4)    0    -sin(pi/4)     0.0462
           0            1    0              0
           sin(pi/4)    0    cos(pi/4)      0.1452
           0    0    0    1];
       
end