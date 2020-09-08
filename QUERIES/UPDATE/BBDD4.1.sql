use rellotgeria;

select * from rellotge;

insert into rellotge
values ('1','Casio','Epsylon','30.2');

insert into rellotge_analógic
values ('1','3','0');

insert into rellotge 
values ('2','Swatch','lime','80.55');

insert into rellotge_analógic 
values ('2','2','1');

update rellotge set model='Elypsis'
where id='1';

update rellotge set preu = preu + (preu * 0.1)
where preu > 30;

insert into rellotge
values ('3','Lotus','digit','100');

insert into rellotge_digital
values ('3','2','0');

insert into rellotge
values ('4','Lotus','digit','100');

insert into rellotge_digital
values ('4','3','0');

update rellotge_digital set memoria = memoria + (memoria * 0.5)
where memoria > 3;

update rellotge_digital set gps = 1
where memoria > 3;

update rellotge_digital set gps = 0
where memoria < 3;

update rellotge set preu = preu - (preu * 0.05)
where preu > 30 and preu < 40;

insert into rellotge
values ('5','Viceroy','elegant','100');

update rellotge set preu = preu + (preu * 0.05)
where marca='Casio' or marca='Viceroy';

update rellotge set preu = preu - (preu * 0.10)
where marca='Casio' or 50<preu<60;

delete from rellotge where id='3';