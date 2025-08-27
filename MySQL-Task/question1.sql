-- Create table
CREATE TABLE Empl (
    empno INT,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT
);

-- Insert data
INSERT INTO Empl VALUES (8369,'SMITH','CLERK',8902,'1990-12-18',800.00,NULL,20);
INSERT INTO Empl VALUES (8499,'ANYA','SALESMAN',8698,'1991-02-20',1600.00,300.00,30);
INSERT INTO Empl VALUES (8521,'SETH','SALESMAN',8698,'1991-02-22',1250.00,500.00,30);
-- (Insert all other rows similarly)

-- Queries for Question 1
-- A. Employees with salary >= 2200
SELECT ename, sal FROM Empl WHERE sal >= 2200;

-- B. Employees not getting commission
SELECT * FROM Empl WHERE comm IS NULL;

-- C. Employees not in salary range 2500-4000
SELECT ename, sal FROM Empl WHERE sal NOT BETWEEN 2500 AND 4000;

-- D. Employees without manager
SELECT ename, job, sal FROM Empl WHERE mgr IS NULL;

-- E. Employees whose name has "A" as 3rd letter
SELECT ename FROM Empl WHERE SUBSTRING(ename,3,1)='A';

-- F. Employees whose name ends with "T"
SELECT ename FROM Empl WHERE ename LIKE '%T';