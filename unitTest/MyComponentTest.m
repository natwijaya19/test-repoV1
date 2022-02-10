%% Test Class Definition
classdef MyComponentTest < matlab.unittest.TestCase
    
    %% Test Method Block
    methods (Test)
        
        %% Test Function
        function testASolution(testCase)      
            %% Exercise function under test
            % act = the value from the function under test
            act = plus(2,3);

            %% Verify using test qualification
            % exp = your expected value
            exp = 5;
            % testCase.<qualification method>(act,exp);
            testCase.verifyEqual(act,exp)
        end
            
        function testBSolution(testCase)      
        %% Exercise function under test
        % act = the value from the function under test
        act = plus(2,3);

        %% Verify using test qualification
        % exp = your expected value
        exp = 6;
        % testCase.<qualification method>(act,exp);
        testCase.verifyEqual(act,exp)
           
        end
    end
end