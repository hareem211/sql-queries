-- query to display all data from table emp separate each coloumn by comma.

select
	CONCAT_WS(',', empno, ename, job, mgr, hiredate, sal, comm, deptno ) AS THE_OUTPUT
from
	emp

-- query to display employe name and salary earning more than 1000.

SELECT
	ename ,
	sal
from
	emp
where
	sal> 1000

-- Query to display employe name and department number fo employee number 7369

SELECT
	ename,
	deptno
from
	emp
where
	empno = 7369

-- Query to display name and salary of the employees whose salary is not in the range of 1000  and 2000

SELECT
	ename,
	sal
from
	emp
where
	sal not BETWEEN 1000 and 2000

-- query to display name ,job and hiredate of employees hired between 1980-1-12 and 1982-12-1 and order query in ascending order by hiredate

select
	ename,
	job,
	hiredate
from
	emp
where
	hiredate between '1980-1-12' and '1982-12-1'
order by
	hiredate;

-- query to display name and department number of employees in department 10 and 30 in alphabetical order by name.

select
	ename ,
	deptno
from
	emp
where
	deptno in(10, 30)
order by
	ename

-- query to display name and sal of employess who earn between 1000 and 5000 AND are in department 10 or 30.

SELECT
	ename as Employee ,
	sal as "Monthly Salary"
from
	emp
where
	sal BETWEEN 1000 and 5000
	and deptno in(10, 30)

-- Query to diplay name and hiredate of employee who was hires in 1982.

SELECT 
  ename,hiredate
FROM 
  emp
WHERE 
  YEAR(hiredate) = 1982;

-- Query to display name and job of employees who do not have manager.

select
	ename,
	job
from
	emp e
where
	mgr is null;

-- Query to display name,salary and commission of employees who earn commissionand sort in descending order of salar and commission.

SELECT
	ename,
	sal ,
	comm
from
	emp
where
	comm is not NULL
order by
	sal desc,
	comm DESC

-- Query to display names of employees where the third letter of the name is an a.

SELECT
	ename
from
	emp
where
	ename like '__a%';

-- Query to show names of employwws who have an a and an e in their names.

SELECT
	ename
from
	emp
where
	ename like '%a%'
	and ename like '%e%'

-- Query to display name ,job and salary of employees whose job is clerk or salesman and whose salary is not equal to 2500,1500and 2000.

select
	ename,
	sal ,
	job
from
	emp
where
	job = 'clerk'
	or job = 'salesman'
	and sal not in(2500, 1500, 2000)
	