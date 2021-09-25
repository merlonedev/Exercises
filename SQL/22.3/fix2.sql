use sakila;

-- cria View film_info

CREATE VIEW film_info AS
    SELECT 
        act.actor_id,
        CONCAT(act.first_name, ' ', act.last_name) AS actor,
        fil.title
    FROM
        actor act
            JOIN
        film_actor f_act ON f_act.actor_id = act.actor_id
            JOIN
        film fil ON fil.film_id = f_act.film_id
    ORDER BY `actor`;
    
-- testa View 

SELECT 
    *
FROM
    film_info;