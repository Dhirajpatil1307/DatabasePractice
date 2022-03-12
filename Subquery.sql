------------------------- Sub Query -----------------------------

select * from Employee_Details 
where Emp_ID IN (select Emp_ID from Company where Comp_Name = 'TCS' or Emp_ID >= 3)
 