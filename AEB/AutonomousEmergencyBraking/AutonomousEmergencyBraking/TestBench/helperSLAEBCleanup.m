% Clean up script for the Autonomous Emergency Braking Example
%
% This script cleans up the Autonomous Emergency Braking example model. It
% is triggered by the CloseFcn callback.
%
%   This is a helper script for example purposes and may be removed or
%   modified in the future.

%   Copyright 2021 The MathWorks, Inc.

clear targetActorProfiles;
clear AEB;
clear BusActors;
clear BusDetectionConcatenation1;
clear BusDetectionConcatenation1Detections;
clear BusDetectionConcatenation1DetectionsMeasurementParameters; 
clear BusEgoRefPath;
clear BusMultiObjectTracker1;
clear BusMultiObjectTracker1Tracks;
clear BusRadar;
clear BusRadarDetections;
clear BusRadarDetectionsMeasurementParameters;
clear BusRadarDetectionsObjectAttributes;
clear BusVehiclePose;
clear BusVision;
clear BusVisionDetections;
clear BusVisionDetectionsMeasurementParameters;
clear BusVisionDetectionsObjectAttributes; 
clear Cf;
clear controlHorizon; 
clear Cr;
clear egoActorID;
clear egoRefPath;
clear egoVehDyn;
clear FCW;
clear Iz;
clear lf;
clear lr;
clear m;
clear max_ac;
clear max_dc;
clear maxSteer;
clear min_ac;
clear minSteer;
clear nlobj;
clear predictionHorizon;
clear safetyGoal;
clear scenario;
clear tau;
clear tau2; 
clear trackingParams;
clear Ts;
clear v_set;
clear paramsBusObject;
clear radarParams;
clear cameraParams;
clear actorsProfiles;
clear scenarioFcnName;
clear NLMPCControllerTs;
