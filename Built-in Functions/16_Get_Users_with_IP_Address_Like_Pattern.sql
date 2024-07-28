select username, ipaddress from Users
where ipaddress like '___.1%.%.___'
order by username;
