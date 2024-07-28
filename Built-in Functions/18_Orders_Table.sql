select productname, orderdate, dateadd(day, 3, orderdate) as 'Pay Due', dateadd(month, 1, orderdate) as 'Deliver Due'
from Orders
