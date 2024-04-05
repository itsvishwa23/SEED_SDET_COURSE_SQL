create table MyDept
(
    dept_no number(7) Primary Key,
    dept_name varchar(25)

)

desc MyDept;


create table MyEmp
(
    emp_id number(7) Primary Key,
    last_name varchar(25),
    first_name varchar(25),
    dept_id number(7), FOREIGN KEY (dept_id)
    REFERENCES  MyDept(dept_no)

)

alter table MyEmp
add (commision number(2));

desc MyEmp;


alter table MyEmp
modify(last_name varchar(50));

desc MyEmp;


alter table MyEmp
drop(first_name);


desc MyEmp;

create table LogEmp
(
    emp_id number(7) Primary Key,
    last_name varchar(25),
    first_name varchar(25),
    dept_id number(7), FOREIGN KEY (dept_id)
    REFERENCES  MyDept(dept_no)

)

desc MyEmp;

alter table LogEmp read only;

alter table LogEmp 
drop(first_name);

alter table LogEmp read write;

alter table LogEmp 
add (jobid number(2))


desc LogEmp;


drop table LogEmp;
drop table MyEmp;
drop table MyDept



CREATE TABLE MyEmppp(
    emp_id NUMBER(7) PRIMARY KEY,
    salary NUMBER(10),
    CONSTRAINT check_salary CHECK (salary BETWEEN 3000 AND 10000),
    last_name VARCHAR(25),
    CONSTRAINT check_last_name CHECK (last_name = UPPER(last_name)),
    first_name VARCHAR(25),
    dept_id NUMBER(7),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES MyDept(dept_no)
);

drop table MyEmppp;