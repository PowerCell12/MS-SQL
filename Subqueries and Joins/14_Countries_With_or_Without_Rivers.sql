select top 5 c.countryname, r.rivername 
from Countries as c
join Continents as co on 	c.ContinentCode = co.ContinentCode
left join CountriesRivers  as cr on c.CountryCode = cr.CountryCode
left join Rivers as r on r.Id = cr.RiverId
where co.ContinentName = 'Africa'
order by c.CountryName
