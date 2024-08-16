create proc usp_CalculateFutureValueForAccount @AccountID int, @InterestRate float
AS
	SELECT a.Id, ah.FirstName, ah.LastName, a.Balance, dbo.ufn_CalculateFutureValue(a.Balance, @InterestRate, 5)
    from Accounts as a
    join AccountHolders as ah on a.AccountHolderId = ah.Id
    where a.Id = @AccountID
