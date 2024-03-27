-- select employee_id as "#emp" ,first_name,last_name,hire_date as "joining date"
-- from employees;

-- select 'The last name is '|| last_name || ', The Job id is ' || job_id
-- from employees;

-- select table_name from user_tables;


select last_name,JOB_ID, MANAGER_ID
from employees
where MANAGER_ID IS NULL
ORDER BY MANAGER_ID DESC;



desc employees;