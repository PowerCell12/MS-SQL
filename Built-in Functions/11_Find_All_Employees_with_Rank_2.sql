select *
FROM (	
  select employeeid, FirstName, Lastname, salary, dense_rank() over(PARTITION BY salary order by 	employeeid) as Rank from Employees
  where salary between 10000 and 50000 
) as Ranking
where Rank = 2
order by salary desc
