use eDB

/*create dept (new table) table*/
create table dept
(
dept_no numeric (2) not null, 
dept_name varchar(20) not null,
loc varchar(50) null
);

/*create dept1 (new table) table*/
create table dept1
(
dept_no numeric (2) not null, 
dept_name varchar(20) not null,
loc varchar(50) null
);

ALTER table dept1 alter column loc nvarchar(50) null

/* Select commands*/
Select TOP 1000[dept_no]
		,[dept_name]
		,[loc]
	from [eDB].[dbo].[dept1]




insert into dept1 (dept_no,dept_name)
values (20,'HR');

/* insert value in all the column */

insert into dept1 (dept_no,dept_name)
values (70,'HR');

/* insert as select statement*/

insert into dept1(dept_no, dept_name,loc)
(select * from dept1);

insert into dept1 values(80, 'IT', 'Mumbai')

/* insert as select statement*/
insert into dept(dept_no, dept_name,loc)
(select * from dept1);


insert into dept(dept_no, dept_name,loc)
(select * from dept1 where dept_no >40);

insert into dept1(dept_no, dept_name)
(select dept_no, dept_name from dept );


/* not null constraints*/

insert into dept1 (dept_no,loc)
(select dept_no,loc from dept);

/*  update statements*/

update dept set dept_name='Marketing' where dept_no=20;

update dept1 set dept_name='Marketing' where dept_no=80;


update dept set dept_name='Marketing' /*where dept_no=20;*/


update dept1 set dept_name='Marketing', loc ='Chennai' where dept_no=80;

update dept1 set dept_name='HR', loc ='Delhi' where dept_no=70;

update dept1 set dept_name='IT', loc ='Bengluru' where dept_no=20;


/* Delete Statements*/
delete from dept1 where dept_no=20


/* Select Statements*/
select * from  emp

select * from dept


select top(3) * from emp

select top(5) * from emp

select f_name, l_name from emp

select top(5) f_name, l_name from emp

select top(5) f_name, l_name from emp

SELECT dept_no, loc as Location from dept


/* select statement : Distinct values*/

/*select rows with distinct values for a column*/

SELECT dept_no, loc as Location from dept1


/* ordering result*/

select * from dept1 order by dept_no DESC

select * from dept1 order by dept_no ASC

select top(2) * from dept

select top(2) * from dept order by dept_no desc


/* filtering: Logical Operators*/

/* logical operators= AND operator*/

select * from dept where dept_no = 70 AND
dept_name ='HR'


select * from dept1 where dept_no = 70 AND
dept_name ='HR'

/* logical operators= OR operator*/
select * from dept1 where dept_no = 70 OR
dept_name ='Marketing'

/* logical operators= NOT operator*/
select * from dept1 where loc NOT IN
('Delhi')

/* filtering: Comparison Operators  = Between operator*/

select * from emp 

select * from emp where salary between 200000 AND 350000

/* filtering: Comparison Operators  = NOt IN operator*/
select * from dept1 where loc NOT IN
('Delhi')

/* filtering: Comparison Operators  = IN operator*/
select * from dept1 where loc IN
('Delhi')

/* filtering : comparison operators: >,=,<, >=    */
select * from emp where salary = 200000 

select * from emp where salary >= 200000 

select * from emp where salary < 200000 

select * from emp where salary > 350000 


/* filtering : comparison operators: LIKE Condition */

select * from dept where loc like '%i'

select * from dept where loc like 'c%i'

select * from dept where loc like 'H%'

/* CASE EXPRESSION */

select *from emp where SALARY is not null

select case (loc)
when 'chennai' then 'tamilnadu'
when 'banglore' then 'kr'
else 'no idea'
end 
from dept


/* ASSIGNMENT: DML */

insert into emp (emp_id,f_name,l_name,mgr_id, dept_no, salary)
values (1009,'Riccky','Lawrence',1005,40,50000);


delete from emp where salary>=40000

update emp  set  f_name=' sandhya ', l_name= 'kushwaha' where emp_id=1005 and mgr_id=1004;


select * from emp  where l_name like 'B%' or l_name like 'f%';