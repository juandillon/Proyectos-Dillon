-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema inscripcion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inscripcion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inscripcion` DEFAULT CHARACTER SET utf8 ;
USE `inscripcion` ;

-- -----------------------------------------------------
-- Table `inscripcion`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inscripcion`.`Usuario` (
  `id` INT NOT NULL DEFAULT 1,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `DNI` INT NULL,
  `email` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Telefono` INT NULL,
  `Sexo` VARCHAR(45) NULL,
  `Orientacion` VARCHAR(45) NULL,
  `Consulta` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
