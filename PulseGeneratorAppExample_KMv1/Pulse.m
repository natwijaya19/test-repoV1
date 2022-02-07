classdef Pulse < handle
    % ...
    properties
        Type
        Frequency
        Length
        Edge 
        Window
        Modulation
        LowPass
        HighPass
        Dispersion
    end

    properties (Constant)
        StartFrequency = 10;
        StopFrequency = 20;
    end

    methods
        %...
        
    end

end