# phalcon-crud

implementing CRUD with Phalcon Framework

Table users schema

    CREATE TABLE `users` (
      `id` int NOT NULL AUTO_INCREMENT,
      `name` varchar(25) DEFAULT NULL,
      `emailid` varchar(50) DEFAULT NULL,
      `contactNumber` varchar(50) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8

Phalcon Boilerplate from [https://github.com/gamalan/phalcon-boilerplate](https://github.com/gamalan/phalcon-boilerplate)
