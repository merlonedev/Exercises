use Pixar;

-- subquery

SELECT 
    m.title
FROM
    Movies m
WHERE
    id IN (SELECT 
            b.movie_id
        FROM
            BoxOffice b
        WHERE
            b.international_sales >= 500000000
                AND m.length_minutes > 110);