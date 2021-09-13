/*Thuc hanh truy van du lieu nang cao */
select productCode, productName, buyprice, quantityInStock 
from products
where buyprice > 56.76 and quantityInStock > 10;
select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';
/* Thuc hanh truy van du lieu tu nhieu bang*/
select customers.customerNumber, customerName, phone, paymentDate, amount from customers
inner join payments
on customers.customerNumber = payments.customerNumber
where city = 'Las Vegas';
select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber ;
select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;
/*Thuc hanh cau lenh Group by */
select status from orders 
group by status;
select status, COUNT(*) as 'So luong status'
from orders
group by status;
select status, sum(quantityOrdered * priceEach) as amount
from orders 
inner join products_have_orders on orders.ordernumber = products_have_orders.ordernumber
group by status;
select orderNumber, sum(quantityOrdered * priceEach) as total
from products_have_orders
group by orderNumber;
select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
from orders 
inner join products_have_orders on orders.orderNumber = products_have_orders.orderNumber
where status = 'shipped'
group by year
having year > 2003;


