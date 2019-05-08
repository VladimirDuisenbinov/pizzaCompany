-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema gait_arslan
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gait_arslan` DEFAULT CHARACTER SET latin1 ;
USE `gait_arslan` ;

-- -----------------------------------------------------
-- Table `gait_arslan`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`employee` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`employee` (
  `EID` INT(11) NOT NULL,
  `Sex` CHAR(1) NOT NULL,
  `BDate` DATE NOT NULL,
  `Salary` INT(11) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `FName` VARCHAR(15) NOT NULL,
  `LName` VARCHAR(15) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `SuperID` INT(11) NULL DEFAULT NULL,
  `Phone` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`EID`, `Phone`),
  UNIQUE INDEX `Phone_UNIQUE` (`Phone` ASC),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`cashier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`cashier` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`cashier` (
  `CashierID` INT(11) NOT NULL,
  PRIMARY KEY (`CashierID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`client` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`client` (
  `ClientID` INT(11) NOT NULL AUTO_INCREMENT,
  `FName` VARCHAR(15) NULL DEFAULT NULL,
  `LName` VARCHAR(15) NULL DEFAULT NULL,
  `Email` VARCHAR(30) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT '',
  `Phone` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`ClientID`),
  UNIQUE INDEX `Phone_UNIQUE` (`Phone` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`deliveryman`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`deliveryman` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`deliveryman` (
  `DeliverymanID` INT(11) NOT NULL,
  `Transport` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DeliverymanID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`order` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`order` (
  `OrderID` INT(11) NOT NULL AUTO_INCREMENT,
  `IsDelivery` TINYINT(1) NOT NULL,
  `DeliverymanID` INT(11) NULL DEFAULT NULL,
  `CashierID` INT(11) NOT NULL,
  `DeliveryAddress` VARCHAR(45) NULL DEFAULT NULL,
  `ClientID` INT(11) NOT NULL,
  PRIMARY KEY (`OrderID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`pizza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`pizza` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`pizza` (
  `PizzaID` INT(3) NOT NULL,
  `Dough` VARCHAR(15) NOT NULL,
  `Size` TINYINT(2) NOT NULL,
  `PName` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`PizzaID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`contains`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`contains` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`contains` (
  `PizzaID` INT(11) NOT NULL,
  `OrderID` INT(11) NOT NULL,
  `Quantity` TINYINT(4) NOT NULL,
   PRIMARY KEY (`PizzaID`, `OrderID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`cook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`cook` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`cook` (
  `CookID` INT(11) NOT NULL,
  `Rank` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`CookID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`cook's_cuisine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`cook's_cuisine` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`cook's_cuisine` (
  `CID` INT(11) NOT NULL,
  `Cuisine` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`CID`, `Cuisine`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gait_arslan`.`cooks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gait_arslan`.`cooks` ;

CREATE TABLE IF NOT EXISTS `gait_arslan`.`cooks` (
  `CID` INT(11) NOT NULL,
  `PID` INT(11) NOT NULL,
  PRIMARY KEY (`CID`, `PID`),
  INDEX `FK_Cook_idx` (`CID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
