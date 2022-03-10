-- Create a database
create database SQL_Practice

-- View database name
use SQL_Practice

-- Create table in the database
create table Employee
(
Emp_ID int identity(1,1) primary key,
Emp_Name varchar(25) not null,
Emp_Address varchar(60) not null,
Emp_PhoneNumber int,
Emp_Salary money
)

-- View AddressBook table
select * from Employee

-- Drop table
drop table Employee

-- Create table in the database
create table Employee_Details
(
Emp_ID int identity(1,1) primary key,
FirstName varchar(25) not null,
LastName varchar(25) not null,
Address varchar(60) not null,
PhoneNumber varchar(12) not null,
Salary money
)

-- Inserting data in table
insert into Employee_Details(FirstName,LastName,Address,PhoneNumber,Salary) values
('Raj','Kadu','Deep Ambe Uran, India','9834728136',950000),
('Nishant','Gharat','Jnpt Uran,Maharashtra','9812027438',730000),
('Vaibhav','Gharat','Panvel ,Maharashtra','7283256390',550000),
('Mayur','Patil','ONGC Coloy, Maharashtra','7821902345',490000),
('Kshitij','Tandel', 'Raigad, Maharashtra','9812643627',320000),
('Akshay','Bagal','Chirner, Pune','9823627180',650000)


-- View table
select * from Employee_Details

-- Edit existing contact using persons's name
update Employee_Details
set PhoneNumber = '9843211111',Salary='1000000' where FirstName = 'Raj'

-- Delete data
delete Employee_Details
where Emp_ID = 5;

-- Add Extra columns
alter table Employee_Details add Email varchar(25)

update Employee_Details set Email = 'rajkadu@yahoo.in' where Emp_ID = 1
update Employee_Details set Email =  'nishantgharat@yahoo.com'where Emp_ID = 2
update Employee_Details set Email = 'Vaibhav727@gmail.com' where Emp_ID = 3
update Employee_Details set Email = 'mayur197@yahoo.com' where Emp_ID = 4
update Employee_Details set Email = 'kshitijtandel@gmail.com' where Emp_ID = 5
update Employee_Details set Email = 'akshaybagal@hotmal' where Emp_ID = 6

insert into Employee_Details values
('Sarvesh','Gharat','JNPT Township, Naughar India','45667365277','940000','sarveshgharat@yahoo.in')

update Employee_Details set Email = 'yesyoucan@yahoo.com' where Emp_ID = 7

delete from Employee_Details where Emp_ID = 7

-- Rename the Column name
EXEC sp_rename 'Employee_Details.Email', 'Email_Id','column'

-- Remove the record into the table
truncate table Employee_Details