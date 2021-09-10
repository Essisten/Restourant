CREATE TABLE `restourant`.`categories` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `restourant`.`order` (
    `idProduct` INT NOT NULL,
    `Count` INT NOT NULL,
    `idUser` INT NOT NULL,
    PRIMARY KEY (`idProduct`)
);
CREATE TABLE `restourant`.`products` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `idCategory` INT NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FK1_idx` (`idCategory`),
    CONSTRAINT `FK1` FOREIGN KEY (`idCategory`)
        REFERENCES `categories` (`id`)
);
CREATE TABLE `restourant`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
);
CREATE TABLE `restourant`.`orders` (
    `idOrder` INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`idOrder`)
);
CREATE TABLE `restourant`.`pocket` (
  `idProduct` INT NOT NULL DEFAULT 0,
  `Count` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`idProduct`));

INSERT INTO `restourant`.`categories` (`id`, `name`) VALUES ('1', 'Напитки');
INSERT INTO `restourant`.`categories` (`id`, `name`) VALUES ('2', 'Сладости');
INSERT INTO `restourant`.`categories` (`id`, `name`) VALUES ('3', 'Закуски');
INSERT INTO `restourant`.`categories` (`id`, `name`) VALUES ('4', 'Консервы');
INSERT INTO `restourant`.`categories` (`id`, `name`) VALUES ('5', 'Хлебобулочные изделия');
