function [plane_X, plane_Y, triggerX, triggerY] = ...
    fun_capturePoses(laserX, laserY, T_base_tcp, plane_X, plane_Y, triggerX, triggerY, codeState)
    
    persistent counterX;
    persistent counterY;

    if isempty(counterY) 
        counterY = 1;
    end
    if isempty(counterX) 
        counterX = 1;
    end

    if codeState > 0    
        % LASER X: columns 1 and 2
        % Rising edge: laser activation
        if laserX && triggerX == 0
            plane_X(:,1,counterX, codeState) = T_base_tcp(1:3,4);
            triggerX = 1;    
        % Falling edge: laser deactivation
        elseif ~laserX && triggerX == 1
            plane_X(:,2,counterX, codeState) = T_base_tcp(1:3,4);
            triggerX = 0;
            if counterX == 2 
                counterX = 1;
            else 
                counterX = counterX + 1;
            end
        end
    
        % LASER Y: columns 3 and 4
        % Rising edge: laser activation
        if laserY && triggerY == 0
            plane_Y(:, 1, counterY, codeState) = T_base_tcp(1:3,4);
            triggerY = 1;
        % Falling edge: laser deactivation
        elseif ~laserY && triggerY == 1
            plane_Y(:,2,counterY, codeState) = T_base_tcp(1:3,4);
            triggerY = 0;
            if counterY == 2 
                counterY = 1;
            else 
                counterY = counterY + 1;
            end
        end
    end

end




% function [calibrationData, counterX, counterY, triggerX, triggerY] = ...
%     fun_capturePoses(laserX, laserY, T_base_tcp, ...
%     counterX, counterY, triggerX, triggerY, codeState)
% 
%     switch codeState
% 
%         case 1
%             [posesON, posesOFF, counterX, counterY, triggerX, triggerY] = ...
%                 fun_capturePose(laserX, laserY, T_base_tcp, ...
%                 plane1_ON, plane1_OFF, ...
%                 counterX, counterY, triggerX, triggerY);
% 
%             plane1_ON = posesON;
%             plane1_OFF = posesOFF;
% 
%         case 2
%             [posesON, posesOFF, counterX, counterY, triggerX, triggerY] = ...
%                 fun_capturePose(laserX, laserY, T_base_tcp, ...
%                 plane2_ON, plane2_OFF, ...
%                 counterX, counterY, triggerX, triggerY);
% 
%             plane2_ON = posesON;
%             plane2_OFF = posesOFF;
% 
%         case 3
%             [posesON, posesOFF, counterX, counterY, triggerX, triggerY] = ...
%                 fun_capturePose(laserX, laserY, T_base_tcp, ...
%                 plane3_ON, plane3_OFF, ...
%                 counterX, counterY, triggerX, triggerY);
% 
%             plane3_ON = posesON;
%             plane3_OFF = posesOFF;
% 
%     end
% 
% end
% 

%% LOCAL FUNCTION: CAPTURE LASER CROSSING POSITIONS