create database BtQLTV;
use BtQLTV;
create table students(
	idCode int primary key,
    nameStudent varchar(50),
    birthday datetime,
    address varchar(255),
    email varchar(255),
    phone varchar(15),
    image varchar(255)
);
create table category(
	categoryCode int primary key,
    typeBook varchar(50)
);
create table books(
	bookCode int primary key,
    bookName varchar(50),
    bookVendor varchar(50),
    author varchar(50),
    yearOfManufacture datetime,
    timeManufacture int,
    price float,
    image varchar(255),
    categoryCode int,
    foreign key(categoryCode) references category(categoryCode)
);
create table borrowOrder(
	bookCode int,
    idCode int,
    date_borrow datetime,
    date_pay datetime,
    `status` varchar(255),
    primary key(bookCode , idCode),
    foreign key(bookCode) references books(bookCode),
    foreign key(idCode) references students(idCode)
);
insert into books
values
(1,'Harry Potter','Robets','khaled hosseini','1998-5-1', 5,1000,'jpg',1),
(2,'doraemon','japan','Hiroshi Fujimoto','1983-05-10', 7,2000,'png',1),
(3,'connan','hugo','Aoyama Gosho','1993-04-11', 3,3000,'raw',2),
(4,'naruto','phương nam','Aoyama Gosho','1990-02-14', 4,5000,'raw',3),
(5,'onepiece','fahasha','Aoyama ','1994-05-10', 3,1500,'jpeg',4);
insert into students
values
(1,'Vuong', '1995-10-20','Huế', 'vuong@gmail.com', '095544343', 'png'),
(2,'Tuan', '1991-07-12', 'TPHCM','tuan@gmail.com', '095544342', 'raw'),
(3,'Nam', '1992-02-10', 'Quảng Ngãi', 'nam@gmail.com', '095544111', 'jpeg'),
(4,'Linh', '1989-05-01', 'Da Nang', 'linh@gmail.com', '095544333', 'png'),
(5,'Lan', '1989-05-01','Ha Noi', 'lan@gmail.com', '095544333', 'png');
insert into category
values
(1,'Tieu thuyet'),
(2,'Vien Tuong'),
(3,'Tai lieu'),
(4,'Truyen Tranh'),
(5,'Tu Nguyen');
insert into borrowOrder
values
(1,1,'2021-07-09','2021-07-12','new'),
(2,2,'2021-05-04','2021-05-09','new'),
(3,3,'2021-06-10','2021-06-15','new'),
(4,4,'2021-01-01','2021-01-11','new'),
(5,5,'2021-04-02','2021-04-12','new');