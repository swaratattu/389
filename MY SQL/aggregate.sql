use bankingdb1;
show tables;

-- aggregate function
-- sum,min,max,count,average
-- group by

select*from accounts;

-- accounttypewise total balance 
select accounttype,sum(balance) as "total balance"
from accounts
group by accounttype;

select accounttype from accounts;
-- distinct (unique)
select distinct accounttype from accounts;

-- how many account type you have
select count(distinct accounttype) as number_of_accounttype
from accounts;

-- count total accounts in account table
select count(accountid) from 
accounts;

-- *-means all
-- there is no primarykey(in id)
select count(*) as total_no_of_accounts
from accounts;

-- count total accounts for each account_type
select accounttype, count(accountid) from accounts
group by accounttype;

-- average balance in each account type
select accounttype, avg (balance) as "avg balance" from accounts
group by accounttype;

-- highest balance in each account type
select accounttype, max(balance) from accounts
group by accounttype;

-- lowest balance in each account type
select accounttype, min(balance) from accounts
group by accounttype;

-- min balance
select min(balance) as min_bal,
max(balance) as max_bal,
sum(balance) as total_bal,
avg(balance) as avg_bal,
count(accountid) as total_accounts
from accounts;

select*from accounts;

-- find average bal of saving accounts by customer
select customerid,avg(balance)
from accounts 
where accounttype="savings"
group by customerid;

-- group by with having clause
-- having clause - use after group by 
-- find account types whose total balance is greater than 100000

select accounttype,sum(balance) as total_bal
from accounts
group by accounttype
having sum(balance)>100000;

