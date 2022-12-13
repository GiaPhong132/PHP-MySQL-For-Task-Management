USE CINEMA;

DROP PROCEDURE IF EXISTS update_password_customer;
DELIMITER //
CREATE PROCEDURE update_password_customer (
	IN
    CID		VARCHAR(255),
	Pass 		VARCHAR(255)
	)
	BEGIN
        IF length(Pass) <= 5 THEN
			SELECT 'The length of password must be more than 5' AS response;
        ELSEIF NOT EXISTS (SELECT * from customer where customer.CustomerID=CID) THEN
            SELECT "Customer doesn't exist!" AS response;
        ELSE
        	UPDATE customer SET customer.Password = Pass WHERE customer.CustomerID = CID;
        END IF;
    END //
DELIMITER ;

DROP PROCEDURE IF EXISTS update_address_customer;
DELIMITER //
CREATE PROCEDURE update_address_customer (
	IN
    usrName		VARCHAR(255),
	Addr 		VARCHAR(255)
	)
	BEGIN
    	IF EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            UPDATE customer SET customer.Address=Addr where customer.Username = usrName;
            SELECT "Update Address Successful";
        ELSE
            SELECT "Customer doesn't exist!" as response;
        END IF;
    END //
DELIMITER ;

DROP PROCEDURE IF EXISTS update_phone_customer;
DELIMITER //
CREATE PROCEDURE update_phone_customer (
	IN
    usrName		VARCHAR(255),
	phoneNumber 		VARCHAR(255)
	)
	BEGIN
        IF (length(phoneNumber) != 10) or (phoneNumber NOT REGEXP "^0[0-9]{9}") THEN
			SELECT "Phone is not correct!" AS response;
        ELSEIF NOT EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            SELECT "Customer doesn't exist!" AS response;
        ELSE
        	UPDATE customer SET customer.Phone = phoneNumber where customer.Username = usrName;
        	SELECT "Update Phone Number Is Successful" AS response;
        END IF;
    END //
DELIMITER ;

DROP PROCEDURE IF EXISTS update_email_customer;
DELIMITER //
CREATE PROCEDURE update_email_customer (
    IN
    usrName VARCHAR(255),
    mail      VARCHAR(255)
)
    BEGIN
        IF NOT EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            SELECT "Customer doesn't exists!" AS response;
        ELSEIF (mail NOT REGEXP "^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$") THEN
            SELECT "Email is not correct!" AS response;
        ELSE
        	UPDATE customer SET customer.Email = mail where customer.Username = usrName;
        	SELECT "Update Email Successfull" as response;
        END IF;
    END //
DELIMITER ;

DROP PROCEDURE IF EXISTS update_name_customer;
DELIMITER //
CREATE PROCEDURE update_name_customer (
    IN
    usrName VARCHAR(255),
    fullName      VARCHAR(255)
)
    BEGIN
        IF NOT EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            SELECT "Customer doesn't exists!" AS response;
        ELSE
        	UPDATE customer SET customer.Name = fullName where customer.Username = usrName;
        	SELECT "Update Name Successfull" as response;
        END IF;
    END //
DELIMITER ;

DROP PROCEDURE IF EXISTS update_gender_customer;
DELIMITER //
CREATE PROCEDURE update_gender_customer (
    IN
    usrName VARCHAR(255),
    sex      VARCHAR(255)
)
    BEGIN
        IF NOT EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            SELECT "Customer doesn't exists!" AS response;
        ELSEIF ((sex != 'Male') and (sex != 'Female') and (sex != 'Other')) THEN
			SELECT "Gender is not correct!" AS response;
		ELSE
        	UPDATE customer SET customer.Gender = sex where customer.Username = usrName;
        	SELECT "Update Gender Successfull" as response;
        END IF;
    END //
DELIMITER ;


DROP PROCEDURE IF EXISTS update_birthday_customer;
DELIMITER //
CREATE PROCEDURE update_birthday_customer (
    IN
    usrName VARCHAR(255),
    bornDay      DATE
)
    BEGIN
        IF NOT EXISTS (SELECT * from customer where customer.Username = usrName) THEN
            SELECT "Customer doesn't exists!" AS response;
        ELSEIF (SELECT CONVERT(bornDay, DATE)) > (SELECT CURRENT_DATE) THEN
        	SELECT "The Birthday is not correct!" AS response;
		ELSE
        	UPDATE customer SET customer.Birthday = bornDay where customer.Username = usrName;
        	SELECT "Update Birthday Successfull" as response;
        END IF;
    END //
DELIMITER ;


# call update_birthday_customer('mskeelrb', '2000-10-10')