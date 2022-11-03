daqreset;
dq = daq("digilent");
addinput(dq, "AD2_0", "ai0" ,'Voltage');
addinput(dq, "AD2_0", "ai1" ,'Voltage');

% Background read for 5 seconds
duration = 3;
% plot data every 1000 samples
dq.Rate = 10000;
figure(1);
dq.ScansAvailableFcnCount = 1000;
global data;
data = [];
dq.ScansAvailableFcn = @fetchData; %defined in fetchData.m
start(dq, "Duration", seconds(duration));

while dq.Running
 pause(0.5);
 fprintf("While loop: Scans acquired = %d\n", dq.NumScansAcquired);
end
figure
plot([data.AD2_0_ai0, data.AD2_0_ai1]);