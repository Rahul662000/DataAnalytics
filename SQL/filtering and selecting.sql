USE USER_1;
CREATE TABLE ONBOARDING(
	employeeID INT,
    FirstName varchar(255),
    LastName varchar(255),
    Salary Decimal(10,2),
    Department varchar(255),
    PhoneNumber varchar(255)
);

INSERT INTO ONBOARDING (employeeID, FirstName, LastName, Salary, Department, PhoneNumber) VALUES
(101, 'John', 'Doe', 60000.00, 'IT', '9876543210'),
(102, 'Jane', 'Smith', 75000.50, 'HR', '9123456789'),
(103, 'Robert', 'Brown', 82000.75, 'Finance', '9234567890'),
(104, 'Emily', 'Davis', 55000.00, 'Marketing', '9345678901'),
(105, 'Michael', 'Wilson', 90000.25, 'Engineering', '9456789012'),
(106, 'Sarah', 'Miller', 72000.80, 'Sales', '9567890123'),
(107, 'David', 'Anderson', 67000.90, 'Operations', '9678901234'),
(108, 'Laura', 'Thomas', 58000.60, 'Customer Support', '9789012345'),
(109, 'James', 'Moore', 99000.40, 'Management', '9890123456'),
(110, 'Sophia', 'Taylor', 63000.20, 'Research', '9901234567');

select * from ONBOARDING;

select EmployeeID,FirstName from ONBOARDING WHere salary > 60000.00;

select distinct department from onboarding;

select count(*) from onboarding;

select * from onboarding where salary between 40000 AND 60000;

select * from onboarding where lastname like '%s%';

select * from onboarding where lastname not like '%s%';

