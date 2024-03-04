-- Adminer 4.8.1 MySQL 8.3.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `token` char(43) NOT NULL,
  `data` blob NOT NULL,
  `expiry` timestamp(6) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `sessions_expiry_idx` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `snippets`;
CREATE TABLE `snippets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_snippets_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `snippets` (`id`, `title`, `content`, `created`, `expires`) VALUES
(1,	'An old silent pond',	'An old silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n Matsuo Bash',	'2023-12-06 14:18:46',	'2024-12-05 14:18:46'),
(2,	'Over the wintry forest',	'Over the wintry\nforest, winds howl in rage\nwith no leaves to blow.\n\n Natsume Soseki',	'2023-12-06 14:18:46',	'2024-12-05 14:18:46'),
(3,	'First autumn morning',	'First autumn morning\nthe mirror I stare into\nshows my father\'s face.\n\n Murakami Kijo',	'2023-12-06 14:19:57',	'2023-12-13 14:19:57');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashed_password` char(60) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uc_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `users` (`id`, `name`, `email`, `hashed_password`, `created`) VALUES
(1,	'Danh',	'congdanh@gmail.com',	'$2a$12$h3WM5qGa7aoi0Iu4t0u9O.jPTTffkrJ3EZZh5nRlVUY6bDgrm2JUO',	'2024-03-04 15:10:33');

-- 2024-03-04 15:11:48
