use projectes;
#--- instàncies de la mateixa taula. ---#

#Q22.- Obtenir el nom dels empleats que guanyen més que l'empleat 3. (6 files)

select nom_empl, sou
	from empleat
    where sou > ( select sou 	
					from  empleat
                    where num_empl='3');

#Q22B.- Obtenir els noms dels departaments que són al mateix edifici (4 files)
#que el departament de marqueting. 

select nom_dpt
	from departament
    where edifici = (select edifici
					from departament
					where nom_dpt ='MARQUETING');


#Q22C.- Obtenir els noms dels departaments que són a la mateixa ciutat que el departament (4 files)
#de produccio.


select nom_dpt
	from departament
    where ciutat_dpt = (select ciutat_dpt
					from departament
					where nom_dpt ='PRODUCCIO');

#Q22D.- Obtenir els noms dels departaments que no són a la mateixa planta que (3 files)
#el departament rrhh.

select nom_dpt
	from departament
    where planta != (select planta
					from departament
					where nom_dpt ='RRHH');


#Q23.- Obtenir el nom dels projectes amb un pressupost inferior al pressupost del projecte 1. (4 files)

select nom_proj
	from projecte
    where pressupost < (select pressupost
					from projecte
					where num_proj ='1');

#Q24.- Obtenir els empleats que guanyen el mateix que el Jordi. (2 files, inclòs el jordi) 

select nom_empl,sou
	from empleat
    where sou = (select sou
				 from empleat
                 where nom_empl='JORDI');


#Q24B.- Obtenir el nom dels empleats que guanyen més que la eugenia. (3 files)

select nom_empl,sou
	from empleat
    where sou > (select sou
				 from empleat
                 where nom_empl='EUGENIA');



#Q25.- Obtenir el nom dels departaments que són a la ciutat on viu l'Albert. (4 files)

select distinct nom_dpt
	from departament
    where ciutat_dpt = (select ciutat_empl
						 from empleat
                         where nom_empl='ALBERT');

#Q26.- Obtenir el nom dels empleats que treballin en projectes amb el pressupost (3 files)
#      igual al del projecte 1.
#--- instàncies amb diferents join ---#

select distinct nom_empl
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    where pressupost = (select pressupost
						from projecte
						where num_proj='1');
    


#Q26B.- Obtenir el nom dels empleats que treballen a la mateixa ciutat on treballa l'Albert. (8 files)

select nom_empl
	from empleat
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where ciutat_dpt = (select ciutat_dpt
						 	from departament
                            inner join empleat on departament.num_dept=empleat.departament_num_dept
                            where nom_empl='ALBERT');



#Q26C.- Obtenir el nom del empleats que treballen en projectes amb el pressupost (6 files)
#       igual que el pressupost del projecte de la Maria.

select nom_empl
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    where pressupost = (select pressupost
						 	from projecte
                            inner join empleat on projecte.num_proj=empleat.projecte_num_proj
                            where nom_empl='MARIA');


#Q26D.- Obtenir el nom dels projectes amb un pressupost igual al pressupost del projecte (1 fila)
#		de la Carme. Eviteu les repeticions.

select distinct nom_proj
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj 
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where pressupost = (select pressupost
						from projecte
                        inner join empleat on projecte.num_proj=empleat.projecte_num_proj
                        where nom_empl='CARME');
                        




