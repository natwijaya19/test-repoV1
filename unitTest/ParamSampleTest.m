classdef ParamSampleTest < matlab.unittest.TestCase
    properties (TestParameter)
        Number = {1,2,'3',4,5};
    end
    methods(Test)
        function testDouble(testCase,Number)
            testCase.verifyClass(Number,'double')
        end
    end
end