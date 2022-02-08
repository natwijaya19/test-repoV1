classdef Immute
   properties (SetAccess = immutable)
      CurrentDate
   end
   methods
      function obj = Immute
         obj.CurrentDate = date;
      end
   end
end