desc employees;
desc REGIONS;
desc countries;
desc departments;
desc locations;

  


select e.LAST_NAME ,e.EMPLOYEE_ID,d.DEPARTMENT_ID,d.DEPARTMENT_NAME,l.LOCATION_ID,c.COUNTRY_ID,r.REGION_ID,c.COUNTRY_NAME
from employees e
join departments d
on  e.department_id = d.department_id
join locations l
on l.location_id = d.location_id
join countries c
on c.country_id = l.country_id
join regions r
on r.region_id = c.region_id
and r.region_name like '%Americas%';


select * 
from departments d
join locations l
on d.location_id = l.location_id
where city like '%Toronto%' or city like '%Seattle%';


select distinct count(employee_id)
from job_history;





SELECT e.last_name, d.department_name, loc.city, j.job_title
FROM employees e JOIN departments d 
ON e.department_id = d.department_id
JOIN locations loc ON loc.location_id = d.location_id
JOIN jobs j ON e.job_id = j.job_id
where j.job_title='Programmer';


select e.last_name,d.department_name,loc.city,e.hire_date
from employees e join departments d
ON e.department_id = d.department_id
join locations loc 
on d.location_id=loc.location_id
where loc.city='Toronto';


select count(d.department_id) as count_of
from employees e join departments d
ON e.department_id = d.department_id
join locations loc 
on d.location_id=loc.location_id
where loc.city='Seattle';


select d.department_name,max(e.salary) as highest_salary 
from employees e join departments d 
ON e.department_id = d.department_id
group by d.department_name;


select d.department_name,count(employee_id) as emp_count
from employees e join departments d 
ON e.department_id = d.department_id
group by d.department_name;


select d.department_name, MAX(COUNT(d.department_name)) AS max_working
from employees e join departments d 
ON e.department_id = d.department_id
group by (d.department_name);





select distinct max(d.department_id), loc.city
from departments d join locations loc 
on d.location_id=loc.location_id
group by loc.city;



    SELECT COUNT(ct.country_id) AS country_count, re.region_name
    FROM countries ct  JOIN regions re  
    ON ct.region_id = re.region_id
    GROUP BY re.region_name
    ORDER BY country_count DESC;


select d.department_name, re.region_name,loc.location_id, cnt.country_id
from departments d join locations loc
on d.location_id=loc.location_id
join countries cnt
on loc.country_id=cnt.country_id
join regions re 
on cnt.region_id=re.region_id
where region_name='Europe';

select * from regions;


select re.region_name,max(e.salary)
from employees e join departments d 
on e.department_id=d.department_id 
join locations loc
on d.location_id=loc.location_id
join countries cont
on loc.country_id=cont.country_id
join regions re
on cont.region_id=re.region_id
group by re.region_name;



select * from departments;

select e.*,d.department_name
from employees e join departments d 
on e.department_id=d.department_id
where department_name='&&dept_name';

undefine dept_name;


select sum(e.salary),cont.country_name
from employees e join departments d
on e.department_id=d.department_id
join locations loc
on d.location_id= loc.location_id
join countries cont 
on loc.country_id= cont.country_id
group by (cont.country_name)
order by cont.country_name desc
fetch first 1 rows only;



select avg(e.salary),d.department_name
from employees e join departments d
on e.department_id=d.department_id
group by (d.department_name);


select * from jobs;

select count(e.employee_id),j.job_title
from employees e join jobs j
on e.job_id=j.job_id
group by (j.job_title);



select min(e.hire_date),d.department_name
from employees e join departments d
on e.department_id=d.department_id
group by (d.department_name);







