classdef MyClass
   methods(Static)
       function p = pi(tol)
           [n d] = rat(pi,tol);
           p = n/d;
       end
   end
end