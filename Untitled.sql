-- MySQL Script generated by MySQL Workbench
-- Wed May 25 10:02:34 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Clients
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Clients` ;

-- -----------------------------------------------------
-- Schema Clients
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Clients` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Clients` ;

-- -----------------------------------------------------
-- Table `Clients`.`CatégoriesFilms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clients`.`CatégoriesFilms` (
  `Action` VARCHAR(25) NOT NULL,
  `Comedie` VARCHAR(25) NOT NULL,
  `Aventure` VARCHAR(25) NOT NULL,
  `Drame` VARCHAR(25) NOT NULL,
  `Horreur` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`Action`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Clients`.`InfoClients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clients`.`InfoClients` (
  `CodeClients` VARCHAR(25) NOT NULL,
  `Nom` VARCHAR(25) NULL DEFAULT NULL,
  `Prenom` VARCHAR(25) NOT NULL,
  `Email` VARCHAR(25) NOT NULL,
  `IdInfoFilms` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`CodeClients`),
  INDEX `IdInfoFilms_idx` (`IdInfoFilms` ASC, `Email` ASC, `Prenom` ASC, `CodeClients` ASC, `Nom` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Clients`.`InfoFilms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clients`.`InfoFilms` (
  `Titre` VARCHAR(20) NOT NULL,
  ` DateSortie` DATE NOT NULL,
  `Duree` TIME NOT NULL,
  `Realisateur` VARCHAR(25) NOT NULL,
  `CatégoriesFilms_Action` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`Titre`, `CatégoriesFilms_Action`),
  INDEX `fk_InfoFilms_CatégoriesFilms1_idx` (`CatégoriesFilms_Action` ASC) VISIBLE,
  CONSTRAINT `fk_InfoFilms_CatégoriesFilms1`
    FOREIGN KEY (`CatégoriesFilms_Action`)
    REFERENCES `Clients`.`CatégoriesFilms` (`Action`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Clients`.`PayementsClients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clients`.`PayementsClients` (
  `DatePayment` DATE NOT NULL,
  `Description` VARCHAR(25) NOT NULL,
  `Montant` VARCHAR(25) NOT NULL,
  `CatégoriesFilms_Action` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`DatePayment`, `CatégoriesFilms_Action`),
  INDEX `fk_PayementsClients_CatégoriesFilms1_idx` (`CatégoriesFilms_Action` ASC) VISIBLE,
  CONSTRAINT `fk_PayementsClients_CatégoriesFilms1`
    FOREIGN KEY (`CatégoriesFilms_Action`)
    REFERENCES `Clients`.`CatégoriesFilms` (`Action`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Clients`.`Table-intermediaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clients`.`Table-intermediaire` (
  `InfoClients_CodeClients` VARCHAR(25) NOT NULL,
  `InfoFilms_Titre` VARCHAR(20) NOT NULL,
  `InfoFilms_CatégoriesFilms_Action` VARCHAR(25) NOT NULL,
  `DateLocation` VARCHAR(25) NOT NULL,
  `DateRetour` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`InfoClients_CodeClients`, `InfoFilms_Titre`, `InfoFilms_CatégoriesFilms_Action`),
  INDEX `fk_InfoClients_has_InfoFilms_InfoFilms1_idx` (`InfoFilms_Titre` ASC, `InfoFilms_CatégoriesFilms_Action` ASC) VISIBLE,
  INDEX `fk_InfoClients_has_InfoFilms_InfoClients1_idx` (`InfoClients_CodeClients` ASC) VISIBLE,
  CONSTRAINT `fk_InfoClients_has_InfoFilms_InfoClients1`
    FOREIGN KEY (`InfoClients_CodeClients`)
    REFERENCES `Clients`.`InfoClients` (`CodeClients`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_InfoClients_has_InfoFilms_InfoFilms1`
    FOREIGN KEY (`InfoFilms_Titre` , `InfoFilms_CatégoriesFilms_Action`)
    REFERENCES `Clients`.`InfoFilms` (`Titre` , `CatégoriesFilms_Action`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
