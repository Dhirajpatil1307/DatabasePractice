----------------------- Having, Group By, Union and Order By  -----------------------
create table Company
(
Comp_ID int not null,
Emp_ID int not null,
Comp_Name varchar(40) unique,
Comp_City varchar(40),
Company_Turnover int,
primary key (Comp_ID)
);

select * from Company
insert into Company(Comp_ID, Emp_ID, Comp_Name, Comp_City, Company_Turnover)values(3, 1, 'TCS','Mumbai',10000000)
insert into Company(Comp_ID, Emp_ID, Comp_Name, Comp_City, Company_Turnover)values(4, 2,'Capgemini','Delhi',50000000)
insert into Company(Comp_ID, Emp_ID, Comp_Name, Comp_City, Company_Turnover)values(5, 3,'KPMG','Bengaluru',9000000)
insert into Company(Comp_ID, Emp_ID, Comp_Name, Comp_City, Company_Turnover)values(6, 4, 'Mindtree','Pune',60000000)

select COUNT(Comp_ID) AS Comman_ID,Comp_City
from Company
GROUP BY Comp_City
HAVING COUNT(Comp_ID) >= 1;

select COUNT(Comp_ID) AS Total_Company,Comp_City
from Company where Comp_City = 'Mumbai'
GROUP BY Comp_City

Select * from Company ORDER BY (Comp_ID) DESC

create table Department
(                                      
Department_ID int,
Dept_Name varchar(15),
Department_Access varchar(10)
);

Select * from Department

insert into Department(Department_ID, Dept_Name, Department_Access)values(101,'HR','Everyone')
insert into Department(Department_ID, Dept_Name, Department_Access)values(102,'Engineering','No_One')
insert into Department(Department_ID, Dept_Name, Department_Access)values(103,'Admin','Everyone')
insert into Department(Department_ID, Dept_Name, Department_Access)values(104,'Housekeeping','No_one')


alter table Department add Comp_Name varchar(25)

update Department set Comp_Name = 'TCS' where Department_ID = 101
update Department set Comp_Name = 'Mindtree' where Department_ID = 102
update Department set Comp_Name = 'Bridgelabz' where Department_ID = 103
update Department set Comp_Name = 'KPMG' where Department_ID = 104

select Comp_Name from Company
UNION ALL
Select Comp_Name from Department
ORDER BY Comp_Name

