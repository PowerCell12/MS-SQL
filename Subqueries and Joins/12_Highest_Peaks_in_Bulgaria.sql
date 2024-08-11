select c.countrycode, m.mountainrange, p.peakname, p.elevation
from Countries as c
join MountainsCountries as mc on c.CountryCode = mc.CountryCode
join Mountains as m on mc.MountainId = m.Id
join peaks as p on p.MountainId = m.Id
where c.CountryCode = 'BG' 
and p.Elevation > 2835
order by elevation desc
