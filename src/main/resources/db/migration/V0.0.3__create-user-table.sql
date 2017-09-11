CREATE TABLE IF NOT EXISTS `example`.`user` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `last_name` VARCHAR(64) NULL DEFAULT '',
  `email` VARCHAR(64) NOT NULL,
  `password` VARCHAR(512) NOT NULL,
  `salt` CHAR(8) NOT NULL,
  `token` VARCHAR(256) NOT NULL,
  `email_confirmed` TINYINT(1) NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE IF NOT EXISTS `example`.`user_account` (
  `account_id` INT(11) NOT NULL,
  `user_id` INT(11) NOT NULL,
  `master` BIT(1) NOT NULL DEFAULT b'0',
  `admin` BIT(1) NOT NULL DEFAULT b'0',
  `active` BIT(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`account_id`, `user_id`),
  INDEX `fk_user_account_user_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_account_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `example`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_account_account`
    FOREIGN KEY (`account_id`)
    REFERENCES `example`.`account` (`account_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;