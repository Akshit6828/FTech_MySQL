/* ORDER BY"
It is used to order any data in any particular order( Ascending, Descding) */
use f_tech;
select * from EMP order by Age; -- By Default the Order is Ascending
select * from EMP order by Age desc;
select * from EMP order by Age asc;
select * from EMP order by Age,EmpId;

-- Selecting maximum salary person:
select * from EMP order by Salary desc limit 1;
select * from EMP order by Salary desc limit 3; -- Prints 1st 3 Rows
select * from EMP order by Salary desc limit 1,2; -- Prints 2 values from index 0.
select Name, max(salary) from EMP; 
select max(salary) from EMP; 