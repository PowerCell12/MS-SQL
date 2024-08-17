create Trigger create_email
on Logs
after insert  
AS
BEGIN

    insert into NotificationEmails(Recipient, Subject, Body)
    SELECT
        i.AccountId,
        concat('Balance change for account: '   , i.AccountId) as Subject,
        concat('On ', CONVERT(VARCHAR, GETDATE(), 120), ' your balance was changed from ', i.OldSum, ' to ', i.NewSum, '.')
    from inserted  as i


end;
