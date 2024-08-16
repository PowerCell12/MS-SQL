create  function ufn_CalculateFutureValue(@sum decimal(18,2) , @yearly_interest_rate float, @years int)
returns decimal(10, 4)
as
BEGIN
	
    return @sum * power((1 + @yearly_interest_rate), @years);

end;


