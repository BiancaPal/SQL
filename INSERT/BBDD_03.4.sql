use biblioteca;

select * from llibre;


insert into Estantería(Estantería)
values('2');

insert into Autor (Nom_autor)
values('Cervantes');

insert into Editorial (idEditorial)
values ('La plana');

insert into Socis (NIF)
values ('X5404360G');

insert into Prestecs (idPrestecs, Data_lloguer,Socis_NIF)
values ('111111111w','2017-01-05','X5404360G');


insert into Llibre (Títol, Estantería_Estantería, Autor_Nom_autor, Editorial_idEditorial, Prestecs_idPrestecs)
values ('El quixot','2','Cervantes','La plana','111111111w');

insert into Estantería(Estantería)
values('4');

insert into Autor (Nom_autor)
values('Suskind');

insert into Editorial (idEditorial)
values ('Magrana');

insert into Socis (NIF)
values ('X5404365G');

insert into Prestecs (idPrestecs, Data_lloguer, Data_retorn, Socis_NIF)
values ('222222222f','2017-02-09','2017-02-20','X5404365G');


insert into Llibre (Títol, Estantería_Estantería, Autor_Nom_autor, Editorial_idEditorial, Prestecs_idPrestecs)
values ('El perfum','4','Suskind','Magrana','222222222f');

insert into Estantería(Estantería)
values('3');

insert into Autor (Nom_autor)
values('Rowling');

insert into Editorial (idEditorial)
values ('La plana');

insert into Socis (NIF)
values ('X5404369G');

insert into Prestecs (idPrestecs, Data_lloguer,Socis_NIF)
values ('333333333d','2017-03-01','X5404369G');


insert into Llibre (Títol, Estantería_Estantería, Autor_Nom_autor, Editorial_idEditorial, Prestecs_idPrestecs)
values ('Harry Poter','3','Rowling','La plana','333333333d');
