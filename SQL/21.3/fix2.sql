USE sakila;

DELIMITER $$

CREATE PROCEDURE GetFilmByCategory(IN cat_string VARCHAR(100))
BEGIN
	SELECT 
		f.film_id, f.title, fc.category_id, c.name
	FROM
		film f
			JOIN
		film_category fc ON f.film_id = fc.film_id
			JOIN
		category c ON c.category_id = fc.category_id
	WHERE
		c.name LIKE CONCAT('%', cat_string, '%');
END $$

DELIMITER ;

CALL GetFilmByCategory('action');

