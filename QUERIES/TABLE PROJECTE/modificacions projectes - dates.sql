#afegir les columnes de les dates


ALTER TABLE `projectes`.`projecte` 
ADD COLUMN `data_inici` DATE NULL AFTER `pressupost`,
ADD COLUMN `data_fi` DATE NULL AFTER `data_inici`;

UPDATE `projectes`.`projecte` SET `data_inici`='2016-01-01', `data_fi`='2016-08-31' WHERE `num_proj`='1';
UPDATE `projectes`.`projecte` SET `data_inici`='2015-05-10', `data_fi`='2016-01-10' WHERE `num_proj`='2';
UPDATE `projectes`.`projecte` SET `data_inici`='2016-02-20', `data_fi`='2017-04-01' WHERE `num_proj`='3';
UPDATE `projectes`.`projecte` SET `data_inici`='2012-03-02', `data_fi`='2021-05-10' WHERE `num_proj`='4';
UPDATE `projectes`.`projecte` SET `data_inici`='2016-09-11', `data_fi`='2017-03-25' WHERE `num_proj`='5';
