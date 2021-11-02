USE f_tech;

/* 
MySQL has many inbuilt functions.
Read about documentation here: https://dev.mysql.com/doc/refman/8.0/en/string-functions.html
*/

SELECT * FROM EMP;
-- MATH Functions

SELECT SQRT(age) FROM Emp;
SELECT SQRT(age) "SQUARE ROOT AGE" FROM EMP;
SELECT SQRT(age) AS "SQUARE ROOT AGE" FROM EMP;

SELECT Name "Candidate Name", (Age+5) "Increased Age", (Salary + Salary*10/100) "Increased Salary" FROM EMP;

SELECT AVG(Salary) FROM EMP;
SELECT COUNT(*) FROM EMP;
SELECT COUNT(Salary) FROM EMP;
SELECT MAX(Salary) FROM EMP;
SELECT SUM(Salary) FROM EMP;
SELECT MIN(Salary) FROM EMP;

SELECT Salary + Age "Combined Salary and Age" FROM EMP;
SELECT Salary + Age FROM EMP;

-- STRING Functions:

SELECT CONCAT(name, "-- Mr.") FROM EMP;
SELECT LOWER(name) FROM EMP;
SELECT UPPER(name) FROM EMP;
SELECT SOUNDEX(name) FROM EMP; /* Return a phonetic representation of a string. The phonetic represents the way the string will sound.*/
SELECT SUBSTR(name, 3 , 2) FROM EMP; -- Starting from 2nd index and till 2 index from starting index
SELECT REVERSE(name) FROM EMP;


