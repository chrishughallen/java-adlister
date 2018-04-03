USE adlister_db;

# DROP TABLE IF EXISTS users;
# DROP TABLE IF EXISTS ads;
#
# CREATE TABLE users(
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   username VARCHAR(50),
#   email VARCHAR(250),
#   password VARCHAR(25),
#   PRIMARY KEY (id)
# );
#
# CREATE TABLE ads(
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   user_id INT UNSIGNED NOT NULL,
#   title VARCHAR(250),
#   description TEXT,
#   FOREIGN KEY (user_id) REFERENCES users (id),
#   PRIMARY KEY (id)
# );

INSERT INTO users(username,email,password)
    VALUES("chrishughallen", "chris@gmail.com","pass");

INSERT INTO ads(user_id,title,description)
    VALUES(1,"test", "This is a test ad");
