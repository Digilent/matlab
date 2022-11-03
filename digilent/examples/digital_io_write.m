daqreset
dq = daq("digilent");
addoutput(dq, "AD2_0", "dio00", 'Digital');
addoutput(dq, "AD2_0", "dio01", 'Digital');
addoutput(dq, "AD2_0", "dio02", 'Digital');
write(dq, [0 0 0]);