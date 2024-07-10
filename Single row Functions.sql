select * from employees;

-- Functions Single row functions

select lower('HELLO WORLD') from dual;

select upper('Hello world') from dual;

select initcap('hello world ali') from dual;


select first_name, length(first_name)as "Length of The Name" from employees;

select substr('Hello world', 6) from dual; 

select substr('Hello Java and SQL', 1,10) from dual;

select instr('Hello World Wow', 'W') from dual;

SELECT INSTR('Hello, World!', 'o') AS position FROM dual;

-- use from in trim method

select trim('H'from 'Hello World') from dual;


select replace('Jack and Jue', 'J', 'Bl') from dual;


select lpad(salary,10, '*') from employees;

select rpad(salary,10, '*') from employees;

-- Concat two Columns...
select concat(first_name ,last_name) from employees;

select (first_name ||' '|| last_name) from employees;




SELECT employee_id, CONCAT(first_name, last_name) NAME, 
       job_id, LENGTH (last_name), 
       INSTR(last_name, 'a') "Contains 'a'?"
FROM   employees
WHERE  SUBSTR(job_id, 4) = 'REP';




SELECT employee_id,
       first_name || last_name AS NAME,
       job_id,
       LENGTH(last_name),
       CASE WHEN INSTR(last_name, 'a') > 0 THEN 'Yes' ELSE 'No' END AS "Contains 'a'?"
FROM employees
WHERE SUBSTR(job_id, 4) = 'REP';