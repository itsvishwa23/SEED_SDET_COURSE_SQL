-- select sysdate from dual;

-- select current_date from dual;

-- desc employees;

-- select EMPLOYEE_ID,LAST_NAME ,SALARY, round(SALARY*16) as Updated_Salary 
-- from employees;

-- select EMPLOYEE_ID,LAST_NAME ,SALARY, round(SALARY*16) as Updated_Salary, round(SALARY*16)-salary as New_Salary
-- from employees;

-- select initcap(last_name), length(last_name) from employees; 

-- SELECT INITCAP(last_name) 
-- FROM employees
-- WHERE last_name LIKE 'J%' OR last_name LIKE 'M%';


-- SELECT INITCAP(last_name) 
-- FROM employees
-- WHERE last_name LIKE '&lname%';

-- UNDEFINE lname;

-- SELECT (last_name) 
-- FROM employees
-- WHERE last_name LIKE upper('&l_name%');

-- undefine l_name;


-- select EMPLOYEE_ID, concat(FIRST_NAME || ' ', LAST_NAME) as full_name, round((sysdate-HIRE_DATE)/30) as employment_duration
-- from employees
-- order by employment_duration desc;

-- select FIRST_NAME,LAST_NAME, trunc((sysdate-hire_date)/7,0) as weeks
-- from employees
-- order by weeks desc;


-- select LAST_NAME,LPAD(SALARY,12, '$') 
-- from EMPLOYEES;
 

-- select * from employees
-- where round((sysdate-hire_date))/31>24;


-- select * from employees 
-- where length(first_name)=5;


-- select last_name,first_name,salary, LPAD(' ', length(salary)-1,'*') as padded_salary
-- from employees;

-- SELECT DISTINCT LENGTH(last_name)
-- FROM employees;

-- select first_name,last_name,length(first_name) as len from employees 
-- where length(first_name)='5';

-- desc employees;


select FIRST_NAME,LAST_NAME,SALARY 
from employees
where JOB_ID in('SA_REP','ST_CLERK') and SALARY not in (2500,3500,7000) ;
 
 select last_name,salary,COMMISSION_PCT 
 from employees
 where COMMISSION_PCT=0.2;




