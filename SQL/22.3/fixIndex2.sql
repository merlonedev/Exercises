use sakila;

-- cria index
create index postal_index on address(postal_code);

-- query cost: 0.35
SELECT 
    *
FROM
    sakila.address
WHERE
    postal_code = '36693';
    
-- exclui index / query cost: 61.80!!!!!!!!!
drop index postal_index on address;