select TOP 50 Name, format(start, 'yyyy-MM-dd') as Start from Games
where datepart(year, start) in (2011, 2012) 
order by start, Name 
