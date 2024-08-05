SELECT e.firstname, e.lastname, e.hiredate, d.name
from Employees as e
join Departments as d on e.DepartmentID = d.DepartmentID
where e.HireDate > '1999-1-1'
and (d.name = 'Sales' or d.name = 'Finance')
order by e.HireDate
