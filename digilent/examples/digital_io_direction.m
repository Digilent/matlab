daqreset;
dq = daq("digilent");
addinput(dq, "AD2_0", "dio00", "Digital");
addinput(dq, "AD2_0", "dio01", "Digital");
addinput(dq, "AD2_0", "dio02", "Digital");

a = read(dq) % read 3 channels

try
   write(dq, [1]) % write 1 channel
catch E
    disp 'No analog or digital output channels are present. Use addoutput to add a channel, and try again.'
end

dq.Channels
removechannel(dq,2);
addoutput(dq, "AD2_0", "dio01", "Digital");
dq.Channels
a = read(dq); % read 2 channels
write(dq,[1]); % write 1 channel