use Pixar;

-- subquery

SELECT 
    title
FROM
    Movies
WHERE
    id IN (SELECT 
            movie_id
        FROM
            BoxOffice
        WHERE
            year > 2009);
            
-- inner join

SELECT 
    m.title
FROM
    Movies m
        JOIN
    BoxOffice b
WHERE
    m.id = b.movie_id AND m.year > 2009;