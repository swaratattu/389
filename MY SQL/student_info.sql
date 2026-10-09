create database student_db1;

-- to make this databse as default and make it bold
use student_db1;

-- to create table 
create table marks(stud_id int,subject varchar(20),marks int);

-- to see table structure
desc marks;

create table student_info(
stud_id int,
name varchar(30),
age int,
address varchar(40));

desc studinfo;

create table studentinfo(
stud_id int,
name varchar(30),
age int,
address varchar(40));
