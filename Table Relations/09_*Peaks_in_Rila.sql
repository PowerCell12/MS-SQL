select m.MountainRange, p.PeakName, p.Elevation 
from Mountains as m
join Peaks as p on p.MountainID = m.ID
where m.MountainRange = 'Rila'
order by p.Elevation DESC
