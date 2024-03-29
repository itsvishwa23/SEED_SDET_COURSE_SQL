-- select max(salary)as max_salary,min(salary) as min_salary, round(avg(salary)) as avg_salary 
-- from employees;

-- select count(employee_id) from employees;

-- select job_id,max(salary)as max_salary,min(salary) as min_salary, round(avg(salary)) as avg_salary 
-- from employees
-- group by job_id;

-- select job_id,count(employee_id) 
-- from employees
-- group by job_id;

-- select &&job_var,count(employee_id) 
-- from employees
-- group by job_var;

-- undefine job_var;

-- select count(manager_id) from employees;

-- select max(salary),min(salary),max(salary)-min(salary)as difference from employees;

-- select department_id,count(employee_id) from employees
-- group by department_id;

-- select department_id,count(employee_id) from employees
-- group by department_id
-- having count(employee_id)>7;


-- select manager_id,min(salary)
-- from employees
-- group by manager_id 
-- fetch first 1 rows only;


-- select manager_id,min(salary)
-- from employees
-- where manager_id is not null
-- group by manager_id;


-- select manager_id,min(salary)
-- from employees
-- group by manager_id
-- having min(salary)<6000
-- order by min(salary) desc;



-- select department_id,avg(salary) as avg_sal
-- from employees
-- group by department_id
-- order by avg(salary) desc
-- fetch first 1 rows only;


-- SELECT job_id,
-- CASE
--     WHEN job_id=lower('AD_PRES')     THEN 'Grade is A'
--     WHEN job_id='AD_ASST'     THEN 'Grade is B'
--     WHEN job_id='FI_ACCOUNT'  THEN 'Grade is C'
--     WHEN job_id='IT_PROG'     THEN 'Grade is D'
--     WHEN job_id='SA_REP'      THEN 'Grade is E'
--     ELSE 'Grade is o'
--     END as Grade
-- from employees;





-- SELECT job_id,

-- decode(
--              job_id,
--              'AD_PRES','Grade is A',
--              'AD_ASST','Grade is B',
--              'AD_VP','Grade is C',
--              'FI_ACCOUNT','Grade is D',
--              'PU_CLERK','Grade is E',
--              'Grade is o'
--         )
-- from employees;


-- SELECT 
--     TO_CHAR(hire_date, 'YYYY') AS hire_year,
--     COUNT(DECODE(TO_CHAR(hire_date, 'YYYY'), '2006', employee_id)) AS year_2006_count,
--     COUNT(DECODE(TO_CHAR(hire_date, 'YYYY'), '2007', employee_id)) AS year_2007_count,
--     COUNT(DECODE(TO_CHAR(hire_date, 'YYYY'), '2008', employee_id)) AS year_2008_count,
--     COUNT(CASE WHEN TO_CHAR(hire_date, 'YYYY') NOT IN ('2006', '2007', '2008') THEN employee_id END) AS no_data_available_count
-- FROM 
--     employees
-- GROUP BY 
--     TO_CHAR(hire_date, 'YYYY');


-- select to_Char(hire_date,'YYYY') FROM EMPLOYEES;


-- SELECT department_id,count(employee_id)
-- from employees
-- group by DEPARTMENT_ID;


-- SELECT department_id,count(employee_id)
-- from employees
-- group by DEPARTMENT_ID
-- having count(employee_id)<3;



-- SELECT department_id,count(employee_id) as cnt
-- from employees
-- group by DEPARTMENT_ID
-- order by count(employee_id) desc
-- fetch first 1 rows only;


-- SELECT department_id,count(employee_id) as cnt
-- from employees
-- group by DEPARTMENT_ID
-- order by count(employee_id) 
-- fetch first 1 rows only;




-- SELECT 
--     SUM(CASE WHEN salary IS NOT NULL THEN 1 ELSE 0 END) AS salary_count,
--     SUM(CASE WHEN commission_pct IS NOT NULL THEN 1 ELSE 0 END) AS commission_count
-- FROM 
--     employees
-- WHERE 
--     department_id = '30';




-- select department_id,max(hire_date)
-- from employees
-- group by department_id;

desc employees;


select to_char(hire_date,'yyyy') from employees;