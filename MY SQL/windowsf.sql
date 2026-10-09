-- windows functtions
use bankingdb1;

select from accounts;

select accounttype,
sum(balance)
from accounts
group by accounttype;

-- windows function is alternative to groupby function
-- rank,sum,

-- partition by 
select accountid,accounttype,sum(balance)
over(partition by accounttype) as total_balance
from accounts;

-- order by 
select accountid,accounttype,sum(balance)
over ( order by balance desc)
as total_balance
from accounts

select accountid,accounttype,sum(balance)
over ( order by balance desc)
from accounts;

-- row number
select accountid,balance,row_number()
over()
from accounts;

select accountid,balance,accounttype,row_number()
over(partition by accounttype)
from accounts;

select accountid,balance,accounttype,row_number()
over(order by accounttype)
from accounts;

-- rank() function
select accountid,balance,rank()
over(order by accounttype)
from accounts;

select accountid,balance,rank()
over(order by balance)
from accounts;

select accountid,balance,rank()
over(partition by accounttype order by balance)
from accounts;

-- update balance
update accounts set balance=2200
where accountid=104;

select accountid,balance,rank()
over(partition by accounttype)
from accounts;

select accountid,balance,dense_rank()
over(order by balance)
from accounts;

-- lag() and led()
-- lag ususally used for nuumerical value
select accountid,accounttype,balance,
lag(balance)
over(order by balance)
from accounts;

select accountid,accounttype,balance,
lag(balance)
over(partition by accounttype order by balance)
from accounts;

-- lead
select accountid,accounttype,balance,
lead(balance)
over(order by balance)
from accounts;

select accountid,accounttype,balance,
lead(balance)
over(partition by accounttype order by balance)
from accounts;

-- nth value
-- highest

select accountid,balance,
nth_value(balance,5)
over(order by balance)
from accounts;

select accountid,balance,
nth_value(accountid,2)
over(order by balance desc)
from accounts;

select accountid,balance,accounttype,
nth_value(accountid,3)
over(partition by accounttype order by balance desc)
from accounts;

-- Ntile(divided in n mumber)
select accountid,accounttype,balance,
ntile(2)
over(order by balance)
from accounts;

select accountid,accounttype,balance,
ntile(5)
over(partition by accounttype order by balance)
from accounts;






