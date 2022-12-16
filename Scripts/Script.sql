CREATE DATABASE db_netflix;

Use db_netflix;
CREATE TABLE t_user(
	id_user INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(50) NOT NULL
);

CREATE TABLE t_movie(
	id_movie INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_movie VARCHAR(60) NOT NULL
);

CREATE TABLE t_series( 
	id_series INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name_series VARCHAR(60) NOT NULL
);

CREATE TABLE t_rating(
	id_rating INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    level_rating INT NOT NULL,
    id_user_rating INT NOT NULL,
    id_movie_rating INT NOT NULL,
    CONSTRAINT fk_user_rating FOREIGN KEY (id_user_rating) 
    REFERENCES t_user(id_user),
    CONSTRAINT fk_movie_rating FOREIGN KEY (id_movie_rating)
    REFERENCES t_movie(id_movie)
);

INSERT INTO tb_user VALUES (1, 'user1'), (2, 'user2');

SELECT * FROM tb_user;

