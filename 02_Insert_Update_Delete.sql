 insert into table_name values(value1, value2, value3, value4); 
#(It is used to insert the data in a table)

         #For multiple inputs :- 
          insert into students values(2,'Vijay',21,76,'Delhi'), (3, 'Raj',21,75,'Jaipur');

#One more way to do :-
   insert into students(student_id, student_name, age, marks,city) values(4,'Vyom',21,86,'Ahmedabad');


update table_name set column_name =  values where condition; 
#(It is used to update the table, used to update the data in the table)

#for multiple columns:-
   update students set city='Udaipur',age=24 where student_id=2;

 delete from table_name where condition;

