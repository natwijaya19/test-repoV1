classdef SimpleDouble < double
   methods
      function obj = SimpleDouble(data)
         if nargin == 0
            data = 0;
         end
         obj = obj@double(data);
      end
   end
end