CREATE database casestudy;
USE casestudy;

#Creating Employees Table 
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    HireDate DATE,
    Gender VARCHAR(10),
    Age INT
);

#INSERTING VALUES INTO Employees TABLE
INSERT INTO Employees(EmployeeID, FirstName,LastName,DepartmentID,HireDate,Gender,Age)
Values
(1,'John','Doe',1,'2015-06-10','Male',35),
(2,'Alice','Smith',2,'2017-09-22','Female',29),
(3,'Bob','Johnson',3,'2018-04-15','Male',40),
(4,'Emma','Brown',4,'2016-08-12','Female',32),
(5,'Michael','Davis',5,'2019-11-03','Male',28),
(6,'Sophia','Wilson',1,'2020-02-19','Female',31),
(7,'James','Anderson',2,'2014-05-07','Male',42),
(8,'Olivia','Martinez',3,'2016-07-18','Female',37),
(9,'William','Taylor',4,'2013-09-10','Male',30),
(10,'Isabella','Thomas',5,'2021-01-15','Female',26),
(11,'Ethan','Harris',1,'2018-03-23','Male',30),
(12,'Mia','Clark',2,'2017-06-30','Female',34),
(13,'Daniel','Rodriguez',3,'2015-12-14','Male',38),
(14,'Charlotte','Lewis',4,'2019-09-25','Female',29),
(15,'Benjamin','Walker',5,'2020-11-11','Male',27),
(16,'Amelia','Hall',1,'2016-04-05','Female',36),
(17,'Lucas','Allen',2,'2018-12-28','Male',33),
(18,'Harper','Young',3,'2014-02-17','Female',41),
(19,'Henry','King',4,'2013-05-22','Male',46),
(20,'Evelyn','Wright',5,'2021-07-08','Female',25),
(21,'Alexander','Lopez',1,'2017-10-03','Male',39),
(22,'Scarlett','Hill',2,'2019-08-14','Female',28),
(23,'Jack','Scott',3,'2016-11-20','Male',35),
(24,'Avery','Green',4,'2015-04-30','Female',43),
(25,'Liam','Adams',5,'2020-06-21','Male',30),
(26,'Ella','Nelson',1,'2018-09-13','Female',31),
(27,'David','Carter',2,'2017-02-07','Male',37),
(28,'Grace','Mitchell',3,'2016-03-19','Female',33),
(29,'Mathew','Perez',4,'2015-05-10','Male',41),
(30,'Lily','Roberts',5,'2021-12-04','Female',27),
(31,'Joseph','Turner',1,'2014-08-29','Male',42),
(32,'Zoey','Philips',2,'2019-07-31','Female',29),
(33,'Samuel','Campbell',3,'2018-11-16','Male',35),
(34,'Madison','Parker',4,'2017-01-25','Female',38),
(35,'Anthony','Evans',5,'2015-06-11','Male',44),
(36,'Aria','Edwards',1,'2013-12-15','Female',47),
(37,'Gabriel','Collins',2,'2020-05-07','Male',32),
(38,'Penelope','Stewart',3,'2016-10-19','Female',40),
(39,'Isaac','Sanchez',4,'2014-09-23','Male',45),
(40,'Chloe','Morris',5,'2021-02-28','Female',26),
(41,'Ryan','Rogers',1,'2018-07-14','Male',31),
(42,'Victoria','Reed',2,'2017-11-06','Female',34),
(43,'Nathan','Cook',3,'2015-08-10','Male',39),
(44,'Aubrey','Morgan',4,'2016-12-21','Female',30),
(45,'Aaron','Bell',5,'2020-09-17','Male',28),
(46,'Layla','Murphy',1,'2019-01-11','Female',33),
(47,'Elijah','Bailey',2,'2018-04-30','Male',36),
(48,'Hannah','Rivera',3,'2016-05-13','Female',41),
(49,'Owen','Cooper',4,'2014-06-24','Male',46),
(50,'Zoe','Richardson',5,'2021-08-01','Female',25);


