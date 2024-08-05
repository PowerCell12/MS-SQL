select top 50 e.employeeid, concat(e.firstname, ' ', e.LastName), concat(em.FirstName, ' ', em.LastName), d.Name
from Employees as e 
join Employees as em on e.ManagerID = em.EmployeeID
join Departments as d on e.DepartmentID = d.DepartmentID
order by e.EmployeeID
