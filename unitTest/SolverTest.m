classdef SolverTest < matlab.unittest.TestCase
    methods(Test)
        function realSolution(testCase)
            actSolution = quadraticSolver(1,-3,2);
            expSolution = [2,1];
            testCase.verifyEqual(actSolution,expSolution)
        end % of realSolution

        function imaginarySolution(testCase)
            actSolution = quadraticSolver(1,2,10);
            expSolution = [-1+3i, -1-3i];
            testCase.verifyEqual(actSolution,expSolution)
        end % of imaginarySolution

        function nonnumericInput(testCase)
            testCase.verifyError(@()quadraticSolver(1,'-3',2), ...
                'quadraticSolver:InputMustBeNumeric')
        end % of nonnumericInput

        function testBadRealSolution(testCase)
            actSolution = quadraticSolver(1,3,2);
            expSolution = [2,1];
            testCase.verifyEqual(actSolution,expSolution)
        end % of testBadRealSolution
    end
end