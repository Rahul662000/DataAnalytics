Drop table onboarding1;

CREATE TABLE ONBOARDING1(
	employeeID INT,
    employeeName VARCHAR(100),
    JobTitle VARCHAR(50),
    Salary Decimal(10,2),
    JoinDate DATE,
    Department VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO ONBOARDING1 (employeeID, employeeName, JobTitle, Salary, JoinDate, Department, Email)  
VALUES  
(101, 'John Doe', 'Software Engineer', 75000.00, '2023-01-15', 'IT', 'john.doe@example.com'),  
(102, 'Jane Smith', 'Data Analyst', 65000.00, '2022-05-22', 'Analytics', 'jane.smith@example.com'),  
(103, 'Michael Johnson', 'HR Manager', 72000.00, '2021-03-10', 'Human Resources', 'michael.johnson@example.com'),  
(104, 'Emily Davis', 'Project Manager', 85000.00, '2023-07-01', 'Management', 'emily.davis@example.com'),  
(105, 'David Wilson', 'Backend Developer', 78000.00, '2022-10-05', 'IT', 'david.wilson@example.com'),  
(106, 'Sarah Brown', 'UI/UX Designer', 70000.00, '2023-02-14', 'Design', 'sarah.brown@example.com'),  
(107, 'James Lee', 'Business Analyst', 67000.00, '2022-11-11', 'Business', 'james.lee@example.com'),  
(108, 'Anna White', 'Frontend Developer', 73000.00, '2021-12-19', 'IT', 'anna.white@example.com'),  
(109, 'Robert Martin', 'Marketing Manager', 69000.00, '2022-04-25', 'Marketing', 'robert.martin@example.com'),  
(110, 'Laura Garcia', 'QA Engineer', 64000.00, '2023-08-30', 'Quality Assurance', 'laura.garcia@example.com');  

Select * from onboarding1;

select count(*) as TotalEmployeeJoined
From Onboarding1
Where YEAR(JoinDate) = 2022;

select avg(salary) as AverageSalary
from OnBoarding1
Where YEAR(JoinDate) = 2022;

-- Sorting-- 

INSERT INTO ONBOARDING1 (employeeID, employeeName, JobTitle, Salary, JoinDate, Department)  
VALUES  
(101, 'John Doe', 'Software Engineer', 75000.00, '2021-03-15', 'IT'),  
(102, 'Jane Smith', 'Data Analyst', 65000.00, '2020-05-22', 'Analytics'),  
(103, 'Michael Johnson', 'HR Manager', 72000.00, '2018-07-10', 'Human Resources'),  
(104, 'Emily Davis', 'Project Manager', 85000.00, '2019-09-01', 'Management'),  
(105, 'David Wilson', 'Backend Developer', 78000.00, '2023-11-05', 'IT'),  
(106, 'Sarah Brown', 'UI/UX Designer', 70000.00, '2017-01-14', 'Design'),  
(107, 'James Lee', 'Business Analyst', 67000.00, '2022-08-11', 'Business'),  
(108, 'Anna White', 'Frontend Developer', 73000.00, '2020-12-19', 'IT'),  
(109, 'Robert Martin', 'Marketing Manager', 69000.00, '2021-04-25', 'Marketing'),  
(110, 'Laura Garcia', 'QA Engineer', 64000.00, '2019-06-30', 'Quality Assurance');  

Select * from onboarding1;

Select * from onboarding1 order by joinDate ASC;

select department,count(*) as employeeCount from onboarding1 group by department having count(*) > 5;

-- NULL values

Select * from onboarding1 order by email;

Select * from onboarding1 where email is not null;

select department , avg(email) as AverageEmail from onboarding1 group by department;

select jobtitle , count(*) as employeecount from onboarding1 where jobtitle is null group by jobtitle;

INSERT INTO ONBOARDING1 (employeeID, employeeName, Salary, JoinDate, Department)  
VALUES  
(301, 'John Doe', NULL, '2021-03-15', 'IT'),  
(302, 'Jane Smith', NULL, '2020-05-22', 'Analytics'),  
(303, 'Michael Johnson', 72000.00, '2018-07-10', 'Human Resources'),  
(304, 'Emily Davis', NULL, '2019-09-01', 'Management');  

Select * from onboarding1;

-- DATE AND TIMEING 

select employeeName , year(joindate) as joiningYear , month(joindate) as joinMonth from onboarding1;

select employeeName , date_format(joindate , '%d/%m/%Y') as formattedjoindate from onboarding1;

select employeeName , Datediff(curdate() , joindate) as dayswithcompany from onboarding1 where Datediff(curdate() , joindate) > 365;

-- Wording with exporession

select employeename , salary ,
	Case 
		when salary is null then 'unknown'
        when salary < 50000 then 'low'
        when salary > 50000 and salary < 80000 then 'medium'
        else 'high salary'
	End as salaryrange
from onboarding1;

select employeeName , Datediff(curdate() , joindate) as dayswithcompany , 
	case
		when Datediff(curdate() , joindate) > 5000 then 'Gem'
        when Datediff(curdate() , joindate) < 5000 then 'Rookie'
	end as days
    from onboarding1