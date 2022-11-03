function plotData(obj, evt)
global data;
    data = [data; read(obj,obj.ScansAvailableFcnCount)]; %concatenate data; not realy needed when implementing a system loop
end