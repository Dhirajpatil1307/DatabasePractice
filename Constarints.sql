-- Constarints Primary key and Foreign key

create table Company
(
id int not null,
name varchar(40) unique,
age int,
primary key (id)
);


select * from Company
insert into Company(id,name,age)values(3,'Anjeneya',18)
insert into Company(id,name,age)values(4,'aditya',10)
insert into Company(id,name,age)values(5,'Rahul',17)
insert into Company(id,name,age)values(6,'Nishant',24)

drop table Company

create table Department
(                                      
dept_name varchar(40),
dept_strength int not null,
id int foreign key references Company(id)
);

insert into Department(dept_name,dept_strength,id)values('Mechanical',100,3)
insert into Department(dept_name,dept_strength,id)values('Electrical',120,4)
insert into Department(dept_name,dept_strength,id)values('Electronics',150,5)
insert into Department(dept_name,dept_strength,id)values('Computer',200,6)

select * from Department
select * from Company


-- Constraints(Identity)
create table demo
(
	id int identity(1,3) primary key,
	emp_name varchar(65),
	emp_salary int

)
select * from demo
insert into demo(emp_name,emp_salary)values('sarvesh',500000)
insert into demo(emp_name,emp_salary)values('nishant',400000)
insert into demo(emp_name,emp_salary)values('Anjeneya',500000)
insert into demo(emp_name,emp_salary)values('Dhiraj',500000)

drop table demo

-- Clauses
create table employee
(
	id int identity(1,3) primary key,
	emp_name varchar(65),
	emp_salary int,
	age int
)
select * from employee
insert into employee(emp_name,emp_salary,age)values('sarvesh',500000,17)
insert into employee(emp_name,emp_salary,age)values('nishant',400000,17)
insert into employee(emp_name,emp_salary,age)values('Anjeneya',500000,19)
insert into employee(emp_name,emp_salary,age)values('Dhiraj',500000,19)


SELECT * FROM employee where emp_salary>400000 
select emp_salary, sum(age) as [total_Age] 
 from employee group by emp_salary;

 drop table employee

 -- Ascending & Decending Order

 select * from employee order by emp_salary asc
 select * from employee order by emp_salary desc

 --