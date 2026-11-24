function y = fun_calibrate(T_laserX, T_laserY, codeState)

    switch codeState
        case 1
            [] = fun_capturePoses();
        
        case 2
            [] = fun_capturePoses();
        
        case 3
            [thetaX, thetaY] = calculateRunoutAngles();
            [R, Rd] = calculateToolRotation(R0, thetaX, thetaY);
        
        case 4

            

    end

end


function [thetaX, thetaY] = calculateRunoutAngles(deltaX1, deltaX2, deltaY1, deltaY2, z1, z2)

    % Check plane separation
    dz = z2 - z1;

    if abs(dz) < 1e-9
        error('Calibration planes must have different Z coordinates.');
    end

    % Projection angles
    thetaY = atan2(deltaX2 - deltaX1, dz);
    thetaX = atan2(deltaY2 - deltaY1, dz);

end

function [R, Rd] = calculateToolRotation(R0, thetaX, thetaY)

    alpha = thetaX;
    beta  = thetaY;

    % Equation (7): Ideal tool rotation matrix
    Rd = [
        cos(beta), 0, sin(beta);
        sin(alpha)*sin(beta), cos(alpha), -sin(alpha)*cos(beta);
       -cos(alpha)*sin(beta), sin(alpha), cos(alpha)*cos(beta)
    ];

    % Equation (8): Actual tool rotation
    R = R0 * Rd;

end

function [Zh, ZhX, ZhY] = calculateToolHeight( ...
    deltaX1, deltaX2, deltaY1, deltaY2, ...
    deltaH, deltaZ)

    % deltaZ = z2 - z1

    % X-based height estimation
    if abs(deltaX2 - deltaX1) > 1e-9
        ZhX = deltaZ * deltaX1 / ...
              (deltaX2 - deltaX1) + deltaH;
    else
        ZhX = NaN;
    end

    % Y-based height estimation
    if abs(deltaY2 - deltaY1) > 1e-9
        ZhY = deltaZ * deltaY1 / ...
              (deltaY2 - deltaY1) + deltaH;
    else
        ZhY = NaN;
    end

    % Combine available estimates
    validEstimates = [ZhX, ZhY];
    validEstimates = validEstimates(isfinite(validEstimates));

    if isempty(validEstimates)
        error('Tool height cannot be estimated from these measurements.');
    end

    Zh = mean(validEstimates);


    function [delta, Pc, Pc_runout, Pc_final] = ...
    calculateToolOffset(Sc, R0, Rd, Zh, Pc_final)

    % Equation (9): Ideal TCP position
    Pc = Sc + R0 * [0; 0; Zh];

    % Equation (10): TCP position after runout correction
    Pc_runout = Sc + R0 * Rd * [0; 0; Zh];

    % Equation (11): Solve for remaining tool offsets

    A = Rd;

    b = R0' * (Pc_final - Pc_runout) + [0; 0; Zh];

    % Solve linear system
    q = A \ b;

    % Extract offsets
    deltaX = q(1);
    deltaY = q(2);
    deltaZ = q(3) - Zh;

    delta = [deltaX; deltaY; deltaZ];

end

end