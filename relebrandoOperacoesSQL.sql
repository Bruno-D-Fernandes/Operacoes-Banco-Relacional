CREATE DATABASE IF NOT EXISTS `testes_estudo`;
USE `testes_estudo`;

CREATE TABLE `user_table`(
	`id` INT AUTO_INCREMENT,
	`name_user` VARCHAR(70) NOT NULL,
    `email_user` VARCHAR(70) NOT NULL UNIQUE,
    PRIMARY KEY (`id`)
);

CREATE TABLE `role_table`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `role_name` VARCHAR(50) NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE `roles_user_table`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `role_id` INT NOT NULL,
    
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `user_table`(`id`),
    FOREIGN KEY(`role_id`) REFERENCES `role_table`(`id`)
)