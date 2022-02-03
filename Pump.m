classdef Pump
   properties
      Speed FlowRate
   end
   methods
      function getGPM(p)
         if isempty(p.Speed)
            gpm = 0;
         else
            gpm = int32(p.Speed);
         end
         fprintf('Flow rate is: %i GPM\n',gpm);
      end
   end
end