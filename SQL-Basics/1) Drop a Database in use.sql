--Cannot drop database "demo" because it is currently in use.
USE master
GO
--Kick all users off of the database NOW
ALTER DATABASE DEMO SET SINGLE_USER WITH ROLLBACK IMMEDIATE

--Kick all but after 60 seconds
ALTER DATABASE DEMO SET SINGLE_USER WITH ROLLBACK AFTER 60 SECONDS

--restore connection to users
--ALTER DATABASE DEMO SET MULTI_USER
DROP DATABASE DEMO;