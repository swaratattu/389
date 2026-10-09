create database sample;
use sample;

create table customer(
customer_id int primary key,
customer_name varchar(20) not null,
email varchar(20) unique,
phone int unique,
address varchar(100),
city varchar(20),
account_type varchar(20) not null,
balance decimal(10,2) default 0,
status varchar(20) default 'active');

desc customer;

alter table customer modify phone varchar(20);

-- insert values 
insert into customer
(customer_id,customer_name,email,phone,address,city,account_type,balance,status)
values (101,'rahul sharma','rahulshar@gmail.com ',9876545672,'mg road','thane','savings',2500,'active');

-- to see inserted values
select * from customer;


insert into customer values(102,'akash patil','akashpati@gmail.com','9873456789','karve nagar','thane','saving',45000,'active');

insert into customer(customer_id,customer_name,email,phone,address,city,account_type)
values (103,'pooja','pooja@gmail.com',8675463456,'kart road','thane','saving');

insert into customer values(104,"neha","neha@gmail.com",7654387590,"karve nagar","thane","saving",25000,"active")
,
(105,'aditi','aditi@gmail.com',4356243567,'karve nagar','thane','saving',25000,'active');

-- without giving value unique column runs
insert into customer
(customer_id,customer_name,address,city,account_type,balance,status)
values
(106,'sita','karva nagar','thane','saving','10000','active');

-- delete all records
-- delete from customer;

-- delete record of customer_id=1
delete from customer where customer_id=101;
select * from customer;

-- update 
update customer set city="mumbai",address="mg road" where customer_id="102";

-- truncate :-deletes all records from tables

truncate table customer;	


-- drop :- delete all records with structure (table)from database 
drop table customer;

select * from customer;



-- to make this default database so created table in this database
use sample;

create table employee(
employee_id int,
employee_name varchar(50),
email varchar(100),
department varchar(50),
salary decimal(10,2),
city varchar(50)
);
desc employee;

-- add constraint(primary key)
alter table employee add constraint empid_pk primary key(employee_id);
desc employee;

-- add unique key  (constraint)
alter table employee add constraint email_uk unique(email);

-- add not null (constraint)
alter table employee modify column employee_name varchar(50) not null;

-- add default (constraint)
alter table employee alter city set default "mumbai";

-- add check(constraint)
alter table employee add constraint salary_chk check(salary>0);

-- create table department
create table department(
dept_id int primary key,
dept_name varchar(20)
);

-- parent table department (dept_id(pk),dept_name)
-- child table employee (employee_id(pk),dept_id(fk))

desc employee;

-- drop column 
alter table employee drop column department;

-- add column 
alter table employee add column dept_id int;

-- add foreign key 
alter table employee 
add constraint deptid_fk 
foreign key(dept_id)
references department(dept_id)
on delete cascade
on update cascade;

desc employee;

-- insert values iin department table 
insert into department values(101,"It");

select * from department;

insert into department values (102,"HR"),(103,"mkt"),(104,"sales"),(105,"finanace");

desc employee;

-- insert values in employee table
insert into employee 
values
(1,"akash","akash@gmail.com",50000,"mumbai",101),
(2,"neha","neha@gmail.com",25000,"thane",101),
(3,"pratik","pratik@gmail.com",100000,"pune",102),
(4,"prachiti","prachiti@gmail.com",16000,"nagpur",103),
(5,"nikhil","nikhil@gmail.com",70000,"pune",105);

select * from employee;
select * from department;

-- delete a specific record(dml)
-- delete from employee where dept_id=101;

delete from department where dept_id=102;

update department set dept_id=107 where dept_id=105;
update department set dept_id=102 where dept_id=105;










