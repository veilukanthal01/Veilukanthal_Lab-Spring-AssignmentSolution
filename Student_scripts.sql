Drop DATABASE if EXISTS students;
Create database if not exists students;
use students;

Drop Table  if exists users_roles;
Drop Table  if exists users;
Drop Table  if exists roles;

CREATE TABLE if not exists roles (
  role_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  PRIMARY KEY (role_id)
);

CREATE TABLE if not exists users (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  password varchar(64) NOT NULL,
  enabled tinyint(4) DEFAULT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE if not exists users_roles (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  KEY user_fk_idx (user_id),
  KEY role_fk_idx (role_id),
  CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES roles (role_id),
  CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users (user_id)
);

INSERT INTO roles (name) VALUES ('ROLE_ADMIN');
INSERT INTO roles (name) VALUES ('ROLE_USER');


INSERT INTO users (username, password, enabled)
VALUES ('admin', '$2a$10$IqTJTjn39IU5.7sSCDQxzu3xug6z/LPU6IF0azE/8CkHCwYEnwBX.', '1');
INSERT INTO users (username, password, enabled) 
VALUES ('john', '$2a$10$E2UPv7arXmp3q0LzVzCBNeb4B4AtbTAGjkefVDnSztOwE7Gix6kea', '1');
 
INSERT INTO users_roles (user_id, role_id) VALUES (1, 1);
INSERT INTO users_roles (user_id, role_id) VALUES (2, 2);

commit;