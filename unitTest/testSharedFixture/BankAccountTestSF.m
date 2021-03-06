classdef (SharedTestFixtures={matlab.unittest.fixtures.PathFixture( ...
        fullfile(matlabroot, 'help', 'techdoc', 'matlab_oop', ...
        'examples'))}) BankAccountTestSF < matlab.unittest.TestCase
    % Tests the BankAccount class.
    
    methods (Test)
        function testConstructor(testCase)
            b = BankAccount(1234, 100);
            testCase.verifyEqual(b.AccountNumber, 1234, ...
                'Constructor failed to correctly set account number')
            testCase.verifyEqual(b.AccountBalance, 100, ...
                'Constructor failed to correctly set account balance')
        end
        
        function testConstructorNotEnoughInputs(testCase)
            import matlab.unittest.constraints.Throws
            testCase.verifyThat(@()BankAccount, ...
                Throws('MATLAB:minrhs'))
        end
        
        function testDesposit(testCase)
            b = BankAccount(1234, 100);
            b.deposit(25)
            testCase.verifyEqual(b.AccountBalance, 125)
        end
        
        function testWithdraw(testCase)
            b = BankAccount(1234, 100);
            b.withdraw(25)
            testCase.verifyEqual(b.AccountBalance, 75)
        end
        
        function testNotifyInsufficientFunds(testCase)
            callbackExecuted = false;
            function testCallback(~,~)
                callbackExecuted = true;
            end
            
            b = BankAccount(1234, 100);
            b.addlistener('InsufficientFunds', @testCallback);
            
            b.withdraw(50)
            testCase.assertFalse(callbackExecuted, ...
                'The callback should not have executed yet')
            b.withdraw(60)
            testCase.verifyTrue(callbackExecuted, ...
                'The listener callback should have fired')
        end
    end
end