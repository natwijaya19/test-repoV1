classdef (TestTags = {'FeatureB'}) ...
        ExampleTagClassTest < matlab.unittest.TestCase
    methods (Test)
        function testF (testCase)
            % test code
        end
    end
    methods (Test, TestTags = {'FeatureC','System'})
        function testG (testCase)
            % test code
        end
    end
    methods (Test, TestTags = {'System','FeatureA'})
        function testH (testCase)
            % test code
        end
    end
end