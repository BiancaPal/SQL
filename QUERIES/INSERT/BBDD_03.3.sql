use pizzería;

select * from pizza;

insert into pizza
values ('1','250','25','Clàssic');

insert into diavolo (Pizza_Id_pizza, Gr_carn)
values ('1', '100');

insert into pizza
values ('2','240','24','Dur');

insert into quatre_estacions(Pizza_Id_pizza, Gr_xampinyons)
values ('2','120');

insert into pizza
values ('3','260','27','tou');

insert into diavolo(Pizza_Id_pizza, Gr_formatge)
values ('3','70');