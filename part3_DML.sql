/* ***************** INSERTING INTO TABLES  ********************/

/*  
Insert is a buffered clause.
Commit will commit All the transactions from the buffer to the memory
*/

use f_tech;

-- Single inserting 
INSERT INTO EMP VALUES( "Akshit" , 21, 98000,1);
INSERT INTO EMP VALUES( "Bhupinder" , 20, 9800,3);
INSERT INTO Loan VALUES ( 004, 200, "2000-08-23" , 1);
-- NOTE: VARCHAR and DATE will Always be in " " Double inverted comma's.

--  DROP and TRUNCATE
DROP TABLE EMP;
DROP TABLE Loan;
TRUNCATE TABLE Loan;
/*  Drop will drop the data and it's structure.
	Truncate will keep the table structure and but remove all the rows
*/
drop table EMP;
SELECT * FROM EMP; /* Returns error such that f_Tech.emp doesnot exist */
SELECT * FROM Loan; /* Returns  0 Rows*/

DESC EMP;
DESC Loan;
-- Multiple and  Insert:
INSERT INTO EMP VALUES 
("Amrita" , 22, 90000,7) , 
("Amisha" , 21, 95000,2) , 
("Manpreet" , 15, 100000,3) , 
("Kamal" , 19, 15000,6) , 
("Monty" , 21, 10000,4);


-- Inserting into Particular Column
INSERT INTO EMP (Age, Salary , EmpId) values (22 , 50000, 5); 
INSERT INTO Loan (LoanId, Amount , EmployeeId) values (6 , 600 , 3);

-- UPDATE:
/*  Update is for updating record or records. */ 
UPDATE EMP SET age = age-1 , salary = salary + 10000 WHERE name = "Akshit";
UPDATE EMP SET Name = "Shyna" where EmpId = 5;

-- DELETE:
DELETE FROM Loan; -- Works same as Truncate but only difference is for rolling back.
DELETE FROM EMP WHERE name = "Amisha";
/* PLEASE NOTE ONCE A ROW IS DELETED, CANT IT BE TRACED BACK.??????????????????????*/ 
INSERT INTO EMP VALUES( "Amisha" , 21, 95000,2); -- Reinserting Amisha Record.