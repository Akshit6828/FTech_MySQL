-- 1) Creating a table

use f_tech;
/****** It will create internal storage structure of table.**********/
CREATE TABLE EMP (
    Name VARCHAR(20),
    Age INT,
    Salary FLOAT
);


-- 2) Altering table for adding new column and setting it as primary key.
ALTER TABLE EMP ADD EmpId INT;
ALTER TABLE EMP ADD PRIMARY KEY(EmpId);
ALTER TABLE EMP MODIFY Name varchar(40);
desc EMP;
/*
Alter:
---ADD---- :For altering the table structure.
---Modify ----: For modify existing columns.
*/

-- 3) Setting Primary Key as Auto increment.
ALTER TABLE EMP MODIFY COLUMN EmpId INT AUTO_INCREMENT;

