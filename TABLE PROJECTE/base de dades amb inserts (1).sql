CREATE DATABASE `projectes` /*!40100 DEFAULT CHARACTER SET latin1 */;

use projectes;

CREATE TABLE `departament` (
  `num_dept` int(11) NOT NULL,
  `nom_dpt` varchar(20) DEFAULT NULL,
  `planta` int(11) DEFAULT NULL,
  `edifici` varchar(30) DEFAULT NULL,
  `ciutat_dpt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `projecte` (
  `num_proj` int(11) NOT NULL,
  `nom_proj` varchar(10) DEFAULT NULL,
  `producte` varchar(20) DEFAULT NULL,
  `pressupost` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_proj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `empleat` (
  `num_empl` int(11) NOT NULL,
  `nom_empl` varchar(30) DEFAULT NULL,
  `sou` int(11) DEFAULT NULL,
  `ciutat_empl` varchar(20) DEFAULT NULL,
  `departament_num_dept` int(11) NOT NULL,
  `projecte_num_proj` int(11) NOT NULL,
  PRIMARY KEY (`num_empl`),
  KEY `empleat_departament_FK` (`departament_num_dept`),
  KEY `empleat_projecte_FK` (`projecte_num_proj`),
  CONSTRAINT `empleat_departament_FK` FOREIGN KEY (`departament_num_dept`) REFERENCES `departament` (`num_dept`),
  CONSTRAINT `empleat_projecte_FK` FOREIGN KEY (`projecte_num_proj`) REFERENCES `projecte` (`num_proj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



use projectes;
#departaments.
insert into Departament values (1, 'DIRECCIO', 10, 'PAU CLARIS', 'BARCELONA');
insert into Departament values (2, 'DIRECCIO', 8, 'RIOS ROSAS', 'MADRID');
insert into Departament values (3, 'MARQUETING', 1, 'PAU CLARIS', 'BARCELONA');
insert into Departament values (4, 'QUALITAT', 5, 'RIOS ROSAS', 'MADRID');
insert into Departament values (5, 'PRODUCCIO', 1, 'PAU CLARIS', 'BARCELONA');
insert into Departament values (6, 'RRHH', 1, 'PAU CLARIS', 'BARCELONA');

#projectes.
insert into Projecte values (1, 'IBDTEL', 'TELEVISIO', 1000000);
insert into Projecte values (2, 'IBDVID', 'VIDEO', 500000);
insert into Projecte values (3, 'IBDTEF', 'TELEFONIA', 750000);
insert into Projecte values (4, 'IBDRAD', 'RADIO', 250000);
insert into Projecte values (5, 'IBDCOM', 'COMUNICACIONS', 500000);

#empleats.
insert into Empleat values (1, 'CARME', 40000, 'MATARO', 1, 1);
insert into Empleat values (2, 'EUGENIA', 35000, 'TOLEDO', 2, 2);
insert into Empleat values (3, 'JOSEP', 25000, 'SITGES', 3, 1);
insert into Empleat values (4, 'RICARDO', 40000, 'BARCELONA', 1, 1);
insert into Empleat values (11, 'NURIA', 20000, 'VIC', 3, 2);
insert into Empleat values (12, 'NURIA', 20000, 'MATARO', 5, 5);
insert into Empleat values (13, 'ALBERT', 20000, 'BARCELONA', 1, 5);
insert into Empleat values (14, 'MANEL', 30000, 'TERRASA', 4, 3);
insert into Empleat values (15, 'JORDI', 30000, 'BARCELONA', 5, 3);
insert into Empleat values (20, 'MARIA', 18000, 'GETAFE', 5, 2);
insert into Empleat values (21, 'IGNACIO', 37000, 'MADRID', 4, 5);
