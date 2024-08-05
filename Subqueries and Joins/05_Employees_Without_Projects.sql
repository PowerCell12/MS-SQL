select top 3 e.employeeid, e.firstname
from Employees as e
left join  EmployeesProjects as ep on e.EmployeeID = ep.EmployeeID
left join  Projects as p on ep.ProjectID  = p.ProjectID
where p.ProjectID is null
order by e.EmployeeID
