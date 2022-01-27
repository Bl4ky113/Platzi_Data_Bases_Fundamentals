CREATE SCHEMA platzi_blog;

USE platzi_blog;

CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(80) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_tag` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_upload` timestamp NOT NULL,
  `status` char(8) NOT NULL,
  `users_id` int NOT NULL,
  `categories_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_id_idx` (`categories_id`),
  KEY `users_id_idx` (`users_id`),
  CONSTRAINT `categories_users` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date_upload` timestamp NOT NULL,
  `users_id` int NOT NULL,
  `posts_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_users_idx` (`users_id`),
  KEY `comments_posts_idx` (`posts_id`),
  CONSTRAINT `comments_posts` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `posts_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_posts` int NOT NULL,
  `id_tags` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posttags_tags_idx` (`id_tags`),
  KEY `poststags_posts_idx` (`id_posts`),
  CONSTRAINT `poststags_posts` FOREIGN KEY (`id_posts`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `poststags_tags` FOREIGN KEY (`id_tags`) REFERENCES `tags` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;