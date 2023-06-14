# Digilent Toolbox

[![View Digilent Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/122817-digilent-toolbox)

The Digilent Toolbox allows users to acquire and analyze data in MATLAB from Digilent's Analog Discovery, Analog Discovery 2, Analog Discovery 3, Analog Discovery Studio, Analog Discovery Pro ADP3250 and ADP3450, Electronic Explorer, and Discovery Power Supply DPS3340.

Featuring Analog data streaming, Digital I/O control, and configurable Power Supplies, users can easily collect and send data from Digilent Test and Measurement devices, either directly or with the newly added non-blocking functions with no software limitation on the sampling rate.
Get started today with the Digilent Toolbox and the latest version of WaveForms!

For detailed instructions on setting up the Toolbox and running some examples, check out [Getting Started with the Digilent Toolbox Add-on for MATLAB](https://digilent.com/reference/test-and-measurement/guides/matlab-getting-started) on Digilent Reference.

## Requirements
For the Digilent toolbox to work properly, the following software is required:

1. [Data Aquisiton Toolbox](https://www.mathworks.com/products/data-acquisition.html)
2. [Digilent Waveforms](https://digilent.com/shop/software/digilent-waveforms/download)

## Transition Your Code from Session to DataAcquisition Interface

To transition your code this [transition table](https://www.mathworks.com/help/daq/transition-your-code-from-session-to-dataacquisition-interface.html) should help.

## Transitioning from **Data Acquisition Toolbox Support Package for Digilent Analog Discovery Hardware** to this toolbox.

When transitioning to this toolbox some minor changes to device and channel names are required.

In this repository there are some examples:

[Getting Started Acquiring Data](https://www.mathworks.com/help/daq/getting-started-acquiring-data-with-digilent-analog-discovery.html) -> digilent/examples/GSAcquiringData.mlx  
[Getting Started Generating Data](https://www.mathworks.com/help/daq/getting-started-generating-data-with-digilent-analog-discovery.html) -> digilent/examples/GSGeneratingData.mlx  
[Acquiring and Generating Data at the Same Time](https://www.mathworks.com/help/daq/acquiring-and-generating-data-at-the-same-time-with-digilent-analog-discovery.html) -> digilent/examples/GSAcquiringAndGenerateData.mlx  
