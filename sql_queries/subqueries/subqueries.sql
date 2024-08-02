-- Query to display employee names and salaries whose salaries are more than allen.

select
	ename ,
	sal
from
	emp
where
	sal>(
	select
		sal
	from
		emp
	where
		ename = 'allen')

-- Query to display employee name, employee id  and department number of employees who work in a department with any employee whose name contains a u.

select
	ename "Employee Name" ,
	empno "Employee ID" ,
	deptno "Department Number"
from
	emp
where
	deptno = (
	select
		deptno
	from
		emp
	where
		ename like '%u%' )

--  Query to display name and salary of every employees who reports to king.

select
	ename "Employee Name" ,
	sal "salary"
from
	emp
where
	mgr = (
	select
		empno
	from
		emp
	where
		empno = 7839 )

-- Query to display employee name , department number and job for employee in ACCOUNTING department.

SELECT
	ename "Employee Name",
	deptno "Department Number" ,
	job Job
FROM
	emp
WHERE
	deptno = (
	SELECT
		deptno
	FROM
		dept
	WHERE
		dname = 'ACCOUNTING'
);