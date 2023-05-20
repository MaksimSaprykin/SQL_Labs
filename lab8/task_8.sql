SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS t_project_participants;
DROP TABLE IF EXISTS t_tasks;
DROP TABLE IF EXISTS t_task_executors;
DROP TABLE IF EXISTS t_files;
DROP TABLE IF EXISTS t_users;
DROP TABLE IF EXISTS t_projects;

CREATE TABLE t_users (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  email VARCHAR(255),
  password VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO t_users (id, name, email) VALUES
(1, 'Maks', 'maks333@gmail.com'),
(2, 'Miki', 'miki_mous@gmail.com'),
(3, 'Tom', 'cattom@gmail.com'),
(4, 'Klaus', 'santa@gmail.com');

CREATE TABLE t_projects (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  description TEXT,
  PRIMARY KEY (id)
);


INSERT INTO t_projects (id, name, description) VALUES
(1, 'project_1', 'cheese operation'),
(2, 'project_2', 'New Year');

CREATE TABLE t_project_participants (
  id INT(4) NOT NULL AUTO_INCREMENT,
  projects_id INT(4) UNSIGNED NOT NULL,
  users_id INT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (projects_id) REFERENCES t_projects(id),
  FOREIGN KEY (users_id) REFERENCES t_users(id)
);

INSERT INTO t_project_participants (id, projects_id, users_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4);




CREATE TABLE t_tasks (
  id INT(4) UNSIGNED NOT NULL PRIMARY KEY,
  name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  projects_id INT(4) UNSIGNED NOT NULL,
  author INT(4) UNSIGNED NOT NULL,
  description TEXT,
  FOREIGN KEY (projects_id) REFERENCES t_projects(id),
  FOREIGN KEY (author) REFERENCES t_project_participants(users_id)
);

INSERT INTO t_tasks (id, name, projects_id, author, description) VALUES
(1,	'task_1', 1, 1,	'task 1 security'),
(2,	'task_2', 1, 1,	'task 2 storage'),
(3,	'task_3', 2, 3,	'task 3 Christmas tree');


CREATE TABLE t_task_executors (
  id INT(4) PRIMARY KEY,
  task_id INT(4) UNSIGNED NOT NULL,
  users_id INT(4) UNSIGNED NOT NULL,
  FOREIGN KEY (task_id) REFERENCES t_tasks(id),
  FOREIGN KEY (users_id) REFERENCES t_users(id)
);

INSERT INTO t_task_executors (id, task_id, users_id) VALUES
(1,	1, 2),
(2,	1, 3),
(3,	2, 4),
(4,	3, 4);


CREATE TABLE t_files (
  id INT(4) PRIMARY KEY,
  project_id INT(4) UNSIGNED NOT NULL,
  task_id INT(4) UNSIGNED NOT NULL,
  link VARCHAR(255) COLLATE utf8_unicode_ci,
  FOREIGN KEY (project_id) REFERENCES t_projects(id),
  FOREIGN KEY (task_id) REFERENCES t_tasks(id)
);

INSERT INTO t_files (id, project_id, task_id, link) VALUES
(1,	1, 0, 'https://ru.wikipedia.org/wiki/%D0%A1%D1%8B%D1%80'),
(2,	1, 1, 'https://ru.wikipedia.org/wiki/%D0%9E%D1%85%D1%80%D0%B0%D0%BD%D0%B0'),
(3,	2, 3, 'https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9_%D0%B3%D0%BE%D0%B4');


