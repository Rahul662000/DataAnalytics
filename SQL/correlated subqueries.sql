select employeeID , employeeName , departmentName , salary 
from employees as E
join departments1 as D on E.departmentId =  D.departmentId
where salary > (
	select avg(salary) 
    from employees as subQuery
    where subQuery.departmentId = E.departmentId
);