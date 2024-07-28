select username, substring(email, charindex('@', email) + 1, len(email)) as 'Email Provider' from Users
order by 'Email Provider', username
