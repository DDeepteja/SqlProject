

use [SQL PROJECT];
/* Sub Query */
Create Table EmployeeDetails
(EmployeeId int,
FirstName varchar(255),
LastName varchar(255),
Salary int,
JoiningDate date,
Department varchar(255),
Gender varchar(255));

Insert into EmployeeDetails
Values(1,'Vikas', 'Ahlawat', 600000, '2/12/2013 11:16', 'IT', 'Male'),
(2,'Nikita', 'Jain', 530000, '2/14/2013 11:16', 'HR', 'Female'),
(3,'Ashish', 'Kumar', 1000000, '2/14/2013 11:16', 'IT', 'Male'),
(4,'Nikhil', 'Sharma', 480000, '2/15/2013 11:16', 'HR', 'Male'),
(5,'Anish', 'Kadian', 500000, '2/16/2013 11:16', 'Payroll', 'Male')
;

select * from EmployeeDetails; --to get all employee detail from "EmployeeDetail":

select FirstName from EmployeeDetails; --query to get only "FirstName" column from "EmployeeDetail":

select UPPER(FirstName) AS FirstName from EmployeeDetails; --query to get FirstName in upper case as "First Name":

select UPPER(FirstName) AS FirstName from EmployeeDetails; --query to get FirstName in upper case as "First Name":

select CONCAT(FirstName, ' ', LastName) AS Name from EmployeeDetails; --query for combine FirstName and LastName and display it as "Name":

select * from EmployeeDetails where FirstName = 'Vikas'; --employee detail whose name is "Vikas":

select * from EmployeeDetails where FirstName like 'A%'; --employee detail from EmployeeDetail table whose "FirstName" start with letter 'a':

select * from EmployeeDetails where FirstName like 'A%'; --employee detail from EmployeeDetail table whose "FirstName" start with letter 'a':

select * from EmployeeDetails where FirstName like '%H'; --employee detail from EmployeeDetail table whose "FirstName" ends with letter 'h':

select * from EmployeeDetails where FirstName like '[A-P]%'; --employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p':

select * from EmployeeDetails where FirstName like '[^A-P]%'; --employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p':

select * from EmployeeDetails where Gender like '%le' AND Gender like '____'; --employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters:

select * from EmployeeDetails where FirstName like 'A%' AND Gender like '____'; --employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters:

select * from EmployeeDetails where FirstName like 'Vik%'; --employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as":

select DISTINCT Department from EmployeeDetails; --unique "Department" from EmployeeDetail table:

select max(Salary) from EmployeeDetails; --highest "Salary" from EmployeeDetail table:

select min(Salary) from EmployeeDetails; --lowest "Salary" from EmployeeDetail table:

SELECT FORMAT(JoiningDate, 'dd MMM yyyy') as JoiningDate from EmployeeDetails; --"JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013":

SELECT FORMAT(JoiningDate, 'yyyy/ mm /dd') as JoiningDate from EmployeeDetails; --"JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15":

SELECT FORMAT(JoiningDate, 'hh:mm:ss tt') as JoiningDate from EmployeeDetails; --Show only time part of the "JoiningDate":
 
SELECT FORMAT(JoiningDate, 'yyyy') as JoiningDate from EmployeeDetails; --Get only Year part of "JoiningDate":

SELECT FORMAT(JoiningDate, 'MMM') as JoiningDate from EmployeeDetails; --Get only Month part of "JoiningDate":

SELECT FORMAT(getdate(), 'dd MMM yyyy') as JoiningDate from EmployeeDetails; --Get system date:

SELECT GETUTCDATE(); --Get UTC date:

select FirstName, GETDATE(), JoiningDate, DATEDIFF(MM,JoiningDate,GETDATE()) as Months from EmployeeDetails; --Get the first name, current date, joiningdate and diff between current date and joining date in months:

select FirstName, GETDATE(), JoiningDate, DATEDIFF(DD,JoiningDate,GETDATE()) as Days from EmployeeDetails; --25)	Get the first name, current date, joiningdate and diff between current date and joining date in days:

