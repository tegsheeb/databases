DROP DATABASE IF EXISTS chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
 id INTEGER NOT NULL AUTO_INCREMENT,
 username VARCHAR(40) NOT NULL ,
  text_content VARCHAR(140) NOT NULL ,
  roomname VARCHAR(40),
  PRIMARY KEY (id)
);


-- CREATE TABLE users_friends (
--   user_id INTEGER,
--   friend_id INTEGER,
-- );

-- CREATE TABLE users (
--   id INTEGER NULL AUTO_INCREMENT,
--   username VARCHAR(40) ,
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE rooms (
--   id INTEGER NULL AUTO_INCREMENT,
--   roomname VARCHAR(40) ,
--   PRIMARY KEY (id)
-- );


-- CREATE TABLE friends (
--   id INTEGER NULL AUTO_INCREMENT,
--   friendname VARCHAR(40) ,
--   PRIMARY KEY (id)
-- );

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `messages` ADD FOREIGN KEY (username) REFERENCES `users` (`id`);
-- ALTER TABLE `messages` ADD FOREIGN KEY (roomname) REFERENCES `rooms` (`id`);
-- ALTER TABLE `users_friends` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
-- ALTER TABLE `users_friends` ADD FOREIGN KEY (friend_id) REFERENCES `friends` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users_friends` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `friends` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`username`,`text`,`roomname`) VALUES
-- ('','','','');
-- INSERT INTO `users_friends` (`user_id`,`friend_id`) VALUES
-- ('','');
-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `friends` (`id`,`friendname`) VALUES
-- ('','');


/* Create other tables and define schemas for them here! */

-- example
-- CREATE TABLE shop (
--     article INT UNSIGNED  DEFAULT '0000' NOT NULL,
--     dealer  CHAR(20)      DEFAULT ''     NOT NULL,
--     price   DECIMAL(16,2) DEFAULT '0.00' NOT NULL,
--     PRIMARY KEY(article, dealer));




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

