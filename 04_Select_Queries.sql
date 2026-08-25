~ arthematic aperators add(+), sub(-) , multi(*) and divide(/) :

  ~ Add 5000 in employe salary :
select employe_name , salary , salary +5000 from employes ;

   ~ subraction 5000 in employe salary :
select employe_name , salary , salary - 5000 from employes ;

    ~ find yearly  salary of employe:
select employe_name , salary , salary * 12 from employes ;

   ~ find monthly salalry of employe :
select employe_name , salary , salary * 12 as y_salary , (salary*12)/12 as m_salary from employes ;


~ comparison Operators (=) (!=) by (even and odd ) :

      ~ find even id  number of employee :
select id , employe_name from employes where id % 2 = 0;

       ~ find odd id  number of employee :
select id , employe_name from employes where id % 2 != 0;

select * from employes where  city = 'ahemdabad' ;
