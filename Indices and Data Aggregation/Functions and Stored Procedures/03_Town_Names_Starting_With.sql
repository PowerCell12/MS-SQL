create proc usp_GetTownsStartingWith @string varchar(200)
as
	SELECT Name
    from Towns
    where @string = left(Name, len(@string))
 
    
