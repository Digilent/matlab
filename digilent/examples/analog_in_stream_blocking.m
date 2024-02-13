daqreset;
dq = daq("digilent");
addinput(dq, "AD2_0", "ai0" ,'Voltage');
addinput(dq, "AD2_0", "ai1" ,'Voltage');
systemRate = 1e8; %100Mhz
rDiv = uint32(1) % Rate divisor is expected to be integer
rate = systemRate/rDiv;
dq.Rate = rate; %max frequency

data = read(dq, 1000); %blocking statement
figure(1);
title('Blocking Input Stream');
xlabel('samples');
ylabel('Volts');
plot([data.AD2_0_ai0, data.AD2_0_ai1]);