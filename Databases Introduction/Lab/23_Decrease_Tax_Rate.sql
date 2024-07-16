update payments
SET taxrate = taxrate - taxrate * 0.03;

select taxrate from payments
