select top 5  c.countryname, max(p.Elevation), max(r.Length)
from Countries as c
left join CountriesRivers as cr on c.CountryCode = cr.CountryCode
left join Rivers as r on cr.RiverId = r.Id
left join MountainsCountries as mc on mc.CountryCode = c.CountryCode
left join Mountains as m on m.id = mc.MountainId
left join Peaks as p on p.MountainId = m.Id
group by c.CountryName
order by max(p.Elevation) desc, max(r.Length) desc, c.CountryName 
