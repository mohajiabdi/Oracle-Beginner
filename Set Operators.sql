select * from job_history;
select * from Locations;
select * from departments;
select * from Employees;

-- SUbQueries and Set Operators 
-- Made by Mo Haji Abdi


-- Using Union Set Operator
select employee_id, job_id from employees
union 
select employee_id, job_id from job_history;


-- Using Union all Set Operator
select employee_id, job_id from employees
union all
select employee_id, job_id from job_history;


-- Using Intersect Set Operator
select employee_id, job_id from employees
union all
select employee_id, job_id from job_history;


-- Using Minus Set Operator
select employee_id from employees
Minus
select employee_id from job_history;


-- Using Union with null colums Set Operator
select location_id, department_name, to_char(null)"Ware House" from departments
union 
select location_id, to_char(null), State_province from locations;


-- Using Union all with null colums Set Operator
select location_id, department_name, to_char(null)"Ware House" from departments
union all 
select location_id, to_char(null), State_province from locations;



-- Using Intersect with null colums Set Operator
select location_id, department_name, to_char(null)"Ware House" from departments
intersect
select location_id, to_char(null), State_province from locations;



-- Using Minus with null colums Set Operator
select location_id, department_name, to_char(null)"Ware House" from departments
minus
select location_id, to_char(null), State_province from locations;


-- Using Union with null colums using 0 as placeHolder (Set Operators)
select employee_id  "Employee Id",job_id  "Job Id", Salary as Salary from employees
union 
select employee_id, Job_id, 0 from job_history;
