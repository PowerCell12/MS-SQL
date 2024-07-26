select FirstName from  Employees 
where departmentID in (3, 10)
and DatePart(year, HireDate) between 1995 and 2005;
