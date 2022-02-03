classdef Machine < handle
   properties (SetAccess = private)
      State = MachineState.NotRunning
   end
   
   methods
      function start(machine)
         if machine.State == MachineState.NotRunning
            machine.State = MachineState.Running;
         end
         disp (machine.State.char)
      end
      function stop(machine)
         if machine.State == MachineState.Running
            machine.State = MachineState.NotRunning;
         end
         disp (machine.State.char)
      end
   end
end