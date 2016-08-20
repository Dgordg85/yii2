-- MySQL Script generated by MySQL Workbench
-- Сб. 20 авг. 2016 10:28:05
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema yii2basic
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `yii2basic` ;

-- -----------------------------------------------------
-- Schema yii2basic
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `yii2basic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `yii2basic` ;

-- -----------------------------------------------------
-- Table `yii2basic`.`request`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `yii2basic`.`request` ;

CREATE TABLE IF NOT EXISTS `yii2basic`.`request` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `address` VARCHAR(255) NULL COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `phone` VARCHAR(10) NULL COMMENT '',
  `date_create` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `index2` (`name` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
