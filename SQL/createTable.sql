CREATE TABLE userInfo (
	id SERIAL PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
	login_id varchar(255) UNIQUE  NOT NULL, 
	name varchar(255) NOT NULL,
	birth_date DATE NOT NULL,  
	password varchar(255) NOT NULL,
	create_date DATETIME NOT NULL,
	update_date DATETIME NOT NULL
);