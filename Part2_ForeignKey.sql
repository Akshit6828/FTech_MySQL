-- Applying Refential intergity constrain

CREATE TABLE Loan (
    LoanId INT PRIMARY KEY,
    Amount FLOAT,
    DateOfBirth DATE,
    EmployeeId INT, foreign key(EmployeeId) REFERENCES EMP (EmpId)
);

DESC Loan;

ALTER TABLE Loan RENAME COLUMN DateofBirth TO DateofLoan; -- Renaming the Exisiting Column Name;

/**** It will put DOMAIN INTEGRITY:
FOREIGN KEY column has those values which lies in primary key

OPERATIONS:
There are some actions that are linked with the actions taken by the foreign key table holder:

1) Cascade
When we delete rows in the parent table (i.e., the one holding the primary key), the same columns in the other table (i.e., the one holding a foreign key) also gets deleted. 
Thus, the action is known as Cascade.

2) Set NULL
Such referential action maintains the referential integrity of both tables. 
When we manipulate/delete a referenced row in the parent/referenced table, in the child table (table having foreign key), the value of such referencing row is set as NULL. 
Such a referential action performed is known as Set NULL.

3) Set DEFAULT
Such an action takes place when the values in the referenced row of the parent table are updated, or the row is deleted, the values in the child table are set to default values of the column.

4) Restrict
It is the restriction constraint where the value of the referenced row in the parent table cannot be modified or deleted unless it is not referred by the foreign key in the child table. 
Thus, it is a normal referential action of a foreign key.

5) No Action
It is also a restriction constraint of the foreign key but is implemented only after trying to modify or delete the referenced row of the parent table.

6) Triggers
All these and other referential actions are basically implemented as triggers where the actions of a foreign key are much similar or almost similar to user-defined triggers. 
However, in some cases, the ordered referential actions get replaced by their equivalent user-defined triggers for ensuring proper trigger execution.

*/

