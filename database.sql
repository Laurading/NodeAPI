-- MySQL Script generated by MySQL Workbench
-- Sun Jan  3 21:44:15 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nodeApiDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nodeApiDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nodeApiDB` DEFAULT CHARACTER SET utf8 ;
USE `nodeApiDB` ;

-- -----------------------------------------------------
-- Table `nodeApiDB`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`user` (
  `id_user` INT(8) NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `sexe` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nodeApiDB`.`tuteur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`tuteur` (
  `id_tuteur` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `date_sub` DATETIME NOT NULL,
  `date_fin` DATETIME NOT NULL,
  PRIMARY KEY (`id_tuteur`),
  INDEX `id_user_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `nodeApiDB`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nodeApiDB`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`cart` (
  `id_cart` INT NOT NULL AUTO_INCREMENT,
  `cartNumber` VARCHAR(16) NOT NULL,
  `month` VARCHAR(13) NOT NULL,
  `year` INT(4) NOT NULL,
  `default` TINYINT NOT NULL,
  PRIMARY KEY (`id_cart`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nodeApiDB`.`facturation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`facturation` (
  `id_facturation` INT NOT NULL AUTO_INCREMENT,
  `id_tuteur` INT NOT NULL,
  `prix` VARCHAR(45) NOT NULL,
  `id_cart` INT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id_facturation`),
  INDEX `id_tuteur_idx` (`id_tuteur` ASC) VISIBLE,
  INDEX `id_cart_idx` (`id_cart` ASC) VISIBLE,
  CONSTRAINT `id_tuteur`
    FOREIGN KEY (`id_tuteur`)
    REFERENCES `nodeApiDB`.`tuteur` (`id_tuteur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_cart`
    FOREIGN KEY (`id_cart`)
    REFERENCES `nodeApiDB`.`cart` (`id_cart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nodeApiDB`.`song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`song` (
  `idsong` INT NOT NULL AUTO_INCREMENT,
  `artiste` VARCHAR(45) NOT NULL,
  `titre` VARCHAR(100) NOT NULL,
  `durée` TIME NOT NULL,
  PRIMARY KEY (`idsong`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nodeApiDB`.`child`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nodeApiDB`.`child` (
  `id_child` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `id_tuteur` INT NULL,
  PRIMARY KEY (`id_child`),
  INDEX `id_tuteur_idx` (`id_tuteur` ASC) VISIBLE,
  INDEX `id_user_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `id_tuteur`
    FOREIGN KEY (`id_tuteur`)
    REFERENCES `nodeApiDB`.`tuteur` (`id_tuteur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `nodeApiDB`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
