create view V_EmployeesHiredAfter2000 as
select FirstName, LastName from employees 
where DatePart(year, HireDate) > 2000
