%assert: first output channel is connected to first input channel
% eg. using a BNC cable
daqreset;
dq = daq("digilent");
addinput(dq, "AD2_0", "ai0" ,'Voltage');
dq2 = daq("digilent");
addoutput(dq2, "AD2_0", "ao0" ,'Voltage');

% Background read for 3 seconds
duration = 3;
rate = 10000;
dq.Rate = rate;
dq2.Rate = rate;
n = duration * rate;

dq.ScansAvailableFcnCount = 10000; %run fetchData function every 10000 samples
global data;
data = [];
dq.ScansAvailableFcn = @fetchData; %defined in fetchData.m
out = zeros(rate,1); %output data for 1 second
out(1:100) = 3; %3volts pulse width of 100 samples

start(dq, "Duration", seconds(duration));

pause(1); %wait for 1 second of input data before any output
write(dq2, out);

pause(duration - 1); %wait for the read operation to finish

figure;
plot([data.AD2_0_ai0]);