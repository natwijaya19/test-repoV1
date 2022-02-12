classdef FigureTest < matlab.unittest.TestCase
    properties (TestParameter)
        FigureType = {@figure, @uifigure};
    end
    methods(Test)
        function defaultCurrentPoint(testCase,FigureType)
            fig = FigureType();
            testCase.addTeardown(@close,fig)
            cp = fig.CurrentPoint;
            testCase.verifyEqual(cp,[0 0])
        end
    end
end