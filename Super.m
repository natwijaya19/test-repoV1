classdef Super
   properties (Access = private)
      Prop = 2
   end
   methods
      function p = superMethod(obj)
         p = obj.Prop;
      end
   end
end