#CREATING Departments TABLE
CREATE TABLE Departments(
	DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    ManagerID INT,
    Location VARCHAR(50)
);

#INSERTING VALUES INTO Departments TABLE
INSERT INTO Departments(DepartmentID, DepartmentName,ManagerID,Location) VALUES
(1,'HR',10,'New York'),
(2,'IT',12,'San Francisco'),
(3,'Sales',15,'Chicago'),
(4,'Finance',18,'Los Angeles'),
(5,'Marketing',21,'Houston');

#CREATING Salaries TABLE
CREATE TABLE Salaries(
	SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    BaseSalary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    TotalSalary DECIMAL(10,2),
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
);

#INSERTING VALUES INTO Salaries TABLE
INSERT INTO Salaries (SalaryID,EmployeeID,BaseSalary,Bonus,TotalSalary) VALUES
(1,1,70000,5000,75000),(2,2,65000,3000,68000),(3,3,80000,7000,87000),
(4,4,75000,4500,79500),(5,5,72000,4000,76000),(6,6,68000,3500,71500),
(7,7,90000,8000,98000),(8,8,85000,6000,91000),(9,9,95000,9000,104000),
(10,10,67000,3200,70200),(11,11,71000,4000,75000),(12,12,74000,4200,78200),
(13,13,82000,7000,89000),(14,14,76000,4600,80600),(15,15,73000,3900,76900),
(16,16,69000,3400,72400),(17,17,88000,7500,95500),(18,18,84000,5800,89800),
(19,19,93000,8700,101700),(20,20,66000,3100,69100),(21,21,75000,4500,79500),
(22,22,72000,4000,76000),(23,23,68000,3500,71500),(24,24,90000,8000,98000),
(25,25,85000,6000,91000),(26,26,95000,9000,104000),(27,27,67000,3200,70200),
(28,28,71000,4000,75000),(29,29,74000,4200,78200),(30,30,82000,7000,89000),
(31,31,76000,4600,80600),(32,32,73000,3900,76900),(33,33,69000,3400,72400),
(34,34,88000,7500,95500),(35,35,84000,5800,89800),(36,36,93000,8700,101700),
(37,37,66000,3100,69100),(38,38,70000,5000,75000),(39,39,75000,4500,79500),
(40,40,72000,4000,76000),(41,41,68000,3500,71500),(42,42,90000,8000,98000),
(43,43,85000,6000,91000),(44,44,95000,9000,104000),(45,45,67000,3200,70200),
(46,46,71000,4000,75000),(47,47,74000,4200,78200),(48,48,82000,7000,89000),
(49,49,76000,4600,80600),(50,50,73000,3900,76900);


#1) Retrive all employee details sorted by their hire date in ascending order.
SELECT * FROM Employees
ORDER BY HireDate;

#2) Find the total number of employees in each department.
SELECT DepartmentName, COUNT(*) AS Total_Employees
FROM Employees JOIN Departments USING(DepartmentID)
GROUP BY DepartmentName;

#3) Get the average salary of employee in each department.
SELECT DepartmentName,AVG(TotalSalary) AS Average_Salary
FROM Employees JOIN Departments
USING(DepartmentId) JOIN Salaries USING(EmployeeID)
GROUP BY DepartmentName;

#4) Find the employee with the highest salary.
SELECT * 
FROM Employees JOIN Salaries USING(EmployeeID)
ORDER BY TotalSalary DESC
LIMIT 1;

#5) Retrive the youngest and oldest employee in the company.
SELECT * 
FROM Employees
WHERE Age = (Select MAX(Age) FROM Employees)
or Age = (Select MIN(Age) FROM Employees)
ORDER BY Age;

#6) Find all employees hire after 2018.
SELECT * 
FROM Employees
WHERE YEAR(HireDate)>2018;

