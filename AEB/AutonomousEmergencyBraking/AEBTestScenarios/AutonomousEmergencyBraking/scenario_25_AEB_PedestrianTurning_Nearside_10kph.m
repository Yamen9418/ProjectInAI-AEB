function [scenario, egoVehicle] = scenario_25_AEB_PedestrianTurning_Nearside_10kph()
% scenario_25_AEB_PedestrianTurning_Nearside_10kph Returns the
% drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.12 (R2022a) and Automated Driving Toolbox 3.4 (R2022a).

% Copyright 2021 The MathWorks, Inc.

% Construct a drivingScenario object.
scenario = drivingScenario('SampleTime', 0.05,'StopTime',12);

% Add all road segments
roadCenters = [0 160 0;
    0 -160 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-160 0 0;
    160 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [0 11.5 0;
    0.8753853761202 7.0991405278015 0;
    3.3682720163547 3.3682720163547 0;
    7.0991405278015 0.8753853761202 0;
    11.5 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [0 -11.5 0;
    0.8753853761202 -7.0991405278015 0;
    3.3682720163547 -3.3682720163547 0;
    7.0991405278015 -0.8753853761202 0;
    11.5 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [0 -11.5 0;
    -0.8753853761202 -7.0991405278015 0;
    -3.3682720163547 -3.3682720163547 0;
    -7.0991405278015 -0.8753853761202 0;
    -11.5 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road4');

roadCenters = [0 11.5 0;
    -0.8753853761202 7.0991405278015 0;
    -3.3682720163547 3.3682720163547 0;
    -7.0991405278015 0.8753853761202 0;
    -11.5 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3.5, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road5');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [-1.75 30 0], ...
    'FrontOverhang', 0.9, ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Vehicle Under Test');
waypoints = [-1.75 30 0;
    -1.75 13.100610936441 0;
    -1.75104211228434 12.4495919495304 0;
    -1.75777163780096 11.7986108459282 0;
    -1.7755913752344 11.1478465658063 0;
    -1.80989416626981 10.4977541502144 0;
    -1.86604355061503 9.84919856456017 0;
    -1.9493374477655 9.20358673779893 0;
    -2.06494948321116 8.56299568450995 0;
    -2.21784287697683 7.93029328968869 0;
    -2.41265236842417 7.30924677204855 0;
    -2.65351760202645 6.7046063484092 0;
    -2.94239179713709 6.12138645123263 0;
    -3.27771865508395 5.5635785565207 0;
    -3.65727876397766 5.03487460079495 0;
    -4.07855994741946 4.53877389172334 0;
    -4.53877389172334 4.07855994741946 0;
    -5.03487460079494 3.65727876397767 0;
    -5.5635785565207 3.27771865508396 0;
    -6.12138645123263 2.94239179713709 0;
    -6.70460634840919 2.65351760202645 0;
    -7.30924677204854 2.41265236842417 0;
    -7.93029328968868 2.21784287697684 0;
    -8.56299568450995 2.06494948321116 0;
    -9.20358673779892 1.9493374477655 0;
    -9.84919856456016 1.86604355061503 0;
    -10.4977541502144 1.80989416626981 0;
    -11.1478465658063 1.7755913752344 0;
    -11.7986108459281 1.75777163780096 0;
    -12.4495919495304 1.75104211228434 0;
    -13.1006109364409 1.75 0;
    -30 1.75 0];
speed = 2.77777777777778;
trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
euroncappedestriantarget = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.45, ...
    'Height', 1.7, ...
    'Position', [-9.5 -7.75 0], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'PlotColor', [237 177 32] / 255, ...
    'Name', 'Euro NCAP Pedestrian Target');
waypoints = [-9.5 -7.75 0;
    -9.5 -6.75 0;
    -9.5 10 0];
speed = [0;1.38888888888889;1.38888888888889];
waittime = [2.93999999999998;0;0];
trajectory(euroncappedestriantarget, waypoints, speed, waittime);

