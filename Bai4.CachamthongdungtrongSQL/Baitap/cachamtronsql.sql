create database baitapham;
use baitapham;
create table students(
ID int(50) not null,
TEN varchar(50),
TUOI int(255),
KHOAHOC varchar(50),
SOTIEN int(50)
);
insert into students
values
(1,'Hoang',21,'CNTT',400000),
(2,'Viet',19,'DTVT',320000),
(3,'Thanh',18,'KTDN',400000),
(4,'Nhan',19,'CK',4500000),
(5,'Huong',20,'TCNH',500000),
(5,'Huong',20,'TCNH',500000);
select*from students;
select count(TEN) 
from students;
select * 
from students
limit 5,6;

select TEN
 from students
 limit 5;
 select sum(SOTIEN) from students where TEN = 'Huong';
  select count(TEN) from students where TEN = '%Huong%';
  select distinct TEN from students;
 
 
 

