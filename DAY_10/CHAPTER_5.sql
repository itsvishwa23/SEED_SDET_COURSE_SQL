-- desc employees;

select LAST_NAME ||' earns monthly salary of '|| SALARY || ' and expects ' || salary*2 as Appraised_Salary 
from employees;

-- SELECT LAST_NAME,HIRE_DATE,NEXT_DAY(ADD_MONTHS(HIRE_DATE,5),'MONDAY') AS salary_review_date
-- FROM employees;

-- select LAST_NAME,nvl(to_char(COMMISSION_PCT),'NO COMMISSION') as Comm
-- from employees
-- fetch first 1000 rows only;


-- select first_name,to_char(hire_date,'Day')
-- from employees 
-- where first_name like'David';

-- desc jobs;


-- SELECT last_name, TO_CHAR(hire_date, 'HH24:MI:SS AM') 
-- FROM employees
-- where last_name='Taylor';

desc employees;

select round((sysdate-hire_date)/30) as months_worked
from employees
where job_id='AD_PRES';

-- select LAST_NAME,nvl(COMMISSION_PCT,0) as Comm
-- from employees;



-- select to_char(hire_date,'Q') from employees;


--  SELECT LAST_NAME,HIRE_DATE,to_char(NEXT_DAY(ADD_MONTHS(HIRE_DATE,5),'MONDAY'),'day,dd,month,yyyy') AS salary_review_date
--  FROM employees;


-- select to_char(add_months(hire_date,3),'mon')as new from employees;