-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pizzería
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pizzería
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pizzería` DEFAULT CHARACTER SET utf8 ;
USE `Pizzería` ;

-- -----------------------------------------------------
-- Table `Pizzería`.`Pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzería`.`Pizza` (
  `Id pizza` VARCHAR(45) NOT NULL,
  `Pes` INT NULL,
  `Mida` INT NULL,
  `Tipus_de_pa` VARCHAR(45) NULL,
  PRIMARY KEY (`Id pizza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzería`.`Pepperoni`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzería`.`Pepperoni` (
  `Id pepperoni` INT NOT NULL,
  `Gr_Pepperoni` INT NULL,
  `Gr_Formatge` INT NULL,
  `Pizza_Id pizza` VARCHAR(45) NOT NULL,
  INDEX `fk_Pepperoni_Pizza_idx` (`Pizza_Id pizza` ASC) VISIBLE,
  PRIMARY KEY (`Id pepperoni`),
  CONSTRAINT `fk_Pepperoni_Pizza`
    FOREIGN KEY (`Pizza_Id pizza`)
    REFERENCES `Pizzería`.`Pizza` (`Id pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzería`.`Diavolo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzería`.`Diavolo` (
  `Id diavolo` INT NOT NULL,
  `Gr_carn` INT NULL,
  `Gr_formatge` INT NULL,
  `Num_prebres_vermells` INT NULL,
  `Pizza_Id pizza` VARCHAR(45) NOT NULL,
  INDEX `fk_Diavolo_Pizza1_idx` (`Pizza_Id pizza` ASC) VISIBLE,
  PRIMARY KEY (`Id diavolo`),
  CONSTRAINT `fk_Diavolo_Pizza1`
    FOREIGN KEY (`Pizza_Id pizza`)
    REFERENCES `Pizzería`.`Pizza` (`Id pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzería`.`Quatre_estacions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzería`.`Quatre_estacions` (
  `id 4 estacions` INT NOT NULL,
  `Gr_xampinyons` INT NULL,
  `Num_olives` INT NULL,
  `Gr_Carxofa` INT NULL,
  `Gr_alfàbrega` INT NULL,
  `Pizza_Id pizza` VARCHAR(45) NOT NULL,
  INDEX `fk_Quatre_estacions_Pizza1_idx` (`Pizza_Id pizza` ASC) VISIBLE,
  PRIMARY KEY (`id 4 estacions`),
  CONSTRAINT `fk_Quatre_estacions_Pizza1`
    FOREIGN KEY (`Pizza_Id pizza`)
    REFERENCES `Pizzería`.`Pizza` (`Id pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
