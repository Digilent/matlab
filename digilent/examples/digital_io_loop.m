% Wire Digital I/O pin 0 to pin 8
daqreset;
dq = daq("digilent");
addoutput(dq, "AD2_0", "dio00", "Digital");
addinput(dq, "AD2_0", "dio08", "Digital");

write(dq,[1]);
a = read(dq)