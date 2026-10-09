CREATE DATABASE customer_info;

SHOW databases;

-- to make this default database
USE customer_info;

CREATE TABLE information(Cust_id int Not Null,
Name varchar(20) Not Null,
Country varchar(20) Not Null,
City varchar(20));

desc information;

-- uniques duplicates not allowed 
-- unique constraints , difference UNIQUE AND PRIMARY KEY both are unique ,PRIMARY= not null ,UNIQUE - null 
-- primary - per table only one primary key
-- unique - per table many primary key

CREATE TABLE cust_info(
cust_id int primary key,
cust_name varchar(20) not null,
mobile_no bigint unique);

desc cust_info;

-- drop database

-- drop table

show tables;
-- drop table tablename
drop table information;

desc information;

-- drop database

Drop database customer_info;

show databases;

