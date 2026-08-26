SQL QUERIES:


1) show databases;
(To show all the databases)

2) create database demo_db;
(To create the dabatabase)	

3) use demo_bd;
(To use the database)

4) create table table_name(column_name1 datatype, column_name2 datatype, column_name3 datatype);
(It is used to create the table(Query to create the table))

5) show tables; 
(It is used to show the tables)

6) desc students;
(It is used to describe the table, which will show all the info about the table, including field, datatype, key,etc.....)

7) drop database database_name;
(To delete the whole database)

8) drop table table_name;
(To delete the whole table)

9) truncate table table_name; 
(To delete the data from the table, it will only delete the data not the whole table)

10) rename table table_name to newtable_name;
(To rename the table name)

11)  create table students(student_id int primary key, student_name varchar(50) not null, age int, email varchar(100) unique, marks decimal (10,2) default 0, city varchar(50));
(primary key not null unique default 0 )

12) alter table students add fees decimal(10,2) default 0;
(To add any column, here in the table we have added fees)

13) alter table students modify student_name varchar(100);
(To change the datatype here we changed the varchar (50) to varchar(100))

14) alter table students change student_name name varchar(100);
(TO change the name of the column, here we change the name from student_name to name)

15) alter table students drop column fees;  (To delete the whole fees from the table)
