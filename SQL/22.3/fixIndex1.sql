use sakila;

-- cria index
create fulltext index index_name on category(name);

-- query cost: 0.35
SELECT 
    *
FROM
    sakila.category
WHERE
    MATCH (name) AGAINST ('action' );
    
-- excluindo index

drop index index_name on category;

-- query cost: 1.85
SELECT 
    *
FROM
    sakila.category
WHERE
    name LIKE '%action%';