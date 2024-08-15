create proc usp_GetEmployeesSalaryAboveNumber @Number Decimal(18,4)
as
	select FirstName, LastName
    from employees
    where salary >= @Number
 
    
