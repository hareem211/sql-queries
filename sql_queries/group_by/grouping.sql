-- 1 query to display max,min,sum,avg salaries of all employees and round the result to nearest whole number.
select
round(max(sal),0) AS Maximum ,
round(min(sal),0) AS Minimum , 
round(sum(sal),0) AS Sum ,
round(avg(sal),0) AS Average
from emp

-- 2- query to display max,min,sum,avg salary for each job type.
select job,
round(max(sal),0) AS Maximum ,
round(min(sal),0) AS Minimum , 
round(sum(sal),0) AS Sum ,
round(avg(sal),0) AS Average
from emp
group by job

-- 3- query to display number of people with the same job
select job, count(ename)
from emp 
group by job

--4- query to determine the number of managers without listing them
select count(distinct mgr) AS 'Number of Managers'
from emp

--5- query to display the difference between highest and lowest salaries.
select max(sal) - min(sal) AS DIFFERENCE
from emp

--6 query to display each department's name , location , number of employees and average salary of all employees of that department.round the average salary to two decimals
select
	d.dname AS Name,
	d.loc AS Location,
	count(e.empno) AS 'Number of people',
	round(avg(e.sal), 2) AS 'Salary'
from
	dept d
inner join emp e
on d.deptno = e.deptno 
group by
	d.dname,
	d.loc;

-- query to display manager number and salary of the lowest paid employee , exclude anyone whose manager is not known .Exclude groups where the minimum salary is less than 1000.
select
	mgr ,
	min(sal)
from
	emp
where
  mgr is not NULL
group by
	mgr
HAVING
	min(sal) > 1000
ORDER by 2 desc -- order by min(sal) desc


