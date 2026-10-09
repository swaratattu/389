-- group by with having clause
-- find account type whose total balannce 
-- is greater than 100000

select accounttype,sum(balance) as total_bal
from accounts
group by accounttype
having sum(balance)>100000;