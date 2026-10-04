show databases;
create database all_sqldb;
use all_sqldb;
CREATE TABLE employees (emp_id INT,name VARCHAR(50),department VARCHAR(50),salary INT,city VARCHAR(50));

INSERT INTO employees (emp_id, name, department, salary, city)
VALUES
(1, 'Amit', 'IT', 60000, 'Delhi'),
(2, 'Priya', 'HR', 45000, 'Jaipur'),
(3, 'Rahul', 'IT', 75000, 'Mumbai'),
(4, 'Neha', 'Sales', 50000, 'Pune'),
(5, 'Raj', 'IT', 90000, 'Delhi'),x
(6, 'Simran', 'HR', 70000, 'Jaipur'),
(7, 'Karan', 'Sales', 65000, 'Pune'),
(8, 'Ankit', 'Finance', 55000, 'Delhi'),
(9, 'Pooja', 'Finance', 80000, 'Mumbai'),
(10, 'Rohit', 'IT', 50000, 'Delhi');

show tables;
desc table empployees;

#1) SELECT 
SELECT * FROM employees;
SELECT name  FROM employees;
select name , salary from employees ;

# 2. WHERE — CLAUSE 
select name , salary , department from employees where department = 'IT';
SELECT * FROM employees WHERE city = 'Delhi';

#3. AND / OR / NOT :
select name , salary, department from employees where department ='it' and salary > 60000;
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
SELECT * FROM employees WHERE NOT department = 'IT';

#4. BETWEEN / IN / LIKE :
SELECT *
FROM employees WHERE salary BETWEEN 50000 AND 80000;
SELECT * FROM employees WHERE city IN ('Delhi', 'Mumbai');
SELECT * FROM employees WHERE name LIKE 'A%';

#5. DISTINCT / ORDER BY 
SELECT DISTINCT department FROM employees;
SELECT * FROM employees ORDER BY salary ASC;

# 6. Aggregate Functions :
SELECT COUNT(*) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT SUM(salary) FROM employees;

#7. GROUP BY
SELECT department, COUNT(*) FROM employees GROUP BY department;

# 8. HAVING 
SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 60000;

#9 INNER JOIN 
SELECT e.name, e.department, d.department_name FROM employees e INNER JOIN departments d ON e.department = d.department_name;

#10 LEFT JOIN 
SELECT e.name, e.department, d.location FROM employees e LEFT JOIN departments d ON e.department = d.department_name;

#11 RIGHT JOIN
SELECT e.name, e.department, d.location FROM employees e RIGHT JOIN departments d ON e.department = d.department_name;

#12 FULL OUTER JOIN
SELECT e.name, e.department, d.location FROM employees e left join  departments d ON e.department = d.department_name 
union 
SELECT e.name, e.department, d.location FROM employees e right join departments d ON e.department = d.department_name ;

#13 SELF JOIN
SELECT  e.name AS employee, m.name AS manager FROM employees e LEFT JOIN employees m ON e.manager_id = m.emp_id;

#14 CROSS JOIN
SELECT e.name, d.department_name FROM employees e CROSS JOIN departments d;

#15 JOIN + WHERE
SELECT e.name, e.salary, d.department_name FROM employees e INNER JOIN departments d ON e.department = d.department_name WHERE e.salary > 60000;

#16 Subquery with IN
SELECT * FROM employees WHERE salary IN (SELECT salary FROM employees WHERE department = 'IT' );

#17 ANY 
SELECT * FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'IT');

#18 EXISTS
SELECT * FROM employees e WHERE EXISTS (SELECT 1 FROM employees x WHERE x.department = e.department AND x.salary > 80000);

#19 Subquery with WHERE
SELECT name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE name = 'Amit');

#20 FROM ke andar Subquer
SELECT department, max_salary FROM ( SELECT department, MAX(salary) AS max_salary FROM employees GROUP BY department) AS temp;













