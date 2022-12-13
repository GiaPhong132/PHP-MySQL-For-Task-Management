USE CINEMA;

DROP PROCEDURE IF EXISTS delete_customer;
DELIMITER //
CREATE PROCEDURE delete_customer (
	IN
    CustomerID		VARCHAR(255)
	)
	BEGIN
        IF length(CustomerID) < 9 THEN
			SELECT 'The customer ID is too short!'AS response;
        ELSEIF length(CustomerID) > 9 THEN
			SELECT 'The customer ID is too long!' AS response;
        ELSEIF CustomerID NOT REGEXP '^c[0-9]{8}' THEN
			SELECT 'The customer ID is invalid!' AS response;
        ELSE
            DELETE FROM customer WHERE customer.customerID=customerID;
            SELECT 'Customer Deleted Successfully!' AS response;
        END IF;
    END //
DELIMITER ;

call delete_customer('c00138455')