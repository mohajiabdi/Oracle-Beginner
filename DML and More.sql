

INSERT INTO departments 
           (department_id, department_name, location_id)
VALUES     (&department_id, '&department_name',&location);


SELECT last_name, job_id, salary, round(months_between(sysdate,hire_date)/12) as "Experience In Years"
from employees
where months_between(sysdate,hire_date)/12 > 5;

