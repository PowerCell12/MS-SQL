select employeeid, FirstName, Lastname, salary, dense_rank() over(PARTITION BY salary order by 	employeeid) from Employees
where salary between 10000 and 50000
order by salary desc
