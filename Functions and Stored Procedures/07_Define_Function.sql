create function ufn_IsWordComprised(@setOfLetters varchar(50), @word varchar(100))
returns BIT
AS
BEGIN

	declare @int INT = 1;
    
    while @int <= len(@word)
    BEGIN
    	declare @ch varchar(1) = substring(@word, @int, 1)
        if charindex(@ch, @SetOfLetters) = 0
        	return 0
        else 
        	SET @int = @int + 1
    
    end
    
    return 1 
    


end


