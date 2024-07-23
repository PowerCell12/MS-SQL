select top 30 C.countryname, C.population from Countries as C, Continents as CP
where C.continentcode = CP.ContinentCode
AND CP.continentname = 'Europe'
order by population desc, countryname;
