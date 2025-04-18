create table employee(
	employeeId int primary key,
    employeeindo json
);

INSERT INTO Employee (employeeId, employeeIndo) VALUES
(1, '{"name": "John Doe", "age": 30, "department": "IT", "salary": 60000.50}'),
(2, '{"name": "Jane Smith", "age": 28, "department": "HR", "salary": 55000.75}'),
(3, '{"name": "Mark Johnson", "age": 35, "department": "Finance", "salary": 72000.00}');

select * from employee;

select employeeId , 
	json_value(employeeindo,'$.name') as employeeName,
    json_value(employeeindo,'$.age') as employeeAge
from employee;

create table books(
	id int primary key,
    author varchar(255),
    title varchar(255),
    genre varchar(255),
    price decimal(10,2),
    publish_date date,
    descr text
);

-- input inside table
load xml
infile -- 'Path'
into table books
rows identified by '<book>';

-- extract
select * from books; 