use Pixar;

SELECT 
    t.name, t.location
FROM
    Theater t
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            Movies m
        WHERE
            m.theater_id = t.id);