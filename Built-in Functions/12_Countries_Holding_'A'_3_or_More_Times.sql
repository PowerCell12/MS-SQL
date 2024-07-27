select countryname, isocode from Countries
where lower(countryname) like '%a%a%a%'
order by isocode
