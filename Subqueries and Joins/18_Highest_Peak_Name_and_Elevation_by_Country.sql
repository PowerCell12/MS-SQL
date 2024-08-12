select top 5 country,
	case 
    	when peakname is null then '(no highest peak)'
        	else peakname
	end as [Highest Peak Name],
    Case
    	when elevation is null then 0
        else elevation
    end  as [Highest Peak Elevation],
    Case 
    	when mountainrange is null then '(no mountain)'
        else mountainrange
    end as Mountain
    from (
      	select c.CountryName as Country,
      	m.MountainRange,
      	p.PeakName,
      	p.Elevation,
      	dense_rank() over (Partition by c.CountryName order by p.Elevation desc)
      	as PeakRank
      	from Countries as c
      	left join MountainsCountries as mc
      	on mc.CountryCode = c.CountryCode
      	left join Mountains as m 
      	on m.Id = mc.MountainId
      	left join peaks as p
      	on p.MountainId = m.Id
      ) as PeakRankingQuery
	where PeakRank = 1
    Order by Country, [Highest Peak Name]
