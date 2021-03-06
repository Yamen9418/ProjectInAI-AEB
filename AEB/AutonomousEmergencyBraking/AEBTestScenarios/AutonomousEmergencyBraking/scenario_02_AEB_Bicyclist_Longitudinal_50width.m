function [scenario, egoVehicle] = scenario_02_AEB_Bicyclist_Longitudinal_50width()
% scenario_02_AEB_Bicyclist_Longitudinal_50width Returns the
% drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.12 (R2022a) and Automated Driving Toolbox 3.4 (R2022a).

% Copyright 2021 The MathWorks, Inc.

% Construct a drivingScenario object.
scenario = drivingScenario('SampleTime', 0.05, 'StopTime', 9.5);

% Add all road segments
roadCenters = [0 0 0;
    1000 0 0];
roadWidth = 10;
road(scenario, roadCenters, roadWidth, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [5 0 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Vehicle Under Test');
waypoints = [5 0 0;
    72 0 0];
speed = [6.94;6.94];
waittime = [0;0];
trajectory(egoVehicle, waypoints, speed, waittime);

% Add the non-ego actors
euroNCAPBicyclistTarget = actor(scenario, ...
    'ClassID', 3, ...
    'Length', 1.9, ...
    'Width', 0.5, ...
    'Height', 1.865, ...
    'Position', [36.5 0 0], ...
    'Mesh', driving.scenario.bicycleMesh, ...
    'Name', 'Euro NCAP Bicyclist Target');
waypoints = [36.5 0 0;
    40 0 0;
    72 0 0];
speed = [0;4.17;4.17];
waittime = [0;0;0];
trajectory(euroNCAPBicyclistTarget, waypoints, speed, waittime);

