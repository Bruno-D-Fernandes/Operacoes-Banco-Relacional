DROP DATABASE IF EXISTS `testes_estudo`;
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
);

INSERT INTO `user_table` (`name_user`, `email_user`) 
VALUES 
("Bruno", "bruno@gmail.com"),
("Pedro", "Pedro@gmail.com"),
("Rafaela", "Rafaela@gmail.com"),
("Julia", "Julia@gmail.com");

INSERT INTO `role_table` (`role_name`)
VALUES
("admin"),
("user"),
("diretoctor");

INSERT INTO `roles_user_table` (`user_id`, `role_id`)
VALUES 
(1,1),
(1,2),
(1,3),
(2,2),
(3,2);

SELECT * FROM `roles_user_table`;