-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 19:50:29 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NULL COMMENT '',
  `adress` VARCHAR(200) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `title` VARCHAR(45) NULL COMMENT '',
  `description` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT NOT NULL COMMENT '',
  `date` DATETIME NULL COMMENT '',
  `users_id` INT NOT NULL COMMENT '',
  `products_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_orders_users_idx` (`users_id` ASC)  COMMENT '',
  INDEX `fk_orders_products1_idx` (`products_id` ASC)  COMMENT '',
  CONSTRAINT `fk_orders_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_products1`
    FOREIGN KEY (`products_id`)
    REFERENCES `mydb`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (1, 'Jonatas', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (2, 'Vinicius', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (3, 'Robert Tomei', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (4, 'Laci Dunson', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (5, 'Wilford Toomer', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (6, 'Wenona Kingsbury', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (7, 'Coy Walden', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (8, 'Leanne Montague', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (9, 'Leonie Sunde', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (10, 'Lonnie Schroyer', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (11, 'Lorine Crow', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (12, 'Kathyrn Pawlowicz', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (13, 'Lexie Seville', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (14, 'Obdulia Landin', '55 John Street');
INSERT INTO `mydb`.`users` (`id`, `name`, `adress`) VALUES (15, 'Herta Lorraine', '55 John Street');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`products`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (1, 'p1', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (2, 'p2', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (3, 'p3', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (4, 'p4', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (5, 'p5', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (6, 'p6', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (7, 'p7', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (8, 'p8', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (9, 'p9', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (10, 'p10', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (11, 'p11', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (12, 'p12', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (13, 'p13', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (14, 'p14', 'lorem ipsum');
INSERT INTO `mydb`.`products` (`id`, `title`, `description`) VALUES (15, 'p15', 'lorem ipsum');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`orders`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (1, '2016-02-16 00:45:38', 1, 1);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (2, '2016-02-16 00:45:38', 1, 2);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (3, '2016-02-16 00:45:38', 1, 3);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (4, '2016-02-16 00:45:38', 2, 3);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (5, '2016-02-16 00:45:38', 2, 4);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (6, '2016-02-16 00:45:38', 2, 4);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (7, '2016-02-16 00:45:38', 5, 5);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (8, '2016-02-16 00:45:38', 5, 5);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (9, '2016-02-16 00:45:38', 6, 6);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (10, '2016-02-16 00:45:38', 6, 6);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (11, '2016-02-16 00:45:38', 2, 6);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (12, '2016-02-16 00:45:38', 2, 7);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (13, '2016-02-16 00:45:38', 7, 12);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (14, '2016-02-16 00:45:38', 7, 12);
INSERT INTO `mydb`.`orders` (`id`, `date`, `users_id`, `products_id`) VALUES (15, '2016-02-16 00:45:38', 9, 13);

COMMIT;
