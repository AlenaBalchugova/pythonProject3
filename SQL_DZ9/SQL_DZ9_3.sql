CREATE TABLE dates (
create_at DATE NOT NULL);

INSERT INTO dates VALUES 
('2018-08-01'),
('2018-08-04'),
('2018-08-16'),
('2018-08-17');


CREATE TEMPORARY TABLE date_august (
august char(2) NOT NULL);

INSERT INTO date_august VALUES 
 ('01'),
 ('02'), 
 ('03'), 
 ('04'), 
 ('05'), 
 ('06'), 
 ('07'), 
 ('08'), 
 ('09'), 
 ('10'), 
 ('11'),
 ('12'), 
 ('13'), 
 ('14'), 
 ('15'), 
 ('16'), 
 ('17'), 
 ('18'), 
 ('19'), 
 ('20'), 
 ('21'), 
 ('22'), 
 ('23'), 
 ('24'), 
 ('25'), 
 ('26'), 
 ('27'), 
 ('28'), 
 ('29'), 
 ('30'), 
 ('31');

SELECT concat('2018-08-', a.august) august, 
	IF(d.create_at IS NOT NULL, 1, 0) 
    create_at FROM date_august a
	LEFT JOIN dates d ON a.august = RIGHT(d.create_at, 2) ORDER BY august;