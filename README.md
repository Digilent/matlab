# Digilent Toolbox

[![View Digilent Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/122817-digilent-toolbox)

The Digilent Toolbox allows users to acquire and analyze data in MATLAB from Digilent's Analog Discovery, Analog Discovery 2, Analog Discovery Studio, Analog Discovery Pro ADP3250 and ADP3450, Electronic Explorer, and Discovery Power Supply DPS3340.
Featuring Analog data streaming, Digital I/O control, and configurable Power Supplies, users can easily collect and send data from Digilent Test and Measurement devices, either directly or with the newly added non-blocking functions with no software limitation on the sampling rate.
Get started today with the Digilent Toolbox and the latest version of WaveForms!

## Requirements
For Digilent toolbox to properly work the following software are required:

1. [MathWorks MATLAB](https://www.mathworks.com/products/matlab.html)
2. [MathWorks Data Aquisiton Toolbox](https://www.mathworks.com/products/data-acquisition.html)
3. [Data Acquisition Toolbox Support Package for National Instruments NI-DAQmx Devices](https://www.mathworks.com/hardware-support/nidaqmx.html)
4. [Digilent Waveforms](https://digilent.com/shop/software/digilent-waveforms/download)

## Usage

1. Connect your Digilent device
2. Run MATLAB
3. Go to the Command Window and enter the following commands:
```
daqreset;
devices = daqlist; %list devices
devices
```
4. You should see your device listed

![image](https://user-images.githubusercontent.com/910321/215471459-f28328e5-80b1-45dd-ab8b-b011fae945f2.png)

5. You can see more examples in the `digilent/examples` folder in the Current Folder window.

![image](https://user-images.githubusercontent.com/910321/215472839-768b8b24-fa8f-4426-900d-69e1a0559333.png)
