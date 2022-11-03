daqreset;
try
    dq = daq("digilent");
    disp "Success"
catch E
    disp 'No Digilent adaptor to use'
    rethrow(E);
end