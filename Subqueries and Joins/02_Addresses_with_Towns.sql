select top 50 e.FirstName, e.lastname, t.Name, a.addresstext
from Employees as e 
join Addresses as a on e.AddressID = a.AddressID
join Towns as t on a.TownID  = t.TownID
order by e.FirstName, e.LastName
