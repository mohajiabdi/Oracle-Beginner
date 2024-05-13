-- Made By Mo Haji Abdi Raage 
-- Software Developer!

-- SIngle Row Functions 

-- Numbers Signle row Functions

Select * from employees;

select round(45.923, 2), round(45.923, 0), round(45.923,-1) from dual;

select trunc(45.923, 2), trunc(45.923, 0), trunc(45.923,-1) from dual;

select first_name,salary,mod(salary, 5000) from employees;


-- Date Single Row Functions

select sysdate from dual;

select current_date from dual;

-- show upto the milliseconds
select systimestamp from dual;


select (sysdate - Hire_date)/7 as Weeks from employees;

-- with Round or Trunc
select round((sysdate - Hire_date)/7,2) as Weeks from employees;
select first_name,round((sysdate - Hire_date)/7,0) as Weeks from employees; -- no Fractions

-- Using Trunc fucntions
select trunc((sysdate - Hire_date)/7,2) as Weeks from employees;
select first_name,trunc((sysdate - Hire_date)/7,0) as Weeks from employees; -- no Fractions


-- More Date single row functions
select add_months(sysdate, 5) from dual; -- add five months
select add_months(sysdate, 36) from dual;  -- Add Three Years using months 36 months == 3 Yeras
select add_months(sysdate, -5) from dual; -- Minus Five months or go back five months

Select Months_between(sysdate, Hire_date) from employees; -- With Fractions(Decimal)..
Select round(Months_between(sysdate, Hire_date),0) from employees;  -- Remove Decimal points Using Round function
Select Trunc(Months_between(sysdate, Hire_date),0) from employees;  -- Remove Decimal points Using Trunc function

Select next_day(sysdate, 'Friday') from dual; -- Using Day name, it will show The Next Friday Full date 
Select next_day(sysdate, 1) from dual; -- Using Day Number, Day1 = Sunday, Day2 = Monday and so On up to Day7 = Saturday, This will Show Next Sunday Full date..
Select next_day(sysdate, 2) from dual; -- This Will SHow NExt Monday Full date

select last_day(sysdate) from dual; -- Show The last day of the Month
select last_day(to_date('01/jul/23','dd/mon/yy')) from dual; -- Using To_date function to make sample date..

select round(sysdate, 'month') from dual; -- rounds the month, if the month is less than 15 it will round it to First day of the month..
select round(sysdate, 'year') from dual;  -- Rounds The Year to January First if the month is less than july
select round(to_date('01/jul/23','dd/mon/yy'), 'Year') from dual; -- Rounds the year to the next Year because the month is July..
select round(to_date('30/jun/23','dd/mon/yy'), 'Year') from dual; --Rounds to january Firts 2023 because Jun30 is Still less than July First..

select trunc(sysdate, 'month') from dual; -- Always Rounds to the first of the month
select trunc(to_date('01/jul/23','dd/mon/yy'), 'Year') from dual; -- Always round to the fist day of the year 
select trunc(to_date('30/jun/23','dd/mon/yy'), 'Year') from dual; -- Always ROunds to first day of the year





