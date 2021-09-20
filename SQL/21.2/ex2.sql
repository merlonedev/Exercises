USE Pixar;

SELECT 
    m.title, b.domestic_sales, b.international_sales
FROM
    Movies m
        JOIN
    BoxOffice b
WHERE
    m.id = b.movie_id
        AND b.international_sales > b.domestic_sales;