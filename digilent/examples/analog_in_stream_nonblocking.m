daqreset
dq = daq("digilent");
addinput(dq, "AD2_0", "ai0" ,'Voltage');
addinput(dq, "AD2_0", "ai1" ,'Voltage');

systemRate = 1e8; %100Mhz
rDiv = uint32(100) % Rate divisor is expected to be integer
rate = systemRate/rDiv;
dq.Rate = rate; %1MHz
duration = 1; %in seconds

start(dq, "Duration", seconds(duration));
%start(dq, "NumScans", 16384);
data = [];
while dq.Running
 pause(0.1);
 fprintf("While loop: Scans acquired = %d\n", dq.NumScansAcquired);
 data = [data; read(dq,"all")]; %final_size = duration * samplesize * channel_number
end
figure(1);
plot([data.AD2_0_ai0, data.AD2_0_ai1]);
