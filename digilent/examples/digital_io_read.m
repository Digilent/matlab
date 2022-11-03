daqreset;
dq = daq("digilent");
addinput(dq, "AD2_0", "dio00", 'Digital');
addinput(dq, "AD2_0", "dio01", 'Digital');
addinput(dq, "AD2_0", "dio02", 'Digital');

times = 10;
for i = 1:times
    pause(0.5);
    a = read(dq)
end