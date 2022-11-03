 classdef (Hidden) Session < daq.sdk.Session
    %daq.digilentadaptor.Session Session object for DAQ DigilentAdaptor
    %    DAQ DigilentAdaptor "devices" are accessed using this session.
    
    % Copyright 2016 The MathWorks, Inc.
    
    
    %% Constructor / Destructor
    methods(Hidden)
        % Constructor
        function obj = Session(vendor)
            initialRate = 1000;
            standardSampleRates = [];
            obj@daq.sdk.Session(vendor, initialRate, standardSampleRates);
        end
    end
end
