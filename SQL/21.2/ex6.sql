use Pixar;

select * from BoxOffice;


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
            rating > 7.5);
            
-- inner join

SELECT 
    m.title
FROM
    Movies m
        JOIN
    BoxOffice b
WHERE
    b.movie_id = m.id AND b.rating > 7.5;