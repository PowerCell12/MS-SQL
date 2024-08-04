select top 5 e.employeeid, e.jobtitle, e.addressid, a.addresstext
from Employees as e
join Addresses as a on e.AddressID = a.AddressID 
order by e.AddressID
