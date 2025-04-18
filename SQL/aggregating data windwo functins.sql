SELECT 
    EmployeeId,
    EmployeeName,
    Department,
    Salary,
    Sum(salary) OVER (ORDER BY department) AS DepartmentTotalSalary
FROM Employees;

create table sales(
	salesId int primary key,
    Product varchar(255),
    salesAmount decimal(10,2),
    salesDate date
);

INSERT INTO Sales (SalesId, Product, SalesAmount, SalesDate)
VALUES 
(1, 'Laptop', 75000.00, '2025-01-15'),
(2, 'Smartphone', 50000.00, '2025-01-18'),
(3, 'Tablet', 30000.00, '2025-02-05'),
(4, 'Smartwatch', 15000.00, '2025-02-10'),
(5, 'Headphones', 8000.00, '2025-03-01'),
(6, 'Camera', 40000.00, '2025-03-05'),
(7, 'Monitor', 20000.00, '2025-03-12');

select salesId , product , salesamount , salesdate ,
	min(salesamount) over (partition by product) as minsalesperproduct,
    max(salesamount) over (partition by product) as maxsalesperproduct
from sales;