USE Pixar;

SELECT 
    m.title, b.domestic_sales, b.international_sales
FROM
    Movies m
        JOIN
    BoxOffice b ON b.movie_id = m.id;