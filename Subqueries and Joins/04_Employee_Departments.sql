select top 5 e.EmployeeID, e.firstname, e.salary, d.name
from Employees as e 
join Departments as d on e.DepartmentID = d.DepartmentID 
where e.Salary > 15000
order by d.DepartmentID
