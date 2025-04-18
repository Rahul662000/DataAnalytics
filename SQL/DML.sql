USE Rahul_practice;

SHOW DATABASES;

CREATE TABLE myLog(
	ID int NOT NULL primary key,
    Name varchar(20),
	login int(6)
);

insert into myLog values(2,'Rahul Singh',3);
insert into myLog values(1,'Raghav Singh',6);
insert into myLog values(3,'Singh',5);
x
Select * from myLog;

update mylog set name = 'thakur sahab' where id=1;

delete from mylog where id = 1;