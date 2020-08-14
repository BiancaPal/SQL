use projectes;

#Q13.- Obtenir el número i el nom dels departaments que tinguin algun empleat que (2 files)
#      visqui a Barcelona i que guanyin més de 20000€.

select num_dept, nom_dpt
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept
    where ciutat_empl='BARCELONA' and sou>'20000';


#Q14.- Obtenir el nom i el sou dels empleats del departament 1, 2 o 3. (6 files)

select nom_empl, sou 
	from empleat
    inner join departament on empleat.departament_num_dept=departament.num_dept
    where num_dept='1' or num_dept='2' or num_dept='3';
    
    

#Q15.- Obtenir els noms dels empleats que no treballen en el projecte número 2. (8 files)

select nom_empl
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    where num_proj!='2';
    

#Q16.- Obtenir el nom del departament on treballa i el nom del projecte on està assignat (1 fila)
#      l'empleat número 2.

select nom_dpt, nom_proj
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    where num_empl='1';



#--- Funcions agregades. ---#

select*
	from departament;
#count
select count(*) num_departaments,edifici
	from departament;
    
select edifici, count(edifici) recompte
	from departament
	group by edifici;
    
select ciutat_dpt, count(*)
	from departament
    group by ciutat_dpt;
#sum, avg (mitjana)

select avg(pressupost),sum(pressupost)
	from projecte;
    
#Q17.- Obtenir el total de pressupost per departament. (4 files)

select nom_dpt,sum(pressupost)
	from projecte
    inner join empleat on  projecte.num_proj=empleat.projecte_num_proj
    inner join departament on empleat.departament_num_dept=departament.num_dept
    group by nom_dpt;


#Q18.- Obtenir el número de treballadors per projecte. (4 files)

select nom_proj,count(*)
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    group by nom_proj;

#Q19.- Obtenir el número de projectes per ciutat de departament. (2 files)

 select nom_proj, count(ciutat_dpt)
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    inner join departament on empleat.departament_num_dept=departament.num_dept
    group by ciutat_dpt;


#Q19B.- Obtenir el total de sou per producte. (4 files)

select producte, sum(sou)
	from projecte
	inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    group by producte;


#Q20.- Obtenir el número de departament juntament amb el sou més alt. (5 files)

select departament_num_dept,max(sou)
	from empleat
    group by departament_num_dept;
    


#Q21.- Obtenir quantes persones dels diferents departaments treballen a la ciutat (1 fila, valor 3)
#	   de Madrid.

select departament_num_dept,ciutat_empl,count(nom_empl)
	from empleat
    where ciutat_empl='MADRID'
    group by departament_num_dept;
	

#Q21B.- Obtenir el total de pressupost per ciutat de departament. (2 files)

select ciutat_dpt,sum(pressupost)
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    inner join departament on empleat.departament_num_dept=departament.num_dept
    group by ciutat_dpt;


#Q21C.- Obtenir el total d'empleats per producte (4 files).

select producte,count(nom_empl)
	from empleat
    inner join projecte on empleat.projecte_num_proj=projecte.num_proj
    group by producte;
    
    
    
    

