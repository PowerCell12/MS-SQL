select top 5 e.employeeid, e.firstname, p.name 
from Employees as e 
join EmployeesProjects as ep on e.EmployeeID = ep.EmployeeID
join Projects as p on ep.ProjectID = p.ProjectID
where p.StartDate  > '2002-08-13'
and p.EndDate is null
order by e.EmployeeID
