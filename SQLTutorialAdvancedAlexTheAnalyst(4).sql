create procedure test
as
select *
from SQ_TutorialAlexAnalystYT..EmployeeDemographics;
-- cara membuat store procedure dengan simpel

Exec test
-- cara menggunakan stored procedure yang baru dibuat

CREATE PROCEDURE Temp_Employee
AS
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT Job_Title, Count(Job_Title), Avg(Age), AVG(salary)
FROM SQ_TutorialAlexAnalystYT..EmployeeDemographics as emp
JOIN SQ_TutorialAlexAnalystYT..EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
group by Job_Title

Select * 
From #temp_employee

exec Temp_Employee
-- membuat stored procedure dengan menggunakan temp table