-----------------------

Select *, 
rank() over(partition by department order by salary desc) as rnk
from employee