create TRIGGER trigger_logs 
on Accounts
after UPDATE
as 
begin

    if Update(Balance)
    BEGIN

        INSERT INTO Logs(AccountId, OldSum, NewSum)
        SELECT
            a.Id,
            d.Balance AS OldBalance,
            a.Balance AS NewBalance
        FROM
            Accounts a
        JOIN
            deleted d ON a.Id = d.Id



    end;
end;
