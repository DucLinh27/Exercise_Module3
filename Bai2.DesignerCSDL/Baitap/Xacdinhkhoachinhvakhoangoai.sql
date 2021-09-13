create database thietkeCSDL;
use thietkeCSDL;
create table customers(
customersNumber int (50) AUTO_INCREMENT PRIMARY KEY,
NameCustomers  varchar(50) not null,
Email  varchar (50) not null,
PhoneNumbers  int(50) not null
);
create table accounts(
accountNumbers int (50) auto_increment primary key,
Kindofaccount varchar (50) not null,
opendays datetime(50) null,
FOREIGN KEY (customersNumbers) REFERENCES customers(customersNumber)
);
create table transactions(
transactionsNumbers int (50) auto_increment primary key,
moneys int(50) not null,
times datetime(50) not null,
FOREIGN KEY (accountNumbers) REFERENCES accounts(accountNumbers)
);
