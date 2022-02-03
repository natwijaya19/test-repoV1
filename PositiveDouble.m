classdef PositiveDouble < double
   methods
      function obj = PositiveDouble(data)
         if nargin == 0
            data = 1;
         else
            mustBePositive(data)
         end
         obj = obj@double(data);
      end
   end
end