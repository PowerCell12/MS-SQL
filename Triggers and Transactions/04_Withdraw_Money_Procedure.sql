create proc usp_WithdrawMoney @AccountId int, @MoneyAmount MONEY
AS
    -- Update rows in table '[TableName]' in schema '[dbo]'
    UPDATE [dbo].[Accounts]
    SET
        Balance = Balance - @MoneyAmount
    WHERE Id = @AccountId
   
