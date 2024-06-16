DROP DATABASE IF EXISTS `dbname`;
CREATE DATABASE `dbname`;
USE `dbname`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` TEXT NOT NULL,
  `email` TEXT,
  `password` TEXT,
  `create_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
);

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `users` (
  `question_id` INT(11) NOT NULL AUTO_INCREMENT,
  `question_by` INT(11) NOT NULL,
  `content` TEXT NOT NULL,
  `status` TEXT NOT NULL,
  `question_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`)
  FOREIGN KEY (`question_id`) REFERENCES users(`user_id`)
);

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` TEXT NOT NULL,
  PRIMARY KEY (`tag_id`)
);

DROP TABLE IF EXISTS `tags_questions`;
CREATE TABLE `tags` (
  `tag_question_id` INT(11) NOT NULL AUTO_INCREMENT,
  `tag_id` INT(11),
  `question_id` INT(11)
  PRIMARY KEY (`tag_question_id`)
  FOREIGN KEY (`tag_id`) REFERENCES tags(`tag_id`)
  FOREIGN KEY (`question_id`) REFERENCES questions(`question_id`)
);