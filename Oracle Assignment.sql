    -- Oracle Assignment 

-- Name = Mohamed Mahad Abdi 
-- Id = C1221277
-- Class = Ca223
-- Attendance = 50






-- Question 1: 
SELECT employee_id, first_name||' '||last_name as "Employee Name", job_id, salary, department_id
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Question 2:
SELECT employee_id, first_name||' '||last_name as "Employee Name", job_id, salary, department_id
FROM employees
WHERE salary = (SELECT Min(salary) FROM employees);


-- Question 3: 
SELECT employee_id, first_name || ' ' || last_name AS "Employee Name", job_id
FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE last_name = 'SMITH');



--Quention 4:
SELECT first_name || ' ' || last_name AS "Employee Name", job_id, Salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);



--Question 5: 
SELECT salary
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY
)
ORDER BY salary DESC;



--Question 6: 
SELECT first_name || ' ' || last_name AS "Employee Name", job_id, Salary, department_id
FROM employees
WHERE salary > (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = (
        SELECT department_id
        FROM departments
        WHERE department_name = 'Sales'
    )
);

-- Question 7:
SELECT first_name || ' ' || last_name AS "Employee Name", e.job_id, e.salary, e.department_id
FROM employees e
where e.department_id = (
    select department_id from employees 
    where job_id = (
        select job_id from employees
        where first_name = 'steven'
    )
);



-- Question 8:
SELECT e.first_name || ' ' || e.last_name AS "Employee Name", e.job_id, e.salary, e.department_id
FROM employees e
where e.department_id = (
    select department_id from employees 
    where first_name in ('smith', 'turner')
)
and e.job_id =( 
    select job_id from employees
    where first_name in ('smith', 'turner')
    
);


-- Question 9: 
SELECT first_name || ' ' || last_name AS "Employee Name", e.job_id, e.salary, e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);


--Question 10:
SELECT first_name || ' ' || last_name AS "Employee Name", job_id, Salary,
    ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS "Experience Months"
FROM employees;



-- Question 11:
SELECT first_name || ' ' || last_name AS "Employee Name", job_id, Salary,
    ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/ 12) AS "Experience Years"
FROM employees;


-- Question 12: 
SELECT first_name || ' ' || last_name AS "Employee Name", job_id, Salary,
    ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/ 12) AS "Experience Years"
FROM employees
where ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/ 12) > 27;



--Question 13: 
SELECT COUNT(*) AS employee_count
FROM employees
WHERE salary IS NOT NULL;



--Question 14: 
SELECT 
    SUM(salary) AS "Total Salary" ,
    AVG(salary) AS "Average Salary",
    MAX(salary) AS "Max Salary",
    MIN(salary) AS "Min Salary",
    COUNT(*) AS "Employee Number"
FROM employees
WHERE department_id = 30;


--Question 15:
SELECT department_id, SUM(salary) AS "Total Salary"
FROM employees
WHERE department_id = 20
group by department_id;



--Question 16: 
SELECT department_id, job_id, SUM(salary) AS "Total Salary"
FROM employees
GROUP BY department_id, job_id;


-- Question 17: 
SELECT department_id, COUNT(*) AS "Employee Count"
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 3;



--Question 18: 
SELECT department_id, Sum(salary) AS "Total Salary"
FROM employees
GROUP BY department_id
HAVING sum(salary) > 9000;




/*  
    1-display empno,ename,job,sal and deptno of the
 employee who is earning the maximum salary?



2-display empno,ename,job,sal and deptno of the 
employee who is earning the least salary?


3.display empno,ename,job of all those 
employees who are working on a same job as of SMITH?


4.display ename,job,sal of all those employees whose salary 
is more than the avg salary of all the employees?



5.display first 3 maximum salaries?  SET OPERATORS





6.display ename,job,sal,deptno of all those employees 

whose salary is more than the min salary of Sales Department?


7.display ename,job,sal,deptno of all those employees who are working on a job and deptno as of SMITH?

8.display ename,job,sal,deptno of all those employees who are working 
  on a same job and deptno as of SMITH & TURNER?


9.display ename,job,sal,deptno of all those employees whose
 salary is more than the avg salary of their respective departments?



10.Display ename,job,sal and experience of all the employees in terms of months?


11.Display ename,job,sal and experience of all the employees in terms of years?


12.Display ename,job,sal and experience of all the employees whose exp is more than 27 years;


13.count the number of employees who are being paid with salary?


14.display total salary,avg salary,max salary,min salary,number of employees working in deptno 30?

15.display deptno and total salary of deptno 20?


16.display deptno,job,and total salary being paid on each deptno and job?


17.display deptno and number of employees of all those departments 
where more than 3 employees are working?


18.display deptno and total salary of that department 20 
only if the total salary is more than 9000?


*/



-- Mounted and Unmounted fixing 

alter session set container =orclpdb;

alter pluggable database orclpdb open;
























