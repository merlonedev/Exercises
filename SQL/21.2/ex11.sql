use Pixar;

SELECT 
    m1.title, m1.length_minutes, m2.title, m2.length_minutes
FROM
    Movies m1,
    Movies m2
WHERE
    m1.director = m2.director
        AND m1.title <> m2.title;