function [scenario, egoVehicle] = scenario_18_AEB_Pedestrian_Farside_50width()
% scenario_18_AEB_Pedestrian_Farside_50width Returns the drivingScenario
% defined in the Designer

% Generated by MATLAB(R) 9.12 (R2022a) and Automated Driving Toolbox 3.4 (R2022a).

% Copyright 2021 The MathWorks, Inc.

% Construct a drivingScenario object.
scenario = drivingScenario('StopTime', 5, 'SampleTime', 0.05);

% Add all road segments
roadCenters = [0 0 0;
    1000 0 0];
roadWidth = 10;
road(scenario, roadCenters, roadWidth, 'Name', 'Road');

% Add the actors
euroNCAPPedestrianTarget = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.5, ...
    'Height', 1.8, ...
    'Position', [32 6 0], ...
    'RCSPattern', [-8 -8;-8 -8], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'Name', 'Euro NCAP Pedestrian Target');
waypoints = [32 6 0;
    32 4.5 0;
    32 0 0];
speed = [0;2.22;2.22];
trajectory(euroNCAPPedestrianTarget, waypoints, speed);

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [10 0 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Vehicle Under Test');
waypoints = [10 0 0;
    35 0 0];
speed = [5.55;5.55];
waittime = [0;0];
trajectory(egoVehicle, waypoints, speed, waittime);

