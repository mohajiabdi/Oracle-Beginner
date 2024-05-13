-- Made By Mo Haji Abdi Raage 
-- Software Developer!

-- Group Functions 

select max(salary), min(salary), avg(salary),Sum(salary) from employees; -- Get the Max,Min,Avg, Sum of salary..

select max(Hire_date) from employees; -- get the last Hired Employee date
select min(Hire_date) from employees; -- Get the First Hired Employee

select round(stddev(salary),0), round(variance(salary),0) from employees; -- its used for Statistics

select count(employee_id) from employees; -- get all employee 
select count(department_id) from employees; -- get all department ids except the null value
select count(distinct department_id) from employees; -- get distinct Department ids Means Get Every Duplicate Only one.
select count(nvl(department_id,0)) from employees; -- get all Department ids, and if there is null value Assign the value of the null to 0 and COunt it..
select count(nvl(commission_pct,0)) from employees; -- get all Commission Pct, and if there is null value Assign the value of the null to 0 and COunt it...

select avg(nvl(commission_pct,0)) from employees; -- get all Commission Pct, and if there is null value Assign the value of the null to 0 and Show avg of all...


-- Group By Clause

select department_id, sum(salary)as "Total Salary" from employees
Group by department_id;



select department_id, sum(salary)as "Total Salary" from employees
Group by department_id
order by department_id;

select department_id,job_id, sum(salary)as "Total Salary" from employees
Group by department_id,job_id
order by department_id;

select department_id,job_id, sum(salary)as "Total Salary" from employees
Group by department_id,job_id
having sum(salary)<10000
order by department_id;

select department_id,job_id, sum(salary)as "Total Salary" from employees
where job_id not like '%REP%'
Group by department_id,job_id
having sum(salary)>10000
order by department_id desc;


select * from employees;
