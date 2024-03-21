-- select *
-- from employees
-- where salary >12000;


-- select *
-- from employees
-- where employee_id = '175';


-- select last_name,salary
-- from employees
-- where salary between 5000 and 12000;

-- select last_name,salary
-- from employees
-- where last_name IN ('Mavris', 'Baer');

-- select last_name,salary
-- from employees
-- where salary not between 5000 and 12000;


select last_name,salary,department_id
from employees  
where salary between 5000 and 12000
and department_id IN ('20', '70') ;