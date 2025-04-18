-- Row Function
SELECT 
    EmployeeId,
    EmployeeName,
    Department,
    Salary,
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNumber
FROM Employees;

-- Rank Function
SELECT 
    EmployeeId,
    EmployeeName,
    Department,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS EmployeeRank
FROM Employees;

-- Dense_rank
SELECT 
    EmployeeId,
    EmployeeName,
    Department,
    Salary,
    dense_rank() OVER (ORDER BY Salary DESC) AS DenseEmployeeRank
FROM Employees;


