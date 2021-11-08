use f_tech;

CREATE TABLE EG ( Name varchar(30) , Salary float);

insert into EG values ("Akshit" , 20) , ("Akshit", 30) , ("Akshit", 20) , ("Amisha", 20);
SELECT * FROM EG;

DELETE t1 FROM EG t1
INNER JOIN EG t2 
WHERE 
    t1.Name = t2.Name
    and
    t1.Salary = t2.Salary;
    
DELETE Name from EG where Name not in (SELECT * FROM EG GROUP By Name, Salary);
DELETE Name, Salary from EG where Name in ( Select Name , Salary from EG);

DELETE Name,Salary FROM EG WHERE Name NOT IN ( SELECT * FROM EG GROUP By Name, Salary);

DELETE t1 FROM EG t1
INNER JOIN EG t2 
WHERE 
t1.Name = t2.Name AND t1.Salary = t2.Salary;