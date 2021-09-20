use sakila;

select email, active from customer;

DELIMITER $$

CREATE PROCEDURE CheckActiveByEmail(IN cli_email VARCHAR(100), OUT Situation BOOL)
BEGIN
	SELECT 
		active
	INTO Situation FROM
		customer
	WHERE
		email = cli_email;
END $$ 

DELIMITER ;

CALL CheckActiveByEmail('SANDRA.MARTIN@sakilacustomer.org', @isActive);
select @isActive;


