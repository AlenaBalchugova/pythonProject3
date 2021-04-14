CREATE TABLE accounts (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
password VARCHAR(255));

INSERT INTO accounts (name, password) VALUES 
('I', '123456'),
('MI', '654321'),
('SHE', 'Dis*'),
('Trey', 'Name*');

CREATE VIEW usernames AS 
	SELECT id, name FROM accounts;

SELECT * FROM usernames;

CREATE USER 'user'@'localhost' 
IDENTIFIED WITH sha256_password BY 'pass';

GRANT SELECT ON shop.username TO 'user'@'localhost';