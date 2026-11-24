%TwinCAT.ModuleGenerator.Settings.Change('ConfigurationLevel', 'Advanced');
Ts = 0.000250;
TsControl = 0.001;
nJoints = 7;
nJointsKuka = 7;

%% Your additional variables here
% Gate pose parameters
ori = pi/2;
thickness = 12; % thickness of mount in mm
posLaserGate = [500-10-45 -400 25+10+thickness]*1e-3; % meters
rotLaserGate = rotz(ori);

T_b_LaserGate = ones(4);
T_b_LaserGate(1:3,1:3) = rotLaserGate;
T_b_LaserGate(1:3,4) = posLaserGate;

% la llegada al gate tiene que ser: Z downwards, X apuntando al robot
% definir las matrices del frame de la gate como parametros para
% reutilizarlo en las posiciones desired

% State Machine variables
T_F1_Center = eye(4); % Initial Position (F1 origin)

% Square dimensions
square_size = 20e-3;  % 20mm
h = square_size/2;
% Offset between calibration planes
offset = 10e-3;       % 10mm
% Square vertices (in F1 coordinates)
vertices = [
     h,  h, 0;   % A
     h, -h, 0;   % B
    -h, -h, 0;   % C
    -h,  h, 0    % D
];

% first calibration trajectory
T_F1_Square1 = repmat(eye(4), 1, 1, 4);
for i = 1:4
    T_F1_Square1(:,:,i) = T_F1_Center;
    T_F1_Square1(1:3,4,i) = T_F1_Center(1:3,4) + vertices(i,:)';
end

% second calibration trajectory
T_F1_Square2 = T_F1_Square1;
% apply Z offset to all vertices
T_F1_Square2(3,4,:) = T_F1_Square1(3,4,:) + offset;

% Z calibration trajectory
z1 = -0.03;
z2 = 0.01;
T_F1_Z1 = T_F1_Center;
T_F1_Z1(3,4) = z1;
T_F1_Z2 = T_F1_Center;
T_F1_Z1(3,4) = z2;

% Laser ON/OFF positions (previous implementation)
% each matrix stores two pairs of ON/OFF positions (3D vectors)
% T_laserX = zeros(3,4);
% T_laserY = zeros(3,4);

% flags for position storage
counterX = 1;
counterY = 1;
triggerX = 0;
triggerY = 0;

% Calibration measurements
% each matrix stores four ON/OFF positions (3D vectors)
plane1_ON  = zeros(3,4);
plane1_OFF = zeros(3,4);
plane2_ON  = zeros(3,4);
plane2_OFF = zeros(3,4);
plane3_ON  = zeros(3,4);
plane3_OFF = zeros(3,4);
T_final = eye(4);

calibrationData.thetaX = 0;
calibrationData.thetaY = 0;
calibrationData.Rd = eye(3);

calibrationData.Zh = 0;
calibrationData.delta = zeros(3,1);

calibrationData.T_TCP_calibrated = eye(4);

%% Positive Axis definitions
directionAxis_1=0;
directionAxis_2=-1;
directionAxis_3=-1;
directionAxis_4=-1; % Changed for the new kinematics for the positive axis is along negative x-axis in zero position (consistent with motor axis) 2018-12-12
directionAxis_5=-1;
directionAxis_6=-1;
directionAxis_7=1;
directionAxis_8=1;

%% Velocity
vmax_Endoscope = 0.1; % Maximal speed [rad/sec]
vmax_kuka = 0.01; % Maximal speed [rad/s] for each joint of Kuka allowed. Set to the same value as the safety limit on the sunrise cabinet side.

%%
% 2018-12-12ng + mk  Limits are taken from the hardware limits for the
% linear drive, and from the kuka joint limits for the kuka.
limitPhi1 = [-170 170]*pi/180;% rad
limitPhi2 = [-120 120]*pi/180;% rad 
limitPhi3 = [-170 170]*pi/180;% rad
limitPhi4 = [-120 120]*pi/180;% rad 
limitPhi5 = [-170 170]*pi/180;% rad
limitPhi6 = [-120 120]*pi/180;% rad
limitPhi7 = [-175 175]*pi/180;% rad
limitDefault = [0 0];% rad 

% could evtl. cleaned up in model
lowerLimit_Phi1=limitPhi1(1);
lowerLimit_Phi2=limitPhi2(1);
lowerLimit_Phi3=limitPhi3(1); 
lowerLimit_Phi4=limitPhi4(1);
lowerLimit_Phi5=limitPhi5(1);
lowerLimit_Phi6=limitPhi6(1);
lowerLimit_Phi7=limitPhi7(1);

% could evtl. cleaned up in model
upperLimit_Phi1=limitPhi1(2);
upperLimit_Phi2=limitPhi2(2);
upperLimit_Phi3=limitPhi3(2);
upperLimit_Phi4=limitPhi4(2);
upperLimit_Phi5=limitPhi5(2);
upperLimit_Phi6=limitPhi6(2);
upperLimit_Phi7=limitPhi7(2);

%All limits in one variable for Kuka
safePositionLimit = + 5*pi/180; % adding a buffer of 1 deg to make sure the kuka does not go into the limits
safePositionLimitSlowDown = + 2.5*pi/180; % adding a buffer of 1 deg to make sure the kuka does not go into the limits
kukaLowerLimits = [lowerLimit_Phi1; lowerLimit_Phi2; lowerLimit_Phi3; lowerLimit_Phi4; lowerLimit_Phi5; lowerLimit_Phi6; lowerLimit_Phi7] + safePositionLimit;
kukaUpperLimits = [upperLimit_Phi1; upperLimit_Phi2; upperLimit_Phi3; upperLimit_Phi4; upperLimit_Phi5; upperLimit_Phi6; upperLimit_Phi7] - safePositionLimit;

kukaLowerLimitsSlow = kukaLowerLimits + safePositionLimitSlowDown;
kukaUpperLimitsSlow = kukaUpperLimits - safePositionLimitSlowDown;

safePositionLimitLinearSlowDown = + 10/1000; % adding a buffer of 1.0cm to make sure the linear axis does not go into the limits

robotLowerLimits = kukaLowerLimits;
robotUpperLimits = kukaUpperLimits;

robotLowerLimitsSlowDown = kukaLowerLimitsSlow;
robotUpperLimitsSlowDown = kukaUpperLimitsSlow;

%% Intialize structures for bus signals
robotLinkParameters = 1;
robotStateStruct = Simulink.Bus.createMATLABStruct('RobotState');
robotParameters = Simulink.Bus.createMATLABStruct('RobotParams');
robotParameters.X_DOT_MAX = 0.8*0.25; %m/s; Must be changed if changed in KUKA side
robotParameters.Q_DOT_MAX = 0.8*[5; 5; 5; 5; 5; 5; 5]; %rad/s; Must be changed if changed in KUKA side
robotParameters.jointVelocitySafetyFactor = 1.0;
robotParameters.Ts = 0.001; %at what rate is the FRI updated

medianFilterWindowLength = 40;

ikDebugDataStruct = Simulink.Bus.createMATLABStruct('IK_DebugData');

%%
toTwinCatDataStruct = Simulink.Bus.createMATLABStruct('ToTwinCat');