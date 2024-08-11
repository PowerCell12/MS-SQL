select continentcode, currencycode, CurrencyUsage
from (
  	select *,
  	dense_rank() over(partition by continentcode order by currencyusage desc)
  	as CurrencyRank
  	FROM (
      		select co.ContinentCode,
      		c.CurrencyCode,
      		COUNT(c.CurrencyCode) as CurrencyUsage
      		from Continents as co 
      	left join Countries as c
      		on c.ContinentCode = co.ContinentCode
      	group by co.ContinentCode, c.CurrencyCode
      	) as CurrencyUsageQuery
  	where CurrencyUsage > 1
  	) as CurrencyUsageQuery
 where CurrencyRank = 1
