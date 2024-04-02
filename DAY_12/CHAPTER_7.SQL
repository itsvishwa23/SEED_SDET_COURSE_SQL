-- desc departments;
-- desc locations;
-- desc employees;


-- select DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID,CITY, STREET_ADDRESS,STATE_PROVINCE
-- from departments natural join locations;

-- select EMPLOYEE_ID,LAST_NAME,DEPARTMENT_NAME,DEPARTMENT_ID,salary
-- from departments join employees
-- using (DEPARTMENT_ID);


-- select SALARY,EMPLOYEE_ID,LAST_NAME,DEPARTMENT_NAME,DEPARTMENT_ID
-- from departments natural join employees
-- WHERE DEPARTMENT_ID IN(20,30);


-- SELECT LAST_NAME,SALARY ,DEPARTMENT_NAME,DEPARTMENT_ID
-- from departments natural join employees
-- WHERE DEPARTMENT_NAME LIKE 'Finance';


SELECT LAST_NAME,JOB_ID,CITY
FROM EMPLOYEES NATURAL JOIN LOCATIONS
WHERE CITY='Toronto';


-- SELECT * FROM LOCATIONS;

-- select * from employees;




--     SELECT e.last_name AS "Employee Last Name",
--         e.employee_id AS "Employee ID",
--         e.salary AS "Employee Salary",
--         m.manager_id AS "Manager ID",
--         m.salary AS "Manager Salary"
--     FROM employees e JOIN employees m 
--     ON e.employee_id = m.employee_id;


-- select last_name,department_id
-- from departments natural join employees
-- where department_id=110;

  SELECT e.last_name AS "Employee Last Name",
        e.employee_id AS "Employee ID",
        e.salary AS "Employee Salary",
        m.manager_id AS "Manager ID",
        m.salary AS "Manager Salary"
    FROM employees e JOIN employees m 
    ON e.employee_id = m.manager_id
    where e.hire_date>m.hire_date;


-- select * from employees where last_name='Taylor';







-- SELECT e.last_name AS "Employee Last Name",
--         e.employee_id AS "Employee ID",
--         e.hire_date AS "Employee Hire Date",
--         e.salary AS "Employee Salary",
--         m.manager_id AS "Manager ID",
--         m.salary AS "Manager Salary",
--         m.hire_date AS "Manager Hire Date"
--     FROM employees e JOIN employees m 
--     ON e.employee_id = m.manager_id
--     where e.hire_date>m.hire_date;

--     SELECT e.last_name AS "Employee Last Name",
--         e.employee_id AS "Employee ID",
--         e.hire_date AS "Employee Hire Date",
--         e.salary AS "Employee Salary",
--         m.manager_id AS "Manager ID",
--         m.salary AS "Manager Salary",
--         m.hire_date AS "Manager Hire Date"
--     FROM employees e JOIN employees m 
--     ON e.employee_id = m.manager_id
--     where length(e.last_name)>length(m.last_name);


--     select e.last_name,d.department_name,d.manager_id
--     from employees e join departments d using(department_id);

--     desc departments;
--     desc employees;


-- SELECT e1.hire_date, e1.last_name
-- FROM employees e1 JOIN employees e2 
-- ON e1.hire_date > e2.hire_date
-- WHERE e2.last_name = 'Taylor';



select e.first_name,e.last_name,e.job_id,d.department_id,d.department_name,loc.city
from employees e join departments d
on e.department_id=d.department_id
join locations loc
on d.location_id= loc.location_id
where city='Toronto';