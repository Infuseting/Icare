-- MySQL Script generated by MySQL Workbench
-- Tue Jan 14 13:12:47 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `ICA_Permission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Permission` ;

CREATE TABLE IF NOT EXISTS `ICA_Permission` (
                                                `PER_ID` INT NOT NULL AUTO_INCREMENT,
                                                `PER_Libelle` VARCHAR(128) NOT NULL,
                                                PRIMARY KEY (`PER_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_User` ;

CREATE TABLE IF NOT EXISTS `ICA_User` (
                                          `USE_UUID` VARCHAR(128) NOT NULL,
                                          PRIMARY KEY (`USE_UUID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Role` ;

CREATE TABLE IF NOT EXISTS `ICA_Role` (
                                          `ROL_ID` INT NOT NULL AUTO_INCREMENT,
                                          `ROL_Libelle` VARCHAR(64) NOT NULL,
                                          PRIMARY KEY (`ROL_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_ROLE_HAS_PERMISSION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_ROLE_HAS_PERMISSION` ;

CREATE TABLE IF NOT EXISTS `ICA_ROLE_HAS_PERMISSION` (
                                                         `PER_ID` INT NOT NULL,
                                                         `ROL_ID` INT NOT NULL,
                                                         PRIMARY KEY (`PER_ID`, `ROL_ID`),
                                                         INDEX `fk_ICA_Permission_has_ICA_Role_ICA_Role1_idx` (`ROL_ID` ASC) VISIBLE,
                                                         INDEX `fk_ICA_Permission_has_ICA_Role_ICA_Permission_idx` (`PER_ID` ASC) VISIBLE,
                                                         CONSTRAINT `fk_ICA_Permission_has_ICA_Role_ICA_Permission`
                                                             FOREIGN KEY (`PER_ID`)
                                                                 REFERENCES `ICA_Permission` (`PER_ID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION,
                                                         CONSTRAINT `fk_ICA_Permission_has_ICA_Role_ICA_Role1`
                                                             FOREIGN KEY (`ROL_ID`)
                                                                 REFERENCES `ICA_Role` (`ROL_ID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_USER_HAS_PERMISSION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_USER_HAS_PERMISSION` ;

CREATE TABLE IF NOT EXISTS `ICA_USER_HAS_PERMISSION` (
                                                         `USE_UUID` VARCHAR(128) NOT NULL,
                                                         `PER_ID` INT NOT NULL,
                                                         PRIMARY KEY (`USE_UUID`, `PER_ID`),
                                                         INDEX `fk_ICA_User_has_ICA_Permission_ICA_Permission1_idx` (`PER_ID` ASC) VISIBLE,
                                                         INDEX `fk_ICA_User_has_ICA_Permission_ICA_User1_idx` (`USE_UUID` ASC) VISIBLE,
                                                         CONSTRAINT `fk_ICA_User_has_ICA_Permission_ICA_User1`
                                                             FOREIGN KEY (`USE_UUID`)
                                                                 REFERENCES `ICA_User` (`USE_UUID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION,
                                                         CONSTRAINT `fk_ICA_User_has_ICA_Permission_ICA_Permission1`
                                                             FOREIGN KEY (`PER_ID`)
                                                                 REFERENCES `ICA_Permission` (`PER_ID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_USER_HAS_ROLE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_USER_HAS_ROLE` ;

CREATE TABLE IF NOT EXISTS `ICA_USER_HAS_ROLE` (
                                                   `USE_UUID` VARCHAR(128) NOT NULL,
                                                   `ROL_ID` INT NOT NULL,
                                                   PRIMARY KEY (`USE_UUID`, `ROL_ID`),
                                                   INDEX `fk_ICA_User_has_ICA_Role_ICA_Role1_idx` (`ROL_ID` ASC) VISIBLE,
                                                   INDEX `fk_ICA_User_has_ICA_Role_ICA_User1_idx` (`USE_UUID` ASC) VISIBLE,
                                                   CONSTRAINT `fk_ICA_User_has_ICA_Role_ICA_User1`
                                                       FOREIGN KEY (`USE_UUID`)
                                                           REFERENCES `ICA_User` (`USE_UUID`)
                                                           ON DELETE NO ACTION
                                                           ON UPDATE NO ACTION,
                                                   CONSTRAINT `fk_ICA_User_has_ICA_Role_ICA_Role1`
                                                       FOREIGN KEY (`ROL_ID`)
                                                           REFERENCES `ICA_Role` (`ROL_ID`)
                                                           ON DELETE NO ACTION
                                                           ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Matiere`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Matiere` ;

CREATE TABLE IF NOT EXISTS `ICA_Matiere` (
                                             `MAT_ID` INT NOT NULL AUTO_INCREMENT,
                                             `MAT_Libelle` VARCHAR(64) NOT NULL,
                                             PRIMARY KEY (`MAT_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Statut_Emploie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Statut_Emploie` ;

CREATE TABLE IF NOT EXISTS `ICA_Statut_Emploie` (
                                                    `STA_ID` INT NOT NULL AUTO_INCREMENT,
                                                    `STA_Libelle` VARCHAR(64) NOT NULL,
                                                    PRIMARY KEY (`STA_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Prof`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Prof` ;

CREATE TABLE IF NOT EXISTS `ICA_Prof` (
                                          `USE_UUID` VARCHAR(128) NOT NULL,
                                          `STA_ID` INT NOT NULL,
                                          INDEX `fk_ICA_Prof_ICA_User1_idx` (`USE_UUID` ASC) VISIBLE,
                                          PRIMARY KEY (`USE_UUID`),
                                          INDEX `fk_ICA_Prof_ICA_Statut_Emploie1_idx` (`STA_ID` ASC) VISIBLE,
                                          CONSTRAINT `fk_ICA_Prof_ICA_User1`
                                              FOREIGN KEY (`USE_UUID`)
                                                  REFERENCES `ICA_User` (`USE_UUID`)
                                                  ON DELETE NO ACTION
                                                  ON UPDATE NO ACTION,
                                          CONSTRAINT `fk_ICA_Prof_ICA_Statut_Emploie1`
                                              FOREIGN KEY (`STA_ID`)
                                                  REFERENCES `ICA_Statut_Emploie` (`STA_ID`)
                                                  ON DELETE NO ACTION
                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Etude`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Etude` ;

CREATE TABLE IF NOT EXISTS `ICA_Etude` (
                                           `ETU_ID` INT NOT NULL AUTO_INCREMENT,
                                           `ETU_Libelle` VARCHAR(64) NOT NULL,
                                           PRIMARY KEY (`ETU_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Type_Classe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Type_Classe` ;

CREATE TABLE IF NOT EXISTS `ICA_Type_Classe` (
                                                 `TYPC_ID` INT NOT NULL AUTO_INCREMENT,
                                                 `TYPC_Libelle` VARCHAR(64) NOT NULL,
                                                 PRIMARY KEY (`TYPC_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Niveau`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Niveau` ;

CREATE TABLE IF NOT EXISTS `ICA_Niveau` (
                                            `NIV_ID` INT NOT NULL AUTO_INCREMENT,
                                            `NIV_Libelle` VARCHAR(45) NOT NULL,
                                            PRIMARY KEY (`NIV_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Classe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Classe` ;

CREATE TABLE IF NOT EXISTS `ICA_Classe` (
                                            `ETU_ID` INT NOT NULL,
                                            `TYPC_ID` INT NOT NULL,
                                            `NIV_ID` INT NOT NULL,
                                            `CLA_ID` INT NOT NULL AUTO_INCREMENT,
                                            `CLA_Libelle` VARCHAR(45) NOT NULL,
                                            INDEX `fk_ICA_Classe_ICA_Etude1_idx` (`ETU_ID` ASC) VISIBLE,
                                            INDEX `fk_ICA_Classe_ICA_Type_Classe1_idx` (`TYPC_ID` ASC) VISIBLE,
                                            INDEX `fk_ICA_Classe_ICA_Niveau1_idx` (`NIV_ID` ASC) VISIBLE,
                                            PRIMARY KEY (`CLA_ID`),
                                            CONSTRAINT `fk_ICA_Classe_ICA_Etude1`
                                                FOREIGN KEY (`ETU_ID`)
                                                    REFERENCES `ICA_Etude` (`ETU_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION,
                                            CONSTRAINT `fk_ICA_Classe_ICA_Type_Classe1`
                                                FOREIGN KEY (`TYPC_ID`)
                                                    REFERENCES `ICA_Type_Classe` (`TYPC_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION,
                                            CONSTRAINT `fk_ICA_Classe_ICA_Niveau1`
                                                FOREIGN KEY (`NIV_ID`)
                                                    REFERENCES `ICA_Niveau` (`NIV_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Responsable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Responsable` ;

CREATE TABLE IF NOT EXISTS `ICA_Responsable` (
                                                 `USE_UUID` VARCHAR(128) NOT NULL,
                                                 `MAT_ID` INT NOT NULL,
                                                 PRIMARY KEY (`USE_UUID`, `MAT_ID`),
                                                 INDEX `fk_ICA_Prof_has_ICA_Matiere_ICA_Matiere1_idx` (`MAT_ID` ASC) VISIBLE,
                                                 INDEX `fk_ICA_Prof_has_ICA_Matiere_ICA_Prof1_idx` (`USE_UUID` ASC) VISIBLE,
                                                 CONSTRAINT `fk_ICA_Prof_has_ICA_Matiere_ICA_Prof1`
                                                     FOREIGN KEY (`USE_UUID`)
                                                         REFERENCES `ICA_Prof` (`USE_UUID`)
                                                         ON DELETE NO ACTION
                                                         ON UPDATE NO ACTION,
                                                 CONSTRAINT `fk_ICA_Prof_has_ICA_Matiere_ICA_Matiere1`
                                                     FOREIGN KEY (`MAT_ID`)
                                                         REFERENCES `ICA_Matiere` (`MAT_ID`)
                                                         ON DELETE NO ACTION
                                                         ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Temporalite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Temporalite` ;

CREATE TABLE IF NOT EXISTS `ICA_Temporalite` (
                                                 `SEM_ID` INT NOT NULL,
                                                 `SEM_Libelle` VARCHAR(45) NOT NULL,
                                                 PRIMARY KEY (`SEM_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_FORMAT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_FORMAT` ;

CREATE TABLE IF NOT EXISTS `ICA_FORMAT` (
                                            `MAT_ID` INT NOT NULL,
                                            `ETU_ID` INT NOT NULL,
                                            `SEM_ID` INT NOT NULL,
                                            PRIMARY KEY (`MAT_ID`, `ETU_ID`, `SEM_ID`),
                                            INDEX `fk_ICA_Matiere_has_ICA_Type_Cours_ICA_Matiere1_idx` (`MAT_ID` ASC) VISIBLE,
                                            INDEX `fk_ICA_FORMAT_ICA_Etude1_idx` (`ETU_ID` ASC) VISIBLE,
                                            INDEX `fk_ICA_FORMAT_ICA_Temporalite1_idx` (`SEM_ID` ASC) VISIBLE,
                                            CONSTRAINT `fk_ICA_Matiere_has_ICA_Type_Cours_ICA_Matiere1`
                                                FOREIGN KEY (`MAT_ID`)
                                                    REFERENCES `ICA_Matiere` (`MAT_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION,
                                            CONSTRAINT `fk_ICA_FORMAT_ICA_Etude1`
                                                FOREIGN KEY (`ETU_ID`)
                                                    REFERENCES `ICA_Etude` (`ETU_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION,
                                            CONSTRAINT `fk_ICA_FORMAT_ICA_Temporalite1`
                                                FOREIGN KEY (`SEM_ID`)
                                                    REFERENCES `ICA_Temporalite` (`SEM_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_HERITE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_HERITE` ;

CREATE TABLE IF NOT EXISTS `ICA_HERITE` (
                                            `CLA_ID` INT NOT NULL,
                                            `ANCETRE_CLA_ID` INT NOT NULL,
                                            `HER_ID` INT NOT NULL AUTO_INCREMENT,
                                            INDEX `fk_ICA_HERITE_ICA_Classe1_idx` (`CLA_ID` ASC) VISIBLE,
                                            INDEX `fk_ICA_HERITE_ICA_Classe2_idx` (`ANCETRE_CLA_ID` ASC) VISIBLE,
                                            PRIMARY KEY (`HER_ID`),
                                            CONSTRAINT `fk_ICA_HERITE_ICA_Classe1`
                                                FOREIGN KEY (`CLA_ID`)
                                                    REFERENCES `ICA_Classe` (`CLA_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION,
                                            CONSTRAINT `fk_ICA_HERITE_ICA_Classe2`
                                                FOREIGN KEY (`ANCETRE_CLA_ID`)
                                                    REFERENCES `ICA_Classe` (`CLA_ID`)
                                                    ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Obligation_Cours`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Obligation_Cours` ;

CREATE TABLE IF NOT EXISTS `ICA_Obligation_Cours` (
                                                      `OBG_ID` INT NOT NULL,
                                                      `MAT_ID` INT NOT NULL,
                                                      `ETU_ID` INT NOT NULL,
                                                      `SEM_ID` INT NOT NULL,
                                                      `OBG_Libelle` VARCHAR(45) NOT NULL,
                                                      `TYPC_ID` INT NOT NULL,
                                                      PRIMARY KEY (`OBG_ID`),
                                                      INDEX `fk_ICA_Obligation_Cours_ICA_FORMAT1_idx` (`MAT_ID` ASC, `ETU_ID` ASC, `SEM_ID` ASC) VISIBLE,
                                                      INDEX `fk_ICA_Obligation_Cours_ICA_Type_Classe1_idx` (`TYPC_ID` ASC) VISIBLE,
                                                      CONSTRAINT `fk_ICA_Obligation_Cours_ICA_FORMAT1`
                                                          FOREIGN KEY (`MAT_ID` , `ETU_ID` , `SEM_ID`)
                                                              REFERENCES `ICA_FORMAT` (`MAT_ID` , `ETU_ID` , `SEM_ID`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION,
                                                      CONSTRAINT `fk_ICA_Obligation_Cours_ICA_Type_Classe1`
                                                          FOREIGN KEY (`TYPC_ID`)
                                                              REFERENCES `ICA_Type_Classe` (`TYPC_ID`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Batiment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Batiment` ;

CREATE TABLE IF NOT EXISTS `ICA_Batiment` (
                                              `BAT_ID` INT NOT NULL,
                                              `BAT_Libelle` VARCHAR(45) NOT NULL,
                                              PRIMARY KEY (`BAT_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Salle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Salle` ;

CREATE TABLE IF NOT EXISTS `ICA_Salle` (
                                           `SAL_ID` INT NOT NULL AUTO_INCREMENT,
                                           `SAL_Libelle` VARCHAR(128) NOT NULL,
                                           `BAT_ID` INT NOT NULL,
                                           `SAL_Link` VARCHAR(1024) NOT NULL,
                                           PRIMARY KEY (`SAL_ID`),
                                           INDEX `fk_ICA_Salle_ICA_Batiment1_idx` (`BAT_ID` ASC) VISIBLE,
                                           CONSTRAINT `fk_ICA_Salle_ICA_Batiment1`
                                               FOREIGN KEY (`BAT_ID`)
                                                   REFERENCES `ICA_Batiment` (`BAT_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Distance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Distance` ;

CREATE TABLE IF NOT EXISTS `ICA_Distance` (
                                              `DIS_ID` INT NOT NULL AUTO_INCREMENT,
                                              `DIS_Temps` INT NOT NULL,
                                              `BAT_ID1` INT NOT NULL,
                                              `BAT_ID2` INT NOT NULL,
                                              PRIMARY KEY (`DIS_ID`),
                                              INDEX `fk_ICA_Distance_ICA_Batiment1_idx` (`BAT_ID1` ASC) VISIBLE,
                                              INDEX `fk_ICA_Distance_ICA_Batiment2_idx` (`BAT_ID2` ASC) VISIBLE,
                                              CONSTRAINT `fk_ICA_Distance_ICA_Batiment1`
                                                  FOREIGN KEY (`BAT_ID1`)
                                                      REFERENCES `ICA_Batiment` (`BAT_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION,
                                              CONSTRAINT `fk_ICA_Distance_ICA_Batiment2`
                                                  FOREIGN KEY (`BAT_ID2`)
                                                      REFERENCES `ICA_Batiment` (`BAT_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Autorise`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Autorise` ;

CREATE TABLE IF NOT EXISTS `ICA_Autorise` (
                                              `SAL_ID` INT NOT NULL,
                                              `ETU_ID` INT NOT NULL,
                                              PRIMARY KEY (`SAL_ID`, `ETU_ID`),
                                              INDEX `fk_ICA_Salle_has_ICA_Etude_ICA_Etude1_idx` (`ETU_ID` ASC) VISIBLE,
                                              INDEX `fk_ICA_Salle_has_ICA_Etude_ICA_Salle1_idx` (`SAL_ID` ASC) VISIBLE,
                                              CONSTRAINT `fk_ICA_Salle_has_ICA_Etude_ICA_Salle1`
                                                  FOREIGN KEY (`SAL_ID`)
                                                      REFERENCES `ICA_Salle` (`SAL_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION,
                                              CONSTRAINT `fk_ICA_Salle_has_ICA_Etude_ICA_Etude1`
                                                  FOREIGN KEY (`ETU_ID`)
                                                      REFERENCES `ICA_Etude` (`ETU_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_TYPE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_TYPE` ;

CREATE TABLE IF NOT EXISTS `ICA_TYPE` (
                                          `TYP_ID` INT NOT NULL,
                                          `TYP_Libelle` VARCHAR(128) NOT NULL,
                                          PRIMARY KEY (`TYP_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_EST_TYPE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_EST_TYPE` ;

CREATE TABLE IF NOT EXISTS `ICA_EST_TYPE` (
                                              `SAL_ID` INT NOT NULL,
                                              `TYP_ID` INT NOT NULL,
                                              PRIMARY KEY (`SAL_ID`, `TYP_ID`),
                                              INDEX `fk_ICA_Salle_has_ICA_TYPE_ICA_TYPE1_idx` (`TYP_ID` ASC) VISIBLE,
                                              INDEX `fk_ICA_Salle_has_ICA_TYPE_ICA_Salle1_idx` (`SAL_ID` ASC) VISIBLE,
                                              CONSTRAINT `fk_ICA_Salle_has_ICA_TYPE_ICA_Salle1`
                                                  FOREIGN KEY (`SAL_ID`)
                                                      REFERENCES `ICA_Salle` (`SAL_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION,
                                              CONSTRAINT `fk_ICA_Salle_has_ICA_TYPE_ICA_TYPE1`
                                                  FOREIGN KEY (`TYP_ID`)
                                                      REFERENCES `ICA_TYPE` (`TYP_ID`)
                                                      ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Cours`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Cours` ;

CREATE TABLE IF NOT EXISTS `ICA_Cours` (
                                           `COU_ID` INT NOT NULL,
                                           `OBG_ID` INT NOT NULL,
                                           `SAL_ID` INT NOT NULL,
                                           `COU_HEURE_DEBUT` DATETIME NOT NULL,
                                           `COU_HEURE_FIN` VARCHAR(45) NOT NULL,
                                           `CLA_ID` INT NOT NULL,
                                           PRIMARY KEY (`COU_ID`),
                                           INDEX `fk_ICA_Cours_ICA_Obligation_Cours1_idx` (`OBG_ID` ASC) VISIBLE,
                                           INDEX `fk_ICA_Cours_ICA_Salle1_idx` (`SAL_ID` ASC) VISIBLE,
                                           INDEX `fk_ICA_Cours_ICA_Classe1_idx` (`CLA_ID` ASC) VISIBLE,
                                           CONSTRAINT `fk_ICA_Cours_ICA_Obligation_Cours1`
                                               FOREIGN KEY (`OBG_ID`)
                                                   REFERENCES `ICA_Obligation_Cours` (`OBG_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION,
                                           CONSTRAINT `fk_ICA_Cours_ICA_Salle1`
                                               FOREIGN KEY (`SAL_ID`)
                                                   REFERENCES `ICA_Salle` (`SAL_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION,
                                           CONSTRAINT `fk_ICA_Cours_ICA_Classe1`
                                               FOREIGN KEY (`CLA_ID`)
                                                   REFERENCES `ICA_Classe` (`CLA_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_GERER`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_GERER` ;

CREATE TABLE IF NOT EXISTS `ICA_GERER` (
                                           `USE_UUID` VARCHAR(128) NOT NULL,
                                           `COU_ID` INT NOT NULL,
                                           PRIMARY KEY (`USE_UUID`, `COU_ID`),
                                           INDEX `fk_ICA_Prof_has_ICA_Cours_ICA_Prof1_idx` (`USE_UUID` ASC) VISIBLE,
                                           INDEX `fk_ICA_GERER_ICA_Cours1_idx` (`COU_ID` ASC) VISIBLE,
                                           CONSTRAINT `fk_ICA_Prof_has_ICA_Cours_ICA_Prof1`
                                               FOREIGN KEY (`USE_UUID`)
                                                   REFERENCES `ICA_Prof` (`USE_UUID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION,
                                           CONSTRAINT `fk_ICA_GERER_ICA_Cours1`
                                               FOREIGN KEY (`COU_ID`)
                                                   REFERENCES `ICA_Cours` (`COU_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_EDT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_EDT` ;

CREATE TABLE IF NOT EXISTS `ICA_EDT` (
                                         `EDT_ID` INT NOT NULL,
                                         `EDT_Link` VARCHAR(1024) NOT NULL,
                                         `EDT_Name` VARCHAR(64) NOT NULL,
                                         PRIMARY KEY (`EDT_ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_APPARTIENT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_APPARTIENT` ;

CREATE TABLE IF NOT EXISTS `ICA_APPARTIENT` (
                                                `EDT_ID` INT NOT NULL,
                                                `USE_UUID` VARCHAR(128) NOT NULL,
                                                PRIMARY KEY (`EDT_ID`, `USE_UUID`),
                                                INDEX `fk_ICA_EDT_has_ICA_Prof_ICA_Prof1_idx` (`USE_UUID` ASC) VISIBLE,
                                                INDEX `fk_ICA_EDT_has_ICA_Prof_ICA_EDT1_idx` (`EDT_ID` ASC) VISIBLE,
                                                CONSTRAINT `fk_ICA_EDT_has_ICA_Prof_ICA_EDT1`
                                                    FOREIGN KEY (`EDT_ID`)
                                                        REFERENCES `ICA_EDT` (`EDT_ID`)
                                                        ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION,
                                                CONSTRAINT `fk_ICA_EDT_has_ICA_Prof_ICA_Prof1`
                                                    FOREIGN KEY (`USE_UUID`)
                                                        REFERENCES `ICA_Prof` (`USE_UUID`)
                                                        ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_Necessite_Salle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_Necessite_Salle` ;

CREATE TABLE IF NOT EXISTS `ICA_Necessite_Salle` (
                                                     `COU_ID` INT NOT NULL,
                                                     `TYP_ID` INT NOT NULL,
                                                     PRIMARY KEY (`COU_ID`, `TYP_ID`),
                                                     INDEX `fk_ICA_Obligation_Cours_has_ICA_TYPE_ICA_TYPE1_idx` (`TYP_ID` ASC) VISIBLE,
                                                     INDEX `fk_ICA_Obligation_Cours_has_ICA_TYPE_ICA_Obligation_Cours1_idx` (`COU_ID` ASC) VISIBLE,
                                                     CONSTRAINT `fk_ICA_Obligation_Cours_has_ICA_TYPE_ICA_Obligation_Cours1`
                                                         FOREIGN KEY (`COU_ID`)
                                                             REFERENCES `ICA_Obligation_Cours` (`OBG_ID`)
                                                             ON DELETE NO ACTION
                                                             ON UPDATE NO ACTION,
                                                     CONSTRAINT `fk_ICA_Obligation_Cours_has_ICA_TYPE_ICA_TYPE1`
                                                         FOREIGN KEY (`TYP_ID`)
                                                             REFERENCES `ICA_TYPE` (`TYP_ID`)
                                                             ON DELETE NO ACTION
                                                             ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ICA_AVANT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ICA_AVANT` ;

CREATE TABLE IF NOT EXISTS `ICA_AVANT` (
                                           `AVA_ID` INT NOT NULL,
                                           `OBG_ID1` INT NOT NULL,
                                           `OBG_ID2` INT NOT NULL,
                                           PRIMARY KEY (`AVA_ID`),
                                           INDEX `fk_ICA_AVANT_ICA_Obligation_Cours1_idx` (`OBG_ID1` ASC) VISIBLE,
                                           INDEX `fk_ICA_AVANT_ICA_Obligation_Cours2_idx` (`OBG_ID2` ASC) VISIBLE,
                                           CONSTRAINT `fk_ICA_AVANT_ICA_Obligation_Cours1`
                                               FOREIGN KEY (`OBG_ID1`)
                                                   REFERENCES `ICA_Obligation_Cours` (`OBG_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION,
                                           CONSTRAINT `fk_ICA_AVANT_ICA_Obligation_Cours2`
                                               FOREIGN KEY (`OBG_ID2`)
                                                   REFERENCES `ICA_Obligation_Cours` (`OBG_ID`)
                                                   ON DELETE NO ACTION
                                                   ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
