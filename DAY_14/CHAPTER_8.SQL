

select last_name,salary 
from employees
where department_id in(select department_id from employees where last_name like '&&name') and last_name not like '&&name' ;
undefine name;

select * from employees;

select employee_id,last_name,salary
from employees
where salary>(select avg(salary)from employees)
order by salary asc;

select last_name,employee_id,department_id
from employees 
where department_id in( (select department_id from employees where last_name like '%u%'));

select * from employees;

select last_name,department_id,job_id 
from employees 
where department_id in((select department_id from departments where location_id='1700'));


select last_name,department_id,job_id 
from employees 
where department_id in((select department_id from departments where location_id='&loc'));


select first_name,last_name,salary from
employees 
where manager_id in((select employee_id from employees where last_name='King'));

select department_id,last_name,job_id
from employees
where department_id=(select department_id from departments where department_name='Finance');

select * from employees;
select * from departments;


select first_name,last_name,salary
from employees 
where salary>(select avg(salary) from employees where department_id=60);


SELECT last_name,salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT last_name,salary
FROM employees
WHERE salary = (SELECT salary as new_salary FROM employees  order by new_salary desc OFFSET 1 ROW
FETCH FIRST 1 ROW ONLY);


select employee_id,last_name,salary
from employees
where salary>(select avg(salary)from employees where department_id in (select department_id from employees where last_name like '%u%'));


select last_name, salary
from employees
where salary<(select avg(salary) from employees where department_id=20);


select first_name,last_name,salary from
employees 
where manager_id in((select employee_id from employees where last_name='Mourgos'));


select count(employee_id) from employees 
where department_id in(select department_id from departments where location_id in(select location_id from locations where city='Seattle'));


select last_name,first_name,employee_id
from employees 
where department_id=(select department_id from employees where last_name='Davies');

select first_name,hire_date from employees
where hire_date>(select hire_date from employees where last_name='Taylor'  order by hire_date desc fetch first 1 rows only);


select last_name,salary 
from employees e
where salary>(select avg(salary) from employees m where m.department_id=e.department_id);




select last_name,salary 
from employees
where salary=(select max(salary) from employees);

select last_name,salary 
from employees e
where salary>(select avg(salary) from employees m where m.department_id=e.department_id group by department_id);


