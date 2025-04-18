-- create database tableRelationship;

-- use tableRelationship;

-- table A
-- create table tableA(
-- 	ID int primary key,
--     ColumnA1 varchar(255),
--     ColumnA2 int
-- );

-- Table B with a foreign key
-- create table tableB(
-- 	ID int primary key,
--     ColumnB1 varchar(255),
--     ColumnB2 int,
--     TableA_id int unique,
--     foreign key (TableA_id) references tableA(ID)
-- );

-- insert into tableA(id , columnA1 , columnA2) values(1,"ValueA1",100);

-- insert into tableB(id , columnB1 , columnB2 , TableA_id) values(1,"ValueA1",100,1);

-- select * from tableA join tableB on TableA.id = tableB.id;

-- create table oneSide(
-- 	oneId int primary key,
--     oneColumn1 varchar(255),
--     oneColumn2 int
-- );

-- create table manySide(
-- 	ManyId int primary key,
--     ManyColumn1 varchar(255),
-- 	ManyColumn2 date,
--     oneId int,
--     foreign key (oneid) references oneside(oneid)
-- );

-- Insert into oneSide (1 value)
-- INSERT INTO oneSide (oneId, oneColumn1, oneColumn2) 
-- VALUES (2, 'Sample2', 100);

-- Insert into manySide (2 values referencing oneId = 1)
-- INSERT INTO manySide (ManyId, ManyColumn1, ManyColumn2, oneId) 
-- VALUES 
-- (3, 'Detail3', '2025-03-20', 2),
-- (4, 'Detail4', '2025-03-21', 2);

-- select * from oneSide join manySide on oneside.oneid = manyside.oneid;

create table manyTableA(
	A_ID int primary key,
    ColumnA1 varchar(255),
	ColumnA2 int
);

create table manyTableB(
	B_ID int primary key,
    ColumnB1 varchar(255),
	ColumnB2 date
);

A_idcreate table junction_table(
	A_id int,
    B_id int,
    
    primary key (A_id , B_id),
    foreign key (A_id) references manyTableA(A_id),
    foreign key (B_id) references manyTableB(B_id)
);

-- Insert into manyTableA
INSERT INTO manyTableA (A_ID, ColumnA1, ColumnA2) 
VALUES 
(1, 'Value A1', 100),
(2, 'Value A2', 200);

-- Insert into manyTableB
INSERT INTO manyTableB (B_ID, ColumnB1, ColumnB2) 
VALUES 
(1, 'Value B1', '2025-03-20'),
(2, 'Value B2', '2025-03-21');

--  Establishing relationship in junction table
insert into junction_table (A_id,B_id) values(1,1); -- connects valuesA1 to valuesB1
insert into junction_table (A_id,B_id) values(1,2); -- connects valuesA1 to valuesB2
insert into junction_table (A_id,B_id) values(2,1); -- connects valuesA2 to valuesB1
-- insert into junction_table (A_id,B_id) values(2,2); -- connects valuesA2 to valuesB2

select manyTableA.* , manyTableA.* 
from manyTableA
join junction_table on manytableA.A_id = junction_table.A_id
join manyTableB on manytableB.B_id = junction_table.B_id;

