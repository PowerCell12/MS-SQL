

create TRIGGER deleted_employees_trigger
on Employees
after DELETE
AS
BEGIN

    insert into Deleted_Employees(FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary)
        SELECT
            FirstName,
            LastName,
            MiddleName,
            JobTitle,
            DepartmentID,
            Salary
        from deleted;

end;
