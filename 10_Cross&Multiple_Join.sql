                            # CROSS & MULTIPLE JOIN SQL #
#CROSS JOIN : CROSS JOIN combines every row from one table with every row from another table. It’s also called a Cartesian product.

# syntrax :  select * from table 1 cross join table 2 ;
select * from employees cross join departments ;

# Syntax Cross Join for Specific Column : 
Select e.employe_name , d.department_name from employe e cross join department d ;

# Use Where in Cross join : 
Select e.employe_name , d.department_name from employe e cross join department d 
Where e.department = d.department ;

# Cross join from three table :
select e.employe_name , d.department_name , c.course_name 
From employe e cross join department d cross join course c ;

# MULTIPLE JOIN : Multiple JOIN means joining more than two tables in a single SQL query :
Select s,student_name ,c.course_name ,i.instructor_name 
from student s join courses c on s.course_id = c.course_id 
			        join instructor i on c.instructor_id = i.instructor_id ; 
