--#####################################################################
--Assignment 2
--#####################################################################
--In the DEMO database create table EMP_SAL with the following fields:
--    •EID, DEPT, DESI, DOJ, SALARY
--    •Insert 7 appropriate records in the EMP_SAL table
--    •Use SELECT command to view the contents of EMP_SAL table
--From the EMP table list all the employees with last name as Sharma.
--Increase the salary of all Managers by 10%

--Use an existing Database
USE DEMO;

--Drop an existing Table
DROP TABLE EMP_SAL;

--Create table EMP_SAL and define the datatypes and their size. It should contain the following fields:
--EID, DEPT, DESI, DOJ, SALARY
CREATE TABLE EMP_SAL
(EID CHAR(5),
DEPT VARCHAR(40),
DESI VARCHAR(20),
DOJ CHAR(11),
SALARY DECIMAL);

--Insert 7 appropriate records in the EMP_SAL table
INSERT INTO EMP_SAL
VALUES 
('E0001', 'HR'   , 'ASSO' , '29-OCT-2012'  , 1500000),
('E0002', 'MIS'  , 'VP'   , '12-FEB-2018'  , 3200000),
('E0003', 'OPS'  , 'MGR'  , '22-SEP-2014'  , 1000000),
('E0004', 'IT'   , 'MGR'  , '02-NOV-2013'  , 800000) ,
('E0005', 'ADMIN', 'ASSO' , '11-JAN-2017'  , 1100000),
('E0006', 'TEMP' , 'DIR'  , '19-MAR-2021'  , 1400000),
('E0007', 'OPS'  , 'ASSO' , '28-JUL-2020'  , 750000) ;

--Select all records from EMP_SAL
SELECT * FROM EMP_SAL;

--Use WHERE clause to filter records based on different parameters
SELECT * FROM EMP
WHERE NAME LIKE '%SHARMA'

SELECT * FROM EMP_SAL
WHERE DESI = 'MGR'

UPDATE EMP_SAL SET SALARY = SALARY*1.10 
WHERE DESI = 'MGR';

--Select all records from EMP_SAL
SELECT * FROM EMP_SAL;