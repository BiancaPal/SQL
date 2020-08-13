use magatzem;

select * from proveidor;

insert into proveidor(CIF, Nom, Adreça)
values ('1111111D','CINFA','Ronda');

insert into familia (Codi, Nom, proveidor_CIF)
values ('1','Fruitsec','1111111D');

insert into article (Codi_article, Nom, Quantitat_estoc, familia_Codi)
values ('1','Pack Mescla','20','1');

insert into proveidor(CIF, Nom, Adreça)
values ('1111111D','CINFA','Ronda');

insert into familia (Codi, Nom, proveidor_CIF)
values ('1','Fruitsec','1111111D');

insert into article (Codi_article, Nom, Quantitat_estoc,familia_Codi)
values ('2','Nous','5','1');

insert into proveidor(CIF, Nom, Adreça)
values ('2222222S','RESA','Riu');

insert into familia (Codi, Nom, proveidor_CIF)
values ('3','Verdura','2222222S');


insert into article(Codi_article, Nom, Quantitat_estoc,familia_Codi)
values ('3','Espàrrec','30','3');

