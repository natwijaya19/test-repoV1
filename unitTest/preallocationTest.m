function tests = preallocationTest
tests = functiontests(localfunctions);
end

function testOnes(testCase)
vectorSize = getSize();
x = ones(1,vectorSize());
end

function testIndexingWithVariable(testCase)
vectorSize = getSize();
id = 1:vectorSize;
x(id) = 1;
end

function testIndexingOnLHS(testCase)
vectorSize = getSize();
x(1:vectorSize) = 1;
end

function testForLoop(testCase)
vectorSize = getSize();
for i=1:vectorSize
    x(i) = 1;
end
end

function vectorSize = getSize()
vectorSize = 1e7;
end