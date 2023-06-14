classdef (Hidden) VendorInfo < daq.sdk.VendorInfo
    %VendorInfo DigilentAdaptor driver
    %
    %    This class represents a DigilentAdaptor-based driver. 

    %% Lifetime    
    methods
        function obj = VendorInfo()
		% adaptorName = name of MEX file
		% packageName = name of vendor package name (+daq/+vendorName/+VendorInfo)
                
        % Remove the following lines when adding support for your Adaptor.
        % BEGIN REMOVE
        %if daq.internal.getOptions().HideDAQSDKAdaptor
        %    throw(MException(message('daqsdk:HardwareInfo:VendorIsHidden', mfilename('class'))));
        %end
	    % END REMOVE				
				
			adaptorName = 'DigilentAdaptor';
            packageName = 'digilentadaptor';
            minSupportedDriverVersion = daq.sdk.VersionInfo(1, 0, 0);
            minSupportedFirmwareVersion = daq.sdk.VersionInfo(1, 0, 0);
            
            obj@daq.sdk.VendorInfo(adaptorName, ...
								   packageName, ...
                                   minSupportedDriverVersion, ...
								   minSupportedFirmwareVersion);
        end
    end
end
