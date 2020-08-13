use facturació;

select * from  client;

insert into client 
values ('11111111k','jaume','coll','Blondel','35','25002','973221133');

insert into factura (Codi_factura, Client_NIF)
values ('1','11111111k');

insert into article 
values ('CD', '5','0.1','0','1');

insert into article
values ('DVD', '10','0.2','0','1');

insert into article
values ('CAIXA CD', '5','0.05','0','1');

update article set TOTAL = preu_venda * Quantitat
where Factura_Codi_factura='1';


insert into client 
values ('22222222j','Maria','Soler','Ronda','33','25004','973334455');

insert into factura (Codi_factura, Client_NIF)
values ('2','22222222j');

insert into article 
values ('CD', '5','0.1','0','2');

insert into article
values ('Blue-Ray', '5','1','0','2');

insert into article
values ('Tarja MiniSD', '2','15','0','2');

update article set TOTAL = preu_venda * Quantitat
where Factura_Codi_factura='2';




