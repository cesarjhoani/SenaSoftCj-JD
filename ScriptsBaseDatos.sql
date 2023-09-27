-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bdsenasoft
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bdsenasoft
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdsenasoft` DEFAULT CHARACTER SET utf8 ;
USE `bdsenasoft` ;

-- -----------------------------------------------------
-- Table `bdsenasoft`.`Ubicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdsenasoft`.`Ubicaciones` (
  `idNombre` VARCHAR(50) NOT NULL,
  `posX` INT NOT NULL,
  `posY` INT NOT NULL,
  PRIMARY KEY (`idNombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdsenasoft`.`Conexiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdsenasoft`.`Conexiones` (
  `idConexiones` INT NOT NULL AUTO_INCREMENT,
  `ubicacion1` VARCHAR(50) NOT NULL,
  `Ubicacion2` VARCHAR(50) NOT NULL,
  `peso` INT NULL,
  PRIMARY KEY (`idConexiones`),
  INDEX `fk_Conexiones_Ubicaciones_idx` (`ubicacion1` ASC)  ,
  INDEX `fk_Conexiones_Ubicaciones1_idx` (`Ubicacion2` ASC)  ,
  CONSTRAINT `fk_Conexiones_Ubicaciones`
    FOREIGN KEY (`ubicacion1`)
    REFERENCES `bdsenasoft`.`Ubicaciones` (`idNombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conexiones_Ubicaciones1`
    FOREIGN KEY (`Ubicacion2`)
    REFERENCES `bdsenasoft`.`Ubicaciones` (`idNombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdsenasoft`.`inicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdsenasoft`.`inicio` (
  `fkUbicacionInicio` VARCHAR(50) NOT NULL,
  INDEX `fk_inicio_Ubicaciones1_idx` (`fkUbicacionInicio` ASC)  ,
  CONSTRAINT `fk_inicio_Ubicaciones1`
    FOREIGN KEY (`fkUbicacionInicio`)
    REFERENCES `bdsenasoft`.`Ubicaciones` (`idNombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdsenasoft`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdsenasoft`.`perfil` (
  `idperfil` INT NOT NULL AUTO_INCREMENT,
  `descripcionPerfil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idperfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdsenasoft`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdsenasoft`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `perfil_idperfil` INT NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  INDEX `fk_usuarios_perfil1_idx` (`perfil_idperfil` ASC)  ,
  CONSTRAINT `fk_usuarios_perfil1`
    FOREIGN KEY (`perfil_idperfil`)
    REFERENCES `bdsenasoft`.`perfil` (`idperfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
