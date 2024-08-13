select departmentid, max(salary)
from Employees 
group by departmentid
having  max(salary) not between 30000 and 70000
order by departmentid
