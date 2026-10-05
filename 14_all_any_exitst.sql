show databases;
create database  in_all_existdb ;
show databases;
use subquearydb;
show tables ;
CREATE TABLE employes (
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employes (emp_name, department, salary)
VALUES
('Priya Verma', 'HR', 38000),
('Rahul Singh', 'Finance', 52000),
('Sneha Gupta', 'IT', 48000),
('Vikas Yadav', 'Sales', 65000),
('Neha Sharma', 'Marketing', 42000),
('Rohit Kumar', 'IT', 60000),
('Anjali Mehta', 'Finance', 55000),
('Mohit Jain', 'IT', 70000),
('Deepak Saini', 'Sales', 40000),
('Pooja Mishra', 'Marketing', 68000),
('Arjun Rana', 'IT', 53000),
('Simran Kaur', 'IT', 50000),
('Sandeep Yadav', 'Sales', 43000),
('Nidhi Arora', 'HR', 39000),
('Abhishek Tiwari', 'Finance', 75000),
('Kajal Singh', 'Marketing', 46000),
('Harsh Vardhan', 'IT', 58000),
('Isha Malhotra', 'IT', 54000),
('Nitin Joshi', 'Admin', 67000),
('Yash Agarwal', 'IT', 56000),
('Meena Sharma', 'Finance', 64000),
('Shreya Das', 'IT', 69000),
('Lokesh Meena', 'Sales', 80000),
('Aarti Jain', 'HR', 44000),
('Ajay Sharma', 'IT', 50000);

select * from employes ;

#Level 1 — EXISTS
# Q1. Un employees ko find karo jinke same department mein koi employee unse zyada salary leta hai.alter
SELECT * from  employes e where exists (select 1 from employes e2 where e2.department = e.department and e2.salary > e.salary);

#Q2. Un employees ko find karo jinke same department mein koi employee unse kam salary leta hai.
select * from employes e where exists (select 1 from employs e2 where e2.department = e.department and e2.salary < e.salary );

#Q3. Un employees ko find karo jinke same department mein koi employee ■60,000 se zyada salary leta hai.
select * from employes e where exists (select 1 from employes e2 where e2.department = e.department and e2.salary > 60000 ); 

#Q4. Un employees ko find karo jinke same department mein koi employee ■50,000 se kam salary leta hai.
select * from employes e where exists ( select 1 from employes e2 where e2.department = e.department and e2.salary < 50000) ;

#Level 2 — EXISTS + Correlation
#Q5. Un employees ko find karo jinke same department mein koi employee unki salary se exactly 5,000 kam kamata hai
select * from employes e where exists (select 1 from employes e2 where e2.department = e.department and e2.salary = e.salary - 5000 );

#Q6. Un employees ko find karo jinke same department mein koi employee unki salary se ■10,000 ya usse zyada kam kamata hai.
select * from employes e where exists ( select 1 from employes e2 where e2.department = e.department and e2.salary <= e.salary - 10000 ); 

#Q7. Un employees ko find karo jinke same department mein koi employee unse zyada salary leta hai aur us employee ka naam "Rohit Kumar" hai.
select * from employes e where exists (select 1 from employes e2 where e2.department = e.department and e2.salary > e.salary and e2.emp_name = 'Rohit Kumar' );

#08 Un departments ko find karo jahan kam se kam ek employee ■70,000 se zyada kamata hai
select distinct department from employes e where exists (select 1 from employes e2 where e2.department = e.department and e2.salary > 70000);

#Level 3 — ANY
#Q9. Un employees ko find karo jinki salary kisi bhi dusre department ke kam se kam ek employee se zyada hai.
select * from employes e where e.salary > any ( select e2.salary from employes e2 where e2.department != e.department);

#Q10. Un employees ko find karo jinki salary kisi bhi dusre department ke employee se kam hai.
select * from employes e where e.salary  < any ( select e2.salary from employes e2 where e2.department != e.department);

#Q11.Un employees ko find karo jinki salary same department ke kisi bhi employee ki salary se zyada hai.


 











