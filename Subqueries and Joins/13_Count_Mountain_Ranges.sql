select c.countrycode, count(m.mountainrange)
from Countries as c 
join MountainsCountries as mc on mc.CountryCode = c.CountryCode
join Mountains as m on  mc.MountainId = m.Id
group by c.CountryCode
having c.CountryCode in ('BG', 'RU', 'US')
