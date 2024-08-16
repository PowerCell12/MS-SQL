create proc usp_GetHoldersWithBalanceHigherThan @number money
AS
	SELECT FirstName, lastname 
    from AccountHolders as ac 
    join Accounts as a on ac.Id = a.AccountHolderId
    group by firstname, lastname
    having sum(a.Balance) > @number
    order by firstname, lastname
