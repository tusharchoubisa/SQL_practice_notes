~aad data into table
Insert into employes (id , employe_name , email , city , salary ) values (1,'miheer','miheer123@gmail.com','vadodara',45000),(2,'ritik','ritik123@gmaik.com','jodhpur',30000),(3,'parth','parth123@gmaik.com','hydeabed',25000),(4,'tushar','tushar123@gmaik.com','Ahemdaad',50000),
(5,'pratik','pratik123@gmaik.com','udaipur',30000);

~ to see table :
select * from employes;

~to update your table values :
update employes set city = 'delhi' where id = 3 ;
select * from employes ;
SET SQL_SAFE_UPDATES = 0;

~ to delete the column in your table :
delete from employes where id = 5;

~ to delete your table :
   drop table employes;
