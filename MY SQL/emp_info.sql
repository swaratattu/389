CREATE database emp_info;
use emp_info;
CREATE TABLE employee(id int,
name varchar(20),
mobile_no varchar(20));

desc employee;

-- change and modify (ddl command)
-- change used to change column name 
-- alter to change column name (change clause)
ALTER TABLE employee
CHANGE name ename varchar(20);

-- alter to change datatype of column and change constraints 

ALTER TABLE employee Modify mobile_no bigint unique;
desc employee; 

-- add new column ( email_id)
ALTER TABLE employee add email_id varchar(30);

-- how to add new column in between 
ALTER TABLE employee add lastname varchar(20) AFTER ename;

-- addnew colum in first
ALTER TABLE employee add emp_id int first;

-- add to change the constraint
ALTER TABLE employee add primary key(emp_id);
desc employee;

-- alter with drop
-- to drop column and to drop constraints

ALTER TABLE employee drop primary key;

alter table employee drop id;