-- inner joins..
-- select records that have matching values in both tables

select
	ename,
	job,
	dname
from
	emp e
join dept d  -- by default join is inner join
on
	e.deptno = d.deptno

-- left joins.. return records from left table and matching records from right table.

select
	ename,
	job,
	dname
from
	emp e
left join dept d
on
	e.deptno = d.deptno

-- right join.. return records from right table and matching records from left table.
-- query to display manager name and role and all the employees id and employees names working under that manager . 

select
	emp.empno EmployeeID,
	emp.ename EmployeeName,
	mgr.ename ManagerName,
	mgr.job MgrRole
from
	emp
right join emp mgr
on
	emp.mgr = mgr.empno

-- Query to display employee name , department name , location and commission of all employees who earn commission .

select
	ename ,
	dname ,
	loc ,
	comm
from
	emp e
join dept d 
on
	e.deptno = d.deptno
where
	comm is not null

-- Query to display employee name and department name of employess who have a in their names.

select
	ename ,
	dname
from
	emp e
inner join dept d
on
	e.deptno = d.deptno
where
	ename like '%a%'