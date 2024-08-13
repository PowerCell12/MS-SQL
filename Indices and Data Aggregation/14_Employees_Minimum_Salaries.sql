select departmentid, min(salary)
from Employees 
where departmentid in (2, 5, 7)
group by departmentid
order by departmentid
