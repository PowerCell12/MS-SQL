create function ufn_GetSalaryLevel(@salary Decimal(18,4))
returns varchar(30)
AS
BEGIN
                
		return
                (case
                	when @salary < 30000 then 'Low'
                	when @salary between 30000 and 50000 then 'Average'
                	else 'High'
                end);
end
