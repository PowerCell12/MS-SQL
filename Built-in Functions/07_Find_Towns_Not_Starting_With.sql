select TownId, Name from Towns
where left(Name, 1) not in ('R', 'B', 'D')
order by Name;
