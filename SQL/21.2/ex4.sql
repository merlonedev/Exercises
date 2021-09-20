select * from Theater;
select * from Movies;


SELECT 
    t.name,
    t.location,
    m.title,
    m.director,
    m.length_minutes,
    m.year
FROM
    Theater t
        LEFT JOIN
    Movies m ON t.id = m.theater_id
ORDER BY t.name;
