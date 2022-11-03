daqreset;
dq = daq("digilent");

addoutput(dq, "AD2_0", "ao0" ,'Voltage');
addoutput(dq, "AD2_0", "ao1" ,'Voltage');

rate = 1000;
dq.Rate = rate;

totalduration = 1;
n = totalduration * rate;
f = 1;
t = (1:n)/rate;
output = sin(2*pi*f*t)';

% background repeat output
%preload(dq, output); % 1 channel
preload(dq, [output*2, output+1]); %2 chnanels
start(dq, "repeatoutput");
pause(3); %repeat for 3 seconds before stopping
stop(dq);