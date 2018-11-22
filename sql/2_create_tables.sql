USE `aria`;

CREATE TABLE `user` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`login` VARCHAR(200) NOT NULL UNIQUE,
	`password` VARCHAR(200) NOT NULL,
	
	/*
	 * 0 - admin
	 * 1 - customer
	 */
	`role` TINYINT NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARACTER SET utf8;

CREATE TABLE `user_info` (
	`id` INTEGER NOT NULL,
	`lastname` VARCHAR(40) NOT NULL,
    `firstname` VARCHAR(50) NOT NULL, 
	PRIMARY KEY (`id`),
	CONSTRAINT FK_user_info_user FOREIGN KEY (`id`)
	REFERENCES user(`id`)
) ENGINE=INNODB DEFAULT CHARACTER SET utf8;
