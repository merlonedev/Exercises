USE sakila;

delimiter $$
CREATE PROCEDURE ShowFilmsQunatityPerActor()
BEGIN
	SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS Name,
    COUNT(fa.film_id) AS Qty
FROM
    actor a
        JOIN
    film_actor fa ON a.actor_id = fa.actor_id
GROUP BY fa.actor_id;
END
$$

DELIMITER ;

CALL ShowFilmsQunatityPerActor;

