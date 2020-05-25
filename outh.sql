CREATE DATABASE `oauth2_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `authorities` (
  `username` varchar(256) NOT NULL,
  `authority` varchar(256) NOT NULL,
  PRIMARY KEY (`username`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) NOT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `additional_information` varchar(4000) DEFAULT NULL,
  `autoaprrove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `permission_role` (
  `permission_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `FK_permission` (`permission_id`),
  KEY `FK_role` (`role_id`),
  CONSTRAINT `FK_permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `role_user` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `FK_user` (`user_id`),
  KEY `FK_role_id` (`role_id`),
  CONSTRAINT `FK_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `email` varchar(256) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `credentials_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `oauth2_database`.`authorities`
(`username`,
`authority`)
VALUES
(<{username: }>,
<{authority: }>);

INSERT INTO `oauth2_database`.`oauth_client_details`
(`client_id`,
`resource_ids`,
`client_secret`,
`scope`,
`authorized_grant_types`,
`web_server_redirect_uri`,
`authorities`,
`access_token_validity`,
`refresh_token_validity`,
`additional_information`,
`autoaprrove`)
VALUES
(<{client_id: }>,
<{resource_ids: }>,
<{client_secret: }>,
<{scope: }>,
<{authorized_grant_types: }>,
<{web_server_redirect_uri: }>,
<{authorities: }>,
<{access_token_validity: }>,
<{refresh_token_validity: }>,
<{additional_information: }>,
<{autoaprrove: }>);

INSERT INTO `oauth2_database`.`permission`
(`id`,
`name`)
VALUES
(<{id: }>,
<{name: }>);

INSERT INTO `oauth2_database`.`permission_role`
(`permission_id`,
`role_id`)
VALUES
(<{permission_id: }>,
<{role_id: }>);

INSERT INTO `oauth2_database`.`role`
(`id`,
`name`)
VALUES
(<{id: }>,
<{name: }>);

INSERT INTO `oauth2_database`.`role_user`
(`user_id`,
`role_id`)
VALUES
(<{user_id: }>,
<{role_id: }>);

INSERT INTO `oauth2_database`.`users`
(`user_id`,
`username`,
`password`,
`enabled`,
`email`,
`account_expired`,
`credentials_expired`,
`account_locked`)
VALUES
(<{user_id: }>,
<{username: }>,
<{password: }>,
<{enabled: }>,
<{email: }>,
<{account_expired: }>,
<{credentials_expired: }>,
<{account_locked: }>);








