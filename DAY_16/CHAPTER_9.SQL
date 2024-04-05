    CREATE TABLE customers  
    ( employee_id number(10) NOT NULL,  
      last_name varchar2(50) NOT NULL,  
      first_name varchar2(50) NOT NULL,
      salary number(10) NOT NULL,
      dep_id number(10) NOT NULL 
    );  

    desc customers;

    insert into customers 
    values ('100','John','Doe','5000','101');

    select * from customers;


    insert into customers(employee_id,last_name,first_name,salary,dep_id ) 
    values ('101','Robert','King','8000','102');

    select * from customers;



    insert into customers(employee_id,last_name,first_name,salary,dep_id ) 
    values ('&employee_id','&last_name','&first_name','&salary','&dep_id');

  select * from customers;


  commit;


  update customers 
  set last_name='Testen'
  where employee_id='103';

select * from customers;

  update customers 
  set salary='20000'
  where employee_id='103';


select * from customers;


delete from customers
where employee_id='103';

commit;

    insert into customers(employee_id,last_name,first_name,salary,dep_id ) 
    values ('&employee_id','&last_name','&first_name','&salary','&dep_id');


delete from customers;

select * from customers;

rollback;

select * from employees;










