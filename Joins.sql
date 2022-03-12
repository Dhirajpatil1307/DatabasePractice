 ----------------------------- Joins --------------------------------

create table Customers
(
  Customer_ID int identity(1,1) PRIMARY KEY,
  Customer_Name varchar(26) not null,
  Customer_Number int not null,
  Customer_City varchar(45)
)

insert into Customers values
('manish',687546940,'Gujrat'),
('anjaneya',674564894,'Mumbai'),
('tushal',684573047,'Orissa'),
('prasanna',763271408,'Kerla'),
('debdut',863021455,'Mumbai'),
('Lalit',954781234,'Chennai')

insert into Customers values
('Atul',954694108,'Pune')

select * from Customers

create table Order_Details
(
Order_ID int identity(1021,1) PRIMARY KEY,
Customer_ID int not null,
Order_Date date
)

insert into Order_Details values
(2,'2021-03-04'),
(5,'2021-02-25'),
(10,'2021-03-09'),
(1,'2021-02-27'),
(3,'2021-03-01'),
(11,'2021-02-21')

select * from Order_Details

----------------------------- Inner Join ----------------------------

Select * from Order_Details INNER JOIN Customers ON Order_Details.Customer_ID=Customers.Customer_ID

----------------------------- Left Outer Join -----------------------

Select Order_ID, Customer_Name, Order_Date, Customer_City
from Order_Details LEFT JOIN Customers ON Order_Details.Customer_ID=Customers.Customer_ID

Select Order_ID, Customers.Customer_Name, Order_Date, Customer_City
from Order_Details  LEFT JOIN Customers  ON Order_Details.Customer_ID=Customers.Customer_ID where Order_ID > 1023
ORDER BY Customers.Customer_ID

----------------------------- Right Outer Join --------------------------

Select Order_ID, Customer_Name, Order_Date
from Order_Details RIGHT JOIN Customers ON Order_Details.Customer_ID=Customers.Customer_ID

----------------------------- Full Outer Join ----------------------------

Select Order_ID, Customer_Name, Order_Date, Customer_City
from Order_Details FULL OUTER JOIN Customers ON Order_Details.Customer_ID=Customers.Customer_ID

----------------------------- Self Join -----------------------------

select A.Customer_Name AS Customer_Name1, B.Customer_Name AS Customer_Name2, A.Customer_City
from Customers A, Customers B
where A.Customer_ID <> B.Customer_ID
AND A.Customer_City = B.Customer_City
ORDER BY A.Customer_City

select A.Order_ID AS ID, B.Order_Date AS Dates
from Order_Details A, Order_Details B
where A.Order_ID > B.Order_ID

------------------------------- Cross Join -------------------------------------

select Customer_Name, Order_ID
from Customers
CROSS JOIN Order_Details

select Customer_Name, Order_ID
from Customers
CROSS JOIN Order_Details
where Customers.Customer_ID=Order_Details.Customer_ID

----------------------------- Multiple Joins --------------------------------------

create table Delivery
(
 Delivery_ID int identity (101,1) PRIMARY KEY,
 Customer_ID int not null,
 Delivery_Address varchar(255) not null,
 Delivery_Status varchar(25) not null,
)

insert into Delivery(Customer_ID,Delivery_Address,Delivery_Status) values
(2,'Mumbai','Delivered'),
(5,'Mumbai','Delivered'),
(10,'Patna','Not Delivered'),
(1,'Pune','Delivered'),
(3,'Delhi','Not Delivered'),
(11,'Kolkata','Not Delivered'),
(4,'Hyderabad','Delivered')

select * from Delivery

select  Customer_Name, Customer_City, Delivery_Status, Delivery_Address
from Customers as c
INNER JOIN
Order_Details as o
on c.Customer_ID = o.Customer_ID
INNER JOIN
Delivery as d
on o.Customer_ID = d.Customer_ID

select Customer_Name, Delivery_Status, Delivery_Address
from Customers as c
INNER JOIN
Order_Details as o
on c.Customer_ID = o.Customer_ID
INNER JOIN
Delivery as d
on o.Customer_ID = d.Customer_ID 
where c.Customer_City = 'Mumbai'

select c.Customer_ID , c.Customer_Name, Delivery_Status, Delivery_Address,Order_Date
from Customers as c
INNER JOIN
Order_Details as o
on c.Customer_ID = o.Customer_ID
INNER JOIN
Delivery as d
on o.Customer_ID = d.Customer_ID 
where c.Customer_ID between 2 and 5 order by c.Customer_ID

select Customer_Name, Customer_Number, Order_Date, Delivery_Status
from Customers as c
INNER JOIN
Order_Details as o
on c.Customer_ID = o.Customer_ID
RIGHT JOIN
Delivery as d
on o.Customer_ID = d.Customer_ID
