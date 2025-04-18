USE Rahul_practice;

SHOW DATABASES;

CREATE TABLE STUDENT(
	Roll_no int,
    First_name varchar(20),
    Last_name varchar(20),
    Age int,
    Marks int
);

ALTER TABLE STUDENT ADD Father_Name varchar(20) , DROP AGE;

INSERT INTO STUDENT VALUES(1,'Rahul','Singh',24,100);

SELECT * FROM STUDENT_DETAILS;

DROP DATABASE Rahul_practice;
DROP TABLE STUDENT;

Truncate TABLE STUDENT;

RENAME TABLE STUDENT TO STUDENT_DETAILS;
