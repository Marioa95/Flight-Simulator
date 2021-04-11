
%% Constants for different tests

Wind_model=1;
CGoffset=1;
Thrustoffset=1;
Thrustangle=1;

% Thrust misalignments

thrustangle_pitch=0.5; % in deg
thrustangle_yaw=0.1; % in deg

thrustoffset_z=-0.01; % in m
thrustoffset_y=-0.0; % in m

% CG offset [m]

cgoffset_z=0.01; 
cgoffset_y=-0.005;

%Fin Cant angle [deg]

Fin_cant=0.01;

%sim('Test_conditions.slx');

%% 
% thrustpitchangle=[0 0.5 0 0 0 0 0 0.5];
% thrustyawangle=[0 0 0.5 0 0 0 0 0.5];
% thrustoffsetz=[0 0 0 0.01 0 0 0 0.01];
% thrustoffsety=[0 0 0 0 0.01 0 0 0.01];
% cgZ=[0 0 0 0 0 0.01 0 0.01];
% cgY=[0 0 0 0 0 0 0.01 0.01];