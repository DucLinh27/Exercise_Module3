create database bai_1;
drop database bai_1;
create database demo;
use demo;
Create table Linh(
ID int, ho_ten nvarchar(50)
);
insert into Linh(ID,ho_ten)
values
(1,'Linh'),
(2, 'Vuong');
update Linh
set ho_ten = 'Nam' where ID = 1;
alter table Linh
add column address nvarchar(50);
delete from Linh
where ID = 1;
select *from Linh; 






