% This example uses the two scope channels, one AWG channel, one power
% supply channel and all digital channels on the AD2
%
% W1 will generate a ramp from 0 to 5V for 1 second at 1KHz
% V+ will generate a ramp from 0 to 5V for 5 seconds at 10Hz
% Both will be acquired at 10KHz by scope channels 1 and 2
% DIO pins 0-7  will be used to output primes less than 128
% DIO pins 8-15 will acquire the primes generated by DIO0-7
%
% Connect W1 to 1+ and GND to 1-
% Connect V+ to 2+ and GND to 2-
% Connect DIO0 to DIO8, DIO1 to DIO9 ... DIO7 to DIO15
daqreset;
AI = daq("digilent") % DAQ session for the scope channels
AO = daq("digilent") % DAQ session for the AWG channel
VP = daq("digilent") % DAQ session for the V+ power supply
DI = daq("digilent") % DAQ session for the DIO channels used as input
DO = daq("digilent") % DAQ session for the DIO channels used as output

% add scope input channels
addinput(AI, "AD2_0", "ai0", "Voltage")
addinput(AI, "AD2_0", "ai1", "Voltage")

% add AWG1 output channel
addoutput(AO, "AD2_0", "ao0", "Voltage")

% add Positive Power Supply channel
addoutput(VP, "AD2_0", "V+", "Voltage")

% add DIO pins  0-7  to use as inputs. Pad single digit pins with 0
for i = 0:7
    addinput(DI, "AD2_0", num2str(i,'dio%02d'), "Digital")
end

% add DIO pins 8-15 to use as outputs. Pad single digit pins with 0
for i = 8:15
    addoutput(DO, "AD2_0", num2str(i,'dio%02d'), "Digital")
end

% Configure rate of subsystems (DIO is fixed at 100MHz)
AI.Rate = 10000  % 10KHz
AO.Rate = 1000   % 1KHz
VP.Rate = 10     % 10Hz

global data;
data = [];
AI.ScansAvailableFcn = @fetchData; % defined in fetchData.m

% start a background acquisition for 7 seconds
start(AI, "Duration", seconds(7));
% Generate two ramps from 0 to 5V using V+ and W1
write(VP, linspace(0, 5, 50)');     % write 50 samples in 5 seconds
write(AO, linspace(0, 5, 1000)');   % write 1000 samples in 1 second

% Wait until acquisition is done
while AI.Running
    pause(0.1)
end
plot([data.AD2_0_ai0, data.AD2_0_ai1])

% Write primes smaller than 128 through DO
% Then read them back using DI
read_p = []
for p = primes(128)
    write(DO, decimalToBinaryVector(p, 8));
    di_data = read(DI);
    read_p = [read_p; binaryVectorToDecimal(di_data{1,:})];
end
% Check if what we read back is correct
read_p
isequal(read_p, primes(128)')