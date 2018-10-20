select * from employees;

select * from offices;

#question 2, employee working out of Paris which officeCode = 4
select employeeNumber, lastName,firstName, extension,officeCode 
	from employees where officeCode != 4;
    
select * from products order by MSRP;

#question 4, select minprice product
select  productCode,productName,productVendor, buyPrice, min(MSRP) from products;


select * from customers;


#question 6, list country and number of customer who have > 5 customers
select country, count(customerNumber) as 'Number of customers' from customers group by country order by 2 desc;

#question 8, there is report to code in employee table, but that key not in any other table to find which code is for Anthony Bow

#trying to find by displaying all table
select * from productlines;
select * from orders;
select * from orderdetials;
select * from payments;
select * from products;

#question 10, display classic cars from the 1950's 
update products set
			productYear = Trim(Left(productLine, InStr(productLine, " ") - 1));
select  left(productName, CHARINDEX(' ',productName) - 1)
from products;
select productName, productLine as 'Classic cars' from products where productLine like '%Classic Cars%';