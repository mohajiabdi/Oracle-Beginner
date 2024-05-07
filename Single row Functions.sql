select * from employees;

-- Functions Single row functions

select lower('Hello world') from dual;

select upper('Hello world') from dual;

select initcap('hello world') from dual;


select first_name, length(first_name)as "Length of The Name" from employees;

select substr('Hello world', 6) from dual; 

select substr('Hello Java and SQL', 1,10) from dual;

select instr('Hello World', 'W') from dual;

-- use from in trim method

select trim('H'from 'Hello World') from dual;


select replace('Jack and Jue', 'J', 'Bl') from dual;


select lpad(salary,10, '0') from employees;

select rpad(salary,10, '*') from employees;

-- Concat two Columns...
select concat(first_name, last_name) from employees;

select (first_name ||' '|| last_name) from employees;