select * from EmployeeDetails where FORMAT(JoiningDate, 'yyyy') = 2013; --Get all employee details from EmployeeDetail table whose joining year is 2013:

select * from EmployeeDetails where FORMAT(JoiningDate, 'dd MMM') = '01 Jan'; --Get all employee details from EmployeeDetail table whose joining month is Jan(1):

select * from EmployeeDetails where FORMAT(JoiningDate, 'dd MMM') = '01 Jan'; --Get all employee details from EmployeeDetail table whose joining month is Jan(1):

select COUNT(FirstName) from EmployeeDetails; --Get how many employee exist in "EmployeeDetail" table:

SELECT TOP 1 * from EmployeeDetails; --31. Select only one/top 1 record from "EmployeeDetail" table:

SELECT * FROM EmployeeDetails WHERE FirstName IN('Vikas','Ashish','Nikhil'); --Select all employee detail with First name "Vikas","Ashish", and "Nikhil":

SELECT * FROM EmployeeDetails WHERE FirstName NOT IN('Vikas','Ashish','Nikhil'); --SELECT * FROM EmployeeDetails WHERE FirstName IN('Vikas','Ashish','Nikhil'):

SELECT RTRIM(FirstName) as FirstName FROM EmployeeDetails; --Select first name from "EmployeeDetail" table after removing white spaces from right side:

SELECT LTRIM(FirstName) as FirstName FROM EmployeeDetails; --Select first name from "EmployeeDetail" table after removing white spaces from left side:

SELECT FirstName, CASE  WHEN Gender = 'Male' THEN 'M' WHEN Gender = 'Female' THEN 'F' END AS [Gender] FROM EmployeeDetails; --Display first name and Gender as M/F.(if male then M, if Female then F):

SELECT 'HELLO ' + FirstName FROM EmployeeDetails; --Select first name from "EmployeeDetail" table prifixed with "Hello":

SELECT * FROM EmployeeDetails where Salary > 600000; --Get employee details from "EmployeeDetail" table whose Salary greater than 600000:


SELECT * FROM EmployeeDetails where Salary < 700000; --Get employee details from "EmployeeDetail" table whose Salary less than 700000:


SELECT * FROM EmployeeDetails where Salary IN(500000,600000); --Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000:

Create Table ProjectDetails
(ProjectDetailId int,
EmployeeDetailId int,
ProjectName varchar(255));

Insert into ProjectDetails
Values(1, 1, 'Task Track'),
(2, 1, 'CLP'),
(3, 1, 'Survey Management'),
(4, 2, 'HR Management'),
(5, 3, 'Task Track'),
(6, 3, 'GRS'),
(7, 3, 'DDS'),
(8, 4, 'HR Management'),
(9, 6, 'GL Management')
;

SELECT * FROM ProjectDetails; --Give records of ProjectDetail table:

select sum(Salary), Department from EmployeeDetails Group By Department; --Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table:

select sum(Salary), Department from EmployeeDetails Group By Department ORDER BY SUM(Salary) ASC;  --Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary:

select sum(Salary), Department from EmployeeDetails Group By Department ORDER BY SUM(Salary) DESC;  --Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary:

select sum(Salary), Department, count(Department) from EmployeeDetails Group By Department;  --Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table:

select avg(Salary), Department, count(Department) from EmployeeDetails Group By Department ORDER BY avg(Salary) ASC;  --Get department wise average salary from "EmployeeDetail" table order by salary ascending:

select max(Salary), Department, count(Department) from EmployeeDetails Group By Department ORDER BY max(Salary) ASC;  --Get department wise maximum salary from "EmployeeDetail" table order by salary ascending:

select min(Salary), Department, count(Department) from EmployeeDetails Group By Department ORDER BY min(Salary) ASC;  --Get department wise minimum salary from "EmployeeDetail" table order by salary ascending:

select min(Salary), Department, count(Department) from EmployeeDetails Group By Department ORDER BY min(Salary) DESC; --Get department wise minimum salary from "EmployeeDetail" table order by salary descending:

select * from EmployeeDetails, ProjectDetails; 

select ProjectName order by FirstName from EmployeeDetails, ProjectDetails where EmployeeId = ProjectDetailId;



