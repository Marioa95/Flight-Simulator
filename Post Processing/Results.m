%% Run Model
% Dayi=(120:151)';
% m=size(Dayi);
%  for i=1:m(1)
% Day=Dayi(1);
%Azimuth=deg2rad(50);
%sim('Test_conditions.slx');

%% Store Results
% 
% results=table(t,Altitude,Mach_number,Position(:,1),Position(:,2),Dynamic_pressure,Alpha,Beta);
% results.Properties.VariableNames={'Time_s','Altitude_m','Mach','Latitude_deg','Longitude_deg','q_Pa','Alpha_deg','Beta_deg'};

%% Plots and Results
n=length(Altitude);
Apogee = max(Altitude)/1000;
Values=zeros(n,12);
for i=1:n
    Values(i,1)= Altitude(i);
    Values(i,2)= Alpha(i);
    Values(i,3)= Beta(i);
%     Values(i,4)= heading_angle(i);
    Values(i,5)= pitch(i);
    Values(i,6)= roll(i);
    Values(i,7)= yaw (i);
    Values(i,8)= Mach_number(i);
%     Values(i,9)= flight_path(i);
end
save('Values','Values');
%Maxroll= max(rollrate(1:200))/(2*pi);
% plot(Alpha,Beta)
% plot(Alpha,Beta)

%% Plot Wind graphs

% Merwind = zeros(n(1),2);
% Zonwind = zeros(n(1),2);
% 
% for j=1:n(1)
% Merwind(j,1) = Altitude(j);
% Zonwind(j,1) = Altitude(j);
% Merwind(j,2) = meridionalwind(j);
% Zonwind(j,2) = zonalwind(j);
% end

% plot(meridionalwind,Altitude/1000)
% title('Meridional Wind Speed vs Altitude')
% hold on
% figure;
% plot(zonalwind,Altitude/1000)
% title('Zonal Wind Speed vs Altitude')
% hold on
% end

%% Wind direction and speed

% Windmag = sqrt(Zonwind(1,1)^2+Merwind(1,1)^2);% speed in m/s
% Winddirect= zeros(n(1),2);
% Windspeed= zeros(n(1),2);
% MayuSize = size(Zonwind);
% 
% for j=1:n(1)
%     Windspeed(j,1) = Altitude(j);
%     Winddirect(j,1) = Altitude(j);
% end
%     for i = 1:length(Zonwind)
%         Windspeed(i,2) = sqrt(Zonwind(i,2)^2+Merwind(i,2)^2);
%         Winddirect(i,2)=rad2deg(atan(Merwind(i,2)/Zonwind(i,2))); %direction in deg
%         if Zonwind(i,2) < 0 && Merwind(i,2) < 0
%             Winddirect(i,2) = Winddirect(i,2) + 180;
%             elseif Zonwind(i,2) < 0 && Merwind(i,2) > 0
%                 Winddirect(i,2) = Winddirect(i,2) + 90;
%             elseif Zonwind(i,2) > 0 && Merwind(i,2) < 0
%                 Winddirect(i,2) = Winddirect(i,2) + 270;
%         end
%     end

%% Plot Position Figures

% latlim = [32.5 33.5];
% lonlim = [-107.5 -105.8];
% figure
% ax = usamap (latlim, lonlim);
% hold on
% n=size(t);
% for i=1:12:n(1)
% plotm(Position(i,1),Position(i,2),'r*')
% end
% plotm(32.89207,-105.95938,'b*')
