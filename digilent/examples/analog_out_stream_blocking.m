daqreset;
dq = daq("digilent");
addoutput(dq, "AD2_0", "ao0" ,'Voltage');
addoutput(dq, "AD2_0", "ao1" ,'Voltage');
rate = 10000;
dq.Rate = rate;

% Generate a f Hz sine-wave for totalduration seconds. The length of the
% output waveform and the specified output rate define the duration of
% the waveform (totalduration = numscans / rate).

totalduration = 5;
n = totalduration * rate;
t = (1:n)/rate;
f = 1;
output = sin(2*pi*f*t)';
write(dq, [output*2, output+1]);