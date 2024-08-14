create proc usp_GetEmployeesFromTown @string varchar(200)
as
	SELECT e.FirstName, e.LastName
    from Addresses as a
 	join Employees  as e on e.AddressId = a.AddressId
    join Towns as t on a.TownId = t.TownId
    where @string = left(t.Name, len(@string))
    
