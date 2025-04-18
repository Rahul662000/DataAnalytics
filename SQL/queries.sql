create database queries;
use queries;

Create table engineering(
	ProjectID INT Primary Key,
    ProjectName VARCHAR(100),
    StartDate Date,
    ENdDate Date,
    LeadEngineer VARCHAR(200),
    Budget Decimal(10,2)
);

Insert into Engineering values
				-- (1,'Project A','2023-01-01','2023-06-01','John Smith1',50000-- .00),
--                 (2,'Project B','2023-02-01','2023-07-01','John Smit2',500009.00),
--                 (3,'Project C','2023-03-01','2023-08-01','John Smith3',70000.00),
--                 (4,'Project D','2023-04-01','2023-09-01','John Smith4',75000.00),
--                 (5,'Project E','2023-05-01','2023-10-01','John Smith5',90000.00),
                (6,'Project E','2023-05-01','2023-10-01','John Smith5',90000.00);
                
Select projectName , budget from ENgineering;

Select SUM(budget) from ENgineering;

Select distinct(LeadEngineer) from engineering;

select e.projectName , e.leadengineer as engineerName from Engineering as e;
