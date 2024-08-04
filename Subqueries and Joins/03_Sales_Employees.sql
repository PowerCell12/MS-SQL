select e.employeeid, e.firstname, e.lastname, d.Name
from Employees as e 
join Departments as d on e.DepartmentID = d.DepartmentID
where d.name = 'Sales'
order by e.EmployeeID
