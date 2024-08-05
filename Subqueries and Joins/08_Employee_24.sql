select  e.employeeid, e.firstname, case when DatePart(year, p.StartDate) >= 2005 then NULL else p.name  end 
from Employees as e 
join EmployeesProjects as ep on e.EmployeeID = ep.EmployeeID
join Projects as p on ep.ProjectID = p.ProjectID
where e.EmployeeID = 24
