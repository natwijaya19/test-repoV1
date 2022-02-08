classdef AbortTheSet < handle
    properties (SetObservable, GetObservable, AbortSet)
        PropOne = 7
    end
    methods
        function obj = AbortTheSet
            addlistener(obj,'PropOne','PreGet',@obj.getPrePropEvt);
            addlistener(obj,'PropOne','PreSet',@obj.setPrePropEvt);
            addlistener(obj,'PropOne','PostGet',@obj.getPostPropEvt);
            addlistener(obj,'PropOne','PostSet',@obj.setPostPropEvt);
        end
        function propval = get.PropOne(obj)
            disp('get.PropOne called')
            propval = obj.PropOne;
        end
        function set.PropOne(obj,val)
            disp('set.PropOne called')
            obj.PropOne = val;
        end
        function getPrePropEvt(obj,src,evnt)
            disp ('Pre-get event triggered')
            % ...
        end
        function setPrePropEvt(obj,src,evnt)
            disp ('Pre-set event triggered')
            % ...
        end
        function getPostPropEvt(obj,src,evnt)
            disp ('Post-get event triggered')
            % ...
        end
        function setPostPropEvt(obj,src,evnt)
            disp ('Post-set event triggered')
            % ...
        end
        function disp(obj)
            % Overload disp to avoid accessing property
            disp (class(obj))
        end
    end
end