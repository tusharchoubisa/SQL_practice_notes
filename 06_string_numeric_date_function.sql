# 1. UPPER() : First name ko CAPITAL letters me convert karega.
SELECT UPPER(first_name) FROM employees;

# 2. LOWER() : First name ko lowercase me convert karega:
select lower(first_name) from employees;

# 3. LENGTH() :First name me kitne characters hain, batayega.
SELECT first_name, LENGTH(first_name) FROM employees;

# 4. CONCAT() : First name aur last name ko join karke full name banayega.
SELECT CONCAT(first_name, ' ', last_name) FROM employees;

# 5. SUBSTRING() : Name ke andar se specific characters nikalega
SELECT first_name, SUBSTRING(first_name, 1, 3) FROM employees;

#Numeric Functions : 
# 6. ROUND() : Salary ko round karega.
SELECT salary, ROUND(salary) FROM employees;

# 7. CEIL() : Decimal ko next highest integer par le jayega.
SELECT salary, CEIL(salary) FROM employees; 

# 8 LOOR() decimal ko lower integer par le jayega :
SELECT salary, FLOOR(salary)  FROM employees;

# 9. NOW() : Current date + time dikhayega:
SELECT NOW() AS current_datetime;

# 10. CURDATE() : Sirf current date dikhayega:
SELECT CURDATE() ;

# 11. DATEDIFF() Employee ki joining date se aaj tak kitne days hue, nikal sakte ho:
SELECT  first_name , joining_date, DATEDIFF(CURDATE(), joining_date) FROM employees;
