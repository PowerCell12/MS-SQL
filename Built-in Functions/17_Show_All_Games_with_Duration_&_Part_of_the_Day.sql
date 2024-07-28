select Name, 
	
    case
        when datepart(hour, start) between 0 and 11 then 'Morning'
        when datepart(hour, start) between 12 and 17 then 'Afternoon'
        when datepart(hour, start) between 18 and 23 then 'Evening'
    end as 'Part of the Day',
	
    case
    	when duration <=3 then 'Extra Short'
    	when duration between 4 and 6 then 'Short'
    	when duration > 6 then 'Long'
    else 'Extra Long'
 	end as Duration
from Games
order by Name, Duration, 'Part of the Day';	
