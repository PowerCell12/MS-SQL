CREATE or alter PROCEDURE usp_AssignProject @employeeId INT, @projectID INT 
AS
BEGIN

    IF (SELECT COUNT(ep.ProjectId) FROM Employees as e join EmployeesProjects as ep on ep.EmployeeID = e.EmployeeID join Projects as p on p.ProjectId = ep.ProjectId where e.EmployeeID = @employeeId) > 2
    BEGIN;
        THROW 50000, 'The employee has too many projects!', 1;
    END;

    INSERT INTO EmployeesProjects (EmployeeID, ProjectID) VALUES (@employeeId, @projectID);



END;
