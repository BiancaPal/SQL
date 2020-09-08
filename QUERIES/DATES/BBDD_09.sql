use projectes;

#--- amb dates afegides ---#

#Q26B.- Mostreu els projectes ordenats per data d'inici descendentment. (5 files)

select *
	from projecte
    order by data_inici;

#Q26C.- Mostreu els projectes inciats a partir de l'any 2014. (3 files).


select *
	from projecte
    where data_inici >= '2014-01-01';

#Q26D.- Mostreu els projectes que finalitzin abans del 2015. (2 files).

select *
	from projecte
    where data_fi <='2015-01-01';

#Q27.- Obtenir els projectes iniciats entre '01/01/2014' i '30/09/2014' (3 files)
#	   Utilitzeu la clàusula 'between'.

select *
	from projecte
	where data_inici between '2014/01/01' and '2014/09/30';


#Q28.- Obtenir els projectes inciats el mes de gener del 2014. Mostreu el mes amb la funció month(data) (1 fila)

select *
	from projecte 
    where MONTH (data_inici)='01' and year(data_inici)='2014';



#Q28B.- Mostreu les dates d'inci dels projectes amb el dia, mes i any en diferents columnes. (5 files)
# utilitzeu day(), month() i year()

select day(data_inici) 'dia', month(data_inici) 'mes', year(data_inici) 'any'
	from projecte;
    

#Q28C.- Mostreu els projectes que s'inicien abans del dia 15 de qualsevol mes. (4 files).

select * 
	from projecte
    where day(data_inici) <= '15';



#Q29.- Obtenir els projectes que estan actius actualment. Utilitzeu la funció 'curdate()'. (1 fila)

select *
	from projecte
	where data_fi > curdate();
    
#Q29B.- Proveu el mateix amb la funció between(). (1 fila)

select *
	from projecte
    where curdate() between data_inici and data_fi;

    

#Q29C.- Els projectes 1, 2 i 3 van finalitzar 45 dies després de la seva data de finalització. (3 files)
#       Mostreu els tres projectes amb les dates actualitzades. Utilitzeu adddate().

UPDATE projecte
 SET data_fi = adddate('2016-08-31', interval 45 day)
 WHERE num_proj='1';

  
UPDATE projecte
 SET data_fi = adddate('2016-01-10', interval 45 day)
 WHERE num_proj='2';
 
UPDATE projecte
 SET data_fi = adddate('2017-04-01', interval 45 day)
 WHERE num_proj='3';

#--- amb dates 2 afegides ---#
#Q29D.- La funció TIMESTAMPDIFF(YEAR,'1973-06-23',CURDATE()) us retornarà els anys transcorreguts des
#       de la data de 1973 fins avui. Mostreu el nom dels empleat amb més de 30 anys. (Variable)

select nom_empl,data_naixement
	from empleat
    where TIMESTAMPDIFF(YEAR,data_naixement,CURDATE())>'30';

#Q29E.- Els empleat amb més de cinc anys d'experiència els afegim un complement d'un 5% al sou
#		mostreu els sous només d'aquests empleats i sumeu l'increment. No feu update.(Variable)

update empleat
	set sou = sou + (sou * 0.05)
    where timestampdiff(YEAR,data_contracte,CURDATE())>'5';
    

