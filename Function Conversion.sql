
SELECT last_name,hire_date,
       TO_CHAR(hire_date, 'fmDD Month YYYY')
       AS HIREDATE
FROM   employees;



SELECT TO_CHAR(salary, 'L99,999.00') SALARY
FROM   employees
WHERE  last_name = 'Ernst';


SELECT last_name,  salary, commission_pct,
       NVL2(commission_pct, 
            'SAL+COMM', 'SAL') income
FROM   employees WHERE department_id IN (50, 80);



SELECT last_name, salary, NVL(commission_pct, 0),
   (salary*12) + (salary*12*NVL(commission_pct, 0)) AN_SAL
FROM employees;


SELECT first_name, LENGTH(first_name) "expr1", 
       last_name,  LENGTH(last_name)  "expr2",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM   employees;


SELECT first_name, LENGTH(first_name) "expr1", 
       last_name,  LENGTH(last_name)  "expr2",
       nvl(NULLIF(first_name,last_name),'Not Equal') result
FROM   employees;


Select TO_CHAR(Sysdate, 'fmDD MONTH YYYY')from dual;

select to_char(sysdate, 'fmdy/month/yy') from dual;

select to_char(sysdate, 'Ddspth Month yyyy') from dual;


