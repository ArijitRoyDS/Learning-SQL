--#####################################################################
--Assignment 1
--#####################################################################
--Create a database DEMO
--Create table EMP with the following fields:
--EID, NAME, ADDR, CITY, DOB, PHONE, EMAIL.
--EID should be like 'E0001', 'E0002' etc..
--Insert 10 appropriate records in the Emptable
--Use SELECT command to view the contents of emptable

--Create a database DEMO
CREATE DATABASE DEMO;

--Use an existing Database
USE DEMO;

--Drop an existing Table
DROP TABLE EMP;

--Create table EMP and define the datatypes and their size. It should contain the following fields:
--EID, NAME, ADDR, CITY, DOB, PHONE, EMAIL
CREATE TABLE EMP
(EID CHAR(5),
NAME VARCHAR(50),
ADDR VARCHAR(100),
CITY VARCHAR(30),
DOB VARCHAR(15),
PHONE CHAR(15),
EMAIL VARCHAR(30))

--Insert records into the table:
--1st Record
INSERT INTO EMP (EID, NAME, ADDR, CITY, DOB, PHONE, EMAIL)
VALUES ('E0001', 'MANISH AGGARWAL', '#24, MALLESHWARAM', 'BANGALORE', '19-09-1986', '+91 9988776655', 'MANISH@GMAIL.COM');

--2nd Record
INSERT INTO EMP (EID, NAME, ADDR, CITY, DOB, PHONE, EMAIL)
VALUES ('E0002', 'ROHIT SHARMA', '#56, JP NAGAR', 'BANGALORE', '07-01-1963', '+91 8811223314', 'ROHIT@YAHOO.COM');

--3rd Record
INSERT INTO EMP
VALUES ('E0003', 'VIRAT KOHLI', '#56, SECTOR 3', 'NOIDA', '23-07-1987', '+91 5566118877', 'VIRAT@GMAIL.CO.IN');

--Multiple Records
INSERT INTO EMP
VALUES 
('E0004', 'CHETESHWAR PUJARA'  , '#103, SAROJINI NAGAR'  , 'GURGAON'  , '02-08-1991' , '+91 8527419630' , 'PUJARA@GMAIL.COM'),
('E0005', 'AJINKHYA RAHANE'    , 'S-3, SECRETARIAT ROAD' , 'NOIDA'    , '14-01-1993' , '+91 5656234578' , 'RAHANE@GMAIL.CO.IN'),
('E0006', 'RISHABH PANT'       , '#45/3, UTTAM NAGAR'    , 'DELHI'    , '17-04-1997' , '+91 7879654128' , 'RISHABH@YAHOO.COM'),
('E0007', 'SHARDUL THAKUR'     , '#56, KANKARBAGH'       , 'PATNA'    , '08-02-1990' , '+91 4587961517' , 'SHARDUL@YAHOO.COM'),
('E0008', 'RAVICHANDRAN ASHWIN', '#102, ST MOUNT''S ROAD', 'NOIDA'    , '19-10-1998' , '+91 9965874127' , 'ASHWIN@YAHOO.COM'),
('E0009', 'ISHANT SHARMA'      , '#24/102, UTTAM NAGAR'  , 'DELHI'    , '22-11-1982' , '+91 4587962547' , 'ISHANT@GMAIL.COM'),
('E0010', 'BHUVANESHWAR KUMAR' , '#145, MG ROAD'         , 'FARIDABAD', '28-07-1976' , '+91 8895847123' , 'BHUVI@GMAIL.COM');

--View the records inserted, sorted in asending order of EID
SELECT * FROM EMP 
ORDER BY EID ASC;

--Use WHERE clause to filter records based on different parameters
SELECT EID, NAME, CITY FROM EMP
WHERE CITY = 'NEW DELHI';

SELECT EID, NAME, CITY FROM EMP
WHERE EMAIL LIKE '%GMAIL%';

SELECT EID, NAME, CITY FROM EMP
WHERE CITY LIKE '_____';

SELECT TOP 5 * FROM EMP;

SELECT * FROM EMP
WHERE ADDR LIKE '#___,%' AND CITY <> 'BANGALORE'