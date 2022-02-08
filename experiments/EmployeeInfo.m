classdef EmployeeInfo < handle & matlab.mixin.CustomDisplay
   properties
      Name
      JobTitle
      Department
      Salary
      Password
   end
   methods
      function obj = EmployeeInfo
         obj.Name       = input('Name: ');
         obj.JobTitle   = input('Job Title: ');
         obj.Department = input('Department: ');
         obj.Salary     = input('Salary: ');
         obj.Password   = input('Password: ');
      end
   end
end