

Create database EMP_DB

CREATE Table emp
(
emp_id numeric(4),
f_name varchar(20),
l_name varchar (20),
mgr_id numeric(4),

job_id numeric (2),
dept_no numeric (2),
);



alter table emp add loc nvarchar(50)


create table Orders
(
order_id int not null,
emp_id int not null, 
orderDate  date
);



insert into emp (emp_id, f_name,l_name,loc)
values
	(101,'sanidhi','kushwaha','Varanasi'),
	(102,'suraj','kushwaha','gonda'),
	(103,'shyam','kushwaha','Delhi'),
	(104,'sanidhi','kushwaha','Lucknow');


INSERT INTO Orders (order_id, emp_id, orderDate)
VALUES 
    (1, 101, '2025-07-01'),
    (2, 102, '2025-08-01'),
    (3, 103, '2025-09-01'),
    (4, 104, '2025-10-01');




/* Inner Joins */
select *from emp

select * from Orders


/* Inner Joins-older syntax */
select emp.emp_id ,Orders.order_id,Orders.orderDate
from emp
INNER JOIN orders 
ON emp.emp_id = Orders.emp_id
ORDER BY emp.emp_id;


/* Inner Joins - new  syntax */
select emp.emp_id,Orders.order_id,Orders.orderDate
from emp, Orders
where emp.emp_id= Orders.emp_id
order by emp.emp_id desc;




/* table alias(as)-- use it for shorten the code*/

select e.emp_id ,O.order_id,O.orderDate
from emp as e
INNER JOIN orders as o
ON e.emp_id = O.emp_id
ORDER BY e.emp_id;


/*if we are using self join, so, table alias(as)-- use it for shorten the code*/
select e1.emp_id ,e2.f_name,e2.l_name
from emp as e1
INNER JOIN emp as e2
ON e1.emp_id = e2.emp_id
ORDER BY e1.emp_id;


/* left outer join */

select e.emp_id ,O.order_id,O.orderDate
from emp as e
LEFT OUTER JOIN orders as o
ON e.emp_id = O.emp_id
ORDER BY e.emp_id;


/* RIGHT OUTER JOIN*/
select e.emp_id ,O.order_id,O.orderDate
from emp as e
RIGHT OUTER JOIN orders as o
ON e.emp_id = O.emp_id
ORDER BY e.emp_id;


/* FULL OUTER JOINS*/
select e.emp_id ,O.order_id,O.orderDate
from emp as e
FULL OUTER JOIN orders as o
ON e.emp_id = O.emp_id
ORDER BY e.emp_id;



/*CROSS JOINS */
select e.emp_id ,O.order_id,O.orderDate
from emp as e
CROSS JOIN orders as o

ORDER BY e.emp_id;



/*INNER JOIN EXAMPLES*/
select *
from emp
INNER JOIN orders 
ON emp.emp_id = Orders.emp_id
Where emp.emp_id > 102
ORDER BY emp.emp_id;

/* ASSIGNMENT 3*/

/* 1. */
select emp.emp_id ,Orders.order_id,Orders.orderDate
from emp
JOIN orders 
ON emp.emp_id = Orders.emp_id
ORDER BY emp.emp_id;

/* 2. */

create table dept_2
(
dept_id Int Not NULL,
emp_id int not null,
loc nvarchar(60)

);



INSERT INTO dept_2 (dept_id, emp_id, loc)
VALUES 
    (1, 101, 'Delhi'),
    (2, 102, 'Mumbai'),
    (3, 103, 'Varanasi'),
    (4, 104, 'Bengluru');




select emp.emp_id ,dept_2.dept_id,dept_2.loc
from emp
INNER JOIN dept_2
ON emp.emp_id = dept_2.emp_id
ORDER BY emp.emp_id;


/* 3. */

select emp.emp_id ,dept_2.dept_id,dept_2.loc
from emp
LEFT OUTER JOIN dept_2
ON emp.emp_id = dept_2.emp_id
ORDER BY emp.emp_id;


/* 4. */
select emp.emp_id ,dept_2.dept_id,dept_2.loc
from emp
RIGHT OUTER JOIN dept_2
ON emp.emp_id = dept_2.emp_id
ORDER BY emp.emp_id;
