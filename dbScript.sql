-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema rest_api
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rest_api
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rest_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `rest_api` ;

-- -----------------------------------------------------
-- Table `rest_api`.`appoint`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rest_api`.`appoint` (
  `appoint_id` INT NOT NULL AUTO_INCREMENT,
  `doc_id` INT NULL DEFAULT NULL,
  `PatientID` INT NULL DEFAULT NULL,
  `date` VARCHAR(45) NULL DEFAULT NULL,
  `time` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`appoint_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `rest_api`.`doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rest_api`.`doctor` (
  `doc_id` INT NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(45) NULL DEFAULT NULL,
  `DOB` VARCHAR(45) NULL DEFAULT NULL,
  `NIC` VARCHAR(45) NULL DEFAULT NULL,
  `e_mail` VARCHAR(45) NULL DEFAULT NULL,
  `contact_num` VARCHAR(45) NULL DEFAULT NULL,
  `Gender` VARCHAR(45) NULL DEFAULT NULL,
  `specialization` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`doc_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `rest_api`.`patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rest_api`.`patient` (
  `PatientID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `age` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `phoneNo` VARCHAR(45) NULL DEFAULT NULL,
  `Stock_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`PatientID`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `rest_api`.`stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rest_api`.`stock` (
  `Stock_id` INT NOT NULL AUTO_INCREMENT,
  `Quantity` INT NULL DEFAULT NULL,
  `Rec_date` VARCHAR(45) NULL DEFAULT NULL,
  `Stock_name` VARCHAR(45) NULL DEFAULT NULL,
  `Exp_date` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Stock_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
