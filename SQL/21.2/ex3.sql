USE Pixar;

SELECT 
    m.title, b.rating
FROM
    Movies m
        JOIN
    BoxOffice b
WHERE
    m.id = b.movie_id
ORDER BY rating DESC;