#7) Retrive the number of male and female employees in the company.
SELECT Gender,COUNT(*)AS Count_of_Employees
FROM Employees
GROUP BY Gender;

#8) Get a list of employees who earn more than $75000.
SELECT * 
FROM Employees JOIN salaries USING(EmployeeID)
WHERE TotalSalary>75000;

#9) Find the department with the most employees
SELECT DepartmentName,COUNT(*)AS Count_Of_Employees
FROM Employees JOIN departments USING (DepartmentID)
GROUP BY DepartmentName
ORDER BY Count_Of_Employees DESC
LIMIT 1;

#10) Retrive employees whose first name starts with 'A'.
SELECT * 
FROM Employees
WHERE FirstName LIKE 'A%';

#11) Get a count of employees by gender in each department
SELECT DepartmentName, Gender,COUNT(*) AS EmployeeCount
FROM Employees JOIN departments USING(DepartmentID)
GROUP BY DepartmentName, Gender
ORDER BY DepartmentName;

#12) Find employees who have been working for more than 5 years
SELECT * 
FROM Employees 
WHERE DATEDIFF(NOW(),HireDate)>1825; -- 5 Years = 1825 Days

#13) Find all employees working in the IT or Sales department
SELECT * 
FROM Employees JOIN departments USING(DepartmentID)
WHERE DepartmentName IN('Sales','IT');

#14)Get the average bonus amount given to employees
SELECT AVG(Bonus) AS Average_Bonus
FROM salaries;

#15) Retrive all employees who are older than 30 years but younger than 40 years.
SELECT * 
FROM Employees 
WHERE AGE BETWEEN 30 AND 40;

#16)Get the total salary for each department
SELECT DepartmentName,SUM(TotalSalary) AS Total_Amount
FROM Employees JOIN departments USING (DepartmentID) JOIN salaries USING (EmployeeID)
GROUP BY DepartmentName;

#17)Find the second-highest salary in the company
SELECT MAX(TotalSalary)
FROM Salaries
WHERE TotalSalary<(SELECT MAX(TotalSalary) FROM salaries);

#18) Retrive top 5 highest-paid employees along with their department names
SELECT EmployeeID,FirstName,LastName,DepartmentName,TotalSalary
FROM Employees JOIN departments USING (DepartmentID) JOIN salaries USING (EmployeeID)
ORDER BY TotalSalary DESC
LIMIT 5;

#19) Find employees who earn more than their departments average salary
SELECT EmployeeID,FirstName,LastName,DepartmentName,TotalSalary
FROM Employees 
JOIN departments d USING(DepartmentID)
JOIN salaries s USING(EmployeeID)
WHERE s.TotalSalary>
(SELECT AVG(s2.TotalSalary)
FROM Employees e1
JOIN departments d2 ON e1.DepartmentID = d2.DepartmentID
JOIN salaries s2 ON e1.EmployeeID = s2.EmployeeID
WHERE e1.DepartmentID = e.DepartmentID);

#20) Retrive employees whose total salary is between $60000 and $90000
SELECT * 
FROM Employees JOIN salaries USING(EmployeeID)
WHERE TotalSalary BETWEEN 60000 AND 90000;

#21) Find employees who have the same salary as another employee.
SELECT EmployeeID,FirstName,LastName,TotalSalary
FROM Employees
JOIN salaries USING(EmployeeID)
WHERE TotalSalary IN (SELECT TotalSalary FROM salaries GROUP BY TotalSalary HAVING COUNT(*)>1);

#22) Get the highest, lowest, and average salary in each department.
SELECT DepartmentName,MAX(TotalSalary) AS Maximum_Salary,MIN(TotalSalary) AS 
Minimum_Salary,AVG((TotalSalary) AS Average_Salary
FROM Employees JOIN departments USING (DepartmentID) JOIN salaries USING (EmployeeID)
GROUP BY DepartmentName;