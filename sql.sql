drop DATABASE MLH;
CREATE DATABASE MLH;

CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  password varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE collection (
 id int not null AUTO_INCREMENT PRIMARY key,
 nom VARCHAR(255),
 id_user int,
 FOREIGN KEY (id_user) REFERENCES users(id) 
);

Create table card (
	id int not null AUTO_INCREMENT PRIMARY key,
	public_private int,
	description VARCHAR(5000),
	id_coll int,
	FOREIGN KEY (id_coll) REFERENCES collection(id) 
);

Create table tag (
	id int not null AUTO_INCREMENT PRIMARY key,
	d VARCHAR(1000)
);

Create table cardtag (
	id int not null AUTO_INCREMENT PRIMARY key,
	id_tag int,
	id_card int,
	FOREIGN KEY (id_tag) REFERENCES tag(id),
	FOREIGN KEY (id_card) REFERENCES card(id)
);

