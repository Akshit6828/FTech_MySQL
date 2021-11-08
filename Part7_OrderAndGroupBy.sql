/* ORDER BY"
It is used to order any data in any particular order( Ascending, Descding) */
USE f_tech;
SELECT * FROM EMP ORDER BY Age; -- By Default the Order is Ascending
SELECT * FROM EMP ORDER BY Age DESC;
SELECT * FROM EMP ORDER BY Age ASC;
SELECT * FROM EMP ORDER BY Age,EmpId;

-- Selecting maximum salary person:
SELECT * FROM EMP ORDER BY Salary DESC LIMIT 1;
SELECT * FROM EMP ORDER BY Salary DESC LIMIT 3; -- Prints 1st 3 Rows
SELECT * FROM EMP ORDER BY Salary DESC LIMIT 1,2; -- Prints 2 values from index 0.
SELECT Name, MAX(salary) FROM EMP; 
SELECT MAX(salary) FROM EMP; 


SELECT * FROM Loan;

/* GROUP BY:
- GROUP BY will group the rows based on similarities.
- It will for sure contain an aggregate function after the column specified which will define what thing we need to do.
GROUP BY is a procedure of SUB-TOTALLING.
*/

SELECT LoanId, SUM(Amount) FROM Loan GROUP BY EmployeeId;
SELECT LoanId, AMOUNT , SUM(Amount) FROM Loan GROUP BY DateofLoan;


/* GROUP BY HAVING CONDITION.*/
SELECT LoanId, SUM(Amount) FROM Loan GROUP BY EmployeeId HAVING EmployeeId = 3; -- 1700
