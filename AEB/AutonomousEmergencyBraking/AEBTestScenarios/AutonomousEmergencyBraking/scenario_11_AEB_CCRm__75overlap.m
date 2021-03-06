function [scenario, egoVehicle] = scenario_11_AEB_CCRm__75overlap()
% scenario_11_AEB_CCRm__75overlap Returns the drivingScenario defined in
% the Designer

% Generated by MATLAB(R) 9.12 (R2022a) and Automated Driving Toolbox 3.4 (R2022a).

% Copyright 2021 The MathWorks, Inc.

% Construct a drivingScenario object.
scenario = drivingScenario('StopTime', 6.5, ...
    'SampleTime', 0.05);

% Add all road segments
roadCenters = [0 0 0;
    1000 0 0];
marking = laneMarking('Unmarked');
laneSpecification = lanespec(1, 'Width', 10, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [20 0.45 0], ...
    'FrontOverhang', 0.9, ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Vehicle UnderTest');
waypoints = [20 0.45 0;
    70 0.45 0];
speed = 8.33;
trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
globalvehicletarget = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [40 0 0], ...
    'FrontOverhang', 0.9, ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Global Vehicle Target');
waypoints = [40 0 0;
    150 0 0];
speed = 5.55;
trajectory(globalvehicletarget, waypoints, speed);

