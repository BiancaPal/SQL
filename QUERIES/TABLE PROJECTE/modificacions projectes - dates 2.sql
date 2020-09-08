#afegir les columnes de les dates


ALTER TABLE `projectes`.`empleat` 
ADD COLUMN `data_naixement` DATE NULL AFTER `ciutat_empl`,
ADD COLUMN `data_contracte` DATE NULL AFTER `data_naixement`;

UPDATE `projectes`.`empleat` SET `data_naixement`='1967-01-01', `data_contracte`='2014-08-31' WHERE `num_empl`='1';
UPDATE `projectes`.`empleat` SET `data_naixement`='1978-05-10', `data_contracte`='2008-01-10' WHERE `num_empl`='2';
UPDATE `projectes`.`empleat` SET `data_naixement`='1990-02-20', `data_contracte`='2006-04-01' WHERE `num_empl`='3';
UPDATE `projectes`.`empleat` SET `data_naixement`='1984-03-02', `data_contracte`='2010-05-10' WHERE `num_empl`='4';
UPDATE `projectes`.`empleat` SET `data_naixement`='1973-09-24', `data_contracte`='2016-03-25' WHERE `num_empl`='11';
UPDATE `projectes`.`empleat` SET `data_naixement`='1997-12-16', `data_contracte`='2012-08-14' WHERE `num_empl`='12';
UPDATE `projectes`.`empleat` SET `data_naixement`='2000-03-10', `data_contracte`='2015-10-19' WHERE `num_empl`='13';
UPDATE `projectes`.`empleat` SET `data_naixement`='1977-10-02', `data_contracte`='2011-12-21' WHERE `num_empl`='14';
UPDATE `projectes`.`empleat` SET `data_naixement`='1982-08-19', `data_contracte`='2006-05-06' WHERE `num_empl`='15';
UPDATE `projectes`.`empleat` SET `data_naixement`='1973-07-30', `data_contracte`='2009-09-07' WHERE `num_empl`='20';
UPDATE `projectes`.`empleat` SET `data_naixement`='1975-02-06', `data_contracte`='2013-07-23' WHERE `num_empl`='21';
