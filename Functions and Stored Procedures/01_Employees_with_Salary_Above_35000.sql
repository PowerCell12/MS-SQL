create proc usp_GetEmployeesSalaryAbove35000
as
	select FirstName, LastName 
    from employees
    where salary > 35000;
