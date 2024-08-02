-- display current date

select
	SYSDATE() as date

-- Query to display employee number, salary , name and salary increased by 15% and expressed as a whole number.Label the new coloumn by New Salary.

select
	ename,
	empno,
	sal,
	floor(sal * 1.5) as 'New Salary'
from
	emp

-- Query to display employee number, salary , name and salary increased by 15% and expressed as a whole number.Label the new coloumn by New Salary.Add a coloumn that subtracts the old salary from new salary and label the coloumn Increase.

select
	ename,
	empno,
	sal,
	floor(sal * 1.5) as 'New Salary',
	floor(sal * 1.5)-sal as Increase
from
	emp;


-- Query to display employe name and salary and format the salary to be 15.

select
	ename ,
	format(sal, 15) as salary
from
	emp


--Query to display name and commission of employee if employee does not earn commission put 'No Commission'.

select
	ename,
	(case
		when comm is null then "No Commission"
		else comm
	end) as COMM
from
	emp