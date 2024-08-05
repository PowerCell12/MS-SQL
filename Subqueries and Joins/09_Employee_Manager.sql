select e.employeeid, e.firstname, e.managerid, em.FirstName
from Employees as e 
join Employees as em on e.ManagerID = em.EmployeeID
where em.EmployeeID in (3, 7)
order by e.EmployeeID
