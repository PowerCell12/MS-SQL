create proc usp_TransferMoney @SenderId int, @ReceiverId int, @Amount MONEY
AS
    -- Update rows in table '[TableName]' in schema '[dbo]'
    UPDATE [dbo].[Accounts]
    SET
        Balance = Balance - @Amount
    WHERE Id = @SenderId

    
    UPDATE [dbo].[Accounts]
    SET
        Balance = Balance + @Amount
    where id = @ReceiverId
