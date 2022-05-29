function helperSLAEBSetup(nvp)
%helperSLAEBSetup create required busses, variables for simulating the
% Autonomous Emergency Brake (AEB) Example
%
% Initializes the AEBTestBench.slx model by creating data in base
% workspace.
%
% helperSLAEBSetup(scenarioFcnName= "scenario_25_AEB_PedestrianTurning_Nearside_10kph");
% Optional inputs
%   scenarioFcnName:
%     - Name of function which returns scenario which is
%       compatable with AEBTestBench.slx
%     - Valid values are:
%           "scenario_01_AEB_Bicyclist_Longitudinal_25width"
%           "scenario_02_AEB_Bicyclist_Longitudinal_50width"
%           "scenario_03_AEB_Bicyclist_Longitudinal_75width"
%           "scenario_04_AEB_CCRb_2_initialGap_12m"
%           "scenario_05_AEB_CCRb_2_initialGap_40m"
%           "scenario_06_AEB_CCRb_6_initialGap_12m"
%           "scenario_07_AEB_CCRb_6_initialGap_40m"
%           "scenario_08_AEB_CCRm_50overlap"
%           "scenario_09_AEB_CCRm__50overlap"
%           "scenario_10_AEB_CCRm_75overlap"
%           "scenario_11_AEB_CCRm__75overlap"
%           "scenario_12_AEB_CCRm_100overlap"
%           "scenario_13_AEB_CCRs_50overlap"
%           "scenario_14_AEB_CCRs__50overlap"
%           "scenario_15_AEB_CCRs_75overlap"
%           "scenario_16_AEB_CCRs__75overlap"
%           "scenario_17_AEB_CCRs_100overlap"
%           "scenario_18_AEB_Pedestrian_Farside_50width"
%           "scenario_19_AEB_Pedestrian_Longitudinal_25width"
%           "scenario_20_AEB_Pedestrian_Longitudinal_50width"
%           "scenario_21_AEB_Pedestrian_Nearside_25width"
%           "scenario_22_AEB_Pedestrian_Nearside_75width"
%           "scenario_23_AEB_PedestrianChild_Nearside_50width"
%           "scenario_24_AEB_PedestrianTurning_Farside_10kph"
%           "scenario_25_AEB_PedestrianTurning_Nearside_10kph"
%           "scenario_26_AEB_CCFtap_VUT_10kph_GVT_30kph"
%
% Examples of calling this function:
%
%    helperSLAEBSetup(scenarioFcnName= "scenario_01_AEB_Bicyclist_Longitudinal_25width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_02_AEB_Bicyclist_Longitudinal_50width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_03_AEB_Bicyclist_Longitudinal_75width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_04_AEB_CCRb_2_initialGap_12m")
%    helperSLAEBSetup(scenarioFcnName= "scenario_05_AEB_CCRb_2_initialGap_40m")
%    helperSLAEBSetup(scenarioFcnName= "scenario_06_AEB_CCRb_6_initialGap_12m")
%    helperSLAEBSetup(scenarioFcnName= "scenario_07_AEB_CCRb_6_initialGap_40m")
%    helperSLAEBSetup(scenarioFcnName= "scenario_08_AEB_CCRm_50overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_09_AEB_CCRm__50overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_10_AEB_CCRm_75overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_11_AEB_CCRm__75overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_12_AEB_CCRm_100overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_13_AEB_CCRs_50overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_14_AEB_CCRs__50overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_15_AEB_CCRs_75overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_16_AEB_CCRs__75overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_17_AEB_CCRs_100overlap")
%    helperSLAEBSetup(scenarioFcnName= "scenario_18_AEB_Pedestrian_Farside_50width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_19_AEB_Pedestrian_Longitudinal_25width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_20_AEB_Pedestrian_Longitudinal_50width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_21_AEB_Pedestrian_Nearside_25width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_22_AEB_Pedestrian_Nearside_75width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_23_AEB_PedestrianChild_Nearside_50width")
%    helperSLAEBSetup(scenarioFcnName= "scenario_24_AEB_PedestrianTurning_Farside_10kph")
%    helperSLAEBSetup(scenarioFcnName= "scenario_25_AEB_PedestrianTurning_Nearside_10kph")
%    helperSLAEBSetup(scenarioFcnName= "scenario_26_AEB_CCFtap_VUT_10kph_GVT_30kph")
%
% This helper function initializes the AEB example model. It loads
% necessary control constants and sets up the buses required for the
% referenced models

%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.

% Copyright 2021 The MathWorks, Inc.

