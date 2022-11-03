daqreset;
dq = daq("digilent");

addoutput(dq, "AD2_0", "ao0" ,'Voltage');
addoutput(dq, "AD2_0", "ao1" ,'Voltage');

rate = 10000;
dq.Rate = rate;

totalduration = 10;
n = totalduration * rate;
f = 1;
t = (1:n)/rate;
output = sin(2*pi*f*t)';

% background continuous
preload(dq, [output(1:5001)*4, output(1:5001)+2]);
dq.ScansRequiredFcn = @(src, evt) write(src, [output(1:5001)*4, output(1:5001)+2]); 
start(dq, "continuous");
pause(5);
stop(dq);