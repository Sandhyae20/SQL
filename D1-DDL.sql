/*--------------- creating new database ---------------*/

Create database eDB

/* creating new table under the eDB database*/

CREATE Table emp
(
emp_id numeric(4),
f_name varchar(20),
l_name varchar (20),
mgr_id numeric(4),

job_id numeric (2),
dept_no numeric (2),
);



/* Alter table---- (modifying-- adding new column)*/
ALTER table emp ADD age INT


/* Alter table---- (modifying-- adding new column)*/
ALTER table emp ADD salary MONEY


/* Alter table---- (modifying-- deleting the column which has been added)*/
alter table emp DROP COLUMN age

/* Alter table---- (modifying the datatype for a column)*/

ALTER table emp alter column age varchar(10)

/* Drop table statements*/

Drop table emp


/* --------------- Constraints{not null, unique, Primary key, foreign key, check} ---------------  */
/* 2nd table*/
CREATE Table emp1
(
emp_id numeric(4),
f_name varchar(20) NOT NULL,
l_name varchar (20) NOT NULL,
mgr_id numeric(4),
job_id numeric (2),
dept_no numeric (2),
);

/* 3rd table*/
CREATE Table emp2
(
emp_id numeric(4),
f_name varchar(20) NOT NULL,
l_name varchar (20) NOT NULL,
mgr_id numeric(4),
job_id numeric (2),
dept_no numeric (2),
CONSTRAINT emp_pk PRIMARY KEY (emp_id)
);

/* 4th table*/
/* ---------------creating primary key along with the table---------------*/
CREATE Table emp3
(
emp_id numeric(4),
f_name varchar(20) NOT NULL,
l_name varchar (20) NOT NULL,
salary MONEY,
CONSTRAINT emp_pk1 PRIMARY KEY (f_name,l_name)
);

/*---------------creating primary key once a table has been created-------------*/

/* 5th table*/
CREATE Table emp4
(
emp_id numeric(4) NOT NULL,
f_name varchar(20) NOT NULL,
l_name varchar (20) NOT NULL,
);/* no PK so we have to make a PK after creating the database*/

ALTER table emp4 alter column emp_id INT NOT NULL/* updating the datatype */

ALTER table emp4 
ADD Constraint emp_primaryKey PRIMARY KEY (emp_id);

/*Foreign key-while creating table*/

create table product
( 
prod_id int primary key,
prod_name VARCHAR (50) NOT NULL,
category VARCHAR (25),
);


create table orders
(order_id INT primary key,
prod_id int not null,
quantity int,

constraint fk_product_id 
foreign key (prod_id)
references product (prod_id)
);


create table product1
( 
prod_id int primary key,
prod_name VARCHAR (50) NOT NULL,
category VARCHAR (25),
);


create table orders1
(order_id INT primary key,
prod_id int not null,
quantity int,
);

/*constraint fk_product_id 
foreign key (prod_id)
references product (prod_id)
);
*/


ALTER Table Orders1
Add constraint fk_product_id1 
foreign key (prod_id)
references product1 (prod_id);

on DELETE cascade 



/* Multiple Columns*/




/*creating view*/

create view TestView as select * from emp 


/* for all selected columns*/

create view TestView1 as select emp_id, l_name from emp