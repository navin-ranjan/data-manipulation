-----------------------

Select *, 
rank() over(partition by department order by salary desc) as rank
from employee

--------------