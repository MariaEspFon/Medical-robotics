function initRobotBusSignals() 
% INITROBOTBUSSIGNALS initializes a set of bus objects in the MATLAB base workspace 

% Bus object: CmdKukaFri 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'jointPosition';
elems(1).Dimensions = [7 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'jointTorque';
elems(2).Dimensions = [7 1];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'wrench';
elems(3).Dimensions = [6 1];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'updatedCommandAvailable';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'boolean';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

CmdKukaFri = Simulink.Bus;
CmdKukaFri.HeaderFile = '';
CmdKukaFri.Description = '';
CmdKukaFri.DataScope = 'Auto';
CmdKukaFri.Alignment = -1;
CmdKukaFri.PreserveElementDimensions = 0;
CmdKukaFri.Elements = elems;
clear elems;
assignin('base','CmdKukaFri', CmdKukaFri);

% Bus object: CmdRobot 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'cmdKuka';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Bus: CmdKukaFri';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'isJointSaturated';
elems(2).Dimensions = '[nJointsKuka,1]';
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

CmdRobot = Simulink.Bus;
CmdRobot.HeaderFile = '';
CmdRobot.Description = '';
CmdRobot.DataScope = 'Auto';
CmdRobot.Alignment = -1;
CmdRobot.PreserveElementDimensions = 0;
CmdRobot.Elements = elems;
clear elems;
assignin('base','CmdRobot', CmdRobot);

% Bus object: FromAtracsys 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'atracsysTs';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'robotPosition';
elems(2).Dimensions = [3 1];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'robotOrientTransp';
elems(3).Dimensions = [3 3];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'robotMarkerId';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'robotMarkerError';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'patientPosition';
elems(6).Dimensions = [3 1];
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'patientOrientTransp';
elems(7).Dimensions = [3 3];
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'patientMarkerId';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'patientMarkerError';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'worldPosition';
elems(10).Dimensions = [3 1];
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'worldOrientTransp';
elems(11).Dimensions = [3 3];
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

elems(12) = Simulink.BusElement;
elems(12).Name = 'worldMarkerId';
elems(12).Dimensions = 1;
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'double';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = '';

elems(13) = Simulink.BusElement;
elems(13).Name = 'worldMarkerError';
elems(13).Dimensions = 1;
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'double';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = '';

FromAtracsys = Simulink.Bus;
FromAtracsys.HeaderFile = '';
FromAtracsys.Description = '';
FromAtracsys.DataScope = 'Auto';
FromAtracsys.Alignment = -1;
FromAtracsys.PreserveElementDimensions = 0;
FromAtracsys.Elements = elems;
clear elems;
assignin('base','FromAtracsys', FromAtracsys);

% Bus object: FromGui 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'errorAcknowledgeIn';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'highlevelControlMode';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'uint8';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'downscaleMotors';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'switchOn';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'boolean';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'motorsEnabled';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'kukaCommandMode';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'uint32';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'stiffnessForAllJoints';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'dampingForAllJoints';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'useClosedLoopControl';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'boolean';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'ftModelSelector';
elems(10).Dimensions = 1;
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'ftTransformSelector';
elems(11).Dimensions = 1;
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

FromGui = Simulink.Bus;
FromGui.HeaderFile = '';
FromGui.Description = '';
FromGui.DataScope = 'Auto';
FromGui.Alignment = -1;
FromGui.PreserveElementDimensions = 0;
FromGui.Elements = elems;
clear elems;
assignin('base','FromGui', FromGui);

% Bus object: FromKukaEtherCat 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'extCtrlStatusWord';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'uint32';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('Contains four booleans representing the status of the kuka over EtherCat');

elems(2) = Simulink.BusElement;
elems(2).Name = 'serverStatusWord';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'uint32';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

FromKukaEtherCat = Simulink.Bus;
FromKukaEtherCat.HeaderFile = '';
FromKukaEtherCat.Description = '';
FromKukaEtherCat.DataScope = 'Auto';
FromKukaEtherCat.Alignment = -1;
FromKukaEtherCat.PreserveElementDimensions = 0;
FromKukaEtherCat.Elements = elems;
clear elems;
assignin('base','FromKukaEtherCat', FromKukaEtherCat);

% Bus object: FromKukaFRI 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'jointPosition';
elems(1).Dimensions = [7 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'jointVelocity';
elems(2).Dimensions = [7 1];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'jointTorqueMeasured';
elems(3).Dimensions = [7 1];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'jointTorqueCommanded';
elems(4).Dimensions = [7 1];
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'externalJointTorque';
elems(5).Dimensions = [7 1];
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'friRunningOff';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'sessionState';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'uint8';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'updateFromFRI';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'boolean';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

FromKukaFRI = Simulink.Bus;
FromKukaFRI.HeaderFile = '';
FromKukaFRI.Description = '';
FromKukaFRI.DataScope = 'Auto';
FromKukaFRI.Alignment = -1;
FromKukaFRI.PreserveElementDimensions = 0;
FromKukaFRI.Elements = elems;
clear elems;
assignin('base','FromKukaFRI', FromKukaFRI);

% Bus object: FromRobot 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'fromKuka';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Bus: FromKukaFRI';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

FromRobot = Simulink.Bus;
FromRobot.HeaderFile = '';
FromRobot.Description = '';
FromRobot.DataScope = 'Auto';
FromRobot.Alignment = -1;
FromRobot.PreserveElementDimensions = 0;
FromRobot.Elements = elems;
clear elems;
assignin('base','FromRobot', FromRobot);

% Bus object: FromSimulink 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'previousDesiredPosition';
elems(1).Dimensions = '[nJointsKuka,1]';
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'previousResetPosition';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'boolean';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'previousCommandedPosition';
elems(3).Dimensions = '[nJointsKuka,1]';
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'previousActualPosition';
elems(4).Dimensions = '[nJointsKuka,1]';
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'previousLargeJointStep';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'previousResetPositionDoneFromSM';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'previousUpdateFromFRI';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'boolean';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'previousPoseRPY';
elems(8).Dimensions = [6 1];
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'previousSimulatedJointPosition';
elems(9).Dimensions = '[nJointsKuka,1]';
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'previousSimulatedRPY';
elems(10).Dimensions = [3 1];
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'previousIsJointSaturated';
elems(11).Dimensions = '[nJointsKuka,1]';
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

elems(12) = Simulink.BusElement;
elems(12).Name = 'calibratedGravityVector';
elems(12).Dimensions = [3 1];
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'double';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = '';

elems(13) = Simulink.BusElement;
elems(13).Name = 'previousJacobianDeterminant';
elems(13).Dimensions = 1;
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'double';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = '';

FromSimulink = Simulink.Bus;
FromSimulink.HeaderFile = '';
FromSimulink.Description = '';
FromSimulink.DataScope = 'Auto';
FromSimulink.Alignment = -1;
FromSimulink.PreserveElementDimensions = 0;
FromSimulink.Elements = elems;
clear elems;
assignin('base','FromSimulink', FromSimulink);

% Bus object: FromTwinCat 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'fromAtracsys';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Bus: FromAtracsys';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'fromGui';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'Bus: FromGui';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'fromTwinSAFE';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'Bus: FromTwinSAFE';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'fromRobot';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'Bus: FromRobot';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'fromKukaEtherCat';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'Bus: FromKukaEtherCat';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'fromSimulink';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'Bus: FromSimulink';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'laserDistance';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'int16';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

FromTwinCat = Simulink.Bus;
FromTwinCat.HeaderFile = '';
FromTwinCat.Description = sprintf('2018-05-07 This file should init all bus definitions used for Gg1, this file is generated with the Simulink Bus Editor and not written by hand.\nYou can open the Simulink Bus Editor from any model with Edit->Bus Editor.\nYou can make changes to the Bus definition and save them.\nSaving as an m-file (object) and not mat file was chosen to ensure SVN/GIT working properly on changes.');
FromTwinCat.DataScope = 'Auto';
FromTwinCat.Alignment = -1;
FromTwinCat.PreserveElementDimensions = 0;
FromTwinCat.Elements = elems;
clear elems;
assignin('base','FromTwinCat', FromTwinCat);

% Bus object: FromTwinSAFE 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'commError';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'functionError';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'boolean';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'powerForDrivesOn';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'boolean';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'pushButtonStatus';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'boolean';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'KukaSafeVelocityLimit';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'KukaSafeCollisionLimit';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

FromTwinSAFE = Simulink.Bus;
FromTwinSAFE.HeaderFile = '';
FromTwinSAFE.Description = '';
FromTwinSAFE.DataScope = 'Auto';
FromTwinSAFE.Alignment = -1;
FromTwinSAFE.PreserveElementDimensions = 0;
FromTwinSAFE.Elements = elems;
clear elems;
assignin('base','FromTwinSAFE', FromTwinSAFE);

% Bus object: IK_DebugData 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'delQ';
elems(1).Dimensions = '[nJointsKuka,1]';
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'desQDotPosOriCtrl';
elems(2).Dimensions = '[nJointsKuka,1]';
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'desQDotP2_ns';
elems(3).Dimensions = '[nJointsKuka,1]';
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'posOriJacDet';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'nsDelQ';
elems(5).Dimensions = '[nJointsKuka,1]';
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'allowMotion';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'singularityLimX';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

IK_DebugData = Simulink.Bus;
IK_DebugData.HeaderFile = '';
IK_DebugData.Description = '';
IK_DebugData.DataScope = 'Auto';
IK_DebugData.Alignment = -1;
IK_DebugData.PreserveElementDimensions = 0;
IK_DebugData.Elements = elems;
clear elems;
assignin('base','IK_DebugData', IK_DebugData);

% Bus object: NavigationState 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'areMarkersVisible';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'T_camera_tcp';
elems(2).Dimensions = [4 4];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'T_camera_patient';
elems(3).Dimensions = [4 4];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'T_camera_world';
elems(4).Dimensions = [4 4];
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

NavigationState = Simulink.Bus;
NavigationState.HeaderFile = '';
NavigationState.Description = '';
NavigationState.DataScope = 'Auto';
NavigationState.Alignment = -1;
NavigationState.PreserveElementDimensions = 0;
NavigationState.Elements = elems;
clear elems;
assignin('base','NavigationState', NavigationState);

% Bus object: RobotParams 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'Q_DOT_MAX';
elems(1).Dimensions = '[nJointsKuka,1]';
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'X_DOT_MAX';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'jointVelocitySafetyFactor';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'Ts';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'isSmoothHighLevelControllers';
elems(5).Dimensions = [11 1];
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

RobotParams = Simulink.Bus;
RobotParams.HeaderFile = '';
RobotParams.Description = '';
RobotParams.DataScope = 'Auto';
RobotParams.Alignment = -1;
RobotParams.PreserveElementDimensions = 0;
RobotParams.Elements = elems;
clear elems;
assignin('base','RobotParams', RobotParams);

% Bus object: RobotState 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'jointPosition';
elems(1).Dimensions = '[nJointsKuka,1]';
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'taskspacePose';
elems(2).Dimensions = [4 4];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'currentRPY';
elems(3).Dimensions = [3 1];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'currentPoseRPY';
elems(4).Dimensions = [6 1];
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'jointVelocity';
elems(5).Dimensions = '[nJointsKuka,1]';
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'taskspaceVelocity';
elems(6).Dimensions = [6 1];
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'jacobian';
elems(7).Dimensions = '[6,nJointsKuka]';
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'posJacobianPerJoint';
elems(8).Dimensions = '[3,nJointsKuka,nJointsKuka]';
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'actualTorques';
elems(9).Dimensions = '[nJointsKuka,1]';
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'cmdedTorques';
elems(10).Dimensions = '[nJointsKuka,1]';
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'externalTorquesKuka';
elems(11).Dimensions = '[nJointsKuka,1]';
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

elems(12) = Simulink.BusElement;
elems(12).Name = 'velNormPerJoint';
elems(12).Dimensions = '[nJointsKuka,1]';
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'double';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = '';

elems(13) = Simulink.BusElement;
elems(13).Name = 'jacobianDeterminant';
elems(13).Dimensions = 1;
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'double';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = '';

elems(14) = Simulink.BusElement;
elems(14).Name = 'singularityDistanceVec';
elems(14).Dimensions = [3 1];
elems(14).DimensionsMode = 'Fixed';
elems(14).DataType = 'double';
elems(14).Complexity = 'real';
elems(14).Min = [];
elems(14).Max = [];
elems(14).DocUnits = '';
elems(14).Description = '';

RobotState = Simulink.Bus;
RobotState.HeaderFile = '';
RobotState.Description = '';
RobotState.DataScope = 'Auto';
RobotState.Alignment = -1;
RobotState.PreserveElementDimensions = 0;
RobotState.Elements = elems;
clear elems;
assignin('base','RobotState', RobotState);

% Bus object: StateConditionKuka 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'autExt_Active';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'autExt_AppReadyToStart';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'boolean';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'default_AppError';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'boolean';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'stationError';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'boolean';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'friRunningOff';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'resetDone';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'movedWithLargeStep';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'boolean';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'friIsRunningToChangeState';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'boolean';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'friSessionState';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'uint8';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'handGuidanceModeOn';
elems(10).Dimensions = 1;
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'boolean';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

StateConditionKuka = Simulink.Bus;
StateConditionKuka.HeaderFile = '';
StateConditionKuka.Description = '';
StateConditionKuka.DataScope = 'Auto';
StateConditionKuka.Alignment = -1;
StateConditionKuka.PreserveElementDimensions = 0;
StateConditionKuka.Elements = elems;
clear elems;
assignin('base','StateConditionKuka', StateConditionKuka);

% Bus object: SystemState 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'state';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'enableDownscaleMotors';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'resetPosition';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'boolean';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'resetPositionTick';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'boolean';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'largeJointStep';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'updateFromFRI';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'measuredRobotState';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'Bus: RobotState';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'lastCommandedRobotState';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'Bus: RobotState';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'robotStateForController';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'Bus: RobotState';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

elems(10) = Simulink.BusElement;
elems(10).Name = 'lastMeasuredRobotState';
elems(10).Dimensions = 1;
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'Bus: RobotState';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'currentGuiState';
elems(11).Dimensions = 1;
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'Bus: FromGui';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = '';

elems(12) = Simulink.BusElement;
elems(12).Name = 'navigationState';
elems(12).Dimensions = 1;
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'Bus: NavigationState';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = '';

elems(13) = Simulink.BusElement;
elems(13).Name = 'previousDesiredPosition';
elems(13).Dimensions = '[nJointsKuka,1]';
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'double';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = '';

elems(14) = Simulink.BusElement;
elems(14).Name = 'isJointSaturated';
elems(14).Dimensions = '[nJointsKuka,1]';
elems(14).DimensionsMode = 'Fixed';
elems(14).DataType = 'double';
elems(14).Complexity = 'real';
elems(14).Min = [];
elems(14).Max = [];
elems(14).DocUnits = '';
elems(14).Description = '';

elems(15) = Simulink.BusElement;
elems(15).Name = 'laserDistance';
elems(15).Dimensions = 1;
elems(15).DimensionsMode = 'Fixed';
elems(15).DataType = 'int16';
elems(15).Complexity = 'real';
elems(15).Min = [];
elems(15).Max = [];
elems(15).DocUnits = '';
elems(15).Description = '';

SystemState = Simulink.Bus;
SystemState.HeaderFile = '';
SystemState.Description = '';
SystemState.DataScope = 'Auto';
SystemState.Alignment = -1;
SystemState.PreserveElementDimensions = 0;
SystemState.Elements = elems;
clear elems;
assignin('base','SystemState', SystemState);

% Bus object: TaskspaceControlInputState 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'desiredVelocity';
elems(1).Dimensions = [6 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'kNS';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

TaskspaceControlInputState = Simulink.Bus;
TaskspaceControlInputState.HeaderFile = '';
TaskspaceControlInputState.Description = '';
TaskspaceControlInputState.DataScope = 'Auto';
TaskspaceControlInputState.Alignment = -1;
TaskspaceControlInputState.PreserveElementDimensions = 0;
TaskspaceControlInputState.Elements = elems;
clear elems;
assignin('base','TaskspaceControlInputState', TaskspaceControlInputState);

% Bus object: ToAtracsys 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'positionRelative';
elems(1).Dimensions = [3 1];
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'orientationRelative';
elems(2).Dimensions = [3 3];
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

ToAtracsys = Simulink.Bus;
ToAtracsys.HeaderFile = '';
ToAtracsys.Description = '';
ToAtracsys.DataScope = 'Auto';
ToAtracsys.Alignment = -1;
ToAtracsys.PreserveElementDimensions = 0;
ToAtracsys.Elements = elems;
clear elems;
assignin('base','ToAtracsys', ToAtracsys);

% Bus object: ToKukaEtherCat 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'extCtrlCmdWord';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'uint32';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('Contains two booleans for AppEnable and AppStart');

elems(2) = Simulink.BusElement;
elems(2).Name = 'appCtrlCmdWord';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'uint32';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('Contains three booleans ShouldServerRun, ShouldFriRun, ShouldHoldPosition');

elems(3) = Simulink.BusElement;
elems(3).Name = 'friClientCmdMode';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'uint32';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'motionControlMode';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'uint32';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'stiffnessGains';
elems(5).Dimensions = [7 1];
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'dampingRatios';
elems(6).Dimensions = [7 1];
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'resetPosition';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'boolean';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'largeJointStep';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'boolean';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'resetPositionDoneFromSM';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'boolean';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

ToKukaEtherCat = Simulink.Bus;
ToKukaEtherCat.HeaderFile = '';
ToKukaEtherCat.Description = '';
ToKukaEtherCat.DataScope = 'Auto';
ToKukaEtherCat.Alignment = -1;
ToKukaEtherCat.PreserveElementDimensions = 0;
ToKukaEtherCat.Elements = elems;
clear elems;
assignin('base','ToKukaEtherCat', ToKukaEtherCat);

% Bus object: ToTwinCat 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'state';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'toTwinSafe';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'Bus: ToTwinSafe';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'toKukaEtherCat';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'Bus: ToKukaEtherCat';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'cmdRobot';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'Bus: CmdRobot';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'toGuiVrSimulink';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'Bus: ToVisualizers';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

ToTwinCat = Simulink.Bus;
ToTwinCat.HeaderFile = '';
ToTwinCat.Description = '';
ToTwinCat.DataScope = 'Auto';
ToTwinCat.Alignment = -1;
ToTwinCat.PreserveElementDimensions = 0;
ToTwinCat.Elements = elems;
clear elems;
assignin('base','ToTwinCat', ToTwinCat);

% Bus object: ToTwinSafe 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'errorAcknowledgeOut';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'enableApplicationTwinSafe';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'boolean';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

ToTwinSafe = Simulink.Bus;
ToTwinSafe.HeaderFile = '';
ToTwinSafe.Description = '';
ToTwinSafe.DataScope = 'Auto';
ToTwinSafe.Alignment = -1;
ToTwinSafe.PreserveElementDimensions = 0;
ToTwinSafe.Elements = elems;
clear elems;
assignin('base','ToTwinSafe', ToTwinSafe);

% Bus object: ToVisualizers 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'desiredJointPositions';
elems(1).Dimensions = '[nJointsKuka,1]';
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'measuredJointPositions';
elems(2).Dimensions = '[nJointsKuka,1]';
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'measuredPose';
elems(3).Dimensions = [4 4];
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'measuredPoseRPY';
elems(4).Dimensions = [6 1];
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'resetPosition';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'boolean';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = '';

elems(6) = Simulink.BusElement;
elems(6).Name = 'largeJointStep';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'boolean';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'updateFromFRI';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'boolean';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = '';

elems(8) = Simulink.BusElement;
elems(8).Name = 'taskspaceVelocityNorm';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'desiredVelocity';
elems(9).Dimensions = [6 1];
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = '';

ToVisualizers = Simulink.Bus;
ToVisualizers.HeaderFile = '';
ToVisualizers.Description = '';
ToVisualizers.DataScope = 'Auto';
ToVisualizers.Alignment = -1;
ToVisualizers.PreserveElementDimensions = 0;
ToVisualizers.Elements = elems;
clear elems;
assignin('base','ToVisualizers', ToVisualizers);

