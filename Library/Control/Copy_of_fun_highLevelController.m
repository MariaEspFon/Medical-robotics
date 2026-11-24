function [trigger, errorPose, desiredVelocity] = fun_highLevelController(T_base_tcp, T_base_des, robotState, stateCode)
    % Own implementation 
    % Input: actual TCP pose in base coordinates (matrix transform),
    % desired TCP pose in base coordinates (matrix transform)), kinematic
    % and kinetic parameters of robot joints in actual time (vector)
    % Output: 6-component vector with linear velocity (x,y,z) and angular
    % velocity (roll,pitch,yaw) of the TCP
    
    % Parameters
    pGain = 1.5;
    maxLin = 0.1;
    maxAng = 0.1;
    trigger = 0;
    epsilon = 1.2e-4; % tolerance error in meters
    desiredVelocity = zeros(6,1); % Initialization value
    
    errorPose = fun_PoseErrorCalulator(T_base_des, T_base_tcp);
    
    if norm(errorPose(1:3)) < epsilon
        trigger = 1;
        return;
    else
        linearVel = pGain * errorPose(1:3);
        angularVel = pGain * errorPose(4:6);

        if norm(linearVel) > maxLin
            linearVel = linearVel / norm(linearVel) * maxLin; 
        end
        if norm(angularVel) > maxAng
            angularVel = angularVel / norm(angularVel) * maxAng; 
        end
        desiredVelocity = [linearVel; angularVel];
    end

end