-- dql command
use bankingdb1;

-- all records from table
select * from customers;

-- filter wheere
-- customer id 5 
-- comparison operators 
select * from customers where customerid=5;

-- display accounts details whose balance > 5000
select * from accounts where balance >5000;

-- display accounts details whose balance > 5000

-- not equal to 
select * from accounts where accountType <> "Savings";

-- specific column 
select firstname,lastname,phone from customers;

-- more than one condition 
-- logical operators and or not
-- balance>20000 and accounttype = savings
select * from accounts 
where balance>20000 AND accounttype="Savings";

-- OR 
select * from accounts where balance > 20000 OR accounttype="savings";

-- NOT 
select * from accounts where NOT accounttype="savings";


-- between (separrate operator)
select * from accounts where balance between 12000 and 25000;

select * from accounts where balance >=12000 and balance<=25000;

-- IN and NOT IN  operator - COMPARE MULTIPLE OPERATORS
select * from customers where customerid in(1,5,10,15,21);

select * from customers where customerid = 1 OR customerid=5;

-- NOT IN 
select * from customers where customerid NOT IN(1,5,10,15,21);

-- account type not in saving
select * from accounts where accounttype Not IN("SAVINGS");

-- IS NULL
select * from customers 
where email is null;

-- not null
select * from customers 
where email is not null;

-- LIKE - patter matching
-- starts with a 
select * from customers where firstname like "a%";

-- ends with a 
select * from customers where lastname like "%a";

-- conatains a 
select * from customers where lastname like "%a%";

-- four character name 
select * from customers where lastname like "____";

-- retrieve a name starts with a and length = 4
select * from customers where firstname like "a___";

-- where - filtering data

-- order by clause - sorting 
-- asc or decending
select * from accounts order by balance;

select * from 
accounts 
order by balance ASC;

-- descending
select * from 
accounts 
order by balance DESC;

select * from accounts where accounttype ="savings"
order by balance;

select * from accounts where accounttype ="savings"
order by balance Desc;

-- limit-gives top 5 ,3 (delect * from tablename limit rowcount;)
select * from
accounts limit 5;

-- top 3 saving account based on balance
select * from 
accounts where accounttype ="savings"
order by balance Desc
limit 3; 

-- bottom 3 saving accounts
select * from 
accounts where accounttype ="savings"
order by balance ASC
limit 3;

-- retrieve records from 6th to 10th
-- select listof columns from tablename
-- limit offset, rowcount
-- offset for first row is zero

select * from accounts 
limit 5,5;

-- highest balance
select * from accounts 
order by balance desc
limit 1;

-- second highest
select * from accounts
order  by balance desc
limit 1,1;

-- lowest balance 
select * from accounts
order by balance asc
limit 0,1;

-- second lowest balance
 select * from accounts
 order by balance asc
 limit 1,1;