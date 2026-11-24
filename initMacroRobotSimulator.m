initMacroRobot;

addpath(genpath('Library\Visualizer'));

% Initial configuration of the 6 robot joints 
% initState = [0.0; pi/6; 0.0; -pi/2; 0; +pi/4; 0]; % AT t=0
% UPDATE NEW CONFIGURATION
initState = deg2rad([-109; +67; +71; -111; -59; +20; -18]);

% Initial configuration of the end effector in simulation based on iniState
% in form of Transformatino Matrix
initCartStateMat = getMacroRobotForwardKinematicsData(initState);
initCartState = [initCartStateMat(1:3,4); rotmatToRollPitchYaw(initCartStateMat(1:3,1:3), [0;0;0])];

%completeRobotAssembly_DataFile;
KukaIIWA14_DataFile;