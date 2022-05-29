function [scenario, egoVehicle] = scenario_26_AEB_CCFtap_VUT_10kph_GVT_30kph()
% scenario_26_AEB_CCFtap_VUT_10kph_GVT_30kph Returns the drivingScenario
% defined in the Designer

% Generated by MATLAB(R) 9.12 (R2022a) and Automated Driving Toolbox 3.4 (R2022a).

% Copyright 2021 The MathWorks, Inc.

% Construct a drivingScenario object.
scenario = drivingScenario('SampleTime', 0.05);

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
    -1.75 10.629767723813 0;
    -1.74881745028899 9.92156738344097 0;
    -1.74120852734038 9.21341153934904 0;
    -1.72108373325957 8.50550979687526 0;
    -1.68236565818788 7.79839460196106 0;
    -1.61901243177998 7.09307745617642 0;
    -1.52506172301683 6.39120288970863 0;
    -1.39470178222972 5.69519751554024 0;
    -1.22237562871072 5.00840987568253 0;
    -1.00292376451773 4.33523483561561 0;
    -0.732464117048019 3.68090846394818 0;
    -0.411406863115814 3.0498667707259 0;
    -0.041738202520617 2.44601541462816 0;
    0.37425406581657 1.87309150033324 0;
    0.833995456243877 1.33464072931021 0;
    1.33464072931021 0.83399545624388 0;
    1.87309150033324 0.374254065816572 0;
    2.44601541462815 -0.0417382025206123 0;
    3.04986677072589 -0.411406863115809 0;
    3.68090846394817 -0.732464117048014 0;
    4.3352348356156 -1.00292376451773 0;
    5.00840987568252 -1.22237562871072 0;
    5.69519751554024 -1.39470178222972 0;
    6.39120288970862 -1.52506172301683 0;
    7.09307745617641 -1.61901243177998 0;
    7.79839460196106 -1.68236565818787 0;
    8.50550979687525 -1.72108373325957 0;
    9.21341153934903 -1.74120852734038 0;
    9.92156738344097 -1.74881745028899 0;
    10.629767723813 -1.75 0;
    30 -1.75 0];
speed = 2.77777777777778;
%speed = speed_mF;
trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
globalvehicletarget = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [1.75 -83.5361641412619 0], ...
    'FrontOverhang', 0.9, ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Global Vehicle Target ');
waypoints = [1.75 -83.5361641412619 0;
    1.75 100 0];
speed = 8.33333333333333;
trajectory(globalvehicletarget, waypoints, speed);



% saved = ('saved', 'logsout');
% simout = sim('AEBTestBench.slx');
% 
% datastruct = load('saved.mat');
% outputTTC = datastruct.logsout.getElement('TTC').Values;
% a =[];
% for k=1:length(outputTTC.Data)
%     if outputTTC.Data(k) < 2
%         a(end+1) = outputTTC.Data(k);
%     end
% end
% display(a);
% 
% out_mF = a; 






