select * from employees;



select count(employee_id),department_id from employees
where hire_date> '31-Dec-1998' and job_id LIKE '%CLERK%' 
group by department_id;


