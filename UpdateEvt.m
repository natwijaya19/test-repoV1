classdef UpdateEvt < handle
   events
      Update
   end
   methods
      function obj = UpdateEvt
         addlistener(obj,'Update',@evtCb);
      end
   end
   methods (Access = private)
      function obj = evtCb(obj,varargin)
         disp('Updated Event Triggered')
      end
   end
end