create proc usp_EmployeesBySalaryLevel @level_salary varchar(30)
AS
	select firstname, lastname
    from Employees
    where @level_salary = dbo.ufn_GetSalaryLevel(salary)
    
