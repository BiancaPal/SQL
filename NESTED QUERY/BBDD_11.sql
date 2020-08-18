#Consultes amb subconsultes


#Q31.- Obtenir el nom dels empleats que tenen el sou més alt. Utilitzeu la clàusula 'in'. (2 files)

select nom_empl
	from empleat
    where sou in ( select max(sou) from empleat);

    

#Q31B.- Obtenir el codi i el nom dels projectes que no tinguin cap empleat assignat. (1 fila)
# 	    Utilitzeu 'not in'.

 select num_proj, nom_proj
	from projecte
    where num_proj not in (select projecte_num_proj from empleat);

#Q32.- Obtenir el nom de les ciutats on viuen treballadors però no hi han departaments. (6 files)
#	   Eviteu les repeticions.

select ciutat_empl
	from empleat
    where ciutat_empl not in (select ciutat_dpt from departament);

#Q33.- Obtenir el número i el nom dels departaments que no tinguin empleats que visquin a Madrid. (5 files)
# 	   utilitzeu 'not in'.

select distinct num_dept, nom_dpt
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept
    where ciutat_empl != 'MADRID'; 



#Q34 - Obtenir el nom dels departaments que tenen dos o més empleats en el projecte 1.(1 fila)

select nom_dpt
	from departament
    inner join empleat on departament.num_dept=empleat.departament_num_dept
    having count(nom_empl)>'2' in (select num_proj
									from projecte
                                    where num_proj='1');
    

#Q35 Obtenir el nom dels projectes que tinguin dos o més empleats.

select num_proj
		from projecte
		where num_proj in (select projecte_num_proj
							from empleat
                            where count(num_empl)>'2');
#Q36 Obtenir els departaments que tinguin més treballadors que el departament 3.



#Q37 Obtenir els projectes que tinguin dos o més empleats que viuen en la mateixa ciutat.(0 files)



#Q38.- Obtenir el nom dels departaments que tinguin dos o més treballadors de ciutats diferents.


    



