CREATE SCHEMA IF NOT EXISTS `QLTK ngan hang` DEFAULT CHARACTER SET utf8 ;
USE `QLTK ngan hang` ;

CREATE TABLE IF NOT EXISTS `QLTK ngan hang`.`tài khoản` (
  `stk` INT NOT NULL,
  `kieuTK` VARCHAR(255) NOT NULL,
  `ngaymoTK` DATE NULL,
  `sodu` INT NOT NULL,
  PRIMARY KEY (`stk`));


CREATE TABLE IF NOT EXISTS `QLTK ngan hang`.`khách hàng` (
  `maKH` INT NOT NULL,
  `hotenKH` VARCHAR(100) NOT NULL,
  `diachi` VARCHAR(100) NOT NULL,
  `email` VARCHAR(45) NULL,
  `sdt` INT NOT NULL,
  `tài khoản_stk` INT NOT NULL,
  PRIMARY KEY (`maKH`),
  INDEX `fk_khách hàng_tài khoản_idx` (`tài khoản_stk` ASC),
  CONSTRAINT `fk_khách hàng_tài khoản`
    FOREIGN KEY (`tài khoản_stk`)
    REFERENCES `QLTK ngan hang`.`tài khoản` (`stk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE IF NOT EXISTS `QLTK ngan hang`.`giao dịch` (
  `maGD` INT NOT NULL,
  `stkGD` VARCHAR(30) NOT NULL,
  `thoigianGD` DATETIME NOT NULL,
  `sotienGD` INT NOT NULL,
  `tài khoản_stk` INT NOT NULL,
  PRIMARY KEY (`maGD`),
  INDEX `fk_giao dịch_tài khoản1_idx` (`tài khoản_stk` ASC),
  CONSTRAINT `fk_giao dịch_tài khoản1`
    FOREIGN KEY (`tài khoản_stk`)
    REFERENCES `QLTK ngan hang`.`tài khoản` (`stk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
