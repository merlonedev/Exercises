use Pixar;

SELECT 
    m.title, m.director, m.year, m.length_minutes, m.theater_id
FROM
    Movies m
        JOIN
    BoxOffice b ON b.movie_id = m.id
WHERE
    b.rating > 8
        AND m.theater_id IS NOT NULL;