arguments
    nvp.scenarioFcnName {mustBeMember(nvp.scenarioFcnName,...
        ["scenario_01_AEB_Bicyclist_Longitudinal_25width",...
        "scenario_02_AEB_Bicyclist_Longitudinal_50width",...
        "scenario_03_AEB_Bicyclist_Longitudinal_75width",...
        "scenario_04_AEB_CCRb_2_initialGap_12m",...
        "scenario_05_AEB_CCRb_2_initialGap_40m",...
        "scenario_06_AEB_CCRb_6_initialGap_12m",...
        "scenario_07_AEB_CCRb_6_initialGap_40m",...
        "scenario_08_AEB_CCRm_50overlap",...
        "scenario_09_AEB_CCRm__50overlap",...
        "scenario_10_AEB_CCRm_75overlap",...
        "scenario_11_AEB_CCRm__75overlap",...
        "scenario_12_AEB_CCRm_100overlap",...
        "scenario_13_AEB_CCRs_50overlap",...
        "scenario_14_AEB_CCRs__50overlap",...
        "scenario_15_AEB_CCRs_75overlap",...
        "scenario_16_AEB_CCRs__75overlap",...
        "scenario_17_AEB_CCRs_100overlap",...
        "scenario_18_AEB_Pedestrian_Farside_50width",...
        "scenario_19_AEB_Pedestrian_Longitudinal_25width",...
        "scenario_20_AEB_Pedestrian_Longitudinal_50width",...
        "scenario_21_AEB_Pedestrian_Nearside_25width",...
        "scenario_22_AEB_Pedestrian_Nearside_75width",...
        "scenario_23_AEB_PedestrianChild_Nearside_50width",...
        "scenario_24_AEB_PedestrianTurning_Farside_10kph",...
        "scenario_25_AEB_PedestrianTurning_Nearside_10kph",...
        "scenario_26_AEB_CCFtap_VUT_10kph_GVT_30kph"])}= ...
        "scenario_25_AEB_PedestrianTurning_Nearside_10kph";
end

% Load main test bench model
modelName = 'AEBTestBench';
wasModelLoaded = bdIsLoaded(modelName);
if ~wasModelLoaded
    load_system(modelName)
end

%% General Model parameters
% This sample time is used across the model
% and should not be modified
Ts  = 0.05;
assignin('base','Ts', Ts); % Simulation sample time  (s)

AEBControllerStepSize = 0.05; 
assignin('base','AEBControllerStepSize', AEBControllerStepSize); % Step size for AEB Controller (s)

NLMPCTs = 0.05; 
assignin('base','NLMPCTs', NLMPCTs); % Sample time for NLMPC Controller (s)


%% Create driving scenario
% Call scenario function to create drivingScenario and egoVehicle objects,
% and assign scenario object in base workspace
scenarioFcnHandle = str2func(nvp.scenarioFcnName);
[scenario, egoVehicle] = scenarioFcnHandle();
assignin('base','scenario',scenario);
assignin('base','scenarioFcnName',nvp.scenarioFcnName);

% Get ego vehicle ActorID for use in scenario reader block
egoActorID = egoVehicle.ActorID;
assignin('base', 'egoActorID', egoActorID);

% Define actor profiles
actorsProfiles = actorProfiles(scenario);

% Remove unwanted fields from the actor profiles to check for collision.
actorsProfiles = rmfield(actorsProfiles,'MeshVertices');
actorsProfiles = rmfield(actorsProfiles,'MeshFaces');
assignin('base','actorsProfiles', actorsProfiles);

% set ego velocity (m/s)
v_set = norm(egoVehicle.Velocity);
assignin('base','v_set', v_set);

% Create reference path for the ego vehicle from the scenario.
egoRefPath = helperEgoRefPathCreator(scenario, egoActorID);
assignin('base','egoRefPath', egoRefPath);

%% Sensor configuration
% Long Range Radar
radarParams.azRes = 4;
radarParams.rangeRes = 2.5;
radarParams.rangeRateRes = 0.5;
radarParams.radarRange = 174;
radarParams.azFov = 20;
assignin('base','radarParams', radarParams);

% 1.2MP, FoV = 49 deg
cameraParams.focalLength = [800, 800];
cameraParams.principalPoint = [320, 240];
cameraParams.imageSize = [480, 640];
cameraParams.cameraRange = 150;
cameraParams.pitchAngle = 10;
assignin('base','cameraParams', cameraParams);


%% Tracking and Sensor Fusion Parameters                        Units
trackingParams.clusterSize = 4;        % Distance for clustering               (m)
trackingParams.assigThresh = 50;      % Tracker assignment threshold          (N/A)
trackingParams.M           = 2;        % Tracker M value for M-out-of-N logic  (N/A)
trackingParams.N           = 3;        % Tracker N value for M-out-of-N logic  (N/A)
trackingParams.numCoasts   = 3;        % Number of track coasting steps        (N/A)
trackingParams.numTracks   = 20;       % Maximum number of tracks              (N/A)
trackingParams.numSensors  = 2;        % Maximum number of sensors             (N/A)

