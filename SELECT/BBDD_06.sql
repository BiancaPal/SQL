use projectes;

#Q5.- Obtenir els noms dels empleats i l'edifici on treballen que siguin del departament 5. (3 files)

select *
	from empleat 
    inner join departament on departament.num_dept=empleat.departament_num_dept
    where departament='5';

#Q5B.- Obtenir el nom dels departaments que tenen empleats vivint a MADRID. (1 fila) 



#Q5C.- Obtenir el nom dels empleats que treballen en departaments de MADRID. (3 files)



#Q6.- Obtenir amb ordre alfabètic descendent els noms dels empleats que guanyen (7 files)
#     més de 20.000€.



#Q6B. Obtenir els noms dels empleats dels departaments de BARCELONA que guanyin més de 35000 euros. (2 files)




#Q7.- Obtenir tots els números i els noms dels empleats que no són del departament número 1 (5 files)
#     i que treballin a la ciutat de Barcelona



#Q8.- Obtenir els noms dels departaments que tenen empleats que treballen en el (2 files)
#      projecte IBDTEL. No ha d'haver-hi repeticions de registres. (DISTINCT)


#Q9.- Obtenir els productes que tenen assignats els empleats del departament 1. (2 files)
#     No ha d'haver-hi repeticions de registres.



#Q10.- Obtenir el número i el nom dels empleats que viuen en la mateixa ciutat on està (4 files)
#      situat el departament on treballen.



#Q11.- Obtenir totes les dades dels empleats juntament amb totes les dades del projecte (11 files)
#      on treballen.



#Q12.- Obtenir el número i el nom dels departaments que tinguin algun empleat que (1 fila)
#      visqui a Madrid.





