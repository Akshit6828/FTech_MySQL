USE f_tech;

/*
Join is to Extract Single Table Entity from Multiple Tables.
There are generally 2 types of Joins.
1) Outer Join
2) Inner Join
*/
SELECT * FROM EMP;
SELECT * FROM Loan;

/* INNER JOIN:
It is one to one or one to many join.

*/
SELECT EMP.Name, EMP.age, EMP.Salary, Loan.Amount , Loan.DateofLoan FROM EMP INNER JOIN Loan ON EMP.EmpId = Loan.EmployeeId;
SELECT EMP.EmpId ,EMP.Name, SUM(Loan.Amount) FROM EMP INNER JOIN Loan ON EMP.EmpId = Loan.EmployeeId GROUP BY Emp.EmpId ORDER BY Emp.EmpId DESC;
SELECT EMP.EmpId ,EMP.Name, SUM(Loan.Amount) FROM EMP INNER JOIN Loan ON EMP.EmpId = Loan.EmployeeId GROUP BY Emp.EmpId ORDER BY Loan.Amount DESC;


/* OUTER JOIN: 
It is of 2 types:
1) Left Join : When it contains all the values from Left and only those fields from Right where the join table from both the table are equal.
2) Right Join: When ut contains all the values from Right and only those fields from Left where the join table from both the table are equal.

*/

SELECT EMP.EmpId , EMP.Name , Emp.Age , Loan.Amount FROM EMP LEFT JOIN Loan ON EMP.EmpId = Loan.EmployeeId; --  Left Join
SELECT Loan.LoanId, Loan.Amount, EMP.EmpId, EMP.Name FROM EMP RIGHT JOIN Loan ON EMP.EmpId = Loan.EmployeeId;
SELECT Loan.LoanId, SUM(Loan.Amount), EMP.EmpId, EMP.Name FROM EMP RIGHT JOIN Loan ON EMP.EmpId = Loan.EmployeeId GROUP BY Emp.Name;