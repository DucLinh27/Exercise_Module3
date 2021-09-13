create database baitap;
use baitap;
create table customers(
	customerNumber  int not null auto_increment primary key,
    customerName  varchar(50) not null,
    contactLastName  varchar(50) not null,
    contactFirstName  varchar(50) not null ,
    phone  varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    postalCode varchar(15) not null,
    country varchar(50) not null,
    creditLimit float,
    employeeNumber int,
    foreign key(employeeNumber) references employees(employeeNumber)
);
create table orders(
	orderNumber  int not null primary key,
    orderDate datetime not null,
    requiredDate datetime not null,
    shippedDate datetime not null,
    status_order  varchar(15) not null,
    comments text,
    quantityOrdered int not null,
    priceEach float not null,
    customerNumber int,
    foreign key(customerNumber) references customers(customerNumber),
    saleRepEmployee int,
    foreign key(saleRepEmployee) references employees(employeeNumber)
);
create table payments(
	customerNumber int not null primary key,
    checkNumber varchar(50) not null,
    paymentDate datetime not null,
    amount float not null,
    foreign key(customerNumber) references customers(customerNumber)
);
create table products(
	productCode  varchar(15) not null primary key,
    productName  varchar(70) not null,
    productScale  varchar(10) not null,
    productVendor  varchar(50) not null,
    productDescription  text not null,
    quantityInStock  int not null,
    buyPrice  float not null,
    MSRP float not null,
    productLine varchar(50),
    foreign key(productLine) references productLines(productLine)
);
create table productLines(
	productLine varchar(50) primary key not null,
    textDescription text,
    image  varchar(255)
);
create table employees(
	employeeNumber  int primary key not null,
    lastName varchar(50) not null,
    firstName varchar(50) not null,
    email varchar(100) not null,
    jobTitle varchar(50) not null,
    reportTo int,
    foreign key(reportTo) references employees(employeeNumber),
    officeCode varchar(100),
    foreign key(officeCode) references offices(officeCode)
);
create table offices(
	officeCode  varchar(100) not null primary key,
    city varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50) not null,
    state varchar(50) not null,
    country varchar(50) not null,
    postalCode varchar(15) not null
);
create table products_have_orders(
	order_number int,
    productCode varchar(15),
    primary key(order_number , productCode),
    foreign key(order_number) references orders(orderNumber),
    foreign key(productCode) references products(productCode)
);
