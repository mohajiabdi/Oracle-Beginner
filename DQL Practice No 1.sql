Show User; 


-- Select 

select * from employees;

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
--where salary >10000
order by 3
offset  2 rows
fetch first 2 rows with ties;

-- Part two


select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
--where salary >10000
order by salary;


select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees;


-- Uisng Distinct Keyword

select distinct salary,first_name from employees;


-- Using Between 

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where salary between 2100 and 10000
order by salary;


-- using In()

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where salary in(2200,10000, 14000)
order by salary;
