use database_mysql;
/*cau2*/
select * from customers
where customer_name like 'h%' or customer_name like 't%' or customer_name like 'k%'  and length(customer_name) < 15;
/*cau3*/
select * from customers
where ((year(now())-year(customer_birthday)) between 18 and 50)
and
 customer_address = 'Đà Nẵng' or  customer_address = 'Quảng Trị';
 /*cau4*/
select customers.customer_name , count(contact_id) as times from customers 
inner join contact on customers.customer_id = contact.customer_id inner 
join customer_type on customers.customer_type_id = customer_type.customer_type_id 
where customer_type_name like 'Diamond' group by customers.customer_id order by count(contact.customer_id) asc;
 /*cau5*/
select customers.customer_id,customer_name,contact.contact_start_date,contact.contact_end_date, (attach_service.attach_service_cost*contact_detail.amount+rent_type.rent_type_price) as 'Tong tien',contact.contact_id,services.service_name from contact
inner join contact_detail on contact_detail.contact_id = contact_detail.contact_id
left join attach_service on contact_detail.attach_service_id = contact_detail.attach_service_id
left join services on services.service_id = contact.service_id
left join rent_type on rent_type.rent_type_id = services.rent_type_id
left join customers on customers.customer_id = contact.customer_id
group by contact_id;
 /*cau6*/
select services.service_id,services.service_name,services.service_area,rent_type.rent_type_price,service_type.service_type_name,month(contact_start_date) 'month',year(contact_start_date) 'year' from contact 
inner join services on contact.service_id = services.service_id
inner join rent_type on rent_type.rent_type_id = services.rent_type_id
left join service_type on services.service_type_id =  service_type.service_type_id
where contact_start_date between '2019-01-01' and '2019-03-31';
 /*cau7*/
select services.service_id,services.service_name,services.service_area,service_type.service_type_name,services.service_max_people,rent_type.rent_type_price from services
inner join service_type on services.service_type_id = service_type.service_type_id
left join rent_type on rent_type.rent_type_id = services.rent_type_id 
where not exists (
	select contact.contact_id
    from contact 
    where year(contact.contact_start_date) = '2019' and contact.service_id=services.service_id
)and exists (
	select contact.contact_id
    from contact
    where year(contact.contact_start_date) = '2018' and contact.service_id=services.service_id);

 /*cau8*/
 select distinct customers.customer_name from customers;
select customers.customer_name from customers
group by customer_name;
select customers.customer_name
from customers
union
select customer_name
from customers;
/*cau10*/
select temp.month,count(contact.contact_start_date) as 'khach hang dk',sum(contact.contact_total_money) as 'Tong_tien' from
(select 1 as month
union select 2 as month
union select 3 as month
union select 4 as month
union select 5 as month
union select 6 as month
union select 7 as month
union select 8 as month
union select 9 as month
union select 10 as month
union select 11 as month
union select 12 as month) as temp 
left join contact on month(contact.contact_start_date)=temp.month
left join customers on customers.customer_id=contact.customer_id
where year(contact.contact_start_date)='2019' or year(contact.contact_start_date) is null or month (contact.contact_start_date) is null
group by temp.month
order by temp.month;
/*cau10*/
select contact.contact_id,count(contact_detail.contact_detail_id) as 'So luong' from contact
inner join contact_detail contact_detail on contact_detail.contact_id = contact.contact_id
group by contact.contact_id;
/*cau11*/
select attach_service.attach_service_id,attach_service.attach_service_name,attach_service.attach_service_cost,attach_service.attach_service_unit,attach_service.attach_service_status from customers
inner join contact on contact.customer_id = customers.customer_id
inner join customer_type on customer_type.customer_type_id = customers.customer_type_id 
inner join contact_detail on contact_detail.contact_id = contact.contact_id
inner join attach_service on attach_service.attach_service_id = contact_detail.contact_detail_id
where (customer_type_name = 'Diamond' and (customer_address = 'Vinh' or customer_address = 'Quãng Ngãi'));
/*cau12*/
select contact.contact_id,employees.employee_name as 'Ten NV',customers.customer_name as 'Ten KH',customers.customer_phone,services.service_name,count(contact_detail.contact_detail_id) as'SoLuongDichVuDikem',contact.contact_total_money from contact
inner join customers on customers.customer_id = contact.customer_id
inner join employees on employees.employee_id = contact.employee_id
inner join services on services.service_id =contact.service_id
inner join contact_detail on contact_detail.contact_id = contact.contact_id
inner join attach_service on attach_service.attach_service_id = contact_detail.attach_service_id
where
 exists(
	select contact.contact_id
    where contact.contact_start_date between "2019-09-01" and "2019-12-31"
)
and not exists (
	select contact.contact_id
    where contact.contact_start_date between "2019-01-01" and "2019-06-30"
);
/*cau14*/
select contact.contact_id,service_type.service_type_name,attach_service.attach_service_name,count(contact_detail.attach_service_id) as 'SoLanSuDung' from contact
inner join contact_detail on contact_detail.contact_id = contact.contact_id
inner join attach_service on contact_detail.attach_service_id = attach_service.attach_service_id
inner join services on services.service_id = contact.service_id
inner join service_type on service_type.service_type_id = services.service_type_id 
group by attach_service.attach_service_name
having SoLanSuDung =3;
/*cau15*/
select employees.employee_id,employee_name,employee_phone,employee_address,education.education_id,division.division_name, count(contact.employee_id) as 'soLan' from employees
inner join contact on contact.employee_id = employees.employee_id
inner join education on education.education_id = employees.education_id
inner join division on division.division_id = employees.division_id
 where contact.contact_start_date between "2018-01-01" and "2019-12-31"
 group by employees.employee_id
 having soLan >=4;
/*cau16*/
delete from employees where not exists(
	select employees.employee_id
    from contact
    where contact.contact_start_date between "2017-01-01" and "2019-12-31" and contact.employee_id = employees.employee_id
 );
 /*cau17*/
  update customers
inner join customer_type on customer_type.customer_type_id = customers.customer_type_id
inner join contact on contact.customer_id = customers.customer_id
set customers.customer_type_id="Diamond"
where (customer_type.customer_type_name ="Platinium") and (year(contact.contact_start_date)=2019) and (contact.contact_total_money>10000);
/*cau18*/
SET SQL_SAFE_UPDATES = 0;
delete from customers
where customer_type_id in (
select customer_type_id
from contact
where year(contact_start_date) <= 2016);
SET SQL_SAFE_UPDATES = 1;
 /*cau20*/
select employees.employee_id,employee_name,employee_email,employee_phone,employee_birthday,employee_address, "nhanvien" as FromTable
from employees
union all
select customers.customer_id,customers.customer_name, customers.customer_mail,customers.customer_phone,customers.customer_birthday,customers.customer_address, "khachhang" asFromTable
from customers;
/*cau21*/
 create view V_nhanvien as
select contact.contact_start_date,employees.employee_id,employees.employee_name,employee_birthday,employees.employee_salary,employees.employee_email,employees.employee_phone from contact
inner join employees on employees.employee_id = contact.employee_id
where 
exists(
	select contact.contact_id
  where  contact_start_date = '2019-12-12' and employee_address = 'Quãng Ngãi'
);
select * from v_nhanvien;
 /*cau22*/
update employees set employee_address ='Đà Nẵng' where employees.employee_id = '1';
 /*cau23*/
 ALTER TABLE customers ADD INDEX customers(customer_id);


 