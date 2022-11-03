daqreset
dq = daq("digilent");
addinput(dq, "AD2_0", "ai0" ,'Voltage');
addinput(dq, "AD2_0", "ai1" ,'Voltage');

dq.Rate = 10000; 
duration = 10; %in seconds
figure(1);
start(dq, "Duration", seconds(duration));
data = [];
while dq.Running
 pause(0.5);
 fprintf("While loop: Scans acquired = %d\n", dq.NumScansAcquired);
 data = [data; read(dq,"all")]; %final_size = duration * samplesize * channel_number
 plot([data.AD2_0_ai0, data.AD2_0_ai1]);
end