% Position and velocity selectors from track state
% The filter initialization function used in this example is initcvekf that
% defines a state that is: [x;vx;y;vy;z;vz].
trackingParams.posSelector = [1,0,0,0,0,0; 0,0,1,0,0,0]; % Position selector   (N/A)

% Assign TrackingParams struct in base workspace
assignin('base','trackingParams',trackingParams);

%% Controller parameters
maxSteer = 1.13; % Maximum steering angle (rad)
assignin('base', 'maxSteer', maxSteer);

minSteer = -1.13; % Minimum steering angle (rad)
assignin('base', 'minSteer', minSteer);

min_ac = -3;
assignin('base','min_ac', min_ac);      % Minimum acceleration   (m/s^2)

max_ac = 3;
assignin('base', 'max_ac', max_ac);     % Maximum acceleration   (m/s^2)

predictionHorizon = 10; % Number of steps for preview    (N/A)
assignin('base', 'predictionHorizon', predictionHorizon);

controlHorizon = 2;  % The number of MV moves to be optimized at control interval. (N/A)
assignin('base', 'controlHorizon', controlHorizon);

assignin('base','max_dc', -9.8); % Maximum deceleration   (m/s^2)


%% FCW parameters
FCW.timeToReact  = 1.2;         % driver reaction time                   (sec)
FCW.driver_decel = 4.0;         % driver braking deceleration            (m/s^2)

% Assign FCW struct in base workspace
assignin('base','FCW',FCW);

% AEB parameters
AEB.PB1_decel = 3.8;            % 1st stage Partial Braking deceleration (m/s^2)
AEB.PB2_decel = 5.3;            % 2nd stage Partial Braking deceleration (m/s^2)
AEB.FB_decel  = 9.8;            % Full Braking deceleration              (m/s^2)
AEB.headwayOffset = 3.7;        % headway offset                         (m)
AEB.timeMargin = 0.08;             % headway time margin                    (sec)

% Assign AEB struct in base workspace
assignin('base','AEB',AEB);

%% NLMPC params

% create nlmpc object with 7 prediction model states, 3 prediction model
% outputs.
nlobj = nlmpc(7,3,'MV',[1 2],'MD',3,'UD',4);
% two MV (Manipulated Variables) signals: acceleration and steering.
% measured disturbance (MD) : the product of the road curvature and the longitudinal velocity
% unmeasured disturbance (UD) : white noise.

% Specify the controller sample time, prediction horizon, and control
% horizon.
nlobj.Ts = Ts;
nlobj.PredictionHorizon = predictionHorizon;
nlobj.ControlHorizon = controlHorizon;

% Specify the state function for the nonlinear plant model and its
% Jacobian.
nlobj.Model.StateFcn = "helperNLMPCStateFcn";
nlobj.Jacobian.StateFcn = "helperNLMPCStateJacFcn";

%
% Specify the output function for the nonlinear plant model and its
% Jacobian. The output variables are:
%
% * Longitudinal velocity
% * Lateral deviation
% * Sum of the yaw angle and yaw angle output disturbance
%
nlobj.Model.OutputFcn = "helperNLMPCOutputFcn";
nlobj.Jacobian.OutputFcn = "helperNLMPCJacOutputFcn";

%
% Set the constraints for manipulated variables.
nlobj.MV(1).Min = min_ac;       % Maximum acceleration (m/s^2)
nlobj.MV(1).Max = max_ac;       % Minimum acceleration  (m/s^2)
nlobj.MV(2).Min = minSteer;     % Minimum steering angle  (rad)
nlobj.MV(2).Max = maxSteer;     % Maximum steering angle  (rad)


% Set the scale factors.
nlobj.OV(1).ScaleFactor = 15;   % Typical value of longitudinal velocity
nlobj.OV(2).ScaleFactor = 0.5;  % Range for lateral deviation
nlobj.OV(3).ScaleFactor = 0.5;  % Range for relative yaw angle
nlobj.MV(1).ScaleFactor = 6;    % Range of steering angle
nlobj.MV(2).ScaleFactor = 2.26; % Range of acceleration
nlobj.MD(1).ScaleFactor = 0.2;  % Range of Curvature


% Specify the weights in the standard MPC cost function. The third output,
% yaw angle, is allowed to float because there are only two manipulated
% variables to make it a square system. In this example, there is no
% steady-state error in the yaw angle as long as the second output, lateral
% deviation, reaches 0 at steady state.
nlobj.Weights.OutputVariables = [1 1 0];


