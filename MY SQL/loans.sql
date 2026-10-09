create database banking;
use banking;
-- 1st table
create table customer(
customerid int PRIMARY KEY,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(100) unique,
phone varchar(15) unique,
accountcreationdate date default(current_date)
);

desc customer;

-- add date of birth
alter table customer add column date_of_birth date;

-- modify data type of phone to bigint
alter table customer modify phone bigint;

-- 2nd table accounts
create table accounts(
accountid int,
accounttype varchar(20),
balance decimal(10,2)
);

-- add constraint primary key
alter table accounts add constraint pk_accounts primary key(accountid);

-- add check constraint on balance
alter table accounts add constraint chk_balance
check (balance>=0);

-- add customer_id as foreign key
alter table accounts add customer_id int;

desc accounts;
-- add customerid as foreign key 
alter table accounts 
add constraint fk_accounts_customer1
foreign key(customer_id) 
references customer(customerid);

-- transaction table
create table transactions(
transactionid int,
transactiondate date,
amount decimal(10,2),
transactiontype varchar(20)
);

-- add primary key on transactionid
alter table transactions add constraint pk_transactions primary key(transactionid);

-- add check constraint on amount
alter table transactions add constraint chk_transaction_amount check(amount > 0);

-- add accountid ad foreign key
alter table transactions add column accountid int;

alter table transactions add constraint fk_transactions_account foreign key (accountid) references accounts(accountid);

-- 4th table branches
create table branches(
branchid int,
branchname varchar(100),
branchaddress varchar(200),
branchphone varchar(15)
);

-- make branch id as primary key
alter table branches add constraint pk_brancheid primary key(branchid);

desc branches;

-- 5.bridge table

create table accountbranches(
accountid int,
branchid int,
assignmentdate date);

-- add composite primary key
alter table accountbranches add constraint pk_accountbranches primary key(accountid,branchid);

desc accountbranches;

-- add accountid foreign key
alter table accountbranches 
add constraint fk_ab_account
foreign key (accountid)
references accounts(accountid);

-- add branchid foreign key
alter table accountbranches add constraint fk_ab_branch
foreign key(branchid)
references branches(branchid);

-- 6th table (table loans)
create table loans(
loanid int primary key,
customerid int not null,
loanamount decimal(12,2) check(loanamount > 0),
interestrate decimal(4,2),
startdate date,
enddate date,
foreign key(customerid)
references customer(customerid)
);



