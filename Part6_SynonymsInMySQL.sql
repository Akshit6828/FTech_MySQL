USE f_tech;
/*
Synonyms define unique names (or aliases) for each MySQL table or view that is accessible from the server. 
*/

-- Operating on Loan Table.
ALTER TABLE Loan MODIFY COLUMN LoanId INT AUTO_INCREMENT;
ALTER TABLE Loan AUTO_INCREMENT=001; -- Sets auto increment from 1.
DESC Loan;

-- Inserting values in Loan Table without Mentioning the Auto Increment Column.
INSERT INTO Loan 
(Amount , DateOfLoan, EmployeeId) 
VALUES 
(1500 , "2021-11-01" , 3),
(800 , "2021-10-01", 6),
(600 , "2021-10-01", 6),
(550 , "2021-10-01", 4),
(200 , "2021-10-01", 3),
(150 , "2021-10-01", 7);

SELECT * FROM Loan;

-- TABLE SYNONYM

/* It is used to handel complex queries and also it makes it more usefull while understanding query.
Synonyms are useful because they hide location information and the identity of the underlying data source from client applications.
They also provide support for extended metadata features of the server such as virtual fields and additional security mechanisms.

Using synonyms allows an object to be moved or renamed while allowing client applications to continue functioning without modification.
The only modification required is a redefinition of the synonym on the server. 
The result of creating a synonym is a Master File and Access File.
 */

SELECT E.EmpId , E.Name from Emp E;
-- Table Synonym:
SELECT E.Name, L.Amount from EMP E, Loan L; -- It will act as a cross product of 2 tables with this condition.

/* Note:  It is giving each Loan Amount to Every Corresponding Name in EMP Table  */