% Penalize acceleration change more for smooth driving experience.
nlobj.Weights.ManipulatedVariablesRate = [0.3 0.1];

egoVehDyn = egoVehicleDynamicsParams(scenario, egoActorID);

%% Ego Car Parameters
% Dynamics modeling parameters
m       = 1575;                         % Total mass of vehicle                          (kg)
Iz      = 2875;                         % Yaw moment of inertia of vehicle               (m*N*s^2)
lf      = egoVehDyn.CGToFrontAxle;      % Longitudinal distance from c.g. to front axle (m)
lr      = egoVehDyn.CGToRearAxle;       % Longitudinal distance from c.g. to rear axle  (m)
Cf      = 19000;                        % Cornering stiffness of front tires             (N/rad)
Cr      = 33000;                        % Cornering stiffness of rear tires              (N/rad)
tau     = 0.5;                          % Longitudinal time constant (throttle)          (N/A)
tau2    = 0.07;                         % Longitudinal time constant (brake)             (N/A)

params = {m,Iz,Cf,Cr,lf,lr,tau}';
nlobj.Model.NumberOfParameters = numel(params);

% Load controller test bench model
controllerRefModel = 'AEBController';
wasRefModelLoaded = bdIsLoaded(controllerRefModel);
if ~wasRefModelLoaded
    load_system(controllerRefModel)
end
mdl = [controllerRefModel,  '/NLMPC Controller/Nonlinear MPC Controller'];

% clear and create parasBusObject if it exists
evalin( 'base', 'clear(''paramsBusObject'')' );
createParameterBus(nlobj, [mdl '/Nonlinear MPC Controller'], 'paramsBusObject', params);
bdclose(mdl);

assignin('base', 'nlobj', nlobj);

%% Assign vehicle dynamics modeling parameters to base work space
assignin('base', 'm',    m);
assignin('base', 'Iz',   Iz);
assignin('base', 'Cf',   Cf);
assignin('base', 'Cr',   Cr);
assignin('base', 'lf',   lf);
assignin('base', 'lr',   lr);
assignin('base', 'tau',  tau);
assignin('base', 'tau2', tau2);
assignin('base','egoVehDyn',egoVehDyn);

% Goal for collision mitigation >= 90%
safetyGoal = 90;
assignin('base','safetyGoal', safetyGoal);


%% Bus Creation
% Create bus for scenario reader block
evalin('base','helperCreateAEBBusObjects');

% Create the bus of tracks (output from referenced model)
refModel = 'AEBSensorFusion';
blk = [refModel,'/Multi-Object Tracker'];
multiObjectTracker.createBus(blk);

end

function egoVehDyn = egoVehicleDynamicsParams(scenario,egoCarID)
% Vehicle dynamics parameters from scenario
%
% Scenario is in ISO 8855 (North-West-Up) with respect to rear axle
% Returns struct in SAE J670E (North-East-Down) with respect to
% center of gravity (vehicle center)
%
%  egoVehDyn.X0            % Initial position X (m)
%  egoVehDyn.Y0            % Initial position Y (m)
%  egoVehDyn.Yaw0          % Initial yaw (rad)
%  egoVehDyn.VLong0        % Initial longitudinal velocity(m/sec)
%  egoVehDyn.CGToFrontAxle % Distance center of gravity to front axle (m)
%  egoVehDyn.CGToRearAxle  % Distance center of gravity to rear axle (m)

% Ego in ISO 8855 (North-West-Up) with respect to rear axle
ego = scenario.Actors(egoCarID);

% Shift reference position to center of gravity (vehicle center)
position_CG = driving.scenario.internal.Utilities.translateVehiclePosition(...
    ego.Position,...     % Position with respect to rear axle (m)
    ego.RearOverhang,... % (m)
    ego.Length,...       % (m)
    ego.Roll,...         % (deg)
    ego.Pitch,...        % (deg)
    ego.Yaw);            % (deg)

% Translate to SAE J670E (North-East-Down)
% Adjust sign of y position to
egoVehDyn.X0  =  position_CG(1); % (m)
egoVehDyn.Y0  = -position_CG(2); % (m)
egoVehDyn.VX0 =  ego.Velocity(1); % (m)
egoVehDyn.VY0 = -ego.Velocity(2); % (m)

% Adjust sign and unit of yaw
egoVehDyn.Yaw0 = -deg2rad(ego.Yaw); % (rad)

% Longitudinal velocity
egoVehDyn.VLong0 = hypot(egoVehDyn.VX0,egoVehDyn.VY0); % (m/sec)

% Distance from center of gravity to axles
egoVehDyn.CGToFrontAxle = ego.Length/2 - ego.FrontOverhang;
egoVehDyn.CGToRearAxle  = ego.Length/2 - ego.RearOverhang;

end
