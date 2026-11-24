%% possible StateMachine States

SM_STATES.INIT = 0; %initialization and reset eventual faults and errors in drives, motors, and the error bus
SM_STATES.RESETTING_MOTOR_DRIVES = 1; %reset errors on the motor drive
SM_STATES.SWITCHING_ON_AND_WAIT_FOR_TWINSAFE_POWER = 2; %switching on after drives in "Ready to switch on"
SM_STATES.KUKA_ENABLING_APP = 3; % Linear drive is ready, AppEnable when AUT mode
SM_STATES.KUKA_STARTING_APP = 4; % AppStart if AUT mode, or Wait for user to press the Green button on the SmartPad in T1/T2 modes and ServerShouldRun
SM_STATES.KUKA_STARTING_FRI = 5; % Starting the FRI communication
SM_STATES.RESETTING_POSITIONS = 6; % Reset desired and commanded positions to the current robot state
SM_STATES.ENABLE_KUKA_HANDGUIDANCE = 65; % Reset desired and commanded positions to the current robot state
SM_STATES.ENABLING_OPERATION = 7; %Enable operation for the Linear Drive and Start Hold Position for KUKA
SM_STATES.OPERATION_WITH_LARGEJOINTSTEPS = 8; % Linear drive in operation, enable velocity control, move with a step greater than 0.5deg for KUKA, wait infinitely until a motion is made in this state
SM_STATES.OPERATION = 9; % Both Linear and KUKA in operation

SM_STATES.ERROR = 10; %Fehler_i/

toKukaEtherCatStruct = Simulink.Bus.createMATLABStruct('ToKukaEtherCat');

toKukaEtherCatStruct.stiffnessGains = 1000*ones(7,1);
toKukaEtherCatStruct.dampingRatios = 0.7*ones(7,1);
toKukaEtherCatStruct.friClientCmdMode = uint32(1); %POSITION
toKukaEtherCatStruct.motionControlMode = uint32(1); %JOINT_POSITION