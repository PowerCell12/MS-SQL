select min(avg)
from	(select AVG(e.Salary) as avg from Employees as e
join Departments as d on e.DepartmentID = d.DepartmentID 
GROUP by d.name) as Subq
