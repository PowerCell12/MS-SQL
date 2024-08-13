select departmentid, sum(salary)
from Employees 
group by departmentid
order by departmentid
