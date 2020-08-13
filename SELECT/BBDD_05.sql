#Q1. Seleccioneu la base de dades projectes.

use projectes;

#Q2. Obtenir les dades dels departaments ordenats per nom. (6 files)

select *
	from departament
    order by edifici, planta desc;


#Q2B. Obtenir les dades dels projectes ordenats per pressupost, descendentment. (5 files)
    
select *
	from projecte
    order by pressupost desc;


#Q2C. Obtenir les dades dels departaments ordenats per ciutat i després per nom. (6 files).

select *
	from departament
    order by ciutat_dpt, nom_dpt;


#Q2D. Obtenir les dades dels departaments de la ciutat de Barcelona. (4 files).

select * 
	from departament
    where ciutat_dpt='BARCELONA';


#Q2E. Obtenir les dades dels empleats amb un sou entre 20000 i 30000 inclosos. (6 files).

select * 
	from empleat
    where sou>='20000' and sou <='30000';
    
    
#Q2F. Obtenir les dades dels empleats de la ciutat de Mataró (sense accent) i de Toledo. (3 files)
#Utilitza alias.

select e.nom_empleat, e.sou
	from empleat as e
    where e.ciutat_empl='MATARO' and e.ciutat_empl='TOLEDO';


#Q3.- Obtenir les dades dels projectes i el nom dels empleats que hi treballen. (11 files)
#     Ordeneu per nom_proj.

select nom_empl,nom_proj
	from  projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    order by nom_proj;

#Q4.- Obtenir les dades dels empleats i el nom del departament on treballen. (11 files)
#     Ordeneu per ciutat_empl i després per projecte_num_projecte

select num_empl,nom_empl,sou,ciutat_empl,departament_num_dept,projecte_num_proj,nom_dpt
	from  empleat
    inner join departament on empleat.departament_num_dept=departament.num_dept
    order by ciutat_empl,projecte_num_proj;
    

#Q4B.- Obtenir el nom dels empleats que treballen en projectes amb producte televisio. (3 files).

select producte,nom_empl 
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    where producte='TELEVISIO';


#Q4C.- Obtenir el nom dels empleats que  treballen en departaments de direcció. (4 files).

select nom_empl
	 from empleat
     inner join departament on empleat.departament_num_dept=departament.num_dept
     where nom_dpt='DIRECCIO';

    
    
    
    
    


