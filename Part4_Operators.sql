-- Relational Operators: <, <= , > , >= , =
-- Special Relation Operator: like, in , between
-- Logical Operators: and , or , not

USE f_tech;

/* We generally have 2 kind of operations:
1) Selection: For Selecting Rows
2) Projection: For Projecting Columns
*/
SELECT * FROM EMP;
SELECT * FROM Loan;

-- Single Column Selection.
SELECT Name FROM EMP;

-- Using Where Clause
SELECT * FROM EMP WHERE age > 21;
SELECT * FROM EMP WHERE name = "Akshit";
-- AND operator:
SELECT * FROM EMP WHERE age>20 AND age <22;
-- In Operator:
SELECT * FROM EMP WHERE name IN("Akshit" , "Amisha");
SELECT * FROM EMP WHERE name IN("a%"); -- Will not work as we use LIKE Operator for pattern matching
-- NOT IN :
SELECT * FROM EMP WHERE name NOT IN("Akshit" , "Amisha");
-- MULTIPLE WHERE CLAUSE:
SELECT * FROM EMP WHERE salary < 9500;


-- RELATIONAL OPERATORS:
SELECT * FROM EMP WHERE name LIKE "a%"; -- It will print all the names starting from A or a.
    
