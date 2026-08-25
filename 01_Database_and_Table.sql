show databases;
~to use data base :
  use demodb;

~create a table :
 create table employes( id int , employe_name varchar(50));

~ to sew your tables :
show tables;

~to sow your specfic table:
desc employes;

~to add more column into your table
alter table employes  add email varchar(50) , add city varchar(50) , add  salary int ; 
desc employes;
