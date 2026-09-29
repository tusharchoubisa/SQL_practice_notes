#SUBQUERY : Query under query is knowns as subquery . 

# SYNTAX :   select .......from.....where column ....=(select ......from);
# select column1 , column2 from table_name where column1 'operator' ( select from table_name where 'condition');

#Q) to find avr salary to higher slary :
Select * from students where salary >(select avg(salary) from students ); 


# TYPES OF SUBQUEARYS :
#1) Scalar Subquery : 1 value return kare
SELECT AVG(salary)
FROM employees;

#2 Multi-row Subquery:
SELECT salary
FROM employees
WHERE department = 'HR'; 

#3 Coorelated Subqueary : A correlated Sub. is a subqueary that reference a column from the outer queray from inner 
#                         queary depemd in current row outer queary . 
#Syntax : Har employee ko find karo jinki salary apne department ki average salary se zyada hai.
SELECT e.name, e.department, e.salary FROM employees e WHERE e.salary > (SELECT AVG(e2.salary)FROM employees e2 WHERE e2.department = e.department);

#4 Multi-Row Subquery : Multi-row subquery woh subquery hai jo ek se zyada rows/values return karti hai.
#Syntax : IT department ke employees ki salary se zyada salary wale employees find karo.
SELECT name, salary FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'IT');


#1. Subquery in WHERE — Single Value :
#syntax : Average salary se zyada salary wale employees find karo.
SELECT name, salary
FROM employees WHERE salary > (SELECT AVG(salary) FROM employees );

#2. MAX() with Subquery : 
#Syntax :Highest salary wale employee ko find karo.
SELECT name, salary FROM employees WHERE salary = (SELECT MAX(salary)FROM employees); 

#3. MIN() with Subquery : 
#syntax : Lowest salary wale employee ko find karo.
SELECT name, salary FROM employees WHERE salary = (SELECT MIN(salary)FROM employees);

#4 IN — Multi-row Subquery :
#syntax : Un employees ko find karo jo un departments me hain jahan kisi employee ki salary 80000 se zyada hai.
SELECT department FROM employees WHERE salary > 80000;

#5. NOT IN:
#syntax : Un employees ko find karo jo un departments me nahi hain jahan salary 80000 se zyada hai.
SELECT name, department, salary FROM employees WHERE department NOT IN (SELECT department FROM employees WHERE salary > 80000);

#6. FROM ke andar Subquery:
#syntax : Har department ki average salary nikalo, phir us result ko temporary table ki tarah use karo.
SELECT department, avg_salary FROM (SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department) AS temp;

#7 SELECT  ke andar Subquery : SELECT tells SQL what data you want to see.
#syntax: 
SELECT name, salary FROM employees;
