-- SELECT employee_id,first_name from employees
-- where employee_id='&empid';

-- UNDEFINE empid;


-- SELECT employee_id from employees
-- where &condition;

-- UNDEFINE condition;


-- SELECT employee_id,&&colum from employees
-- where employee_id='&colum';

-- UNDEFINE colum;


select * from &table_name
where &condition
order by &order_by;

-- undefine table_name;