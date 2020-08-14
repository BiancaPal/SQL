use projectes;

#Q5.- Obtenir els noms dels empleats i l'edifici on treballen que siguin del departament 5. (3 files)

select *
	from empleat 
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where num_dept='5';

#Q5B.- Obtenir el nom dels departaments que tenen empleats vivint a MADRID. (1 fila) 

select distinct nom_dpt
	from departament
    inner join empleat on departament.ciutat_dpt=empleat.ciutat_empl
    where ciutat_empl='MADRID';



#Q5C.- Obtenir el nom dels empleats que treballen en departaments de MADRID. (3 files)

select distinct nom_empl
	from empleat
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where ciutat_dpt='MADRID';


#Q6.- Obtenir amb ordre alfabètic descendent els noms dels empleats que guanyen (7 files)
#     més de 20.000€.

select distinct nom_empl, sou
	from empleat 
    where sou>'20000'
    order by nom_empl desc;


#Q6B. Obtenir els noms dels empleats dels departaments de BARCELONA que guanyin més de 35000 euros. (2 files)

select distinct nom_empl, sou
	from empleat 
    where sou>'35000'
    order by nom_empl desc;

#Q7.- Obtenir tots els números i els noms dels empleats que no són del departament número 1 (5 files)
#     i que treballin a la ciutat de Barcelona

select distinct num_empl, nom_empl, ciutat_dpt, departament_num_dept
	from empleat
	inner join departament on empleat.departament_num_dept=departament.num_dept
    where num_dept!='1' and ciutat_dpt='BARCELONA';

#Q8.- Obtenir els noms dels departaments que tenen empleats que treballen en el (2 files)
#      projecte IBDTEL. No ha d'haver-hi repeticions de registres. (DISTINCT)

select distinct nom_dpt, nom_proj
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept 
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    where nom_proj='IBDTEL';

#Q9.- Obtenir els productes que tenen assignats els empleats del departament 1. (2 files)
#     No ha d'haver-hi repeticions de registres.

select distinct producte
	from projecte 
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where num_dept='1';
    



#Q10.- Obtenir el número i el nom dels empleats que viuen en la mateixa ciutat on està (4 files)
#      situat el departament on treballen.

select distinct num_empl, nom_empl, ciutat_empl, ciutat_dpt
	from empleat
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where ciutat_empl=ciutat_dpt;


#Q11.- Obtenir totes les dades dels empleats juntament amb totes les dades del projecte (11 files)
#      on treballen.

select *
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj;
    


#Q12.- Obtenir el número i el nom dels departaments que tinguin algun empleat que (1 fila)
#      visqui a Madrid.

select distinct num_dept, nom_dpt
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept
    where ciutat_empl='MADRID';




