USE CINEMA;

DROP PROCEDURE IF EXISTS insert_new_customer;

DELIMITER //
CREATE PROCEDURE insert_new_customer (
	IN
    CustomerID		VARCHAR(255),
	Username 		VARCHAR(255),
	Password 		VARCHAR(255),
	Name 			VARCHAR(255),
	Birthday 		DATE,
	Gender 			VARCHAR(255),
	Address 		VARCHAR(255),
	Phone 			VARCHAR(255),
	Email 			VARCHAR(255),
	Created_time 	DATETIME,
	Total_point		BIGINT
	)
	BEGIN
    	DECLARE canAdd BOOL DEFAULT 1;
	-- Check customerID 
		IF length(CustomerID) < 9 THEN
			SELECT 'The customer ID is too short!'AS response_customer;
            SET canAdd = 0;
        ELSEIF length(CustomerID) > 9 THEN
			SELECT 'The customer ID is too long!' AS response_customer;
            SET canAdd = 0;
        ELSEIF CustomerID NOT REGEXP '^c[0-9]{8}' THEN
			SELECT 'The customer ID is invalid!' AS response_customer;
            SET canAdd = 0;
        END IF;
	-- Check username already exists
		IF EXISTS(SELECT * FROM customer where customer.Username=Username) THEN
			SELECT "The Username already exists"  AS response_customer;
            SET canAdd = 0;
        END IF;
	-- Check length of password
		IF length(Password) <= 5 THEN
			SELECT 'The length of password must be more than 5' AS response_customer;
            SET canAdd = 0;
        END IF;
	-- Check birthday
		IF (SELECT CONVERT(Birthday, DATE)) > (SELECT CURRENT_DATE) THEN
        	SELECT "The Birthday is not correct!" AS response_customer;
            SET canAdd = 0;
        END IF;

	-- Check gender
		IF ((Gender != 'Male') and (Gender != 'Female') and (Gender != 'Other')) THEN
			SELECT "Gender is not correct!" AS response_customer;
            SET canAdd = 0;
		END IF;
        
    -- Check phone number
		IF (length(Phone) != 10) or (Phone NOT REGEXP "[0-9]{10}") THEN
			SELECT "Phone is not correct!" AS response_customer;
            SET canAdd = 0;
		END IF;
    
	-- Check Created_time
		IF (SELECT CONVERT(Created_time, DATE)) > (SELECT CURRENT_DATE) THEN
        	SELECT "Time is created more than present" AS response_customer;
            SET canAdd = 0;
        END IF;

	-- Check total point
		IF (Total_point < 0) THEN
        	SELECT "Total point of customer must be greater than or equal to 0" AS reponse_customer;
            SET canAdd = 0;
        END IF;
        
        IF canAdd = 1 THEN
            INSERT INTO cinema.customer(CustomerID, Username, Password, Name, Birthday, Gender, Address, Phone, Email, Created_time, Total_point) VALUES (customerID, Username, Password, Name, Birthday, Gender, Address, Phone, Email, Created_time ,Total_point);
            SELECT "Insert Successful" as response_customer;
        END IF;
    END //
DELIMITER ;

call insert_new_customer('c89442211', 'kbrownsaada2aaworth0', 'mmQ3Ube2C', 'Katleen Brownsworth', '1963-03-21', 'Female', '2507 Debra Circle', '0904392596', 'kbrownsworth0@sciencedaily.com', '2022-08-06 2:20', 580);