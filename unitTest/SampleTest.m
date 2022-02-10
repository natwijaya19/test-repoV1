function tests = SampleTest
    tests = functiontests(localfunctions);
end

function testA(testCase)
    verifyEqual(testCase,5,5)
end

function testB(testCase)
    verifyGreaterThan(testCase,42,13)
end

function testC(testCase)
    verifySubstring(testCase,'hello, world','llo')
end