CREATE VIEW V_EmployeeNameJobTitle AS
SELECT
    CONCAT_WS(' ', FirstName, COALESCE(NULLIF(MiddleName, ''), ''), LastName) AS FullEmployeeName,
    JobTitle
FROM
    employees;
