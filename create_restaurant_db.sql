CREATE DATABASE `hambuger_restaurant`;

USE hambuger_restaurant;

CREATE TABLE `hambuger_restaurant`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(80) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone_number` VARCHAR(40) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `hambuger_restaurant`.`menus` (
  `id` INT NOT NULL,
  `name_menu` VARCHAR(52) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `hambuger_restaurant`.`tags` (
  `id` INT NOT NULL,
  `name_tag` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_tag_UNIQUE` (`name_tag` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `hambuger_restaurant`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `special_orders` TINYTEXT NULL,
  `time_creation` TIMESTAMP NOT NULL,
  `time_finished` TIMESTAMP NOT NULL,
  `duration_order` TIME NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `orders_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `orders_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `hambuger_restaurant`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;
    
CREATE TABLE `hambuger_restaurant`.`meals` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `size` CHAR(8) NOT NULL,
  `ammount` SMALLINT NOT NULL DEFAULT 1,
  `made_date` TIMESTAMP NOT NULL,
  `spoil_date` TIMESTAMP NOT NULL,
  `price` FLOAT NOT NULL DEFAULT 1,
  `order_id` INT NOT NULL,
  `menu_id` INT NULL,
  `tag_id` INT NULL, 
  PRIMARY KEY (`id`),
  INDEX `meals_menus_idx` (`menu_id` ASC) VISIBLE,
  INDEX `meals_orders_idx` (`order_id` ASC) VISIBLE,
  INDEX `meals_orders_idx` (`tag_id` ASC) VISIBLE,
  CONSTRAINT `meals_orders`
    FOREIGN KEY (`order_id`)
    REFERENCES `hambuger_restaurant`.`orders` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `meals_menus`
    FOREIGN KEY (`menu_id`)
    REFERENCES `hambuger_restaurant`.`menus` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `meals_tags`
	FOREIGN KEY (`tag_id`)
    REFERENCES `hamburger_restaurant`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `hambuger_restaurant`.`drinks` (
  `id` INT NOT NULL,
  `size` CHAR(6) NOT NULL,
  `texture` CHAR(6) NOT NULL,
  `amount` SMALLINT NOT NULL DEFAULT 1,
  `made_date` TIMESTAMP NOT NULL,
  `spoil_date` TIMESTAMP NOT NULL,
  `price` DECIMAL NOT NULL DEFAULT 1,
  `order_id` INT NOT NULL,
  `menu_id` INT NULL,
  `tag_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `drinks_orders_idx` (`order_id` ASC) VISIBLE,
  INDEX `drinks_menus_idx` (`menu_id` ASC) VISIBLE,
  INDEX `drinks_tags_idx` (`tag_id` ASC) VISIBLE,
  CONSTRAINT `drinks_orders`
    FOREIGN KEY (`order_id`)
    REFERENCES `hambuger_restaurant`.`orders` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `drinks_menus`
    FOREIGN KEY (`menu_id`)
    REFERENCES `hambuger_restaurant`.`menus` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `drinks_tags`
	FOREIGN KEY (`tag_id`)
    REFERENCES `hambuger_restaurant`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `hambuger_restaurant`.`menus_users` (
  `id` INT NOT NULL,
  `id_users` INT NOT NULL,
  `id_menus` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `menususers_users_idx` (`id_users` ASC) VISIBLE,
  INDEX `menususers_menus_idx` (`id_menus` ASC) VISIBLE,
  CONSTRAINT `menususers_users`
    FOREIGN KEY (`id_users`)
    REFERENCES `hambuger_restaurant`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `menususers_menus`
    FOREIGN KEY (`id_menus`)
    REFERENCES `hambuger_restaurant`.`menus` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;