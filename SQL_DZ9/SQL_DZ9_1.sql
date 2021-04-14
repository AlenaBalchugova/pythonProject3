CREATE VIEW cat AS 
SELECT p.name products, c.name catalogs FROM products p
	JOIN catalogs c WHERE p.catalog_id = c.id;
	
SELECT * FROM cat;