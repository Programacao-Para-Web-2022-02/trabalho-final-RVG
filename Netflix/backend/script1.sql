CREATE DATABASE db;

USE db;

CREATE TABLE t_user(
	id_user INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(50) NOT NULL
);

CREATE TABLE t_rating(
	id_rating INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    level_rating INT NOT NULL,
    id_user_rating INT NOT NULL,
    CONSTRAINT fk_user_rating FOREIGN KEY (id_user_rating) 
    REFERENCES t_user(id_user)
);

INSERT INTO t_user VALUES(1, "user1");
