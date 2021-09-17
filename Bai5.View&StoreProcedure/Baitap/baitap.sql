create database baitapView_StoreProcedure;
use baitapView_StoreProcedure;
/*cau1&2*/
create table products(
	id int primary key,
    productCode varchar(50),
    productName varchar(50),
    productPrice double,
    productAmount int,
    productDescription varchar(50),
    productStatus varchar(255)
);
insert into products
values
(1,	'S10_1','SamSung Galaxy 01',600000,10,'Full new','Good'),
(2,	'S10_2','SamSung Galaxy A12',569911,3,'Full new','Very Good'),
(3,	'IP_01','Iphone 12',2700000,30,'Active','Good'),
(4,	'IP_02','Iphone 13',4551111,10,'Full new','Good'),
(5,	'Oppo_01','Oppo A02',300000,10,'Full new','Quite');
/*Tạo Unique Index trên bảng Products */
alter table products
add unique(productCode);
/*Tạo Composite Index trên bảng Products */
create index index_products on products(productName , productPrice);
/*Sử dụng câu lệnh EXPLAIN*/
explain select * from products
where productStatus = 'Good';
/*Tạo view*/
create view products_view as
select productCode, productName, productPrice, productStatus  from products;
select * from products_view;
/*sửa đổi view*/
create or replace view products_view as
select productCode, productName, productPrice, productStatus  from products
where productStatus = 'Good';
select * from products_view;
/*Xóa view*/
drop view products_view;
/*Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product*/
DELIMITER $$
create procedure findAllProducts()
begin
	select * from products;
end $$
DELIMITER ;
call findAllProducts();
/*Tạo store procedure thêm một sản phẩm mới*/
DELIMITER $$
create procedure add_product (in id int , productCode  varchar(50) , productName varchar(50), productPrice double, productAmount int ,
		productDescription varchar(50) , productStatus varchar(255))
begin
	insert into products values (id,productCode,productName,productPrice,productAmount,productDescription,productStatus);
end $$
DELIMITER ;
call add_product(6,'N_01','Nokia_Shiba',6999494,3,'Full Box','No Hope');
call add_product(7,'Oppo_02','Oppo_A03S',751100,3,'Full Box','Good');
/*Tạo store procedure sửa thông tin sản phẩm theo id*/
DELIMITER $$
create procedure edit_product(in id int , productPrice double)
begin
	update products set products.productPrice = productPrice
    where products.id = id;
end $$
DELIMITER ;
call edit_product(1,609555);
/*Tạo store procedure xoá sản phẩm theo id*/
DELIMITER $$
create procedure delete_product(in id int)
begin
	delete products from products
    where products.id = id;
end $$
DELIMITER ;
call delete_product(7);