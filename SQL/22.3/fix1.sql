use sakila;

-- criação da View film_with_categories

CREATE VIEW film_with_categories AS
    SELECT 
        fil.title, filcat.category_id, cat.name
    FROM
        film fil
            JOIN
        film_category filcat ON fil.film_id = filcat.film_id
            JOIN
        category cat ON cat.category_id = filcat.category_id
    ORDER BY title;
    
-- testando a View

SELECT * FROM film_with_categories;
