select * from Employees;

select distinct job_id as Designation from Employees;


SELECT
    'The salary of ' || last_name || ' is ' || salary AS "Total Salary"
FROM
    Employees;



SELECT
    'The PF of ' || last_name || ' is'||  ' ' || salary *0.1 || 'and salary is' || salary as "Total Salary"
FROM
    Employees;