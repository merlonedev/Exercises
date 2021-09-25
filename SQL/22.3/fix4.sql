use sakila;

-- cria view movies_languages

CREATE VIEW movies_languages AS
    SELECT 
        f.title, f.language_id, l.name AS language
    FROM
        film f
            JOIN
        language l ON l.language_id = f.language_id
    ORDER BY `title`;

-- testa view
    
SELECT 
    *
FROM
    movies_languages;