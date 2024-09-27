
#Q.1: selects the "Customer Name" and "City" columns from the "Customers" table.
Select CustomerName, City from Customers;

#Q.2: What is the number of different (distinct) customer countries?
Select count(distinct(Country)) from customers;


#Q.3: selects all the customers from the country "London", in the "Customers" table
Select * from customers
where City="London";

#Q.4: Show the Customer information with code C00015
Select * from customer
where CUST_CODE="C00015";

#Q.5: selects all fields from "Customers" where country is " USA" or " India".
select * from customers
where country in ("USA","India");

#Q.6: selects all fields from "Customers" where city is NOT " Bangalore"
select * from  customers
where city<>"Bangalore";

#Q.7: selects all customers from the "Customers" table, sorted DESCENDING by the "city" column.
select * from customers
order by City desc;

#Q.8: finds the biggest amount of order
select max(ORD_AMOUNT) from daysorder;

#Q.9: finds the number of orders
select count(OrderID) from orders;

#Q.10: finds the average amount of all orders.
Select avg(ORD_AMOUNT) from daysorder;

#Q.11: selects all customers with a Customer Name starting with "m".
select * from customer
where CUST_NAME like "m%";

#Q.12: selects all customers with a Customer Name starting with "s".
select * from customer
where CUST_NAME like "s%";

#Q.13: selects all customers that are in " Australia", " USA" or "UK".
select * from customers
where Country in ("Australia","USA","UK");

#Q.14: selects orders in January.
Select * from orders
where month(OrderDate)=1;

#Q.15: selects the customers with amount payment between 1000 and 4000.
Select * from customer
where PAYMENT_AMT between 1000 AND 4000;

#Q.16: selects all orders with customer information.

Select o.OrderID,c.CustomerID,c.CustomerName,c.ContactName,c.Address,c.City,c.PostalCode,c.Country
from orders o
inner join customers c
where o.CustomerID=c.CustomerID;

#Q.17: select all customers, and any orders information they might have.

Select c.CustomerID,c.CustomerName,o.OrderID,o.EmployeeID,o.OrderDate,o.ShipperID
from customers c
inner join orders o
where c.CustomerID=o.CustomerID;
 

#Q.18: lists the number of customers in each country
select count(CUST_Name) as Count,CUST_COUNTRY from customer
group by CUST_COUNTRY;

#Q.19: lists the number of orders sent by each agent.
select count(OrderID),EmployeeID from orders
group by EmployeeID;

select * from orders;

#Q.20:  lists the number of customers in each country. Only include countries with more than 5 customers
select count(CustomerID) as a, Country from customers
group by Country
having a>5;
