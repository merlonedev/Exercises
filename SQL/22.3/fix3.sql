use sakila;

-- cria view address_info

CREATE VIEW address_info AS
    SELECT 
        ad.address_id, ad.address, ad.district, ad.city_id, ci.city
    FROM
        address ad
            JOIN
        city ci ON ci.city_id = ad.city_id
    ORDER BY `city`;

-- testa view    
    
SELECT 
    *
FROM
    address_info;