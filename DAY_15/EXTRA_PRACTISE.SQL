select * from employees;
select employee_id,department_id from employees
where hire_date> '31-Dec-1998' and job_id LIKE '%CLERK%';

select last_name,salary,commission_pct 
from employees
where commission_pct>0
order by salary asc;

select last_name,salary,round(salary+salary*10) as projected_salary
from employees
where commission_pct<=0 or commission_pct is null ;

select last_name, (sysdate-hire_date)/ as d_date from employees;