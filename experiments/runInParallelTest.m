function tests = runInParallelTest
tests = functiontests(localfunctions);

function testA(testCase)
verifyEqual(testCase,5,5);

function testB(testCase)
verifyTrue(testCase,logical(1));

function testC(testCase)
verifySubstring(testCase,'SomeLongText','Long');

function testD(testCase)
verifySize(testCase,ones(2,5,3),[2 5 3]);

function testE(testCase)
verifyGreaterThan(testCase,3,2);

function testF(testCase)
verifyEmpty(testCase,{},'Cell array is not empty.');
