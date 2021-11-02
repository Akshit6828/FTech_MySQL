/* ***************** INSERTING INTO TABLES  ********************/

/*  
Insert is a buffered clause.
Commit will commit All the transactions from the buffer to the memory
*/

use f_tech;

-- Single inserting 
INSERT INTO EMP VALUES( "Akshit" , 21, 98000,1);
INSERT INTO EMP VALUES( "Bhupinder" , 20, 9800,1);
INSERT INTO Loan VALUES ( 004, 200, "2000-08-23" , 7);
-- NOTE: VARCHAR and DATE will Always be in " " Double inverted comma's.

--  DROP and TRUNCATE
DROP TABLE EMP;
TRUNCATE TABLE Loan;
/*  Drop will drop the data and it's structure.
	Truncate will keep the table structure and but remove all the rows
*/
drop table EMP;
SELECT * FROM EMP; /* Returns error such that f_Tech.emp doesnot exist */
SELECT * FROM Loan; /* Returns  0 Rows*/
desc loan;
-- Multiple and  Insert:
INSERT INTO EMP VALUES 
("Amrita" , 22, 100000,9) , 
("Amisha" , 21, 1000,2) , 
("Akshit" , 15, 100000,3) , 
("Kamal" , 19, 500,6) , 
("Monty" , 21, 500000,4);

-- Inserting into Particular Column
INSERT INTO Loan (LoanId, Amount , EmployeeId) value (6 , 600 , 3);

