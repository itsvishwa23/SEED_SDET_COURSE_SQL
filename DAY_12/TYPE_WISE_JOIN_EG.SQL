-- desc employees;
-- desc departments;
-- DESC COUNTRIES;
-- DESC LOCATIONS;



--NATURAL JOIN (DONE WHEN WE HAVE ONE COLUM SAME IN BOTH TABLE EG : COUNTRIES AND LOCATIONS TABLE HAVE ONLY ONE COMMON COLUM IE.COUNTRY_ID)

-- select * from 
-- countries natural join locations;


-- USING CLAUSE JOIN (DONE WHEN WE HAVE TWO OR MORE COLUM SAME IN BOTH TABLE EG : EMPLOYEE AND DEPARTMENTS TABLE HAVE TWO COLUMS COMMON IE. MANAGER_ID,DEPARTMENTS_ID)


-- select * from 
-- EMPLOYEES natural join DEPARTMENTS;

-- select * from 
-- EMPLOYEES join DEPARTMENTS
-- USING(manager_ID);



-- USING ON CLAUSE (THIS IS DONE WHEN WE HAVE SAME DATA TYPE COLUM IN TWO NAMES IN TWO TABLES)


--SELF JOIN(THIS IS DONE WHEN WE WANT DATA FROM ONE TABLE ONLY)

-- select E.employee_id as "emp id",e.salary as "emp slary",e.last_name as "emp name",M.employee_id as "manager id",m.salary as "manager salary"
-- FROM employees e JOIN employees m
-- ON e.manager_id = m.employee_id;



-- select * from employees;


-- select c.country_id,c.country_name,r.region_id from
-- countries c right join regions r
-- on c.region_id = r.region_id;



-- select employees.department_id,departments.department_id
-- from Employees,Departments
-- where employees.department_id=departments.department_id;





