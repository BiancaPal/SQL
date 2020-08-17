#Q29E.- Mostreu el total de projectes inciats per any. Agrupeu els anys de les (3 files)
#       dates d'inici.

select count(nom_proj),year(data_inici)
	from projecte
    group by year(data_inici);
  


#Q29F.- Calculeu el pressupost anuals dels projectes, dividint pel número de anys (5 files)
#       des de la data d'inici a la data fi. No cal tenir en compte els mesos i els dies.

ALTER TABLE `projectes`.`projecte` 
ADD COLUMN pressupost_anual int null after pressupost;

UPDATE `projectes`.`projecte`
	SET  pressupost_anual = (pressupost)/(year(data_fi-data_inici))
    where num_proj <=5;


#--- clàusula having ---#

	


#Q30B.- Obtenir el nom dels projectes que tenen més de dos empleats. (3 files)

select num_proj, nom_proj
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    group by num_proj
    having count(num_empl)='2';
   


#Q30C.- Obtenir els noms de les ciutats on viuen més d'una persona. (2 files) 

select ciutat_empl
	from empleat
    group by ciutat_empl
    having count(num_empl)>'1';
    


#Q30D.- Obtenir els productes dels projectes que tinguin dos empleats assignats. (1 fila)

select producte, count(num_empl)
	from projecte
    inner join empleat on projecte.num_proj=empleat.projecte_num_proj
    group by nom_proj
    having count(num_empl)='2';


#Q30E.- Obtenir les ciutats on hi hagi més de dos departaments. (1 fila)

select ciutat_dpt
	from departament
    group by ciutat_dpt
    having count(num_dept)>'2';
    
#Q30F.- Obtenir els edificis que no tinguin departaments per sobre de la planta 9. (1 fila)

select edifici
	from departament 
	where planta > '9';

#Q30G.- Obtenir les ciutats dels departaments que tinguin edificis a la planta més baixa (1 fila)
#       de les que hi ha.

select ciutat_dpt
	from departament
    having min(planta);















